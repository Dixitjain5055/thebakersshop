-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2023 at 05:26 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20517222_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'Naman', '104f8fd4c53dedd50e21f89f4a1e2cb22f07f5ad'),
(5, 'TejSave', '695a165470214274d887dae7aaca7d54596c51d7'),
(6, 'SeherShah', '529696df888e521300e3f6b3ff170a89412749e0'),
(7, 'Tanushree', '614ca9b393e9a18df4da46fb6f71bcc0bf328ee0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `search` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `category`, `search`) VALUES
(21, 'Almond Cookies', 'Butter, sugar flour, egg, almond extract, flour, baking powder, baking soda, almond', 60, 'Almond Cookies', 'Cookies', 'almond cookies cookies butter, sugar flour, egg, almond extract, flour, baking powder, baking soda, almond'),
(23, 'American Waffles', 'Flour, Baking powder, Sugar, Eggs, Milk, Butter, Vanilla extract', 150, 'American Waffles', 'Waffles', 'american waffles waffles flour, baking powder, sugar, eggs, milk, butter, vanilla extract'),
(24, 'Apple Tart', 'Heavy cream, Sugar, Butter, Milk, Cocoa powder', 100, 'Apple Tart', 'Pies and Trats', 'apple tart pies and trats heavy cream, sugar, butter, milk, cocoa powder'),
(25, 'Baguette', 'Flour, salt, yeast, water', 100, 'Baguette', 'Breads', 'baguette breads flour, salt, yeast, water'),
(26, 'Belgian Waffles', 'Flour, Sugar, Baking powder, Eggs, Milk, Butter, Vanilla extract, Maple syrup', 150, 'Belgian Waffles', 'Waffles', 'belgian waffles waffles flour, sugar, baking powder, eggs, milk, butter, vanilla extract, maple syrup'),
(27, 'Biscotti Cookies', 'Flour, baking powder, sugar, butter, eggs, vanilla extract, almond extract, almonds', 75, 'Biscotti Cookies', 'Cookies', 'biscotti cookies cookies flour, baking powder, sugar, butter, eggs, vanilla extract, almond extract, almonds'),
(28, 'Brioche', 'Flour, dry yeast, sugar, salt, eggs, butter, milk', 100, 'Brioche', 'Breads', 'brioche breads flour, dry yeast, sugar, salt, eggs, butter, milk'),
(29, 'Bubble Waffles', 'Flour, Baking powder, Sugar, Milk, Butter, Vanilla extract', 200, 'Bubble Waffles', 'Waffles', 'bubble waffles waffles flour, baking powder, sugar, milk, butter, vanilla extract'),
(30, 'Cake Doughnuts', 'Four, sugar, baking powder, baking soda, ground cinnamon, ground nutmeg, eggs, milk, butter, vanilla extract', 45, 'Cake Donuts', 'Doughnuts', 'cake doughnuts doughnuts four, sugar, baking powder, baking soda, ground cinnamon, ground nutmeg, eggs, milk, butter, vanilla extract'),
(31, 'Carrot Cake Cookies', 'Flour, baking soda, baking powder, ground cinnamon, ground ginger, ground nutmeg, butter, sugar, egg, vanilla extract, carrots, oats, raisins', 100, 'Carrot Cake Cookies', 'Cookies', 'carrot cake cookies cookies flour, baking soda, baking powder, ground cinnamon, ground ginger, ground nutmeg, butter, sugar, egg, vanilla extract, carrots, oats, raisins'),
(32, 'Cheese Cake', 'Graham cracker crumbs, sugar, butter, cream cheese, vanilla extract, eggs, heavy cream', 125, 'Cheese Cakes', 'Cakes', 'cheese cake cakes graham cracker crumbs, sugar, butter, cream cheese, vanilla extract, eggs, heavy cream'),
(34, 'Cherry Pie', 'Sweet cherries, Sugar, Vanilla and almond extract, Lemon juice, Salt , Egg, \r\nWhipping cream', 170, 'Cherry Pie', 'Pies and Trats', 'cherry pie pies and trats sweet cherries, sugar, vanilla and almond extract, lemon juice, salt , egg, \r\nwhipping cream'),
(35, 'Chocolate Cake', 'Flour, sugar, cocoa powder, baking powder, baking soda, milk, vegetable oil, eggs, vanilla extract', 450, 'Chocolate Cake', 'Cakes', 'chocolate cake cakes flour, sugar, cocoa powder, baking powder, baking soda, milk, vegetable oil, eggs, vanilla extract'),
(36, 'Chocolate Chip Cookies', 'Eggs, Chocolate chip, Vanilla, Butter, Baking Soda, Flour', 85, 'Chocolate Chip Cookies', 'Cookies', 'chocolate chip cookies cookies eggs, chocolate chip, vanilla, butter, baking soda, flour'),
(37, 'Chocolate Tart', 'Heavy cream, Sugar, Butter, Milk, Cocoa powder', 100, 'Chocolate Tart', 'Pies and Trats', 'chocolate tart pies and trats heavy cream, sugar, butter, milk, cocoa powder'),
(38, 'Cinnamom Twist', 'Flour, sugar, dry yeast, milk, butter, egg, vanilla extract, ground cinnamon', 150, 'Cinnamon Twist', 'Doughnuts', 'cinnamom twist doughnuts flour, sugar, dry yeast, milk, butter, egg, vanilla extract, ground cinnamon'),
(39, 'Corn Bread', 'Yellow cornbread, flour, sugar, baking powder, baking soda, buttermilk, eggs, butter, corn kernels', 80, 'Corn Bread', 'Breads', 'corn bread breads yellow cornbread, flour, sugar, baking powder, baking soda, buttermilk, eggs, butter, corn kernels'),
(40, 'Cream Pie', 'Graham cracker crumbs, Sugar, Butter, Gelatin, Cream cheese, Whipping cream, Vanilla extract, Berries', 150, 'Cream Pie', 'Pies and Trats', 'cream pie pies and trats graham cracker crumbs, sugar, butter, gelatin, cream cheese, whipping cream, vanilla extract, berries'),
(41, 'Croffle', 'Flour, Butter, Sugar, Icing sugar, Maple syrup', 140, 'Croffle', 'Waffles', 'croffle waffles flour, butter, sugar, icing sugar, maple syrup'),
(42, 'Crullers', 'Butter, flour, eggs , vegetable oil, sugar, vanilla extract', 70, 'Crullers', 'Doughnuts', 'crullers doughnuts butter, flour, eggs , vegetable oil, sugar, vanilla extract'),
(43, 'Cup Cakes', 'Flour, sugar, baking powder, butter, eggs, milk, vanilla extract, cocoa powder, nuts or chocolate chips', 400, 'Cup Cakes', 'Cakes', 'cup cakes cakes flour, sugar, baking powder, butter, eggs, milk, vanilla extract, cocoa powder, nuts or chocolate chips'),
(44, 'Custard Cake', 'Flour, baking powder , salt , butter, sugar, eggs, whole milk, vanilla extract', 290, 'Custard Cake', 'Cakes', 'custard cake cakes flour, baking powder , salt , butter, sugar, eggs, whole milk, vanilla extract'),
(45, 'Custard Pie', 'Baking powder, Butter, White vinegar, Eggs, Sugar, Vanilla extract, Ground nutmeg, Whipping cream', 200, 'Custard Pie', 'Pies and Trats', 'custard pie pies and trats baking powder, butter, white vinegar, eggs, sugar, vanilla extract, ground nutmeg, whipping cream'),
(46, 'Double Crust Fruit Pie', 'Flour, Vegetable shortening, Sliced and peeled fruit(of choice), Sugar, Ground cinnamon, Ground nutmeg, Milk, Butter', 340, 'Double Crust Fruit Pie', 'Pies and Trats', 'double crust fruit pie pies and trats flour, vegetable shortening, sliced and peeled fruit(of choice), sugar, ground cinnamon, ground nutmeg, milk, butter'),
(47, 'Filled Doughnuts', 'Flour, sugar, yeast, milk, butter, eggs, vanilla extract, fruit jam or custard, ground cinnamon', 65, 'Filled Donuts', 'Doughnuts', 'filled doughnuts doughnuts flour, sugar, yeast, milk, butter, eggs, vanilla extract, fruit jam or custard, ground cinnamon'),
(48, 'French Bread', 'Bread flour, salt, sugar, active dry yeast, olive oil, honey, herbs, garlic, cheese, seeds', 80, 'French Bread', 'Breads', 'french bread breads bread flour, salt, sugar, active dry yeast, olive oil, honey, herbs, garlic, cheese, seeds'),
(49, 'Fruit Cake', 'Dry fruits, flour, butter, eggs, brown sugar, baking powder, baking soda, spices milk', 499, 'Fruit Cake', 'Cakes', 'fruit cake cakes dry fruits, flour, butter, eggs, brown sugar, baking powder, baking soda, spices milk'),
(50, 'Fruit Tart', 'Flour, Sugar, Butter, Almond extract, Cream, Cream cheese, Lemon juice\r\n(Fruits of choice)', 200, 'Fruit Tart', 'Pies and Trats', 'fruit tart pies and trats flour, sugar, butter, almond extract, cream, cream cheese, lemon juice\r\n(fruits of choice)'),
(51, 'Gingerbread Cookies', 'Flour, baking powder, baking soda, ground ginger, ground cinnamon, butter, brown sugar, egg, vanilla extract', 80, 'Gingerbread Cookies', 'Cookies', 'gingerbread cookies cookies flour, baking powder, baking soda, ground ginger, ground cinnamon, butter, brown sugar, egg, vanilla extract'),
(52, 'Glazed Chocolate Doughnuts', 'Flour, cocoa powder, sugar, baking powder, baking soda, buttermilk, eggs, vegetable oil, vanilla extract, chocolate chips', 150, 'Glazed Chocolate Donut', 'Doughnuts', 'glazed chocolate doughnuts doughnuts flour, cocoa powder, sugar, baking powder, baking soda, buttermilk, eggs, vegetable oil, vanilla extract, chocolate chips'),
(53, 'Ice Cream Cake', 'Chocolate cookies, butter, sugar, ice cream (of choice), hot fudge sauce, caramel sauce, whipped cream and toppings', 699, 'Ice cream Cake', 'Cakes', 'ice cream cake cakes chocolate cookies, butter, sugar, ice cream (of choice), hot fudge sauce, caramel sauce, whipped cream and toppings'),
(54, 'Lemon Crackle Cake', 'Flour, baking powder, baking soda, salt, butter, sugar, eggs, buttermilk, lemon zest, lemon juice', 260, 'Lemon Crackle Cake', 'Cakes', 'lemon crackle cake cakes flour, baking powder, baking soda, salt, butter, sugar, eggs, buttermilk, lemon zest, lemon juice'),
(55, 'Lemon Tart', 'Butter, Sugar, Flour, Eggs, Lemon juice, Grated lemons', 80, 'Lemon Tart', 'Pies and Trats', 'lemon tart pies and trats butter, sugar, flour, eggs, lemon juice, grated lemons'),
(56, 'Macaroon Cookies', 'Sugar, flour, eggs, cream of tartar', 70, 'Macaroon Cookies', 'Cookies', 'macaroon cookies cookies sugar, flour, eggs, cream of tartar'),
(57, 'Malasada', 'Flour, sugar, yeast, milk, butter, eggs, vanilla extract, vegetable oil, chocolate ganache', 150, 'Malasada', 'Doughnuts', 'malasada doughnuts flour, sugar, yeast, milk, butter, eggs, vanilla extract, vegetable oil, chocolate ganache'),
(58, 'Maple Frosted Doughnuts', 'Flour, sugar, baking powder, baking soda, ground cinnamon, milk, eggs, butter, vanilla extract, vegetable oil', 200, 'Maple Frosted Donuts', 'Doughnuts', 'maple frosted doughnuts doughnuts flour, sugar, baking powder, baking soda, ground cinnamon, milk, eggs, butter, vanilla extract, vegetable oil'),
(59, 'Mochi Waffle', 'Sweet rice flour, Baking powder, Eggs, Milk, Sugar, Vanilla extract, Butter, Vegetable oil, \r\nBananas, Maple syrup, Whipped cream', 130, 'Mochi Waffle', 'Waffles', 'mochi waffle waffles sweet rice flour, baking powder, eggs, milk, sugar, vanilla extract, butter, vegetable oil, \r\nbananas, maple syrup, whipped cream'),
(60, 'Multigrain Bread', 'Flour, rye flour, oats, flax seeds, sunflower seeds, pumpkin seeds, active dry yeast, salt, vegetable oil, honey', 50, 'Multigrain Bread', 'Breads', 'multigrain bread breads flour, rye flour, oats, flax seeds, sunflower seeds, pumpkin seeds, active dry yeast, salt, vegetable oil, honey'),
(61, 'Oatmeal Raisin Cookies', 'Butter, brown sugar, eggs, vanilla extract, flour, baking soda, ground cinnamon, oats, raisins', 60, 'Oatmeal Raisin Cookies', 'Cookies', 'oatmeal raisin cookies cookies butter, brown sugar, eggs, vanilla extract, flour, baking soda, ground cinnamon, oats, raisins'),
(62, 'Pandan Waffle', 'Flour, Sugar, Milk, Coconut milk, Butter, Vanilla extract, Pandan flavouring', 140, 'Pandan Waffles', 'Waffles', 'pandan waffle waffles flour, sugar, milk, coconut milk, butter, vanilla extract, pandan flavouring'),
(63, 'Peach Pie', 'Sugar, Flour, Ground cinnamon, Fresh peaches, Lemon juice, Pie dough', 180, 'Peach Pie', 'Pies and Trats', 'peach pie pies and trats sugar, flour, ground cinnamon, fresh peaches, lemon juice, pie dough'),
(64, 'Pinata Cake', 'Flour, baking powder, baking soda, butter, sugar, eggs, vanilla extract, milk, candies, heavy cream', 899, 'Pinata Cake', 'Cakes', 'pinata cake cakes flour, baking powder, baking soda, butter, sugar, eggs, vanilla extract, milk, candies, heavy cream'),
(65, 'Pita Bread', 'Flour, salt, sugar, active dry yeast, olive oil', 100, 'Pita Bread', 'Breads', 'pita bread breads flour, salt, sugar, active dry yeast, olive oil'),
(66, 'Potato Waffle', 'Butter, Flour, Eggs, Potatoes, Garlic, Onions, Black pepper', 120, 'Potato Waffles', 'Waffles', 'potato waffle waffles butter, flour, eggs, potatoes, garlic, onions, black pepper'),
(67, 'Pound Cake', 'Butter, sugar, eggs, vanilla extract, flour, baking powder, baking soda, milk, lemon zest, almond extract', 200, 'Pound Cake', 'Cakes', 'pound cake cakes butter, sugar, eggs, vanilla extract, flour, baking powder, baking soda, milk, lemon zest, almond extract'),
(68, 'Rye Bread', 'Rye flour, flour, salt, honey, active dry yeast, water', 80, 'Rye Bread', 'Breads', 'rye bread breads rye flour, flour, salt, honey, active dry yeast, water'),
(69, 'Salted Honey Pistachio Cookies', 'Butter, sugar, honey, egg, vanilla extract, flour, baking powder, baking soda, shelled pistachios', 100, 'Salted Honey Pistachio Cookies', 'Cookies', 'salted honey pistachio cookies cookies butter, sugar, honey, egg, vanilla extract, flour, baking powder, baking soda, shelled pistachios'),
(70, 'Shortbread Cookies', 'Butter, White sugar, vanilla Extract, Flour', 45, 'Shortbread Cookies', 'Cookies', 'shortbread cookies cookies butter, white sugar, vanilla extract, flour'),
(71, 'Snickerdoodle Cookies', 'Butter, sugar, eggs, flour, cream of tartar, baking soda, ground cinnamon', 80, 'Snickerdoodle Cookies', 'Cookies', 'snickerdoodle cookies cookies butter, sugar, eggs, flour, cream of tartar, baking soda, ground cinnamon'),
(72, 'Sonhos', 'Flour, butter, eggs, sugar, lemon zest, oil, ground cinnmon', 150, 'Sonhos', 'Doughnuts', 'sonhos doughnuts flour, butter, eggs, sugar, lemon zest, oil, ground cinnmon'),
(73, 'Sour Cream Doughnuts', 'Flour, baking powder, baking soda, ground nutmeg, sugar, butter, eggs, sour cream, vegetable oil', 150, 'Sour Cream Donut', 'Doughnuts', 'sour cream doughnuts doughnuts flour, baking powder, baking soda, ground nutmeg, sugar, butter, eggs, sour cream, vegetable oil'),
(74, 'Sourdough', 'Flour, water, starter salt', 90, 'Sourdough', 'Breads', 'sourdough breads flour, water, starter salt'),
(75, 'Sponge Cake', 'Eggs, sugar, flour, baking powder, vanilla extract, butter milk', 325, 'Sponge Cake', 'Cakes', 'sponge cake cakes eggs, sugar, flour, baking powder, vanilla extract, butter milk'),
(76, 'Sprouted Bread', 'Sprouted grains, flour, yeast, salt, honey, oil, seeds or nuts', 150, 'Sprouted Bread', 'Breads', 'sprouted bread breads sprouted grains, flour, yeast, salt, honey, oil, seeds or nuts'),
(77, 'Strawberry Tart', 'Flour, Egg, Sugar, Vanilla extract, Butter, Strawberry, Milk', 300, 'Strawberry Tart', 'Pies and Trats', 'strawberry tart pies and trats flour, egg, sugar, vanilla extract, butter, strawberry, milk'),
(78, 'Stroop Waffle', 'Flour, Butter, Sugar, Milk, Eggs,Yeast , Ground cinnamon, Molasses', 160, 'Stroopwafles', 'Waffles', 'stroop waffle waffles flour, butter, sugar, milk, eggs,yeast , ground cinnamon, molasses'),
(79, 'Toaster Waffle', 'Flour, Baking powder, Coconut water, Butter, Eggs, Vegetable oil', 150, 'Toaster Waffle', 'Waffles', 'toaster waffle waffles flour, baking powder, coconut water, butter, eggs, vegetable oil'),
(80, 'Truffle Cake', 'flour, sugar, cocoa powder, baking powder, baking soda, eggs, buttermilk, vegetable oil, vanilla extract, coffee, heavy cream, chocolate, butter', 680, 'Truffle Cake', 'Cakes', 'truffle cake cakes flour, sugar, cocoa powder, baking powder, baking soda, eggs, buttermilk, vegetable oil, vanilla extract, coffee, heavy cream, chocolate, butter'),
(81, 'Vegan Waffle', 'Flour, Sugar, Oil, Baking powder, Almond milk', 130, 'Vegan Waffles', 'Waffles', 'vegan waffle waffles flour, sugar, oil, baking powder, almond milk'),
(82, 'Whole Grain Bread', 'Wheat flour, wheat bran, oats, active dry yeast, salt, water, honey, vegetable oil', 50, 'Whole Grain Bread', 'Breads', 'whole grain bread breads wheat flour, wheat bran, oats, active dry yeast, salt, water, honey, vegetable oil'),
(83, 'Yeast Doughnuts', 'Milk, dry yeast, sugar, eggs, butter, flour, vegetable oil', 50, 'Yeast Donuts', 'Doughnuts', 'yeast doughnuts doughnuts milk, dry yeast, sugar, eggs, butter, flour, vegetable oil');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'Dj', 'jaindixit5055@gmail.com', '0c854b0de8975b81ddd2765b349f194da5457a2e'),
(3, 'namanshah1211', 'wwwnamanshah@gmail.com', '104f8fd4c53dedd50e21f89f4a1e2cb22f07f5ad');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
