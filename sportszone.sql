-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 06:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportszone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `id`, `name`) VALUES
('alish@gmail.com', 'alish123', 1, 'Alish Mevawala'),
('admin@gmail.com', 'admin123', 2, '0'),
('alish@gmail.com', 'alish123', 3, '0'),
('admin@gmail.com', 'admin123', 4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `close` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `proid`, `userid`, `qty`, `close`) VALUES
(1, 10, 7, 4, 'Y'),
(2, 9, 7, 3, 'Y'),
(3, 8, 7, 1, 'Y'),
(4, 7, 7, 4, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `game` varchar(100) NOT NULL,
  `eventdatetime` datetime NOT NULL,
  `venue` varchar(999) NOT NULL,
  `rules` varchar(999) NOT NULL,
  `details` varchar(999) NOT NULL,
  `status` varchar(2) NOT NULL,
  `serial` int(11) NOT NULL,
  `noofplayer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `label`, `game`, `eventdatetime`, `venue`, `rules`, `details`, `status`, `serial`, `noofplayer`) VALUES
(1, 'asadjb', 'dkbfa', '2023-08-19 16:17:24', 'sfdkbsdf', 'adfkjbfd', 'sdfjblsdf', 'Y', 1, 10),
(2, 'first', 'cricket', '2023-08-19 19:49:00', 'venue', 'rules', 'details', 'A', 2, 10),
(3, 'first', 'cricket', '2023-08-19 19:49:00', 'venue', 'rules', 'details', 'A', 3, 10),
(4, 'seconds', 'footbal', '2023-08-23 19:51:00', 'asdvasdf b adfsh sadn asdjhsdl sfashfvlasf lasfvafskhv', 'aksfkasdf sahasfb asfhasvfnas fasfhkv aksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkv', 'aksfkasdf sahasfb asfhasvfnas fasfhkv aksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkvaksfkasdf sahasfb asfhasvfnas fasfhkv', 'A', 33, 11),
(5, 'C. B. Patel Event Crickets', 'crickets', '2023-08-30 19:02:00', 'c. b. patel vesu road bharthana surats', 'Tennis ball in turf. Two Umpiressss.', 'Extra cost inludeds.', 'A', 23, 10),
(6, 'SYMGA Football Tournament Year 2023', 'football', '2023-08-30 22:31:00', 'symga school ground, sagarampura near kshetrapal mandir surat-3950002.', 'No hands', 'Football original', 'A', 34, 20),
(7, 'abc', 'fjhsdkh', '2023-08-31 12:00:00', 'sagjagsdvyiu', 's,dmv', 'kkbhaskdhbvsaiyfd', 'A', 38, 1),
(8, 'Chess tournament', 'chess', '2023-09-21 13:11:00', 'main road', 'No time limit', 'Extra details here', 'A', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oderdet`
--

CREATE TABLE `oderdet` (
  `id` int(11) NOT NULL,
  `parid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oderdet`
--

INSERT INTO `oderdet` (`id`, `parid`, `proid`, `qty`) VALUES
(1, 2, 10, 4),
(2, 2, 9, 3),
(3, 2, 8, 1),
(4, 2, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ordermast`
--

CREATE TABLE `ordermast` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `addr1` varchar(100) NOT NULL,
  `addr2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordermast`
--

INSERT INTO `ordermast` (`id`, `userid`, `serial`, `date`, `amount`, `status`, `addr1`, `addr2`, `city`, `state`) VALUES
(2, 7, '2', '2023-08-25', '3445', 1, '2/2508', 'Rudarpura', 'Surat', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `participatechild`
--

CREATE TABLE `participatechild` (
  `id` int(11) NOT NULL,
  `playername` varchar(100) NOT NULL,
  `srl` int(11) NOT NULL,
  `parid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participatechild`
--

INSERT INTO `participatechild` (`id`, `playername`, `srl`, `parid`) VALUES
(43, 'sfdkh askfh ', 1, 18),
(44, 'jh njj', 2, 18),
(45, ' jhbjcf', 3, 18),
(46, ' jhvjhb', 4, 18),
(47, ' jhbkjbug', 5, 18),
(48, ' iluiulhgi', 6, 18),
(49, 'sdfjnksdfbh', 7, 18),
(50, 'kjnadsoiysa', 8, 18),
(51, 'lkhfklnbadsflk', 9, 18),
(52, 'asdljbads', 10, 18),
(53, 'sdhsgcsdgcgh', 11, 18),
(54, 'bcvsdvcsd s hsd sd', 12, 18),
(55, 'dsv asdhcfyasdgas d', 13, 18),
(56, 'asv asvcasd', 14, 18),
(57, 'asshdhcvsad', 15, 18),
(58, 'askjdgvasdg', 16, 18),
(59, 'asjggvasdj', 17, 18),
(60, 'jsdvadsjg', 18, 18),
(61, 'adsfasdjg', 19, 18),
(62, 'ajvasdjvasd', 20, 18),
(63, 'ASKHBA ASJHVASDhg ', 1, 19),
(64, 'VH,JB ', 2, 19),
(65, 'GVGJKVCJFCHG', 3, 19),
(66, 'JGCVVULT', 4, 19),
(67, 'GCVK,HCFKT', 5, 19),
(68, ',JGV,JG', 6, 19),
(69, 'FHCJYCR', 7, 19),
(70, 'JFGXHTR', 8, 19),
(71, 'FJDTFYCY', 9, 19),
(72, 'YTIFYFI TYF', 10, 19),
(73, 'YTDYT Y', 11, 19),
(74, 'YTDYTDYRJ', 12, 19),
(75, 'DYDRYURYR', 13, 19),
(76, 'YJRDRYCJHDRYD', 14, 19),
(77, 'YFCTRRJYRC', 15, 19),
(78, 'YRCJYCRJYT', 16, 19),
(79, 'JD', 17, 19),
(80, 'KTFTJDK', 18, 19),
(81, 'JTDYDRYTD', 19, 19),
(82, 'KHDKJGKHDGYR', 20, 19),
(83, 'iutfiygv', 1, 20),
(84, 'iy', 2, 20),
(85, 'c', 3, 20),
(86, 'kfcg', 4, 20),
(87, 'ity', 5, 20),
(88, 'ck', 6, 20),
(89, 'uct', 7, 20),
(90, 'f', 8, 20),
(91, 'hc', 9, 20),
(92, 'fxy', 10, 20),
(93, 'huhvuv', 1, 21),
(94, 'jg u', 2, 21),
(95, 'v', 3, 21),
(96, 'uvk', 4, 21),
(97, 'jgv', 5, 21),
(98, 'kutv', 6, 21),
(99, 'jkg', 7, 21),
(100, 'cku', 8, 21),
(101, 'cku', 9, 21),
(102, 'tc', 10, 21),
(103, 'jgkcu', 1, 22),
(104, 'ckut', 2, 22),
(105, 'ckut', 3, 22),
(106, 'fc', 4, 22),
(107, 'utjc', 5, 22),
(108, 'utkc', 6, 22),
(109, 'u', 7, 22),
(110, 'k', 8, 22),
(111, 'hf', 9, 22),
(112, 'hf', 10, 22),
(113, 'Abrar Patel', 1, 23),
(114, 'Akshay Khanna', 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `participatepar`
--

CREATE TABLE `participatepar` (
  `id` int(11) NOT NULL,
  `teamname` varchar(100) NOT NULL,
  `details` varchar(999) NOT NULL,
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participatepar`
--

INSERT INTO `participatepar` (`id`, `teamname`, `details`, `eventid`, `userid`) VALUES
(18, 'team 1', 'jhvsadadsjvsa asdjvasdjb asdjvgsad asdg asdnbasdgcasdn dshfcsadnb asdkhgvas dv nasdhgcasdjg', 6, 0),
(19, 'ABRAR', 'KJTFDGKUTDH SDFKHLBDFJVTUVSADJHV ASF', 6, 0),
(20, 'jafgiuasdyf', 'fcavdshlvaskutasd jg', 5, 7),
(21, 'ashdbjhas as', 'kutjgc', 5, 7),
(22, 'sdfjgv', 'kgcygcvtjug', 5, 7),
(23, '', 'I am pro', 8, 7),
(24, '', 'I am ultra pro', 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(2) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `status`, `img`) VALUES
(6, 'Bat', 12, 'N', '115fdd0f83a32a4fbd513f001035ce36581692940568.png'),
(7, 'Ball', 400, 'Y', '6341fd8d71e8a7585a4ce4ce761810727271692940602.png'),
(8, 'Cap', 123, 'Y', '8beb6c04da0808f196308573dd6ba2c49031692940615.png'),
(9, 'Stump', 470, 'Y', 'b5fca8d1c503023a2684a896f0db3a7e5951692940626.png'),
(10, 'sdjvh', 78, 'Y', '98efd82ce1ae0dae85dffbc018926b493831692940639.png');

-- --------------------------------------------------------

--
-- Table structure for table `scoreboard`
--

CREATE TABLE `scoreboard` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scoreboard`
--

INSERT INTO `scoreboard` (`id`, `eventid`, `label`, `status`) VALUES
(4, 8, 'first', 'active'),
(5, 6, 'second', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `scoreboardchild`
--

CREATE TABLE `scoreboardchild` (
  `id` int(11) NOT NULL,
  `srl` int(11) NOT NULL,
  `team1id` int(11) NOT NULL,
  `team2id` int(11) NOT NULL,
  `winnerid` int(11) DEFAULT 0,
  `parid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scoreboardchild`
--

INSERT INTO `scoreboardchild` (`id`, `srl`, `team1id`, `team2id`, `winnerid`, `parid`) VALUES
(4, 1, 18, 19, 0, 1),
(5, 0, 18, 19, 0, 5),
(6, 0, 19, 18, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(7, 'James', 'Bond', 'james007@gmail.com', '007'),
(8, 'alish', 'mevawala', 'alish@gmail.com', 'alish123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oderdet`
--
ALTER TABLE `oderdet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermast`
--
ALTER TABLE `ordermast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participatechild`
--
ALTER TABLE `participatechild`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participate_fk` (`parid`);

--
-- Indexes for table `participatepar`
--
ALTER TABLE `participatepar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoreboard`
--
ALTER TABLE `scoreboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoreboardchild`
--
ALTER TABLE `scoreboardchild`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oderdet`
--
ALTER TABLE `oderdet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordermast`
--
ALTER TABLE `ordermast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `participatechild`
--
ALTER TABLE `participatechild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `participatepar`
--
ALTER TABLE `participatepar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `scoreboard`
--
ALTER TABLE `scoreboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scoreboardchild`
--
ALTER TABLE `scoreboardchild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participatechild`
--
ALTER TABLE `participatechild`
  ADD CONSTRAINT `participate_fk` FOREIGN KEY (`parid`) REFERENCES `participatepar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
