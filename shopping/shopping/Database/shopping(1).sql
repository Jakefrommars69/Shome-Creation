-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2023 at 02:36 PM
-- Server version: 5.7.40-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Mens Wear', 'Mens Wear', '2017-01-24 19:17:37', '19-11-2023 09:13:10 PM'),
(4, 'Womans Wear', 'Womans Wear', '2017-01-24 19:19:32', '19-11-2023 09:13:39 PM'),
(5, 'Accessories', 'Accessories', '2017-01-24 19:19:54', '19-11-2023 09:13:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(9, 1, '23', 1, '2023-11-19 17:21:42', 'COD', NULL),
(10, 4, '27', 1, '2023-11-20 05:48:50', 'Debit / Credit card', 'Delivered'),
(11, 1, '33', 1, '2023-11-20 05:53:33', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'fdb', '2023-11-19 15:40:47'),
(6, 10, 'Delivered', 'dvfsd', '2023-11-20 05:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 30, 5, 5, 0, 'dgdf', 'dfg', 'dfgdf', '2023-11-19 17:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 13, 'boys shirts', 'boys shirts', 200, 200, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat.</p>', 'pm11.JPG', 'pm11.JPG', 'pm11.JPG', 10, 'In Stock', '2023-11-19 15:58:59', NULL),
(22, 4, 15, ' Sundress Dress Long Sleeve Dress Boho Cotton Linen Dress Maxi Dress Fashion', 'aa', 200, 100, '<span>Description:<br><br>100% Brand New and high quality.<br><br>Spring and Autumn vacation two dresses,cotton and linen fabric comfortable and breathable,<br><br>Literary and artistic style,loose long sleeve design,put on very show temperament.<br><br>Suitable for everyday or outing wear.<br><br>Features:<br><br>Material:Cotton Linen<br><br>Color:white,yellow,red,black,brick red<br><br>Size:M,L,XL,XXL,XXXL,4XL,5XL<br><br>(1 inch =25.4mm or 1mm = 0.0393 inch)</span>', 's-l1600.jpg', 's-l1600.jpg', 's-l1600.jpg', 10, 'In Stock', '2023-11-19 16:01:57', NULL),
(27, 4, 15, 'Women Sheer Mesh Mini Dress Bodycon Tube Dress', 'Women Sheer Mesh Mini Dress Bodycon Tube Dress', 344, 211, '<div data-combosku=\"10108434\" style=\"height: auto;\">\r\n							<p style=\"color:#000000;\">\r\n								<strong style=\"color: rgb(34, 34, 34);\">Set Include</strong><span style=\"color: rgb(34, 34, 34);\">: 1x Tube Dress</span></p>\r\n						</div>\r\n						<p>\r\n							<strong>Condition</strong>: New without tag<br>\r\n							<strong>Material</strong>: Polyester+ Spandex</p>\r\n						<p>\r\n							<strong>Features</strong>:<br>\r\n							Women’s tube dress erotic sheer babydoll stretchy bodycon mini dress nightwear, one size fits most.<br>\r\n							Strapless and hollow out netted design with shiny rhinestones, seamless tube dress lingerie, pull on closure.<br>\r\n							Close fitting, high elastic fabrics close fit your body very well, soft and comfortable to wear.<br>\r\n							The special design and modern makes you more attractive and charming, show your fascinating curve.<br>\r\n							Perfect for Valentine’s Day, wedding night, honeymoon, sleepwear, nightwear, every fantastic night.</p>', '$_3.jpg', '$_3.jpg', '$_3.jpg', 10, 'In Stock', '2023-11-19 17:43:52', NULL),
(28, 4, 15, 'Sexy Women See-through Sheer Mesh Bodycon Mini Dress', 'Sexy Women See-through Sheer Mesh Bodycon Mini Dress', 4324, 132, '<div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Condition</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans ux-textspans--BOLD\">New without tags</span></div></div><span data-testid=\"ux-bubble-help\" class=\"ux-bubble-help\"><span><span><span class=\"infotip\" id=\"nid-hd6-0\"></span></span></span></span></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><span data-testid=\"ux-bubble-help\" class=\"ux-bubble-help\"><span><span><span class=\"infotip\" id=\"nid-hd6-0\"></span></span></span></span></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Seller Notes</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span data-testid=\"text\"><span class=\"ux-textspans\">“Fast SpeedPAK Shipping (Normal 8-15 business days arrived USA)..! ! !Reference the Mannequins and ... </span></span><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"> </span></span></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"></span></span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Pattern</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Solid</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Sleeve Length</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Long Sleeve</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Neckline</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">V-Neck</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Closure</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Zip</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Character</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Sexy</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Occasion</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Casual, Party/Cocktail</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Size</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">One Size</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Garment Care</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Machine Washable</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Sleeve Type</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Long Sleeve</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">MPN</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Does not apply</span></div></div></div></div></div>', 's-l500.jpg', 's-l500.jpg', 's-l500.jpg', 34, 'In Stock', '2023-11-19 17:47:30', NULL),
(29, 4, 15, 'Women Sexy Halter Backless Knit Sweater Jersey ', 'Women Sexy Halter Backless Knit Sweater Jersey ', 4574, 5345, '<div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Condition</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span data-testid=\"text\"><span class=\"ux-textspans\">New with tags: A brand-new, unused, and unworn item (including handmade items) in the original ... </span></span><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"> </span></span></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"></span></span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Brand</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Unbranded</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Size</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">S</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Size Type</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Regular</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Style</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Bodycon, Mini</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Dress Length</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Short</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Department</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Women</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Sleeve Length</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Sleeveless</span></div></div></div></div></div>', 's-l16002.jpg', 's-l16002.jpg', 's-l16002.jpg', 34, 'In Stock', '2023-11-19 17:49:11', NULL),
(30, 5, 14, 'Retro HD Polarized Sunglasses Men Pilot Metal Outdoor Driving Eyewear Glasses', 'Retro HD Polarized Sunglasses Men Pilot Metal Outdoor Driving Eyewear Glasses', 346, 34, '<font size=\"4\" style=\"font-family:Arial\"><font size=\"4\" style=\"font-family:Arial\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><font style=\"font-family:Arial\" size=\"4\"><p> <span style=\"color: #000000;\"><span style=\"font-size: 20.0px;\"><span style=\"background-color: #ffffff;\">100% brand new and high quality</span><br> <span style=\"background-color: #ffffff;\">Quality: High</span><br> <span style=\"background-color: #ffffff;\">Visible perspective rate: 99 (%)</span><br> <span style=\"background-color: #ffffff;\">Frame Material: <span style=\"font-size: 24.0px;\"><span style=\"color: #000000;font-family: arial;font-style: normal;font-weight: normal;line-height: 17.7188px;background-color: #ffffff;display: inline;float: none;\"></span></span></span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 20.0px;\"><span style=\"background-color: #ffffff;\"><span style=\"font-size: 24.0px;\"><span style=\"color: #000000;font-family: arial;font-style: normal;font-weight: normal;line-height: 17.7188px;background-color: #ffffff;display: inline;float: none;\"><strong><span style=\"font-size:24px;color:#000000;\"><span style=\"color: #000000;\"><span style=\"font-size: 20.0px;\"><span style=\"background-color: #ffffff;\"><span style=\"font-size: 24.0px;\"><span style=\"color: #000000;font-family: arial;font-style: normal;font-weight: normal;line-height: 17.7188px;background-color: #ffffff;display: inline;float: none;\"><strong><span style=\"font-size:24px;color:#000000;\">alloy</span></strong></span></span></span></span></span>+&nbsp;silicone </span></strong>.</span></span></span><br> <span style=\"background-color: #ffffff;\">lens material: Polaroid polarized lens</span><br> <span style=\"background-color: #ffffff;\">Style: new</span><br> <span style=\"background-color: #ffffff;\">Anti-uv level: UV400 100% UV protection</span><br> <span style=\"background-color: #ffffff;\">Style: fashion, celebrities models</span><br> <span style=\"background-color: #ffffff;\">Suitable for face: round face, oval face, long face</span></span></span></p></font></font></font></font></font></font></font></font></font></font></font></font>', 's-l16004.jpg', 's-l16004.jpg', 's-l16004.jpg', 4, 'In Stock', '2023-11-19 17:50:20', NULL),
(31, 5, 14, 'ELITERA Polarized Sunglasses Men Classic Square Driving Sport Sun Glasses Male', 'ELITERA Polarized Sunglasses Men Classic Square Driving Sport Sun Glasses Male', 456, 546, '<div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Condition</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span data-testid=\"text\"><span class=\"ux-textspans\">New with tags: A brand-new, unused, and unworn item (including handmade items) in the original ... </span></span><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"> </span></span></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"></span></span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Lens Material</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">TAC, Glass</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Character</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">UV400 PROTECT</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Model</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">E0206103</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Country/Region of Manufacture</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">China</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Department</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Men</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Style</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Goggle</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Temple Length</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">122mm</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Theme</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Classic, Sports</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Lens Technology</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Polarized</span></div></div></div></div></div>', 's-l16006.jpg', 's-l16006.jpg', 's-l16004.jpg', 45, 'In Stock', '2023-11-19 17:52:57', NULL),
(32, 5, 14, ' HD Night Driving Glasses Yellow Anti Glare Vision Tinted Unisex Sunglasses', ' HD Night Driving Glasses Yellow Anti Glare Vision Tinted Unisex Sunglasses', 345, 54, '<h2 style=\"text-align: start;\"><span style=\"font-size: 19px;\">Product description<br>It\r\n works by reducing night driving glare and eye strain, blocking out \r\ntroublesome headlights and street lights, enhance night vision making \r\nnight time driving comfortable and safe.<br>Our Safety Glasses help you to see better and minimize the risk of driving in cloudy, snowy or rainy days.</span></h2><h2 style=\"text-align: start;\">3 COLOR CHOOSE FROM:<span style=\"font-size: 19px;\"></span></h2><h2 style=\"text-align: start;\"><span style=\"font-size: 19px;\">Night Vision Glasses (yellow lens for night)</span></h2><h2 style=\"text-align: start;\"><span style=\"font-size: 19px;\">SunGlasse (Gray lens for daytime)&nbsp;&nbsp; <br></span></h2><h2 style=\"text-align: start;\"><span style=\"font-size: 19px;\">Green gradually yellow&nbsp; (FOR day and night)</span></h2>', 's-l160066.jpg', 's-l160066.jpg', 's-l16006.jpg', 34, 'In Stock', '2023-11-19 17:53:55', NULL),
(33, 3, 13, ' Mens Fitness T Shirt O Neck Gym Clothing Bodybuilding Training Workout Top —', ' Mens Fitness T Shirt O Neck Gym Clothing Bodybuilding Training Workout Top —', 345, 534, '<div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Condition</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span data-testid=\"text\"><span class=\"ux-textspans\">New with tags: A brand-new, unused, and unworn item (including handmade items) in the original ... </span></span><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"> </span></span></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"></span></span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Brand</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Unbranded</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Colour</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Multicoloured</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Country/Region of Manufacture</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">China</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Department</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Men</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Features</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Breathable</span></div></div></div></div></div>', 's-l160088.jpg', 's-l160088.jpg', 's-l160088.jpg', 35, 'In Stock', '2023-11-19 17:54:49', NULL),
(34, 3, 13, ' Mens Rash Guard Shirts Quick Dry Swim Shirts UV Protect T-Shirts RED BLUE GREY', ' Mens Rash Guard Shirts Quick Dry Swim Shirts UV Protect T-Shirts RED BLUE GREY', 646, 454, '<div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Condition</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span data-testid=\"text\"><span class=\"ux-textspans\">New with tags: A brand-new, unused, and unworn item (including handmade items) in the original ... </span></span><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"> </span></span></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-expandable-textual-display-block-inline\"><span class=\"ux-expandable-textual-display-block-inline__control\" data-testid=\"viewMore\"></span></span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Brand</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Unbranded</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Country/Region of Manufacture</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">China</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Department</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Men</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Features</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Breathable</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Fit</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Regular</span></div></div></div></div></div><div class=\"ux-layout-section-evo__row\"><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Graphic Print</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">No</span></div></div></div></div><div class=\"ux-layout-section-evo__col\"><div class=\"ux-labels-values__labels\"><div class=\"ux-labels-values__labels-content\"><div><span class=\"ux-textspans\">Material</span></div></div></div><div class=\"ux-labels-values__values\"><div class=\"ux-labels-values__values-content\"><div><span class=\"ux-textspans\">Polyester</span></div></div></div></div></div>', 's-l16003434.jpg', 's-l160088.jpg', 's-l500.jpg', 324, 'In Stock', '2023-11-19 17:55:34', NULL),
(35, 3, 13, 'sdfsdf', 'sdfsdf', 4346, 0, 'dfdsf<br>', 'pm11.JPG', '', '', 0, 'In Stock', '2023-11-20 05:20:03', NULL),
(36, 3, 13, 'gfbfgb', 'gfbf', 46456, NULL, 'gbfgb<br>', 'Screenshot 2023-11-19 at 23-27-08 Shopping Home Page.png', '', '', NULL, 'In Stock', '2023-11-20 05:21:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 3, 'Tshirts', '2023-11-19 15:57:20', NULL),
(14, 5, 'Sunglases', '2023-11-19 15:57:36', NULL),
(15, 4, 'Trousers', '2023-11-19 15:57:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'email@email.com', 0x3132372e302e302e3100000000000000, '2023-11-19 15:38:37', NULL, 1),
(25, 'email@email.com', 0x3132372e302e302e3100000000000000, '2023-11-20 05:48:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'fdfbfdb', 'email@email.com', 546456456, '25d55ad283aa400af464c76d713c07ad', 'rgdfg', 'dfgdf', 'dfg', 45645, 'vfdvdf', 'fvdvvdfv', 'vdfv345', 45, '2023-11-19 15:38:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 30, '2023-11-19 17:50:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
