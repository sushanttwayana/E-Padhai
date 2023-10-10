-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 06:37 AM
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
-- Database: `ePadhai`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(64, 4, 'Gone Girl', 310, 1, 'gonegirl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 4, 'Rita', 'rit2@gmail.com', '986000000', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(10, 4, 'Rohini Maharjan', '9860123456', 'rohini@gmail.com', 'Cash on delivery', 'flat no. , sars tole, , nepal - 1234', ', It Ends With Us (2) ', 1360, '07-Jun-2022', 'completed'),
(11, 4, 'Rita', '9870000000', 'rit2@gmail.com', 'Cash on delivery', 'sars tole, mahalaxmi-8, lalitpur, nepal - 1234', ', The Black Sun (1) ', 740, '07-Jun-2022', 'completed'),
(12, 4, 'swostiii', '5', 'swosti@gmail.com', 'Cash on delivery', 'sars tole, mahalaxmi-8, lalitpur, nepal - 1234', ', War and Peace (2) , Last Summer Boys: A Novel (1) ', 2361, '08-Jun-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'The Black Sun', 740, '278616054_734049201066868_5458225586139765554_n.jpg'),
(2, 'Last Summer Boys: A Novel', 765, 'lastsummerboys.jpg'),
(3, 'On The Beach', 1449, 'onthebeach.jpg'),
(4, 'Origin', 798, 'origin.jpg'),
(5, 'Oath of Office', 638, 'oathofoffice.jpg'),
(6, 'A Beautiful Mind', 1500, 'abeautifulmind.jpg'),
(7, 'Frida', 3624, 'frida.jpg'),
(8, 'Into The Wild', 1090, 'intothewild.jpg'),
(9, 'Becoming', 1619, 'becoming.jpg'),
(10, 'A Promised Land', 2210, 'apromisedland.jpg'),
(11, 'In Search of Lost Time', 800, 'insearchoflosttime.jpg'),
(12, 'Middle March', 492, 'middlemarch.jpg'),
(13, 'The Adventure of Huckleberry Finn', 500, 'theadventureofhuckleberry.jpg'),
(14, 'The Great Gatsby', 560, 'thegreatgatsby.jpg'),
(15, 'War and Peace', 798, 'warandpeace.jpg'),
(16, 'The Art of Simple Food', 2100, 'theartofsimplefood.jpg'),
(17, 'Baking: From my home to yours', 3000, 'bakingfrommyhometoyours.jpg'),
(18, 'Joy of Cooking', 2225, 'joyofcooking.png'),
(19, 'Mastering the art of French cooking', 2740, 'masteringtheartoffrenchcooking.jpg'),
(20, 'A modern way to eat', 1650, 'amodernwaytoeat.jpg'),
(21, 'The Professional Chef', 6000, 'theproffessionalchef.jpg'),
(22, 'The Night Circus', 540, 'thenightcircus.jpg'),
(23, 'The other city', 7480, 'theothercity.jpg'),
(24, 'The Unfinished World', 12000, 'theunfinishedworld.jpg'),
(25, 'Get in Trouble', 1370, 'getintrouble.jpg'),
(26, 'Gone Girl', 310, 'gonegirl.jpg'),
(27, 'The Silent Patient', 650, 'thesilentpatient.jpg'),
(28, 'A Good Girl\'s Guide to Murder', 800, 'agoodgirlsguidetomurder.jpg'),
(29, 'One of us is lying ', 640, 'oneofusislying.jpg'),
(30, 'The Woman in White ', 1568, 'thewomaninwhite.jpg'),
(31, 'Guns, Germs and Steel', 960, 'gunsgermsandsteel.jpg'),
(32, 'Sapiens: A Brief History of Humankind', 960, 'sapiens.png'),
(33, 'A People\'s History of the United States', 1470, 'apeopleshistoryofus.jpg'),
(34, 'The Guns of August', 1120, 'thegunsofaugust.jpg'),
(35, '1491: New Revelations of the Americas Before Columbus', 2600, '1491.jpg'),
(37, 'It Ends With Us', 680, 'itendswithus.jpg'),
(38, 'The Love Hypothesis', 960, 'thelovehypothesis.jpg'),
(39, 'Eleanor and Park', 800, 'eleanorandpark.jpg'),
(40, 'The Fault in Our Stars', 640, 'thefaultinourstars.jpg'),
(41, 'Call Me by Your Name', 800, 'callmebyyourname.jpg'),
(43, 'Atomic Habits', 1280, 'atomichabits.jpg'),
(44, 'The Power of Now', 800, 'thepowerofnow.jpg'),
(45, 'Think and Grow Rich', 299, 'thinkgrowandrich.jpg'),
(46, 'The 4-Hour Workweek', 1120, 'the4hoirworkweek.jpg'),
(47, 'The Subtle Art Of Not Giving A Fuck', 720, 'thesubtleartofnotgivingafuck.jpg'),
(48, 'Palpasa Cafe ', 425, 'palpasacafe.jpg'),
(49, 'Muna Madan', 408, 'munamadan.jpg'),
(50, 'Seto Dharti', 450, 'setodharti.jpg'),
(51, 'Phoolko Aankhama', 365, 'foolkoaakhama.jpg'),
(52, 'Pagal Basti', 270, 'pagalbasti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(3, 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin'),
(4, 'swostiii', 'swosti@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
