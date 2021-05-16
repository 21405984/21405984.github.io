-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 04:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(10) UNSIGNED NOT NULL,
  `login` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `quantity`, `image`, `description`) VALUES
(1, 'Baby Potatoes', 'Fruit & Vegetables ', '3.99', 0, 'images/Baby Potatoes.jpg', 'Our Ocado baby potatoes have a bright, translucent skin and                                             firm feel.                                             This pack contains uniform sized tubers. These fresh potatoes have a firm                                             texture when cooked and a slightly buttery mouth feel. They are ideal for                                             boiling and can be roasted too.'),
(2, 'Cushelle Toilet Roll', 'Home Care and Cleaning', '6.40', 0, 'images/CushelleRolls.jpg', 'Every sheet of Cushelle Ultra Quilted Coconut has been enriched with softening balm for cushiony softness and smoothness.\r\n\r\nWe\'ve also delicately scented each core with a tropical coconut scent'),
(3, 'Warburtons Toastie Thick Sliced White Bread', 'Bakery', '1.15', 0, 'images/Warburtons Toast.jpg', 'Great for Toasting, Low Fat and Sugars, Source of Protein, Vegetarian Society Approved, Kosher - KLBD, Halal - HFA Approved.'),
(4, 'Colgate Total Original', 'Home Care and Cleaning', '3.50', 0, 'images/Colgate Total Original.jpg', 'Colgate Total Original toothpaste proactively fights bacteria not just on your teeth, but also your tongue, cheeks and gums for up to 12 hours* for whole mouth health**'),
(5, 'Laila Pure Basmati Rice', 'Rice, Pasta & Pulses', '8.00', 0, 'images/LailaBasmati.jpg', 'Our Basmati Rice is perfect for curries or as an accompaniment to any meat, vegetable or fish dish. \r\nIt\'s aged to intensify the flavour and taste.\r\n It\'s naturally packed with vitamins and minerals, \r\nso an excellent choice for those seeking a healthy diet.'),
(6, 'Silver Spoon White Granulated Sugar', 'Food Cupboard', '0.65', 0, 'images/SilverSpoon Sugar.jpg', 'Proudly grown in Britain, For your everyday ta-dah!\r\n\r\nStorage:\r\nSugar is a natural preservative so store me in a cool dry place so I keep indefinitely.\r\n\r\nUsage:\r\n250 Servings'),
(7, 'Leap Wild Sockeye Salmon Fillets', 'Fish & Seafood', '6.99', 0, 'images/SalmonFillets.jpg', 'Sockeye is a species of salmon with a naturally deep, vibrant red colour\r\nGreat taste with a full flavour and firm texture\r\nNaturally high in Vitamin D, protein and omega-3\r\nLean & nutritious from a life swimming free\r\nFree, not farmed, Wild, natural & sustainable'),
(8, 'Organic Pineapple', 'Fruit & Vegetables ', '2.99', 0, 'images/Pineapple.jpg', 'Wholegood\'s Organic Pineapple tastes like the best beach holiday you\'ve ever had.\r\n\r\nStriking the perfect balance between sweet and sour, it\'s rich in enzymes, antioxidants and all good things.\r\n\r\nJuice it, grill it, eat it raw or chop it up in a salsa - from marinades to cocktails, the opportunities are endless.\r\n\r\nThis product is 100% plastic-free.'),
(9, 'McVitie\'s Milk Chocolate Digestives', 'Food Cupboard ', '1.50', 0, 'images/Digestives.jpg', 'Wheatmeal biscuits covered in milk chocolate\r\nThe Nation\'s Favourite, No Hydrogenated Vegetable Oil, 45% Wheat & Wholemeal, No Artificial Colours or Flavours, Suitable for Vegetarians'),
(10, 'Cadbury Dairy Milk Chocolate Bar ', 'Food Cupboard', '1.80', 0, 'images/Cadbury.jpg\r\n', 'A century of chocolate experience\r\nWhen John Cadbury first made drinking chocolate in Birmingham in 1824 using a simple pestle and mortar, he could never have dreamt that his family business would become one of the world\'s biggest and best loved chocolate manufacturers. Cadbury Dairy Milk, the UK\'s favourite chocolate, was first launched in 1905, setting new standards in quality and taste, which remain the hallmarks of Cadbury today.\r\nDeliciously creamy milk chocolate made with a Glass and a Half of fresh milk, Made with Fairtrade cocoa and sugar, Large 200g bar - perfect for sharing with the whole family, Packed in our special easy-open, easy close wrapper, Suitable for vegetarians\r\nCountry of Origin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
