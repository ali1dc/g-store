delimiter $$

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `address_1` varchar(250) NOT NULL,
  `address_2` varchar(250) DEFAULT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(2) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `address_id_UNIQUE` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `cart_items` (
  `shopping_cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  KEY `shopping_cart_FK` (`shopping_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `category_product` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  UNIQUE KEY `CategoryProduct_UNIQUE` (`category_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_item_id`),
  KEY `order_FK` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(250) NOT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`),
  UNIQUE KEY `order_status_id_UNIQUE` (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shipper_company` varchar(150) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT 'Credit Card',
  `order_status_id` int(11) DEFAULT '1',
  `total_cost` decimal(10,2) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `name_on_card` varchar(250) NOT NULL,
  `card_type` varchar(15) DEFAULT NULL,
  `last_4_credit_card` varchar(4) NOT NULL,
  `expiration_year` smallint(6) NOT NULL,
  `expiration_month` smallint(6) NOT NULL,
  `verification_code` varchar(4) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  UNIQUE KEY `order_number_UNIQUE` (`order_number`),
  KEY `order_status_FK` (`order_status_id`),
  CONSTRAINT `order_status_FK` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `product_raw` (
  `ProductID` int(11) NOT NULL,
  `ASIN` varchar(50) DEFAULT NULL,
  `ProductName` varchar(250) DEFAULT NULL,
  `ProductDescription` varchar(250) DEFAULT NULL,
  `QuantityInStock` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `IndexImage` varchar(250) DEFAULT NULL,
  `ProductImage` varchar(250) DEFAULT NULL,
  `IndexImageHeight` int(11) DEFAULT NULL,
  `IndexImageWidth` int(11) DEFAULT NULL,
  `ProductImageHeight` int(11) DEFAULT NULL,
  `ProductImageWidth` int(11) DEFAULT NULL,
  `CategoryName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(50) DEFAULT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `quantity_in_stock` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `index_image` varchar(250) DEFAULT NULL,
  `index_image_height` int(11) DEFAULT NULL,
  `index_image_width` int(11) DEFAULT NULL,
  `product_image` varchar(250) DEFAULT NULL,
  `product_image_height` int(11) DEFAULT NULL,
  `product_image_width` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  UNIQUE KEY `asin_UNIQUE` (`asin`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `roles` (
  `role` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  UNIQUE KEY `rome_email_UQ` (`email`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='using  JDBC realm'$$


delimiter $$

CREATE TABLE `shopping_carts` (
  `shopping_cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`shopping_cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8$$


delimiter $$

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(500) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='using JDBC realm'$$


