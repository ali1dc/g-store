create table Product
(
ProductID integer PRIMARY KEY,
ASIN varchar(50),
ProductName varchar(250),
ProductDescription varchar(250),
QuantityInStock integer,
Price double,
IndexImage varchar(250),
ProductImage varchar(250),
IndexImageHeight integer,
IndexImageWidth integer,
ProductImageHeight integer,
ProductImageWidth integer,
CategoryName varchar(250)
);

insert into Product
values
(
1, '1', 'Head First Android',
 'by Jonathan Simon', 10, 24.59,
'images/Product_Images/index_size/head_first_android_index.jpg',
'images/Product_Images/product_page_size/head_first_android_product.jpg',
135, 117, 300, 300,
  'Books'
);

insert into Product
values
(
2, '2', 'Scala In Depth',
 'by Joshua D. Suereth', 10, 21.81,
'images/Product_Images/index_size/scala_in_depth_index.jpg',
'images/Product_Images/product_page_size/scala_in_depth_product.jpg',
135, 107, 300, 300,
  'Books'
);
 
insert into Product
values
(
3, '3', 'Calico Joe',
 'by John Grisham', 10, 14.10,
'images/Product_Images/index_size/calico_joe_index.JPG',
'images/Product_Images/product_page_size/calico_joe_product.JPG',
148, 98, 453, 300,
  'Books'
);

insert into Product
values
(
4, "4", "The Serpent's Shadow",
 "Kane Chronicles Series #3, by Rick Riordan", 10, 11.51,
"images/Product_Images/index_size/serpents_shadow_index.JPG",
"images/Product_Images/product_page_size/serpents_shadow_product.JPG",
148, 98, 453, 300,
  "Books"
);

insert into Product
values
(
5, "5", "Let's Pretend This Never Happened",
 "by Jenny Lawson (The Bloggress)", 10, 13.98,
"images/Product_Images/index_size/lets_pretend_index.JPG",
"images/Product_Images/product_page_size/lets_pretend_product.JPG",
148, 98, 451, 300,
  "Books"
);

insert into Product
values
(
6, "6", "The Wind Through the Keyhole",
 "A Dark Tower Novel, by Stephen King", 10, 16.36,
"images/Product_Images/index_size/the_wind_through_index.JPG",
"images/Product_Images/product_page_size/the_wind_through_product.JPG",
148, 98, 453, 300,
  "Books"
);

insert into Product
values
(
7, "7", "Fifty Shades of Grey",
 "by E L James", 10, 10.98,
"images/Product_Images/index_size/fifty_shades_of_grey_index.JPG",
"images/Product_Images/product_page_size/fifty_shades_of_grey_product.JPG",
148, 96, 464, 300,
  "Books"
);

insert into Product
values
(
8, "8", "Weeknights with Giada",
 "Quick and Simple Recipes to Revamp Dinner, by Giada De Laurentiis", 10, 20.53,
"images/Product_Images/index_size/weeknights_with_giada_index.JPG",
"images/Product_Images/product_page_size/weeknights_with_giada_product.JPG",
148, 117, 380, 300,
  "Books"
);


insert into Product
values
(
9, "9", "The Hunger Games Trilogy Boxed Set",
 "by Suzanne Collins", 10, 31.57,
"images/Product_Images/index_size/hunger_games_trilogy_index.JPG",
"images/Product_Images/product_page_size/hunger_games_trilogy_product.JPG",
148, 105, 424, 300,
  "Books"
);

insert into Product
values
(
10, "10", "Get Lucky",
 "How to Put Planned Serendipity to Work for You and Your Business, by Thor Muller and Lane Becker", 10, 16,
"images/Product_Images/index_size/get_lucky_index.JPG",
"images/Product_Images/product_page_size/get_lucky_product.JPG",
148, 99, 451, 300,
  "Books"
);

insert into Product
values
(
11, "11", "Tag Hauer CV2A10",
 "Carrera automatic chronograph day-date watch", 10, 2975,
"images/Product_Images/index_size/tag_hauer_CV2A10_index.jpg",
"images/Product_Images/product_page_size/tag_hauer_CV2A10_product.jpg",
246, 190, 428, 385,
  "Watches"
);

insert into Product
values
(
12, "12", "Invicta Watch",
 "Invicta II chronograph diamond", 10, 199.99,
"images/Product_Images/index_size/invicta_watch_index.jpg",
"images/Product_Images/product_page_size/invicta_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
13, "13", "Swiss Legend Watch",
 "Traveler GMT black textured dial", 10, 179.99,
"images/Product_Images/index_size/swiss_legend_watch_index.jpg",
"images/Product_Images/product_page_size/swiss_legend_watch_product.jpg",
167, 117, 392, 274, 
  "Watches"
);

