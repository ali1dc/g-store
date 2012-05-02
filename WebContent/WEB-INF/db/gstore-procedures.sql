delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCartItem`(IN sessionID VARCHAR(32), IN itemName VARCHAR(250))
BEGIN
    DECLARE shCartID INT;
    DECLARE productID INT;
    
    SET shCartID = (SELECT sc.shopping_cart_id FROM shopping_carts sc WHERE sc.session_id = sessionID LIMIT 1);
    SET productID = (SELECT p.product_id FROM products p WHERE p.product_name = itemName LIMIT 1);
    
    IF (shCartID IS NOT NULL AND productID IS NOT NULL) THEN
        DELETE FROM cart_items
        WHERE shopping_cart_id = shCartID AND product_id = productID;
    END IF;
    
    -- return updated shopping cart to the app
    SELECT p.product_id, p.product_name, ci.quantity, p.price FROM cart_items ci
    JOIN shopping_carts sc ON sc.shopping_cart_id=ci.shopping_cart_id
    JOIN products p ON p.product_id=ci.product_id
    WHERE sc.session_id=sessionID;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductByID`(IN productID INT)
BEGIN
    SELECT * FROM products p
    WHERE p.product_id = productID
    LIMIT 1;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getRelatedProductsByProductID`(IN productID INT)
BEGIN
    CREATE TEMPORARY TABLE relatedCategories (categoryID INT);

    INSERT INTO relatedCategories (categoryID)
    SELECT cp.category_id FROM category_product cp
    WHERE cp.product_id = productID;

    SELECT p.* FROM categories c
    INNER JOIN category_product cp on cp.category_id=c.category_id
    INNER JOIN products p on p.product_id = cp.product_id
    WHERE   cp.category_id in (select * from relatedCategories)
            AND p.product_id not in (productID) 
            AND c.category_id not in (6); -- 6 is id of Specials we do not want to return!
    DROP TABLE relatedCategories;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `saveAddress`(IN email VARCHAR(250), IN title VARCHAR(250), IN address1 VARCHAR(250), 
    IN address2 VARCHAR(250),  IN city VARCHAR(250), IN state VARCHAR(2),  IN zip VARCHAR(10),  IN phone VARCHAR(15))
BEGIN
    INSERT INTO `gstore`.`addresses`
    (`user_email`,
    `title`,
    `address_1`,
    `address_2`,
    `city`,
    `state`,
    `postal_code`,
    `phone`)
    VALUES
    (email, title, address1, address2, city, state, zip, phone);
    
    SELECT LAST_INSERT_ID() AS address_id;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `saveCartItem`(IN sessionID VARCHAR(32), IN userEmail VARCHAR(250), IN productID INT)
BEGIN
    DECLARE shCartID INT;
    DECLARE userID INT;
    DECLARE isItemExists BIT;
    DECLARE quantity INT;
    
    SET shCartID = (SELECT sc.shopping_cart_id FROM shopping_carts sc WHERE sc.session_id = sessionID LIMIT 1);
    IF (shCartID IS NULL) THEN
        SET userID = (SELECT u.user_id FROM users u WHERE u.email = userEmail LIMIT 1);
        INSERT INTO `gstore`.`shopping_carts` 
            (`session_id`, `user_id`)
        VALUES (sessionID, userID);
        SET shCartID =  LAST_INSERT_ID();
    END IF;
    
    -- now add your cart item! if car item exists, just update the quantity!
    SET quantity = (SELECT COUNT(*) FROM cart_items ci WHERE ci.shopping_cart_id = shCartID AND ci.product_id = productID);
    IF (quantity = 0) THEN
        INSERT INTO `gstore`.`cart_items` (`shopping_cart_id`, `product_id`, `quantity`)
        VALUES (shCartID, productID, 1);
    ELSE
        SET quantity = quantity + 1;
        UPDATE `gstore`.`cart_items` AS ci
        SET
        ci.quantity = ci.quantity + 1
        WHERE ci.shopping_cart_id = shCartID AND ci.product_id = productID;        
    END IF;
    
    -- return updated shopping cart to the app
    SELECT p.product_id, p.product_name, ci.quantity, p.price FROM cart_items ci
    JOIN shopping_carts sc ON sc.shopping_cart_id = ci.shopping_cart_id
    JOIN products p ON p.product_id = ci.product_id
    WHERE sc.session_id = sessionID;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `saveTransaction`(IN sessionID VARCHAR(32), IN userEmail VARCHAR(250), IN shAddID INT, 
    IN billAddID INT, IN holderName VARCHAR(250), IN cardType VARCHAR(15), cardNumber VARCHAR(4), 
    		IN expMonth INT, IN expYear INT, IN cvv VARCHAR(5), IN totalCost DOUBLE)
BEGIN
    DECLARE userID INT;
    DECLARE orderID INT;
    DECLARE orderNumber VARCHAR(50);
    
    SET userID = (SELECT u.user_id FROM users u WHERE u.email = userEmail LIMIT 1);
    
    INSERT INTO orders
        (user_id,
        payment_date,
        payment_method,
        total_cost,
        billing_address_id,
        shipping_address_id,
        name_on_card,
        card_type,
        last_4_credit_card,
        expiration_year,
        expiration_month,
        verification_code)
    VALUES (userID, CURDATE(), 'Credit Cart', totalCost, billAddID, shAddID, holderName, cardType, cardNumber,
            expYear, expMonth, cvv);
            
    SET orderID = LAST_INSERT_ID();
    SET orderNumber = CONCAT('g-', 1000 + orderID);
    
    UPDATE orders 
    SET order_number = orderNumber
    WHERE order_id = orderID;
    
    INSERT INTO order_items (order_id, product_id, quantity)
        SELECT 
            orderID,
            ci.product_id,
            ci.quantity
        FROM cart_items ci
        JOIN shopping_carts sc ON sc.shopping_cart_id = ci.shopping_cart_id
        WHERE sc.session_id = sessionID;
    
    -- user processes, delete session
    DELETE cart_items FROM cart_items 
    JOIN shopping_carts sc ON sc.shopping_cart_id = cart_items.shopping_cart_id
    WHERE sc.session_id = sessionID;
    
    DELETE FROM shopping_carts WHERE session_id = sessionID;
    
    SELECT orderNumber AS order_number;
END$$


delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateQuantityCartItem`(IN sessionID VARCHAR(32), IN itemName VARCHAR(250), IN qty INT)
BEGIN

    DECLARE shCartID INT;
    DECLARE productID INT;
    
    SET shCartID = (SELECT sc.shopping_cart_id FROM shopping_carts sc WHERE sc.session_id = sessionID LIMIT 1);
    SET productID = (SELECT p.product_id FROM products p WHERE p.product_name = itemName LIMIT 1);
    
    -- if qty is 0 then delete that item!
    IF (qty = 0 AND shCartID IS NOT NULL AND productID IS NOT NULL) THEN
        DELETE FROM cart_items
        WHERE shopping_cart_id = shCartID AND product_id = productID;
    ELSEIF (shCartID IS NOT NULL AND productID IS NOT NULL) THEN
        UPDATE `gstore`.`cart_items` AS ci
        SET ci.quantity = qty
        WHERE ci.shopping_cart_id = shCartID AND ci.product_id = productID;
    END IF;
    
    -- return updated shopping cart to the app
    SELECT p.product_id, p.product_name, ci.quantity, p.price FROM cart_items ci
    JOIN shopping_carts sc ON sc.shopping_cart_id=ci.shopping_cart_id
    JOIN products p ON p.product_id=ci.product_id
    WHERE sc.session_id=sessionID;
END$$


