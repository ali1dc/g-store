-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.244.59
-- Generation Time: May 02, 2012 at 07:36 PM
-- Server version: 5.0.92
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gstore`
--

-- --------------------------------------------------------

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` VALUES(1, 'Books', NULL);
INSERT INTO `categories` VALUES(2, 'Cameras', NULL);
INSERT INTO `categories` VALUES(3, 'Laptops', NULL);
INSERT INTO `categories` VALUES(4, 'Movies', NULL);
INSERT INTO `categories` VALUES(5, 'Watches', NULL);
INSERT INTO `categories` VALUES(6, 'Specials', NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` VALUES(1, 1);
INSERT INTO `category_product` VALUES(1, 2);
INSERT INTO `category_product` VALUES(1, 3);
INSERT INTO `category_product` VALUES(1, 4);
INSERT INTO `category_product` VALUES(1, 5);
INSERT INTO `category_product` VALUES(1, 6);
INSERT INTO `category_product` VALUES(1, 7);
INSERT INTO `category_product` VALUES(1, 8);
INSERT INTO `category_product` VALUES(1, 9);
INSERT INTO `category_product` VALUES(1, 10);
INSERT INTO `category_product` VALUES(2, 41);
INSERT INTO `category_product` VALUES(2, 42);
INSERT INTO `category_product` VALUES(2, 43);
INSERT INTO `category_product` VALUES(2, 44);
INSERT INTO `category_product` VALUES(2, 45);
INSERT INTO `category_product` VALUES(2, 46);
INSERT INTO `category_product` VALUES(2, 47);
INSERT INTO `category_product` VALUES(2, 48);
INSERT INTO `category_product` VALUES(2, 49);
INSERT INTO `category_product` VALUES(2, 50);
INSERT INTO `category_product` VALUES(3, 31);
INSERT INTO `category_product` VALUES(3, 32);
INSERT INTO `category_product` VALUES(3, 33);
INSERT INTO `category_product` VALUES(3, 34);
INSERT INTO `category_product` VALUES(3, 35);
INSERT INTO `category_product` VALUES(3, 36);
INSERT INTO `category_product` VALUES(3, 37);
INSERT INTO `category_product` VALUES(3, 38);
INSERT INTO `category_product` VALUES(3, 39);
INSERT INTO `category_product` VALUES(3, 40);
INSERT INTO `category_product` VALUES(4, 21);
INSERT INTO `category_product` VALUES(4, 22);
INSERT INTO `category_product` VALUES(4, 23);
INSERT INTO `category_product` VALUES(4, 24);
INSERT INTO `category_product` VALUES(4, 25);
INSERT INTO `category_product` VALUES(4, 26);
INSERT INTO `category_product` VALUES(4, 27);
INSERT INTO `category_product` VALUES(4, 28);
INSERT INTO `category_product` VALUES(4, 29);
INSERT INTO `category_product` VALUES(4, 30);
INSERT INTO `category_product` VALUES(5, 11);
INSERT INTO `category_product` VALUES(5, 12);
INSERT INTO `category_product` VALUES(5, 13);
INSERT INTO `category_product` VALUES(5, 14);
INSERT INTO `category_product` VALUES(5, 15);
INSERT INTO `category_product` VALUES(5, 16);
INSERT INTO `category_product` VALUES(5, 17);
INSERT INTO `category_product` VALUES(5, 18);
INSERT INTO `category_product` VALUES(5, 19);
INSERT INTO `category_product` VALUES(5, 20);
INSERT INTO `category_product` VALUES(6, 24);
INSERT INTO `category_product` VALUES(6, 28);

-- --------------------------------------------------------

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` VALUES(3, 'Delivered');
INSERT INTO `order_status` VALUES(4, 'Out of Stock');
INSERT INTO `order_status` VALUES(1, 'Pending');
INSERT INTO `order_status` VALUES(2, 'Processing');
INSERT INTO `order_status` VALUES(6, 'Returned');
INSERT INTO `order_status` VALUES(5, 'Terminated');

-- --------------------------------------------------------

--
-- Dumping data for table `products`
--

INSERT INTO `products` VALUES(1, '10001', 'Head First Android', 'by Jonathan Simon', 10, 24.59, 'images/Product_Images/index_size/head_first_android_index.jpg', 135, 117, 'images/Product_Images/product_page_size/head_first_android_product.jpg', 300, 300);
INSERT INTO `products` VALUES(2, '10002', 'Scala In Depth', 'by Joshua D. Suereth', 10, 21.81, 'images/Product_Images/index_size/scala_in_depth_index.jpg', 135, 107, 'images/Product_Images/product_page_size/scala_in_depth_product.jpg', 300, 300);
INSERT INTO `products` VALUES(3, '10003', 'Calico Joe', 'by John Grisham', 10, 14.10, 'images/Product_Images/index_size/calico_joe_index.JPG', 148, 98, 'images/Product_Images/product_page_size/calico_joe_product.JPG', 453, 300);
INSERT INTO `products` VALUES(4, '10004', 'The Serpent''s Shadow', 'Kane Chronicles Series #3, by Rick Riordan', 10, 11.51, 'images/Product_Images/index_size/serpents_shadow_index.JPG', 148, 98, 'images/Product_Images/product_page_size/serpents_shadow_product.JPG', 453, 300);
INSERT INTO `products` VALUES(5, '10005', 'Let''s Pretend This Never Happened', 'by Jenny Lawson (The Bloggress)', 10, 13.98, 'images/Product_Images/index_size/lets_pretend_index.JPG', 148, 98, 'images/Product_Images/product_page_size/lets_pretend_product.JPG', 451, 300);
INSERT INTO `products` VALUES(6, '10006', 'The Wind Through the Keyhole', 'A Dark Tower Novel, by Stephen King', 10, 16.36, 'images/Product_Images/index_size/the_wind_through_index.JPG', 148, 98, 'images/Product_Images/product_page_size/the_wind_through_product.JPG', 453, 300);
INSERT INTO `products` VALUES(7, '10007', 'Fifty Shades of Grey', 'by E L James', 10, 10.98, 'images/Product_Images/index_size/fifty_shades_of_grey_index.JPG', 148, 96, 'images/Product_Images/product_page_size/fifty_shades_of_grey_product.JPG', 464, 300);
INSERT INTO `products` VALUES(8, '10008', 'Weeknights with Giada', 'Quick and Simple Recipes to Revamp Dinner, by Giada De Laurentiis', 10, 20.53, 'images/Product_Images/index_size/weeknights_with_giada_index.JPG', 148, 117, 'images/Product_Images/product_page_size/weeknights_with_giada_product.JPG', 380, 300);
INSERT INTO `products` VALUES(9, '10009', 'The Hunger Games Trilogy Boxed Set', 'by Suzanne Collins', 10, 31.57, 'images/Product_Images/index_size/hunger_games_trilogy_index.JPG', 148, 105, 'images/Product_Images/product_page_size/hunger_games_trilogy_product.JPG', 424, 300);
INSERT INTO `products` VALUES(10, '10010', 'Get Lucky', 'How to Put Planned Serendipity to Work for You and Your Business, by Thor Muller and Lane Becker', 10, 16.00, 'images/Product_Images/index_size/get_lucky_index.JPG', 148, 99, 'images/Product_Images/product_page_size/get_lucky_product.JPG', 451, 300);
INSERT INTO `products` VALUES(11, '10011', 'Tag Hauer CV2A10', 'Carrera automatic chronograph day-date watch', 10, 2975.00, 'images/Product_Images/index_size/tag_hauer_CV2A10_index.jpg', 246, 190, 'images/Product_Images/product_page_size/tag_hauer_CV2A10_product.jpg', 428, 385);
INSERT INTO `products` VALUES(12, '10012', 'Invicta Watch', 'Invicta II chronograph diamond', 10, 199.99, 'images/Product_Images/index_size/invicta_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/invicta_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(13, '10013', 'Swiss Legend Watch', 'Traveler GMT black textured dial', 10, 179.99, 'images/Product_Images/index_size/swiss_legend_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/swiss_legend_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(14, '10014', 'Red Line Watch', 'Tech Chronograph Black Dial Black Ion Plated', 10, 139.00, 'images/Product_Images/index_size/red_line_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/red_line_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(15, '10015', 'Jacques Lemans Watch', 'London Stainless Steel', 10, 194.00, 'images/Product_Images/index_size/jacques_lemans_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/jacques_lemans_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(16, '10016', 'Glam Rock Watch', 'Palm Beach Silver Dial Orange Silicon', 10, 318.00, 'images/Product_Images/index_size/glam_rock_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/glam_rock_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(17, '10017', 'Seiko Watch', 'Seiko 5 Automatic Beige Fabric', 10, 89.00, 'images/Product_Images/index_size/seiko_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/seiko_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(18, '10018', 'Stuhrling Watch', 'Gatsby Society II Swiss Quartz', 10, 140.10, 'images/Product_Images/index_size/stuhrling_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/stuhrling_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(19, '10019', 'Lucien Piccard Watch', 'Diver Black Dial Black Rubber', 10, 179.99, 'images/Product_Images/index_size/lucien_piccard_watch_index.jpg', 167, 117, 'images/Product_Images/product_page_size/lucien_piccard_watch_product.jpg', 392, 274);
INSERT INTO `products` VALUES(20, '10020', 'Hamilton Watch', 'Khaki Navy BeLOWZERO Auto Chrono', 10, 1445.00, 'images/Product_Images/index_size/hamilton_watch_index.jpg', 155, 96, 'images/Product_Images/product_page_size/hamilton_watch_product.jpg', 400, 255);
INSERT INTO `products` VALUES(21, '10021', 'Anchorman', 'Unrated Widescreen Edition, starring Will Ferrell, Christina Applegate, directed by Adam McKay', 10, 7.99, 'images/Product_Images/index_size/anchorman_index.jpg', 160, 160, 'images/Product_Images/product_page_size/anchorman_product.jpg', 300, 300);
INSERT INTO `products` VALUES(22, '10022', 'Inception', 'starring Leonardo DiCaprio, Ken Watanabe, directed by Christopher Nolan', 10, 7.69, 'images/Product_Images/index_size/inception_index.jpg', 160, 160, 'images/Product_Images/product_page_size/inception_product.jpg', 300, 300);
INSERT INTO `products` VALUES(23, '10023', 'Inside Job', 'narrated by Matt Damon, directed by Charles Ferguson', 10, 10.49, 'images/Product_Images/index_size/inside_job_index.jpg', 160, 112, 'images/Product_Images/product_page_size/inside_job_product.jpg', 300, 300);
INSERT INTO `products` VALUES(24, '10024', 'Moneyball', 'starring Brad Pitt, Jonah Hill, directed by Bennett Miller', 10, 14.99, 'images/Product_Images/index_size/moneyball_index.jpg', 160, 111, 'images/Product_Images/product_page_size/moneyball_product.jpg', 300, 300);
INSERT INTO `products` VALUES(25, '10025', 'Monty Python and the Holy Grail', 'Special Edition, starring Graham Chapman, John Cleese, directed by Terry Gilliam and Terry Jones', 10, 9.99, 'images/Product_Images/index_size/monty_python_index.jpg', 160, 160, 'images/Product_Images/product_page_size/monty_python_product.jpg', 300, 300);
INSERT INTO `products` VALUES(26, '10026', 'Rio', 'starring Jesse Eisenberg, Anne Hathaway', 10, 19.99, 'images/Product_Images/index_size/rio_index.jpg', 160, 160, 'images/Product_Images/product_page_size/rio_product.jpg', 300, 300);
INSERT INTO `products` VALUES(27, '10027', 'The Artist', 'starring Jean Dujardin, Berenice Bejo, directed by Michel Hazanavicius', 10, 19.99, 'images/Product_Images/index_size/the_artist_index.jpg', 160, 160, 'images/Product_Images/product_page_size/the_artist_product.jpg', 300, 300);
INSERT INTO `products` VALUES(28, '10028', 'The Descendants', 'starring George Clooney, Judy Greer, directed by Alexander Payne', 10, 14.99, 'images/Product_Images/index_size/the_descendants_index.jpg', 160, 120, 'images/Product_Images/product_page_size/the_descendants_product.jpg', 300, 300);
INSERT INTO `products` VALUES(29, '10029', 'True Grit', 'starring Matt Damon, Jeff Bridges, directed by Joel Coen and Ethan Coen', 10, 11.43, 'images/Product_Images/index_size/true_grit_index.jpg', 160, 160, 'images/Product_Images/product_page_size/true_grit_product.jpg', 300, 300);
INSERT INTO `products` VALUES(30, '10030', 'Zombieland', 'starring Jesse Eisenberg, Emma Stone, directed by Ruben Fleischer', 10, 9.99, 'images/Product_Images/index_size/zombieland_index.jpg', 160, 160, 'images/Product_Images/product_page_size/zombieland_product.jpg', 300, 300);
INSERT INTO `products` VALUES(31, '10031', 'Toshiba 17.3 inch Laptop', 'AMD E-Series processor, 4GB memory, 320 GB hard drive', 10, 329.99, 'images/Product_Images/index_size/toshiba_laptop_173_index.jpg', 68, 105, 'images/Product_Images/product_page_size/toshiba_laptop_173_product.jpg', 323, 500);
INSERT INTO `products` VALUES(32, '10032', 'HP 15.6 inch Laptop', 'Intel Pentium Processor, 4GB memory, 320GB hard drive', 10, 329.99, 'images/Product_Images/index_size/hp_laptop_156_index.jpg', 75, 105, 'images/Product_Images/product_page_size/hp_laptop_156_product.jpg', 358, 500);
INSERT INTO `products` VALUES(33, '10033', 'Dell 15.6 inch Laptop', 'AMD E-Series processor, 4GB memory, 500GB hard drive', 10, 349.99, 'images/Product_Images/index_size/dell_laptop_156_index.jpg', 75, 105, 'images/Product_Images/product_page_size/dell_laptop_156_product.jpg', 358, 500);
INSERT INTO `products` VALUES(34, '10034', 'HP 17.3 inch Laptop', 'Intel i7 processor, 8GB memory, 750GB hard drive', 10, 799.99, 'images/Product_Images/index_size/hp_laptop_173_index.jpg', 75, 105, 'images/Product_Images/product_page_size/hp_laptop_173_product.jpg', 355, 500);
INSERT INTO `products` VALUES(35, '10035', 'Asus 15.6 inch Laptop', 'Intel Core i5 processor, 4GB memory, 500GB hard drive', 10, 479.99, 'images/Product_Images/index_size/asus_laptop_156_index.jpg', 69, 105, 'images/Product_Images/product_page_size/asus_laptop_156_product.jpg', 328, 500);
INSERT INTO `products` VALUES(36, '10036', 'Samsung 17.3 inch Laptop', 'AMD A6-Series processor, 4GB memory, 500GB hard drive', 10, 449.99, 'images/Product_Images/index_size/samsung_laptop_173_index.jpg', 73, 105, 'images/Product_Images/product_page_size/samsung_laptop_173_product.jpg', 346, 500);
INSERT INTO `products` VALUES(37, '10037', 'HP 14 inch Laptop', 'Intel i5 processor, 8GB memory, 640GB hard drive', 10, 629.99, 'images/Product_Images/index_size/hp_laptop_140_index.jpg', 76, 105, 'images/Product_Images/product_page_size/hp_laptop_140_product.jpg', 362, 500);
INSERT INTO `products` VALUES(38, '10038', 'Dell 17.3 inch Laptop', 'Intel i5 processor, 8GB memory, 750GB hard drive', 10, 649.99, 'images/Product_Images/index_size/dell_laptop_173_index.jpg', 74, 105, 'images/Product_Images/product_page_size/dell_laptop_173_product.jpg', 354, 500);
INSERT INTO `products` VALUES(39, '10039', 'Toshiba 14 inch Laptop', 'Intel i3 processor, 6GB memory, 750GB hard drive', 10, 529.99, 'images/Product_Images/index_size/toshiba_laptop_140_index.jpg', 79, 105, 'images/Product_Images/product_page_size/toshiba_laptop_140_product.jpg', 375, 500);
INSERT INTO `products` VALUES(40, '10040', 'Sony 14 inch Laptop', 'Intel i5 processor, 6GB memory, 640GB hard drive', 10, 699.99, 'images/Product_Images/index_size/sony_laptop_140_index.jpg', 80, 105, 'images/Product_Images/product_page_size/sony_laptop_140_product.jpg', 381, 500);
INSERT INTO `products` VALUES(41, '10041', 'Canon ELPH Camera', '5x optical/4x digital zoom, 2.7 inch color TFT-LCD display, 1080p HD video, Face detection', 10, 149.99, 'images/Product_Images/index_size/canon_elph_index.jpg', 65, 105, 'images/Product_Images/product_page_size/canon_elph_product.jpg', 308, 500);
INSERT INTO `products` VALUES(42, '10042', 'Sony Cyber-shot Camera', '16x optical/Smart Zoom digital zoom technology, 3 inch LCD, Full HD 1080/60p movie mode, 3D still image and 3D sweep panorama modes', 10, 329.99, 'images/Product_Images/index_size/sony_cybershot_index.jpg', 63, 105, 'images/Product_Images/product_page_size/sony_cybershot_product.jpg', 300, 500);
INSERT INTO `products` VALUES(43, '10043', 'Canon SX40 Camera', '35x optical/4x digital zoom, 2.7 inch LCD screen, 1080p HD video, optical image stabilizer', 10, 379.99, 'images/Product_Images/index_size/canon_sx40_index.jpg', 81, 105, 'images/Product_Images/product_page_size/canon_sx40_product.jpg', 387, 500);
INSERT INTO `products` VALUES(44, '10044', 'Canon EOS T3i Camera', 'Vari-angle 3 inch Clear View LCD screen, 1080 full HD video, 3.7 FPS, ISO 100-6400', 10, 798.99, 'images/Product_Images/index_size/canon_eos_t3i_index.jpg', 95, 105, 'images/Product_Images/product_page_size/canon_eos_t3i_product.jpg', 455, 500);
INSERT INTO `products` VALUES(45, '10045', 'Canon EOS T2i Camera', '18-55mm Lens, 3 inch LCD screen, Full HD video, ISO 100-6400', 10, 648.99, 'images/Product_Images/index_size/canon_eos_t2i_index.jpg', 83, 105, 'images/Product_Images/product_page_size/canon_eos_t2i_product.jpg', 397, 500);
INSERT INTO `products` VALUES(46, '10046', 'Nikon D5100 Camera', 'High Resolution 16.2 MP DX-format CMOS sensor, 3 inch Super-Density Vari-Angle LCD Monitor, 1080 full HD video, ISO sensitivity 100-6400', 10, 699.99, 'images/Product_Images/index_size/nikon_d5100_index.jpg', 82, 105, 'images/Product_Images/product_page_size/nikon_d5100_product.jpg', 388, 500);
INSERT INTO `products` VALUES(47, '10047', 'Nikon D3100 Camera', '3 inch TFT-LCD monitor with Live View, 1080p HD video, 3 FPS, ISO 100-3200', 10, 549.99, 'images/Product_Images/index_size/nikon_d3100_index.jpg', 83, 105, 'images/Product_Images/product_page_size/nikon_d3100_product.jpg', 395, 500);
INSERT INTO `products` VALUES(48, '10048', 'Canon EOS T3 Camera', '12.2 Megapixel, 2.7 inch color TFT-LCD monitor, HD movie mode, ISO 100-6400', 10, 491.99, 'images/Product_Images/index_size/canon_eos_t3_index.jpg', 96, 105, 'images/Product_Images/product_page_size/canon_eos_t3_product.jpg', 457, 500);
INSERT INTO `products` VALUES(49, '10049', 'Panasonic Lumix ZS8 Camera', '16x optical/4x digital zoom/64x total zoom, 3 inch TFT-LCD display, High-definition movie mode, Optical Image Stabilizer', 10, 199.99, 'images/Product_Images/index_size/panasonic_lumix_index.jpg', 61, 105, 'images/Product_Images/product_page_size/panasonic_lumix_product.jpg', 291, 500);
INSERT INTO `products` VALUES(50, '10050', 'Canon S100 Camera', '5x optical/4x digital zoom, 3 inch LCD screen, 1080p HD video, DIGIC 5 image processor', 10, 386.99, 'images/Product_Images/index_size/canon_s100_index.jpg', 77, 105, 'images/Product_Images/product_page_size/canon_s100_product.jpg', 367, 500);

-- --------------------------------------------------------

--
-- Dumping data for table `product_raw`
--

INSERT INTO `product_raw` VALUES(1, '1', 'Head First Android', 'by Jonathan Simon', 10, 24.59, 'images/Product_Images/index_size/head_first_android_index.jpg', 'images/Product_Images/product_page_size/head_first_android_product.jpg', 135, 117, 300, 300, 'Books');
INSERT INTO `product_raw` VALUES(2, '2', 'Scala In Depth', 'by Joshua D. Suereth', 10, 21.81, 'images/Product_Images/index_size/scala_in_depth_index.jpg', 'images/Product_Images/product_page_size/scala_in_depth_product.jpg', 135, 107, 300, 300, 'Books');
INSERT INTO `product_raw` VALUES(3, '3', 'Calico Joe', 'by John Grisham', 10, 14.1, 'images/Product_Images/index_size/calico_joe_index.JPG', 'images/Product_Images/product_page_size/calico_joe_product.JPG', 148, 98, 453, 300, 'Books');
INSERT INTO `product_raw` VALUES(4, '4', 'The Serpent''s Shadow', 'Kane Chronicles Series #3, by Rick Riordan', 10, 11.51, 'images/Product_Images/index_size/serpents_shadow_index.JPG', 'images/Product_Images/product_page_size/serpents_shadow_product.JPG', 148, 98, 453, 300, 'Books');
INSERT INTO `product_raw` VALUES(5, '5', 'Let''s Pretend This Never Happened', 'by Jenny Lawson (The Bloggress)', 10, 13.98, 'images/Product_Images/index_size/lets_pretend_index.JPG', 'images/Product_Images/product_page_size/lets_pretend_product.JPG', 148, 98, 451, 300, 'Books');
INSERT INTO `product_raw` VALUES(6, '6', 'The Wind Through the Keyhole', 'A Dark Tower Novel, by Stephen King', 10, 16.36, 'images/Product_Images/index_size/the_wind_through_index.JPG', 'images/Product_Images/product_page_size/the_wind_through_product.JPG', 148, 98, 453, 300, 'Books');
INSERT INTO `product_raw` VALUES(7, '7', 'Fifty Shades of Grey', 'by E L James', 10, 10.98, 'images/Product_Images/index_size/fifty_shades_of_grey_index.JPG', 'images/Product_Images/product_page_size/fifty_shades_of_grey_product.JPG', 148, 96, 464, 300, 'Books');
INSERT INTO `product_raw` VALUES(8, '8', 'Weeknights with Giada', 'Quick and Simple Recipes to Revamp Dinner, by Giada De Laurentiis', 10, 20.53, 'images/Product_Images/index_size/weeknights_with_giada_index.JPG', 'images/Product_Images/product_page_size/weeknights_with_giada_product.JPG', 148, 117, 380, 300, 'Books');
INSERT INTO `product_raw` VALUES(9, '9', 'The Hunger Games Trilogy Boxed Set', 'by Suzanne Collins', 10, 31.57, 'images/Product_Images/index_size/hunger_games_trilogy_index.JPG', 'images/Product_Images/product_page_size/hunger_games_trilogy_product.JPG', 148, 105, 424, 300, 'Books');
INSERT INTO `product_raw` VALUES(10, '10', 'Get Lucky', 'How to Put Planned Serendipity to Work for You and Your Business, by Thor Muller and Lane Becker', 10, 16, 'images/Product_Images/index_size/get_lucky_index.JPG', 'images/Product_Images/product_page_size/get_lucky_product.JPG', 148, 99, 451, 300, 'Books');
INSERT INTO `product_raw` VALUES(11, '11', 'Tag Hauer CV2A10', 'Carrera automatic chronograph day-date watch', 10, 2975, 'images/Product_Images/index_size/tag_hauer_CV2A10_index.jpg', 'images/Product_Images/product_page_size/tag_hauer_CV2A10_product.jpg', 246, 190, 428, 385, 'Watches');
INSERT INTO `product_raw` VALUES(12, '12', 'Invicta Watch', 'Invicta II chronograph diamond', 10, 199.99, 'images/Product_Images/index_size/invicta_watch_index.jpg', 'images/Product_Images/product_page_size/invicta_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(13, '13', 'Swiss Legend Watch', 'Traveler GMT black textured dial', 10, 179.99, 'images/Product_Images/index_size/swiss_legend_watch_index.jpg', 'images/Product_Images/product_page_size/swiss_legend_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(14, '14', 'Red Line Watch', 'Tech Chronograph Black Dial Black Ion Plated', 10, 139, 'images/Product_Images/index_size/red_line_watch_index.jpg', 'images/Product_Images/product_page_size/red_line_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(15, '15', 'Jacques Lemans Watch', 'London Stainless Steel', 10, 194, 'images/Product_Images/index_size/jacques_lemans_watch_index.jpg', 'images/Product_Images/product_page_size/jacques_lemans_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(16, '16', 'Glam Rock Watch', 'Palm Beach Silver Dial Orange Silicon', 10, 318, 'images/Product_Images/index_size/glam_rock_watch_index.jpg', 'images/Product_Images/product_page_size/glam_rock_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(17, '17', 'Seiko Watch', 'Seiko 5 Automatic Beige Fabric', 10, 89, 'images/Product_Images/index_size/seiko_watch_index.jpg', 'images/Product_Images/product_page_size/seiko_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(18, '18', 'Stuhrling Watch', 'Gatsby Society II Swiss Quartz', 10, 140.1, 'images/Product_Images/index_size/stuhrling_watch_index.jpg', 'images/Product_Images/product_page_size/stuhrling_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(19, '19', 'Lucien Piccard Watch', 'Diver Black Dial Black Rubber', 10, 179.99, 'images/Product_Images/index_size/lucien_piccard_watch_index.jpg', 'images/Product_Images/product_page_size/lucien_piccard_watch_product.jpg', 167, 117, 392, 274, 'Watches');
INSERT INTO `product_raw` VALUES(20, '20', 'Hamilton Watch', 'Khaki Navy BeLOWZERO Auto Chrono', 10, 1445, 'images/Product_Images/index_size/hamilton_watch_index.jpg', 'images/Product_Images/product_page_size/hamilton_watch_product.jpg', 155, 96, 400, 255, 'Watches');
INSERT INTO `product_raw` VALUES(21, '21', 'Anchorman', 'Unrated Widescreen Edition, starring Will Ferrell, Christina Applegate, directed by Adam McKay', 10, 7.99, 'images/Product_Images/index_size/anchorman_index.jpg', 'images/Product_Images/product_page_size/anchorman_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(22, '22', 'Inception', 'starring Leonardo DiCaprio, Ken Watanabe, directed by Christopher Nolan', 10, 7.69, 'images/Product_Images/index_size/inception_index.jpg', 'images/Product_Images/product_page_size/inception_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(23, '23', 'Inside Job', 'narrated by Matt Damon, directed by Charles Ferguson', 10, 10.49, 'images/Product_Images/index_size/inside_job_index.jpg', 'images/Product_Images/product_page_size/inside_job_product.jpg', 160, 112, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(24, '24', 'Moneyball', 'starring Brad Pitt, Jonah Hill, directed by Bennett Miller', 10, 14.99, 'images/Product_Images/index_size/moneyball_index.jpg', 'images/Product_Images/product_page_size/moneyball_product.jpg', 160, 111, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(25, '25', 'Monty Python and the Holy Grail', 'Special Edition, starring Graham Chapman, John Cleese, directed by Terry Gilliam and Terry Jones', 10, 9.99, 'images/Product_Images/index_size/monty_python_index.jpg', 'images/Product_Images/product_page_size/monty_python_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(26, '26', 'Rio', 'starring Jesse Eisenberg, Anne Hathaway', 10, 19.99, 'images/Product_Images/index_size/rio_index.jpg', 'images/Product_Images/product_page_size/rio_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(27, '27', 'The Artist', 'starring Jean Dujardin, Berenice Bejo, directed by Michel Hazanavicius', 10, 19.99, 'images/Product_Images/index_size/the_artist_index.jpg', 'images/Product_Images/product_page_size/the_artist_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(28, '28', 'The Descendants', 'starring George Clooney, Judy Greer, directed by Alexander Payne', 10, 14.99, 'images/Product_Images/index_size/the_descendants_index.jpg', 'images/Product_Images/product_page_size/the_descendants_product.jpg', 160, 120, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(29, '29', 'True Grit', 'starring Matt Damon, Jeff Bridges, directed by Joel Coen and Ethan Coen', 10, 11.43, 'images/Product_Images/index_size/true_grit_index.jpg', 'images/Product_Images/product_page_size/true_grit_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(30, '30', 'Zombieland', 'starring Jesse Eisenberg, Emma Stone, directed by Ruben Fleischer', 10, 9.99, 'images/Product_Images/index_size/zombieland_index.jpg', 'images/Product_Images/product_page_size/zombieland_product.jpg', 160, 160, 300, 300, 'Movies');
INSERT INTO `product_raw` VALUES(31, '31', 'Toshiba 17.3 inch Laptop', 'AMD E-Series processor, 4GB memory, 320 GB hard drive', 10, 329.99, 'images/Product_Images/index_size/toshiba_laptop_173_index.jpg', 'images/Product_Images/product_page_size/toshiba_laptop_173_product.jpg', 68, 105, 323, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(32, '32', 'HP 15.6 inch Laptop', 'Intel Pentium Processor, 4GB memory, 320GB hard drive', 10, 329.99, 'images/Product_Images/index_size/hp_laptop_156_index.jpg', 'images/Product_Images/product_page_size/hp_laptop_156_product.jpg', 75, 105, 358, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(33, '33', 'Dell 15.6 inch Laptop', 'AMD E-Series processor, 4GB memory, 500GB hard drive', 10, 349.99, 'images/Product_Images/index_size/dell_laptop_156_index.jpg', 'images/Product_Images/product_page_size/dell_laptop_156_product.jpg', 75, 105, 358, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(34, '34', 'HP 17.3 inch Laptop', 'Intel i7 processor, 8GB memory, 750GB hard drive', 10, 799.99, 'images/Product_Images/index_size/hp_laptop_173_index.jpg', 'images/Product_Images/product_page_size/hp_laptop_173_product.jpg', 75, 105, 355, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(35, '35', 'Asus 15.6 inch Laptop', 'Intel Core i5 processor, 4GB memory, 500GB hard drive', 10, 479.99, 'images/Product_Images/index_size/asus_laptop_156_index.jpg', 'images/Product_Images/product_page_size/asus_laptop_156_product.jpg', 69, 105, 328, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(36, '36', 'Samsung 17.3 inch Laptop', 'AMD A6-Series processor, 4GB memory, 500GB hard drive', 10, 449.99, 'images/Product_Images/index_size/samsung_laptop_173_index.jpg', 'images/Product_Images/product_page_size/samsung_laptop_173_product.jpg', 73, 105, 346, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(37, '37', 'HP 14 inch Laptop', 'Intel i5 processor, 8GB memory, 640GB hard drive', 10, 629.99, 'images/Product_Images/index_size/hp_laptop_140_index.jpg', 'images/Product_Images/product_page_size/hp_laptop_140_product.jpg', 76, 105, 362, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(38, '38', 'Dell 17.3 inch Laptop', 'Intel i5 processor, 8GB memory, 750GB hard drive', 10, 649.99, 'images/Product_Images/index_size/dell_laptop_173_index.jpg', 'images/Product_Images/product_page_size/dell_laptop_173_product.jpg', 74, 105, 354, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(39, '39', 'Toshiba 14 inch Laptop', 'Intel i3 processor, 6GB memory, 750GB hard drive', 10, 529.99, 'images/Product_Images/index_size/toshiba_laptop_140_index.jpg', 'images/Product_Images/product_page_size/toshiba_laptop_140_product.jpg', 79, 105, 375, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(40, '40', 'Sony 14 inch Laptop', 'Intel i5 processor, 6GB memory, 640GB hard drive', 10, 699.99, 'images/Product_Images/index_size/sony_laptop_140_index.jpg', 'images/Product_Images/product_page_size/sony_laptop_140_product.jpg', 80, 105, 381, 500, 'Laptops');
INSERT INTO `product_raw` VALUES(41, '41', 'Canon ELPH Camera', '5x optical/4x digital zoom, 2.7 inch color TFT-LCD display, 1080p HD video, Face detection', 10, 149.99, 'images/Product_Images/index_size/canon_elph_index.jpg', 'images/Product_Images/product_page_size/canon_elph_product.jpg', 65, 105, 308, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(42, '42', 'Sony Cyber-shot Camera', '16x optical/Smart Zoom digital zoom technology, 3 inch LCD, Full HD 1080/60p movie mode, 3D still image and 3D sweep panorama modes', 10, 329.99, 'images/Product_Images/index_size/sony_cybershot_index.jpg', 'images/Product_Images/product_page_size/sony_cybershot_product.jpg', 63, 105, 300, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(43, '43', 'Canon SX40 Camera', '35x optical/4x digital zoom, 2.7 inch LCD screen, 1080p HD video, optical image stabilizer', 10, 379.99, 'images/Product_Images/index_size/canon_sx40_index.jpg', 'images/Product_Images/product_page_size/canon_sx40_product.jpg', 81, 105, 387, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(44, '44', 'Canon EOS T3i Camera', 'Vari-angle 3 inch Clear View LCD screen, 1080 full HD video, 3.7 FPS, ISO 100-6400', 10, 798.99, 'images/Product_Images/index_size/canon_eos_t3i_index.jpg', 'images/Product_Images/product_page_size/canon_eos_t3i_product.jpg', 95, 105, 455, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(45, '45', 'Canon EOS T2i Camera', '18-55mm Lens, 3 inch LCD screen, Full HD video, ISO 100-6400', 10, 648.99, 'images/Product_Images/index_size/canon_eos_t2i_index.jpg', 'images/Product_Images/product_page_size/canon_eos_t2i_product.jpg', 83, 105, 397, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(46, '46', 'Nikon D5100 Camera', 'High Resolution 16.2 MP DX-format CMOS sensor, 3 inch Super-Density Vari-Angle LCD Monitor, 1080 full HD video, ISO sensitivity 100-6400', 10, 699.99, 'images/Product_Images/index_size/nikon_d5100_index.jpg', 'images/Product_Images/product_page_size/nikon_d5100_product.jpg', 82, 105, 388, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(47, '47', 'Nikon D3100 Camera', '3 inch TFT-LCD monitor with Live View, 1080p HD video, 3 FPS, ISO 100-3200', 10, 549.99, 'images/Product_Images/index_size/nikon_d3100_index.jpg', 'images/Product_Images/product_page_size/nikon_d3100_product.jpg', 83, 105, 395, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(48, '48', 'Canon EOS T3 Camera', '12.2 Megapixel, 2.7 inch color TFT-LCD monitor, HD movie mode, ISO 100-6400', 10, 491.99, 'images/Product_Images/index_size/canon_eos_t3_index.jpg', 'images/Product_Images/product_page_size/canon_eos_t3_product.jpg', 96, 105, 457, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(49, '49', 'Panasonic Lumix ZS8 Camera', '16x optical/4x digital zoom/64x total zoom, 3 inch TFT-LCD display, High-definition movie mode, Optical Image Stabilizer', 10, 199.99, 'images/Product_Images/index_size/panasonic_lumix_index.jpg', 'images/Product_Images/product_page_size/panasonic_lumix_product.jpg', 61, 105, 291, 500, 'Cameras');
INSERT INTO `product_raw` VALUES(50, '50', 'Canon S100 Camera', '5x optical/4x digital zoom, 3 inch LCD screen, 1080p HD video, DIGIC 5 image processor', 10, 386.99, 'images/Product_Images/index_size/canon_s100_index.jpg', 'images/Product_Images/product_page_size/canon_s100_product.jpg', 77, 105, 367, 500, 'Cameras');

-- --------------------------------------------------------

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` VALUES('administrator', 'webmaster@jparsons.net');
INSERT INTO `roles` VALUES('customer', 'tester@jparsons.net');

-- --------------------------------------------------------

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'tester@jparsons.net', 'e38ad214943daad1d64c102faec29de4afe9da3d', 'Tester', 'Test');
INSERT INTO `users` VALUES(2, 'webmaster@jparsons.net', '0e6e8aea0c6cb95943325a326b870349dbe9b088', 'James', 'Parsons');