insert into Product
values
(
14, "14", "Red Line Watch",
 "Tech Chronograph Black Dial Black Ion Plated", 10, 139,
"images/Product_Images/index_size/red_line_watch_index.jpg",
"images/Product_Images/product_page_size/red_line_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
15, "15", "Jacques Lemans Watch",
 "London Stainless Steel", 10, 194,
"images/Product_Images/index_size/jacques_lemans_watch_index.jpg",
"images/Product_Images/product_page_size/jacques_lemans_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
16, "16", "Glam Rock Watch",
 "Palm Beach Silver Dial Orange Silicon", 10, 318,
"images/Product_Images/index_size/glam_rock_watch_index.jpg",
"images/Product_Images/product_page_size/glam_rock_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
17, "17", "Seiko Watch",
 "Seiko 5 Automatic Beige Fabric", 10, 89,
"images/Product_Images/index_size/seiko_watch_index.jpg",
"images/Product_Images/product_page_size/seiko_watch_product.jpg",
167, 117, 392, 274, 
  "Watches"
);

insert into Product
values
(
18, "18", "Stuhrling Watch",
 "Gatsby Society II Swiss Quartz", 10, 140.10,
"images/Product_Images/index_size/stuhrling_watch_index.jpg",
"images/Product_Images/product_page_size/stuhrling_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
19, "19", "Lucien Piccard Watch",
 "Diver Black Dial Black Rubber", 10, 179.99,
"images/Product_Images/index_size/lucien_piccard_watch_index.jpg",
"images/Product_Images/product_page_size/lucien_piccard_watch_product.jpg",
167, 117, 392, 274,
  "Watches"
);

insert into Product
values
(
20, "20", "Hamilton Watch",
 "Khaki Navy BeLOWZERO Auto Chrono", 10, 1445,
"images/Product_Images/index_size/hamilton_watch_index.jpg",
"images/Product_Images/product_page_size/hamilton_watch_product.jpg",
155, 96, 400, 255,
  "Watches"
);

insert into Product
values
(
21, "21", "Anchorman",
 "Unrated Widescreen Edition, starring Will Ferrell, Christina Applegate, directed by Adam McKay", 10, 7.99,
"images/Product_Images/index_size/anchorman_index.jpg",
"images/Product_Images/product_page_size/anchorman_product.jpg",
160, 160, 300, 300,
  "Movies"
);

insert into Product
values
(
22, "22", "Inception",
 "starring Leonardo DiCaprio, Ken Watanabe, directed by Christopher Nolan", 10, 7.69,
"images/Product_Images/index_size/inception_index.jpg",
"images/Product_Images/product_page_size/inception_product.jpg",
160, 160, 300, 300,
  "Movies"
);

insert into Product
values
(
23, "23", "Inside Job",
 "narrated by Matt Damon, directed by Charles Ferguson", 10, 10.49,
"images/Product_Images/index_size/inside_job_index.jpg",
"images/Product_Images/product_page_size/inside_job_product.jpg",
160, 112, 300, 300, 
  "Movies"
);

insert into Product
values
(
24, "24", "Moneyball",
 "starring Brad Pitt, Jonah Hill, directed by Bennett Miller", 10, 14.99,
"images/Product_Images/index_size/moneyball_index.jpg",
"images/Product_Images/product_page_size/moneyball_product.jpg",
160, 111, 300, 300, 
  "Movies"
);

insert into Product
values
(
25, "25", "Monty Python and the Holy Grail",
 "Special Edition, starring Graham Chapman, John Cleese, directed by Terry Gilliam and Terry Jones", 10, 9.99,
"images/Product_Images/index_size/monty_python_index.jpg",
"images/Product_Images/product_page_size/monty_python_product.jpg",
160, 160, 300, 300, 
  "Movies"
);

insert into Product
values
(
26, "26", "Rio",
 "starring Jesse Eisenberg, Anne Hathaway", 10, 19.99,
"images/Product_Images/index_size/rio_index.jpg",
"images/Product_Images/product_page_size/rio_product.jpg",
160, 160, 300, 300, 
  "Movies"
);

insert into Product
values
(
27, "27", "The Artist",
 "starring Jean Dujardin, Berenice Bejo, directed by Michel Hazanavicius", 10, 19.99,
"images/Product_Images/index_size/the_artist_index.jpg",
"images/Product_Images/product_page_size/the_artist_product.jpg",
160, 160, 300, 300, 
  "Movies"
);

