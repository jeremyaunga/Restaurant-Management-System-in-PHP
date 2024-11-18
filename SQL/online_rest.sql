-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2024 at 10:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '', '2024-10-31 07:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 7, 'Paneer Saag', 'Cottage cheese cooked with fresh ground spinach, onion, garlic and indian herbs.', 390.00, '6735816c13dc9.jpg'),
(2, 6, 'Chicken Achari', 'Dahi, achar, tomatoes, mustard oil, fennel seeds', 250.00, '673581b822846.jpg'),
(3, 8, 'Murgh Tikka Biryani', 'Chicken Tikka Biryani Recipe is the famous Indian delicacy of Punjabi Cuisine. Boneless Chicken is marinated in spicy mix of Yogurt and Spices.', 470.00, '6735807397251.jpg'),
(4, 7, 'Murgh Zafrani Kabab', 'Murgh Zafrani Kabab. A plateful of succulent pieces of meat, straight out of tandoor, is tough to resist.', 380.00, '673594aea8391.jpg'),
(5, 5, 'Pink Spaghetti Gamberoni', 'Spaghetti pasta, grilled shrimps, parmesan cheese, with our homemade pink sauce,', 380.00, '67359446b7476.jpg'),
(6, 9, 'Cheesy Mashed Potato', 'Covered with mozzarella cheese.', 250.00, '6735939dddf22.jpg'),
(7, 8, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 460.00, '673593193e217.jpg'),
(8, 7, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 380.00, '673592a7d4299.jpg'),
(9, 5, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 350.00, '6735861b3cc90.jpg'),
(10, 6, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 120.00, '673585cc3a29b.jpg'),
(11, 7, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 470.00, '67358575eaa0c.jpg'),
(12, 5, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 500.00, '6735850a42653.jpg'),
(13, 6, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 450.00, '673584b88041d.jpg'),
(14, 9, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 350.00, '673584636865e.jpg'),
(15, 6, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 320.00, '6735828f93b17.jpg'),
(16, 9, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 470.00, '673580c29c7e7.jpg'),
(20, 5, 'Ribs', 'Tasty goat ribs at your exposure', 600.00, '6724a327ec03b.jpg'),
(21, 8, 'Bugger', 'yammy and tasty', 200.00, '673594fc65bb6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'hold on were on the way', '2024-11-01 10:01:28'),
(2, 3, 'closed', 'Thank you for trusting us for your tastey meal , \r\nyour welcome again', '2024-11-01 10:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 6, 'village villa', 'villa@gmail.com', '0799833436', 'villarosa', '6am', '8pm', 'mon-fri', ' Kiambu ', '67357e4f3fc88.jpg', '2024-11-14 04:36:31'),
(6, 7, 'Zizzi', 'zizzi@gmail.com', '07998444653', 'www.zizzi.com', '9am', '3am', '24hr-x7', 'westlands', '672b6321a2097.jpg', '2024-11-06 12:37:53'),
(7, 8, 'Boma', 'boma@gmail.com', '0111213141', 'www.boma.co.ke', '9am', '5pm', 'mon-sat', ' Rongai ', '67357f5e2054a.jpg', '2024-11-14 04:41:02'),
(8, 6, 'Buring Hotel', 'buringhotel@gmail.com', '0787976757', 'www.duringhotel.com', '7am', '2am', '24hr-x7', 'Thika', '672b655f68c95.jpg', '2024-11-06 12:47:27'),
(9, 7, 'The Duke', 'theduke@gmail.com', '07998444653', 'ww.theduke.com', '7am', '8pm', 'mon-thu', ' Umoja ', '67357efeb5a74.jpg', '2024-11-14 04:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(6, 'Industrial Restaurant', '2024-11-06 12:31:58'),
(7, 'Luxualy', '2024-11-06 12:32:18'),
(8, 'Traditional', '2024-11-06 12:32:31'),
(9, 'Outdoor ', '2024-11-06 12:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(4, 'whale', 'Jeremiah', 'Aunga', 'aungajeremiah1738@gmail.com', '0799844480', '17dfcd44cb242301a38435c12704903f', '56808', 1, '2024-10-30 03:34:23'),
(5, 'larry', 'larrysteven', 'otiono', 'larry@gmail.com', '0799833436', 'd8a427f5d61c5fe57ae869281bf3b7c9', 'umoja', 1, '2024-10-31 07:54:52'),
(6, 'mbeevie', 'warren', 'mbevi', 'mbeviwarren@gmail.com', '0111660007', '74842b5ef48f144371bf92cf2cef79ee', 'githu', 1, '2024-11-05 11:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(2, 4, ' Buffalo Wings', 1, 450.00, 'in process', '2024-11-01 10:01:28'),
(3, 5, 'Paneer Saag', 1, 390.00, 'closed', '2024-11-01 10:07:13'),
(4, 5, 'mocktail', 4, 100.00, NULL, '2024-11-01 07:38:02'),
(5, 5, 'Paneer Saag', 1, 390.00, NULL, '2024-11-01 07:38:02'),
(6, 5, 'Chicken Achari', 1, 250.00, NULL, '2024-11-01 07:38:02'),
(7, 5, 'Murgh Zafrani Kabab', 4, 380.00, NULL, '2024-11-01 07:38:02'),
(8, 5, 'Crispy Chicken Strips', 1, 460.00, NULL, '2024-11-01 09:51:19'),
(9, 4, 'Spring Rolls', 1, 470.00, NULL, '2024-11-14 09:16:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

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
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
