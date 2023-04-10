-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 10:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vfurniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `imgpath` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `imgpath`, `price`) VALUES
(1, 'Jacobsen', 'hvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img1.png', '20000.00'),
(2, 'Swan', 'hyerervc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img2.png', '19920.00'),
(3, 'Arne', 'hebhghvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img3.png', '28000.00'),
(4, 'rhns', 'ughhvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img4.png', '23400.00'),
(5, 'tyeSwan', 'bhgdhvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img10.png', '222300.00'),
(6, 'Arne Jacobsen Swan', 'vxcdsgghvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img5.png', '7300.00'),
(7, 'qw bsen Swan', 'hedfghvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img6.png', '23000.00'),
(8, 'qrw avs poran', 'nbgfghvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img11.png', '45000.00'),
(9, 'rtas bvxn', 'qwaahvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img7.png', '36200.00'),
(10, 'mjkndf hruh', 'mwegghvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img8.png', '76000.00'),
(11, 'bnfe wew', 'poythvc gseyhg weegas ddddkds f eerxxas dcedikefnf eefxdd ', 'img9.png', '23200.00'),
(12, 'Arne Jacobsen Swan Chair', 'Originally designed for the lobby and reception areas at the Royal Hotel in Copenhagen in 1958, the swan chair has become a cult icon of the design world.This danish furniture masterpiece was designed by Arne Jacobsen in the 1960\'s and represents a swan as it unfolds its wings.Our Mollis Chair is constructed with armchair with frame made of metal, filled with polyurethane foam and upholstered in textile fabric. The Soft round edges and solid construction ensures this chair is both suitable for home or commercial applications.', 'images/moto_product/33/33.png', '12999.00'),
(13, 'Hans J. Wegner GE375 Oak', 'Designed in 1969 by Hans Wegner, the 375A lounge chair pairs clean lines with remarkable craftsmanship. The chair is handcrafted at GETAMA’s factory in Gedsted, Denmark by skilled cabinetmakers using traditional Scandinavian techniques.Dimensions: Height: 92.71 cm (36.5 in)Width: 86.36 cm (34 in)Depth: 92.71 cm (36.5 in)Seat Height: 41.91 cm (16.5 in)', 'images/moto_product/1/1.png', '33000.00'),
(14, 'Pierre Jeanneret Sofa', 'This sofa is a fantastic piece, finally it\'\'s iconic. It is raw in its simplicity, nothing too much but still nothing is missing. We can do any upholstery you like in any colour and fabric. The sofa is a rare piece and it is finally a historical item from an UNESCO World Heritage site, done by the most important architect-team from the ', 'images/moto_product/3/3.png', '14999.00'),
(15, 'Hans J. Wegner GE258 Daybed Oak', 'Designed by Hans Wegner for GETAMA this convertible daybed / sofa features a beautifully patinated oak frame and wool upholstery. The back reveals a hidden space for blankets, pillows etc. The model GE-258 was designed by Wegner in the early 1950s.Dimensions: Height: 66 cm (25.99 in)Width: 199 cm (78.35 in)Depth: 89 cm (35.04 in)Seat Height: 45 cm (17.72 in)', 'images/moto_product/12/12.png', '39500.00'),
(16, 'Arne Jacobsen Series 7 Chair', 'The Series 7 designed by Arne Jacobsen is by far the most sold chair in the history of Fritz Hansen and perhaps also in furniture history. The pressure moulded veneer chair is a further development of the classic Ant chair. The four-legged stackable chair represents the culmination of the lamination technique. The visionary Arne Jacobsen exploited the possibilities of lamination to perfection resulting in the iconic shape of the chair. Series 7 represents the chair in the Fritz Hansen collection with the widest range of applications.', 'images/moto_product/34/34.png', '8999.00'),
(17, 'Pierre Jeanneret Bench', 'If his famed cousin and longtime colleague Charles-Édouard Jeanneret — better known as Le Corbusier — was the visionary, then Pierre Jeanneret was the member of the architecture and design team who got things done. In recent years, Jeanneret has emerged from Le Corbusier’s shadow, as collectors have discovered his simple and striking furniture creations.', 'images/moto_product/16/16.png', '19822.00'),
(18, 'Borge Mogensen Cabinet Teak', 'Danish mid-century teak serving cabinet / china hutch with a rectangular lower cabinet with two sliding doors supporting, a two shelf upper china cabinet with sliding glass doors, resting on four tapered teak legs. (BØRGE MOGENSEN)Dimensions: Height: 56.5 in (143.51 cm)Width: 59 in (149.86 cm)Depth: 18 in (45.72 cm)', 'images/moto_product/20/20.png', '42999.00'),
(19, 'Hans J. Wegner AT312 Table Teak Oak', 'Dining table model AT-312 designed by Hans Wegner for Andreas Tuck, Denmark, 1960s. Made in oak and teak, the table boasts two pull-out leaves which hide under the top and integrate beautifully with it when the table is not extended; this is not only a functional solution as it contributes to delineate the a characteristic profile of the design. Dimensions: Height: 28.75 in (73 cm)Width: 55.91 in (142 cm)Depth: 35.04 in (89 cm)', 'images/moto_product/25/25.png', '18000.00'),
(20, 'Arne Jacobsen Vintage Egg Chair', 'Extremely comfortable chair. This Egg Chair respects the original design very well, which is high quality reproduction of the original design by Arne Jacobsen, bringing great art into your home Solid stainless steel frame for strong support, High resilient multi-density foam for optimum comfort Exquisite premium PU leather cushions for luxurious look and feel, The cushion corners are seamless, made with attention to details Professional styling is ideal for the office space as well as any home décor(22.4 x 16.1 x 15.8) inches ', 'images/moto_product/37/37.png', '70189.00'),
(21, 'Poul Kjaerholm PK31 Sofa 2 EKC', 'Poul Kjaerholm for E Kold Christensen , Denmark , 1958 . A PK 31/2 two seater sofa in original cognac leather , plated steel frame with the EKC stamp to the underside . Down filled leather cushions. The leather is original and has areas of restoration and patination  commensurate with age and use. Dimensions : Height: 28 in (71.12 cm)Width: 54 in (137.16 cm)Depth: 29 in (73.66 cm)', 'images/moto_product/5/5.png', '34999.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