insert into Product
values
(
28, "28", "The Descendants",
 "starring George Clooney, Judy Greer, directed by Alexander Payne", 10, 14.99,
"images/Product_Images/index_size/the_descendants_index.jpg",
"images/Product_Images/product_page_size/the_descendants_product.jpg",
160, 120, 300, 300, 
  "Movies"
);

insert into Product
values
(
29, "29", "True Grit",
 "starring Matt Damon, Jeff Bridges, directed by Joel Coen and Ethan Coen", 10, 11.43,
"images/Product_Images/index_size/true_grit_index.jpg",
"images/Product_Images/product_page_size/true_grit_product.jpg",
160, 160, 300, 300, 
  "Movies"
);

insert into Product
values
(
30, "30", "Zombieland",
 "starring Jesse Eisenberg, Emma Stone, directed by Ruben Fleischer", 10, 9.99,
"images/Product_Images/index_size/zombieland_index.jpg",
"images/Product_Images/product_page_size/zombieland_product.jpg",
160, 160, 300, 300, 
  "Movies"
);

insert into Product
values
(
31, "31", "Toshiba 17.3 inch Laptop",
 "AMD E-Series processor, 4GB memory, 320 GB hard drive", 10, 329.99,
"images/Product_Images/index_size/toshiba_laptop_173_index.jpg",
"images/Product_Images/product_page_size/toshiba_laptop_173_product.jpg",
68, 105, 323, 500, 
  "Laptops"
);

insert into Product
values
(
32, "32", "HP 15.6 inch Laptop",
 "Intel Pentium Processor, 4GB memory, 320GB hard drive", 10, 329.99,
"images/Product_Images/index_size/hp_laptop_156_index.jpg",
"images/Product_Images/product_page_size/hp_laptop_156_product.jpg",
75, 105, 358, 500, 
  "Laptops"
);

insert into Product
values
(
33, "33", "Dell 15.6 inch Laptop",
 "AMD E-Series processor, 4GB memory, 500GB hard drive", 10, 349.99,
"images/Product_Images/index_size/dell_laptop_156_index.jpg",
"images/Product_Images/product_page_size/dell_laptop_156_product.jpg",
75, 105, 358, 500, 
  "Laptops"
);

insert into Product
values
(
34, "34", "HP 17.3 inch Laptop",
 "Intel i7 processor, 8GB memory, 750GB hard drive", 10, 799.99,
"images/Product_Images/index_size/hp_laptop_173_index.jpg",
"images/Product_Images/product_page_size/hp_laptop_173_product.jpg",
75, 105, 355, 500, 
  "Laptops"
);

insert into Product
values
(
35, "35", "Asus 15.6 inch Laptop",
 "Intel Core i5 processor, 4GB memory, 500GB hard drive", 10, 479.99,
"images/Product_Images/index_size/asus_laptop_156_index.jpg",
"images/Product_Images/product_page_size/asus_laptop_156_product.jpg",
69, 105, 328, 500, 
  "Laptops"
);

insert into Product
values
(
36, "36", "Samsung 17.3 inch Laptop",
 "AMD A6-Series processor, 4GB memory, 500GB hard drive", 10, 449.99,
"images/Product_Images/index_size/samsung_laptop_173_index.jpg",
"images/Product_Images/product_page_size/samsung_laptop_173_product.jpg",
73, 105, 346, 500, 
  "Laptops"
);

insert into Product
values
(
37, "37", "HP 14 inch Laptop",
 "Intel i5 processor, 8GB memory, 640GB hard drive", 10, 629.99,
"images/Product_Images/index_size/hp_laptop_140_index.jpg",
"images/Product_Images/product_page_size/hp_laptop_140_product.jpg",
76, 105, 362, 500, 
  "Laptops"
);

insert into Product
values
(
38, "38", "Dell 17.3 inch Laptop",
 "Intel i5 processor, 8GB memory, 750GB hard drive", 10, 649.99,
"images/Product_Images/index_size/dell_laptop_173_index.jpg",
"images/Product_Images/product_page_size/dell_laptop_173_product.jpg",
74, 105, 354, 500, 
  "Laptops"
);

insert into Product
values
(
39, "39", "Toshiba 14 inch Laptop",
 "Intel i3 processor, 6GB memory, 750GB hard drive", 10, 529.99,
"images/Product_Images/index_size/toshiba_laptop_140_index.jpg",
"images/Product_Images/product_page_size/toshiba_laptop_140_product.jpg",
79, 105, 375, 500, 
  "Laptops"
);

