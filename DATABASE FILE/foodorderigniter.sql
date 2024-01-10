-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 06:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Grilled Cheese Sandwich', 'Grilled cheese sandwich or grilled cheese is a hot sandwich made with more varieties of cheese cooked on the grill long enough for the cheese to melt a little and the bread to get brown and a little crispy. Grill until lightly browned and flip over; conti', 60, 'The-Best-Ever-Grilled-Cheese-Sandwich_EXPS_THSO18_222725_D03_06_4b.jpg'),
(3, 1, 'Hot Dog', 'Whole cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', 45, 'hdoggg.jpg'),
(4, 1, 'Ham Burger', 'Sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. The Epic Ham and Cheese Stuffed Bacon Burger is hands down the best', 45, 'hmbrger.jpg'),
(5, 3, 'Veg manchurian', 'Veg manchurian gravy recipe has a sauce or gravy in which the fried veggies balls are tossed and dunked.  The sauce has a mix of eclectic flavors and tastes like sweet, savory, spicy, sour and umami. The recipe is also vegan.', 100, 'detroitpzz1.jpg'),
(6, 3, 'Hakka Noodles', 'Hakka Noodles are easy and delicious wok-tossed noodles. Thin noodles are tossed with veggies and sauces on high flame to make this Indo Chinese delicacy. Serve it with Veg Manchurian or Paneer Chilli and you are sorted', 90, 'Pappardelle1.jpg'),
(7, 3, 'Momos', 'Momos are a popular street food in northern parts of India. These are also known as Dim Sum and are basically dumplings made from flour with a savory stuffing.', 90, 'spCarbonara1.jpg'),
(8, 2, 'Cadbury Crackle', 'A Cadbury lover\'s delight! Cadbury Crackle chunks in a rich creamy chocolate tub with swirls of rich chocolate sauce. A perfect partner for celebrations!', 110, 'fried-ravioli-bread-crumbs1.jpg'),
(9, 2, 'Choco Brownie Fudge', 'Rich chocolate tub full of chunky brownie pieces and chocolate fudge. A tub that will make a dark chocolate lover Rock N Roll.', 250, 'Choco_Brownie_Fudge.jpg'),
(10, 2, 'Cornetto Chokissimo', 'Disc as soft as a kiss! Crunchy waffle cone filled with creamy chocolate and brownie pieces with a soft chocolate disc and almond sprinkles on top.', 60, 'aw-arancini-articleLarge1.jpg'),
(11, 4, 'Dal Makhani', 'This Dal Makhani recipe is a restaurant style version with subtle smoky flavors and creaminess of the lentils. If you love authentic Punjabi food then you are going to love this Dal Makhani even more.', 260, 'curywurst1.jpg'),
(12, 4, 'Shahi Paneer', 'Shahi Paneer is deliciously rich and creamy, making it one of the most popular recipes in Mughlai cuisine. Fresh, unmelting cheese is married with a creamy gravy, perfect for serving with naan or roti. “Shahi” means “royalty,” and I can promise this dish ', 100, 'stkkk1.jpg'),
(13, 1, 'French Fries', 'French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes. French fries have numerous variants, from thick-cut to shoestring, crinkle, curly and many other names.', 45, 'ffries.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 6, 'Burger King', 'www.burgerking.in', '01725046385', 'www.burgerking.in', '8am', '7pm', 'mon-sat', 'SCO 455, Sec 35C Chandigarh', 'grestro1.jpg'),
(2, 5, 'Kwality Walls', 'www.kwalitywalls.in', '01722782381', 'www.kwalitywalls.in', '10am', '7pm', 'mon-sat', '103, Sector 18, Chandigarh', 'vrfnb2.jpg'),
(3, 4, 'Yo! China', 'www.yochina.in', '01724615522', 'www.yochina.in', '8am', '8pm', 'mon-sat', 'SCO 4, Sector 9-D, Chandigarh', 'TOWNSEND1.jpg'),
(4, 2, 'Gopal Sweets', 'gopalsweets.in', '9781300687', 'gopalsweets.in', '8am', '8pm', '24hr-x7', 'SCO- 417, Sector 35, Chandigarh', 'artisan-cafe-berea-ky1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'Indian'),
(3, 'Continental'),
(4, 'Chinese'),
(5, 'Desserts'),
(6, 'American');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(35, 'Anshul', 'Anshul', '_', 'anshul@gmail.com', '8849464546', '$2y$10$f71uLVZzXHM3wG8Ry2nOiOlONvlMbMt.1PTZUuFspOJL8p9xzy6cm', 'Chandigarh'),
(36, 'Divyanshu', 'Divyanshu', '_', 'divyanshu@gmail.com', '7884511515', '$2y$10$TJ1bNtplqablo.Vcf6Hrtu0aeYHQ7OvEpt0i7tT0Z/Vm/6yUPNP6q', 'Punjab'),
(37, 'Vineet', 'Vineet', '_', 'vineet@gmail.com', '4984464666', '$2y$10$.32mhY1GdaxLvI81J4mcoOP5VvjV.3JQh7FlO7XdJNuHM4lLGRjue', 'Mohali'),
(38, 'Gourav', 'Gourav', '_', 'Gourav@gmail.com', '8798749464', '$2y$10$X3gv97Ix/IHHGa/l3TLjseMvGj28kQmQcedqBd5H3.b87ivqPkNO6', 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(18, 18, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2021-05-16 18:01:05', '2021-05-16 16:02:09', 3),
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2),
(22, 23, 16, 'Sesame Chicken', 3, 33, 'closed', '2021-05-17 14:19:58', '2021-05-17 12:30:47', 4),
(23, 24, 1, 'Grilled Cheese Sandwich', 2, 12, NULL, '2021-05-17 14:30:02', '2021-05-17 08:45:02', 1),
(24, 24, 20, 'Chop Suey', 1, 8, 'closed', '2021-05-17 14:30:02', '2021-05-17 14:32:49', 2),
(25, 31, 7, 'Spaghetti Carbonara', 1, 9, NULL, '2021-05-17 14:38:44', '2021-05-17 08:53:44', 1),
(28, 34, 8, 'Toasted Ravioli', 4, 44, 'rejected', '2021-05-17 16:22:34', '2021-05-17 14:31:36', 2),
(43, 36, 7, 'Momos', 1, 90, NULL, '2022-05-17 18:49:19', '2022-05-17 13:19:19', 3),
(44, 37, 9, 'Choco Brownie Fudge', 1, 250, 'in process', '2022-05-17 18:49:36', '2022-05-17 16:50:43', 2),
(45, 38, 1, 'Grilled Cheese Sandwich', 1, 60, 'rejected', '2022-05-17 18:49:55', '2022-05-17 16:50:38', 1),
(46, 35, 11, 'Dal Makhani', 1, 260, 'closed', '2022-05-17 18:50:17', '2022-05-17 16:50:31', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