insert into Product
values
(
40, "40", "Sony 14 inch Laptop",
 "Intel i5 processor, 6GB memory, 640GB hard drive", 10, 699.99,
"images/Product_Images/index_size/sony_laptop_140_index.jpg",
"images/Product_Images/product_page_size/sony_laptop_140_product.jpg",
80, 105, 381, 500, 
  "Laptops"
);

insert into Product
values
(
41, "41", "Canon ELPH Camera",
 "5x optical/4x digital zoom, 2.7 inch color TFT-LCD display, 1080p HD video, Face detection", 10, 149.99,
"images/Product_Images/index_size/canon_elph_index.jpg",
"images/Product_Images/product_page_size/canon_elph_product.jpg",
65, 105, 308, 500, 
  "Cameras"
);

insert into Product
values
(
42, "42", "Sony Cyber-shot Camera",
 "16x optical/Smart Zoom digital zoom technology, 3 inch LCD, Full HD 1080/60p movie mode, 3D still image and 3D sweep panorama modes", 10, 329.99,
"images/Product_Images/index_size/sony_cybershot_index.jpg",
"images/Product_Images/product_page_size/sony_cybershot_product.jpg",
63, 105, 300, 500, 
  "Cameras"
);

insert into Product
values
(
43, "43", "Canon SX40 Camera",
 "35x optical/4x digital zoom, 2.7 inch LCD screen, 1080p HD video, optical image stabilizer", 10, 379.99,
"images/Product_Images/index_size/canon_sx40_index.jpg",
"images/Product_Images/product_page_size/canon_sx40_product.jpg",
81, 105, 387, 500, 
  "Cameras"
);

insert into Product
values
(
44, "44", "Canon EOS T3i Camera",
 "Vari-angle 3 inch Clear View LCD screen, 1080 full HD video, 3.7 FPS, ISO 100-6400", 10, 798.99,
"images/Product_Images/index_size/canon_eos_t3i_index.jpg",
"images/Product_Images/product_page_size/canon_eos_t3i_product.jpg",
95, 105, 455, 500, 
  "Cameras"
);

insert into Product
values
(
45, "45", "Canon EOS T2i Camera",
 "18-55mm Lens, 3 inch LCD screen, Full HD video, ISO 100-6400", 10, 648.99,
"images/Product_Images/index_size/canon_eos_t2i_index.jpg",
"images/Product_Images/product_page_size/canon_eos_t2i_product.jpg",
83, 105, 397, 500, 
  "Cameras"
);

insert into Product
values
(
46, "46", "Nikon D5100 Camera",
 "High Resolution 16.2 MP DX-format CMOS sensor, 3 inch Super-Density Vari-Angle LCD Monitor, 1080 full HD video, ISO sensitivity 100-6400", 10, 699.99,
"images/Product_Images/index_size/nikon_d5100_index.jpg",
"images/Product_Images/product_page_size/nikon_d5100_product.jpg",
82, 105, 388, 500, 
  "Cameras"
);

insert into Product
values
(
47, "47", "Nikon D3100 Camera",
 "3 inch TFT-LCD monitor with Live View, 1080p HD video, 3 FPS, ISO 100-3200", 10, 549.99,
"images/Product_Images/index_size/nikon_d3100_index.jpg",
"images/Product_Images/product_page_size/nikon_d3100_product.jpg",
83, 105, 395, 500, 
  "Cameras"
);

insert into Product
values
(
48, "48", "Canon EOS T3 Camera",
 "12.2 Megapixel, 2.7 inch color TFT-LCD monitor, HD movie mode, ISO 100-6400", 10, 491.99,
"images/Product_Images/index_size/canon_eos_t3_index.jpg",
"images/Product_Images/product_page_size/canon_eos_t3_product.jpg",
96, 105, 457, 500, 
  "Cameras"
);

insert into Product
values
(
49, "49", "Panasonic Lumix ZS8 Camera",
 "16x optical/4x digital zoom/64x total zoom, 3 inch TFT-LCD display, High-definition movie mode, Optical Image Stabilizer", 10, 199.99,
"images/Product_Images/index_size/panasonic_lumix_index.jpg",
"images/Product_Images/product_page_size/panasonic_lumix_product.jpg",
61, 105, 291, 500, 
  "Cameras"
);

insert into Product
values
(
50, "50", "Canon S100 Camera",
 "5x optical/4x digital zoom, 3 inch LCD screen, 1080p HD video, DIGIC 5 image processor", 10, 386.99,
"images/Product_Images/index_size/canon_s100_index.jpg",
"images/Product_Images/product_page_size/canon_s100_product.jpg",
77, 105, 367, 500, 
  "Cameras"
);