-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 05:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mission_plasma`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `cname`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Anantnag', 15, NULL, NULL),
(2, 'Bandipore', 15, NULL, NULL),
(3, 'Baramulla', 15, NULL, NULL),
(4, 'Budgam', 15, NULL, NULL),
(5, 'Doda', 15, NULL, NULL),
(6, 'Ganderbal', 15, NULL, NULL),
(7, 'Jammu', 15, NULL, NULL),
(8, 'Kargil', 15, NULL, NULL),
(9, 'Kathua', 15, NULL, NULL),
(10, 'Kishtwar', 15, NULL, NULL),
(11, 'Kulgam', 15, NULL, NULL),
(12, 'Kupwara', 15, NULL, NULL),
(13, 'Leh (Ladakh)', 15, NULL, NULL),
(14, 'Poonch', 15, NULL, NULL),
(15, 'Pulwama', 15, NULL, NULL),
(16, 'Rajouri', 15, NULL, NULL),
(17, 'Ramban', 15, NULL, NULL),
(18, 'Reasi', 15, NULL, NULL),
(19, 'Samba', 15, NULL, NULL),
(20, 'Shopian', 15, NULL, NULL),
(21, 'Srinagar', 15, NULL, NULL),
(22, 'Udhampur', 15, NULL, NULL),
(23, 'Bilaspur (Himachal Pradesh)', 14, NULL, NULL),
(24, 'Chamba', 14, NULL, NULL),
(25, 'Hamirpur (Himachal Pradesh)', 14, NULL, NULL),
(26, 'Kangra', 14, NULL, NULL),
(27, 'Kinnaur', 14, NULL, NULL),
(28, 'Kullu', 14, NULL, NULL),
(29, 'Lahul & Spiti', 14, NULL, NULL),
(30, 'Mandi', 14, NULL, NULL),
(31, 'Shimla', 14, NULL, NULL),
(32, 'Sirmaur', 14, NULL, NULL),
(33, 'Solan', 14, NULL, NULL),
(34, 'Una', 14, NULL, NULL),
(35, 'Amritsar', 28, NULL, NULL),
(36, 'Barnala', 28, NULL, NULL),
(37, 'Bathinda', 28, NULL, NULL),
(38, 'Faridkot', 28, NULL, NULL),
(39, 'Fatehgarh Sahib', 28, NULL, NULL),
(40, 'Firozpur', 28, NULL, NULL),
(41, 'Gurdaspur', 28, NULL, NULL),
(42, 'Hoshiarpur', 28, NULL, NULL),
(43, 'Jalandhar', 28, NULL, NULL),
(44, 'Kapurthala', 28, NULL, NULL),
(45, 'Ludhiana', 28, NULL, NULL),
(46, 'Mansa', 28, NULL, NULL),
(47, 'Moga', 28, NULL, NULL),
(48, 'Muktsar', 28, NULL, NULL),
(49, 'Patiala', 28, NULL, NULL),
(50, 'Rupnagar (Ropar)', 28, NULL, NULL),
(51, 'Sahibzada Ajit Singh Nagar (Mohali)', 28, NULL, NULL),
(52, 'Sangrur', 28, NULL, NULL),
(53, 'Shahid Bhagat Singh Nagar (Nawanshahr)', 28, NULL, NULL),
(54, 'Tarn Taran', 28, NULL, NULL),
(55, 'Chandigarh', 6, NULL, NULL),
(56, 'Almora', 34, NULL, NULL),
(57, 'Bageshwar', 34, NULL, NULL),
(58, 'Chamoli', 34, NULL, NULL),
(59, 'Champawat', 34, NULL, NULL),
(60, 'Dehradun', 34, NULL, NULL),
(61, 'Haridwar', 34, NULL, NULL),
(62, 'Nainital', 34, NULL, NULL),
(63, 'Pauri Garhwal', 34, NULL, NULL),
(64, 'Pithoragarh', 34, NULL, NULL),
(65, 'Rudraprayag', 34, NULL, NULL),
(66, 'Tehri Garhwal', 34, NULL, NULL),
(67, 'Udham Singh Nagar', 34, NULL, NULL),
(68, 'Uttarkashi', 34, NULL, NULL),
(69, 'Ambala', 13, NULL, NULL),
(70, 'Bhiwani', 13, NULL, NULL),
(71, 'Faridabad', 13, NULL, NULL),
(72, 'Fatehabad', 13, NULL, NULL),
(73, 'Gurgaon', 13, NULL, NULL),
(74, 'Hisar', 13, NULL, NULL),
(75, 'Jhajjar', 13, NULL, NULL),
(76, 'Jind', 13, NULL, NULL),
(77, 'Kaithal', 13, NULL, NULL),
(78, 'Karnal', 13, NULL, NULL),
(79, 'Kurukshetra', 13, NULL, NULL),
(80, 'Mahendragarh', 13, NULL, NULL),
(81, 'Mewat', 13, NULL, NULL),
(82, 'Palwal', 13, NULL, NULL),
(83, 'Panchkula', 13, NULL, NULL),
(84, 'Panipat', 13, NULL, NULL),
(85, 'Rewari', 13, NULL, NULL),
(86, 'Rohtak', 13, NULL, NULL),
(87, 'Sirsa', 13, NULL, NULL),
(88, 'Sonipat', 13, NULL, NULL),
(89, 'Yamuna Nagar', 13, NULL, NULL),
(90, 'Central Delhi', 10, NULL, NULL),
(91, 'East Delhi', 10, NULL, NULL),
(92, 'New Delhi', 10, NULL, NULL),
(93, 'North Delhi', 10, NULL, NULL),
(94, 'North East Delhi', 10, NULL, NULL),
(95, 'North West Delhi', 10, NULL, NULL),
(96, 'South Delhi', 10, NULL, NULL),
(97, 'South West Delhi', 10, NULL, NULL),
(98, 'West Delhi', 10, NULL, NULL),
(99, 'Ajmer', 29, NULL, NULL),
(100, 'Alwar', 29, NULL, NULL),
(101, 'Banswara', 29, NULL, NULL),
(102, 'Baran', 29, NULL, NULL),
(103, 'Barmer', 29, NULL, NULL),
(104, 'Bharatpur', 29, NULL, NULL),
(105, 'Bhilwara', 29, NULL, NULL),
(106, 'Bikaner', 29, NULL, NULL),
(107, 'Bundi', 29, NULL, NULL),
(108, 'Chittorgarh', 29, NULL, NULL),
(109, 'Churu', 29, NULL, NULL),
(110, 'Dausa', 29, NULL, NULL),
(111, 'Dholpur', 29, NULL, NULL),
(112, 'Dungarpur', 29, NULL, NULL),
(113, 'Ganganagar', 29, NULL, NULL),
(114, 'Hanumangarh', 29, NULL, NULL),
(115, 'Jaipur', 29, NULL, NULL),
(116, 'Jaisalmer', 29, NULL, NULL),
(117, 'Jalor', 29, NULL, NULL),
(118, 'Jhalawar', 29, NULL, NULL),
(119, 'Jhunjhunu', 29, NULL, NULL),
(120, 'Jodhpur', 29, NULL, NULL),
(121, 'Karauli', 29, NULL, NULL),
(122, 'Kota', 29, NULL, NULL),
(123, 'Nagaur', 29, NULL, NULL),
(124, 'Pali', 29, NULL, NULL),
(125, 'Pratapgarh (Rajasthan)', 29, NULL, NULL),
(126, 'Rajsamand', 29, NULL, NULL),
(127, 'Sawai Madhopur', 29, NULL, NULL),
(128, 'Sikar', 29, NULL, NULL),
(129, 'Sirohi', 29, NULL, NULL),
(130, 'Tonk', 29, NULL, NULL),
(131, 'Udaipur', 29, NULL, NULL),
(132, 'Agra', 33, NULL, NULL),
(133, 'Aligarh', 33, NULL, NULL),
(134, 'Allahabad', 33, NULL, NULL),
(135, 'Ambedkar Nagar', 33, NULL, NULL),
(136, 'Auraiya', 33, NULL, NULL),
(137, 'Azamgarh', 33, NULL, NULL),
(138, 'Bagpat', 33, NULL, NULL),
(139, 'Bahraich', 33, NULL, NULL),
(140, 'Ballia', 33, NULL, NULL),
(141, 'Balrampur', 33, NULL, NULL),
(142, 'Banda', 33, NULL, NULL),
(143, 'Barabanki', 33, NULL, NULL),
(144, 'Bareilly', 33, NULL, NULL),
(145, 'Basti', 33, NULL, NULL),
(146, 'Bijnor', 33, NULL, NULL),
(147, 'Budaun', 33, NULL, NULL),
(148, 'Bulandshahr', 33, NULL, NULL),
(149, 'Chandauli', 33, NULL, NULL),
(150, 'Chitrakoot', 33, NULL, NULL),
(151, 'Deoria', 33, NULL, NULL),
(152, 'Etah', 33, NULL, NULL),
(153, 'Etawah', 33, NULL, NULL),
(154, 'Faizabad', 33, NULL, NULL),
(155, 'Farrukhabad', 33, NULL, NULL),
(156, 'Fatehpur', 33, NULL, NULL),
(157, 'Firozabad', 33, NULL, NULL),
(158, 'Gautam Buddha Nagar', 33, NULL, NULL),
(159, 'Ghaziabad', 33, NULL, NULL),
(160, 'Ghazipur', 33, NULL, NULL),
(161, 'Gonda', 33, NULL, NULL),
(162, 'Gorakhpur', 33, NULL, NULL),
(163, 'Hamirpur', 33, NULL, NULL),
(164, 'Hardoi', 33, NULL, NULL),
(165, 'Hathras', 33, NULL, NULL),
(166, 'Jalaun', 33, NULL, NULL),
(167, 'Jaunpur', 33, NULL, NULL),
(168, 'Jhansi', 33, NULL, NULL),
(169, 'Jyotiba Phule Nagar', 33, NULL, NULL),
(170, 'Kannauj', 33, NULL, NULL),
(171, 'Kanpur Dehat', 33, NULL, NULL),
(172, 'Kanpur Nagar', 33, NULL, NULL),
(173, 'Kanshiram Nagar', 33, NULL, NULL),
(174, 'Kaushambi', 33, NULL, NULL),
(175, 'Kheri', 33, NULL, NULL),
(176, 'Kushinagar', 33, NULL, NULL),
(177, 'Lalitpur', 33, NULL, NULL),
(178, 'Lucknow', 33, NULL, NULL),
(179, 'Maharajganj', 33, NULL, NULL),
(180, 'Mahoba', 33, NULL, NULL),
(181, 'Mainpuri', 33, NULL, NULL),
(182, 'Mathura', 33, NULL, NULL),
(183, 'Mau', 33, NULL, NULL),
(184, 'Meerut', 33, NULL, NULL),
(185, 'Mirzapur', 33, NULL, NULL),
(186, 'Moradabad', 33, NULL, NULL),
(187, 'Muzaffarnagar', 33, NULL, NULL),
(188, 'Pilibhit', 33, NULL, NULL),
(189, 'Pratapgarh', 33, NULL, NULL),
(190, 'Rae Bareli', 33, NULL, NULL),
(191, 'Rampur', 33, NULL, NULL),
(192, 'Saharanpur', 33, NULL, NULL),
(193, 'Sant Kabir Nagar', 33, NULL, NULL),
(194, 'Sant Ravidas Nagar (Bhadohi)', 33, NULL, NULL),
(195, 'Shahjahanpur', 33, NULL, NULL),
(196, 'Shrawasti', 33, NULL, NULL),
(197, 'Siddharthnagar', 33, NULL, NULL),
(198, 'Sitapur', 33, NULL, NULL),
(199, 'Sonbhadra', 33, NULL, NULL),
(200, 'Sultanpur', 33, NULL, NULL),
(201, 'Unnao', 33, NULL, NULL),
(202, 'Varanasi', 33, NULL, NULL),
(203, 'Araria', 5, NULL, NULL),
(204, 'Arwal', 5, NULL, NULL),
(205, 'Aurangabad (Bihar)', 5, NULL, NULL),
(206, 'Banka', 5, NULL, NULL),
(207, 'Begusarai', 5, NULL, NULL),
(208, 'Bhagalpur', 5, NULL, NULL),
(209, 'Bhojpur', 5, NULL, NULL),
(210, 'Buxar', 5, NULL, NULL),
(211, 'Darbhanga', 5, NULL, NULL),
(212, 'East Champaran', 5, NULL, NULL),
(213, 'Gaya', 5, NULL, NULL),
(214, 'Gopalganj', 5, NULL, NULL),
(215, 'Jamui', 5, NULL, NULL),
(216, 'Jehanabad', 5, NULL, NULL),
(217, 'Kaimur (Bhabua)', 5, NULL, NULL),
(218, 'Katihar', 5, NULL, NULL),
(219, 'Khagaria', 5, NULL, NULL),
(220, 'Kishanganj', 5, NULL, NULL),
(221, 'Lakhisarai', 5, NULL, NULL),
(222, 'Madhepura', 5, NULL, NULL),
(223, 'Madhubani', 5, NULL, NULL),
(224, 'Munger', 5, NULL, NULL),
(225, 'Muzaffarpur', 5, NULL, NULL),
(226, 'Nalanda', 5, NULL, NULL),
(227, 'Nawada', 5, NULL, NULL),
(228, 'Patna', 5, NULL, NULL),
(229, 'Purnia', 5, NULL, NULL),
(230, 'Rohtas', 5, NULL, NULL),
(231, 'Saharsa', 5, NULL, NULL),
(232, 'Samastipur', 5, NULL, NULL),
(233, 'Saran', 5, NULL, NULL),
(234, 'Sheikhpura', 5, NULL, NULL),
(235, 'Sheohar', 5, NULL, NULL),
(236, 'Sitamarhi', 5, NULL, NULL),
(237, 'Siwan', 5, NULL, NULL),
(238, 'Supaul', 5, NULL, NULL),
(239, 'Vaishali', 5, NULL, NULL),
(240, 'West Champaran', 5, NULL, NULL),
(241, 'East Sikkim', 30, NULL, NULL),
(242, 'North Sikkim', 30, NULL, NULL),
(243, 'South Sikkim', 30, NULL, NULL),
(244, 'West Sikkim', 30, NULL, NULL),
(245, 'Anjaw', 3, NULL, NULL),
(246, 'Changlang', 3, NULL, NULL),
(247, 'Dibang Valley', 3, NULL, NULL),
(248, 'East Kameng', 3, NULL, NULL),
(249, 'East Siang', 3, NULL, NULL),
(250, 'Kurung Kumey', 3, NULL, NULL),
(251, 'Lohit', 3, NULL, NULL),
(252, 'Lower Dibang Valley', 3, NULL, NULL),
(253, 'Lower Subansiri', 3, NULL, NULL),
(254, 'Papum Pare', 3, NULL, NULL),
(255, 'Tawang', 3, NULL, NULL),
(256, 'Tirap', 3, NULL, NULL),
(257, 'Upper Siang', 3, NULL, NULL),
(258, 'Upper Subansiri', 3, NULL, NULL),
(259, 'West Kameng', 3, NULL, NULL),
(260, 'West Siang', 3, NULL, NULL),
(261, 'Dimapur', 25, NULL, NULL),
(262, 'Kiphire', 25, NULL, NULL),
(263, 'Kohima', 25, NULL, NULL),
(264, 'Longleng', 25, NULL, NULL),
(265, 'Mokokchung', 25, NULL, NULL),
(266, 'Mon', 25, NULL, NULL),
(267, 'Peren', 25, NULL, NULL),
(268, 'Phek', 25, NULL, NULL),
(269, 'Tuensang', 25, NULL, NULL),
(270, 'Wokha', 25, NULL, NULL),
(271, 'Zunheboto', 25, NULL, NULL),
(272, 'Bishnupur', 22, NULL, NULL),
(273, 'Chandel', 22, NULL, NULL),
(274, 'Churachandpur', 22, NULL, NULL),
(275, 'Imphal East', 22, NULL, NULL),
(276, 'Imphal West', 22, NULL, NULL),
(277, 'Senapati', 22, NULL, NULL),
(278, 'Tamenglong', 22, NULL, NULL),
(279, 'Thoubal', 22, NULL, NULL),
(280, 'Ukhrul', 22, NULL, NULL),
(281, 'Aizawl', 24, NULL, NULL),
(282, 'Champhai', 24, NULL, NULL),
(283, 'Kolasib', 24, NULL, NULL),
(284, 'Lawngtlai', 24, NULL, NULL),
(285, 'Lunglei', 24, NULL, NULL),
(286, 'Mamit', 24, NULL, NULL),
(287, 'Saiha', 24, NULL, NULL),
(288, 'Serchhip', 24, NULL, NULL),
(289, 'Dhalai', 32, NULL, NULL),
(290, 'North Tripura', 32, NULL, NULL),
(291, 'South Tripura', 32, NULL, NULL),
(292, 'West Tripura', 32, NULL, NULL),
(293, 'East Garo Hills', 23, NULL, NULL),
(294, 'East Khasi Hills', 23, NULL, NULL),
(295, 'Jaintia Hills', 23, NULL, NULL),
(296, 'Ri Bhoi', 23, NULL, NULL),
(297, 'South Garo Hills', 23, NULL, NULL),
(298, 'West Garo Hills', 23, NULL, NULL),
(299, 'West Khasi Hills', 23, NULL, NULL),
(300, 'Baksa', 4, NULL, NULL),
(301, 'Barpeta', 4, NULL, NULL),
(302, 'Bongaigaon', 4, NULL, NULL),
(303, 'Cachar', 4, NULL, NULL),
(304, 'Chirang', 4, NULL, NULL),
(305, 'Darrang', 4, NULL, NULL),
(306, 'Dhemaji', 4, NULL, NULL),
(307, 'Dhubri', 4, NULL, NULL),
(308, 'Dibrugarh', 4, NULL, NULL),
(309, 'Dima Hasao (North Cachar Hills)', 4, NULL, NULL),
(310, 'Goalpara', 4, NULL, NULL),
(311, 'Golaghat', 4, NULL, NULL),
(312, 'Hailakandi', 4, NULL, NULL),
(313, 'Jorhat', 4, NULL, NULL),
(314, 'Kamrup', 4, NULL, NULL),
(315, 'Kamrup Metropolitan', 4, NULL, NULL),
(316, 'Karbi Anglong', 4, NULL, NULL),
(317, 'Karimganj', 4, NULL, NULL),
(318, 'Kokrajhar', 4, NULL, NULL),
(319, 'Lakhimpur', 4, NULL, NULL),
(320, 'Morigaon', 4, NULL, NULL),
(321, 'Nagaon', 4, NULL, NULL),
(322, 'Nalbari', 4, NULL, NULL),
(323, 'Sivasagar', 4, NULL, NULL),
(324, 'Sonitpur', 4, NULL, NULL),
(325, 'Tinsukia', 4, NULL, NULL),
(326, 'Udalguri', 4, NULL, NULL),
(327, 'Bankura', 35, NULL, NULL),
(328, 'Bardhaman', 35, NULL, NULL),
(329, 'Birbhum', 35, NULL, NULL),
(330, 'Cooch Behar', 35, NULL, NULL),
(331, 'Dakshin Dinajpur (South Dinajpur)', 35, NULL, NULL),
(332, 'Darjiling', 35, NULL, NULL),
(333, 'Hooghly', 35, NULL, NULL),
(334, 'Howrah', 35, NULL, NULL),
(335, 'Jalpaiguri', 35, NULL, NULL),
(336, 'Kolkata', 35, NULL, NULL),
(337, 'Maldah', 35, NULL, NULL),
(338, 'Murshidabad', 35, NULL, NULL),
(339, 'Nadia', 35, NULL, NULL),
(340, 'North 24 Parganas', 35, NULL, NULL),
(341, 'Paschim Medinipur (West Midnapore)', 35, NULL, NULL),
(342, 'Purba Medinipur (East Midnapore)', 35, NULL, NULL),
(343, 'Puruliya', 35, NULL, NULL),
(344, 'South 24 Parganas', 35, NULL, NULL),
(345, 'Uttar Dinajpur (North Dinajpur)', 35, NULL, NULL),
(346, 'Bokaro', 16, NULL, NULL),
(347, 'Chatra', 16, NULL, NULL),
(348, 'Deoghar', 16, NULL, NULL),
(349, 'Dhanbad', 16, NULL, NULL),
(350, 'Dumka', 16, NULL, NULL),
(351, 'East Singhbhum', 16, NULL, NULL),
(352, 'Garhwa', 16, NULL, NULL),
(353, 'Giridih', 16, NULL, NULL),
(354, 'Godda', 16, NULL, NULL),
(355, 'Gumla', 16, NULL, NULL),
(356, 'Hazaribagh', 16, NULL, NULL),
(357, 'Jamtara', 16, NULL, NULL),
(358, 'Khunti', 16, NULL, NULL),
(359, 'Koderma', 16, NULL, NULL),
(360, 'Latehar', 16, NULL, NULL),
(361, 'Lohardaga', 16, NULL, NULL),
(362, 'Pakur', 16, NULL, NULL),
(363, 'Palamu', 16, NULL, NULL),
(364, 'Ramgarh', 16, NULL, NULL),
(365, 'Ranchi', 16, NULL, NULL),
(366, 'Sahibganj', 16, NULL, NULL),
(367, 'Seraikela-Kharsawan', 16, NULL, NULL),
(368, 'Simdega', 16, NULL, NULL),
(369, 'West Singhbhum', 16, NULL, NULL),
(370, 'Angul', 26, NULL, NULL),
(371, 'Balangir', 26, NULL, NULL),
(372, 'Baleswar', 26, NULL, NULL),
(373, 'Bargarh', 26, NULL, NULL),
(374, 'Bhadrak', 26, NULL, NULL),
(375, 'Boudh', 26, NULL, NULL),
(376, 'Cuttack', 26, NULL, NULL),
(377, 'Debagarh', 26, NULL, NULL),
(378, 'Dhenkanal', 26, NULL, NULL),
(379, 'Gajapati', 26, NULL, NULL),
(380, 'Ganjam', 26, NULL, NULL),
(381, 'Jagatsinghapur', 26, NULL, NULL),
(382, 'Jajapur', 26, NULL, NULL),
(383, 'Jharsuguda', 26, NULL, NULL),
(384, 'Kalahandi', 26, NULL, NULL),
(385, 'Kandhamal', 26, NULL, NULL),
(386, 'Kendrapara', 26, NULL, NULL),
(387, 'Kendujhar', 26, NULL, NULL),
(388, 'Khordha', 26, NULL, NULL),
(389, 'Koraput', 26, NULL, NULL),
(390, 'Malkangiri', 26, NULL, NULL),
(391, 'Mayurbhanj', 26, NULL, NULL),
(392, 'Nabarangapur', 26, NULL, NULL),
(393, 'Nayagarh', 26, NULL, NULL),
(394, 'Nuapada', 26, NULL, NULL),
(395, 'Puri', 26, NULL, NULL),
(396, 'Rayagada', 26, NULL, NULL),
(397, 'Sambalpur', 26, NULL, NULL),
(398, 'Subarnapur (Sonapur)', 26, NULL, NULL),
(399, 'Sundergarh', 26, NULL, NULL),
(400, 'Bastar', 7, NULL, NULL),
(401, 'Bijapur (Chhattisgarh)', 7, NULL, NULL),
(402, 'Bilaspur (Chhattisgarh)', 7, NULL, NULL),
(403, 'Dakshin Bastar Dantewada', 7, NULL, NULL),
(404, 'Dhamtari', 7, NULL, NULL),
(405, 'Durg', 7, NULL, NULL),
(406, 'Janjgir-Champa', 7, NULL, NULL),
(407, 'Jashpur', 7, NULL, NULL),
(408, 'Kabirdham (Kawardha)', 7, NULL, NULL),
(409, 'Korba', 7, NULL, NULL),
(410, 'Koriya', 7, NULL, NULL),
(411, 'Mahasamund', 7, NULL, NULL),
(412, 'Narayanpur', 7, NULL, NULL),
(413, 'Raigarh (Chhattisgarh)', 7, NULL, NULL),
(414, 'Raipur', 7, NULL, NULL),
(415, 'Rajnandgaon', 7, NULL, NULL),
(416, 'Surguja', 7, NULL, NULL),
(417, 'Uttar Bastar Kanker', 7, NULL, NULL),
(418, 'Alirajpur', 20, NULL, NULL),
(419, 'Anuppur', 20, NULL, NULL),
(420, 'Ashok Nagar', 20, NULL, NULL),
(421, 'Balaghat', 20, NULL, NULL),
(422, 'Barwani', 20, NULL, NULL),
(423, 'Betul', 20, NULL, NULL),
(424, 'Bhind', 20, NULL, NULL),
(425, 'Bhopal', 20, NULL, NULL),
(426, 'Burhanpur', 20, NULL, NULL),
(427, 'Chhatarpur', 20, NULL, NULL),
(428, 'Chhindwara', 20, NULL, NULL),
(429, 'Damoh', 20, NULL, NULL),
(430, 'Datia', 20, NULL, NULL),
(431, 'Dewas', 20, NULL, NULL),
(432, 'Dhar', 20, NULL, NULL),
(433, 'Dindori', 20, NULL, NULL),
(434, 'Guna', 20, NULL, NULL),
(435, 'Gwalior', 20, NULL, NULL),
(436, 'Harda', 20, NULL, NULL),
(437, 'Hoshangabad', 20, NULL, NULL),
(438, 'Indore', 20, NULL, NULL),
(439, 'Jabalpur', 20, NULL, NULL),
(440, 'Jhabua', 20, NULL, NULL),
(441, 'Katni', 20, NULL, NULL),
(442, 'Khandwa (East Nimar)', 20, NULL, NULL),
(443, 'Khargone (West Nimar)', 20, NULL, NULL),
(444, 'Mandla', 20, NULL, NULL),
(445, 'Mandsaur', 20, NULL, NULL),
(446, 'Morena', 20, NULL, NULL),
(447, 'Narsinghpur', 20, NULL, NULL),
(448, 'Neemuch', 20, NULL, NULL),
(449, 'Panna', 20, NULL, NULL),
(450, 'Raisen', 20, NULL, NULL),
(451, 'Rajgarh', 20, NULL, NULL),
(452, 'Ratlam', 20, NULL, NULL),
(453, 'Rewa', 20, NULL, NULL),
(454, 'Sagar', 20, NULL, NULL),
(455, 'Satna', 20, NULL, NULL),
(456, 'Sehore', 20, NULL, NULL),
(457, 'Seoni', 20, NULL, NULL),
(458, 'Shahdol', 20, NULL, NULL),
(459, 'Shajapur', 20, NULL, NULL),
(460, 'Sheopur', 20, NULL, NULL),
(461, 'Shivpuri', 20, NULL, NULL),
(462, 'Sidhi', 20, NULL, NULL),
(463, 'Singrauli', 20, NULL, NULL),
(464, 'Tikamgarh', 20, NULL, NULL),
(465, 'Ujjain', 20, NULL, NULL),
(466, 'Umaria', 20, NULL, NULL),
(467, 'Vidisha', 20, NULL, NULL),
(468, 'Ahmedabad', 12, NULL, NULL),
(469, 'Amreli', 12, NULL, NULL),
(470, 'Anand', 12, NULL, NULL),
(471, 'Banaskantha', 12, NULL, NULL),
(472, 'Bharuch', 12, NULL, NULL),
(473, 'Bhavnagar', 12, NULL, NULL),
(474, 'Dahod', 12, NULL, NULL),
(475, 'Gandhi Nagar', 12, NULL, NULL),
(476, 'Jamnagar', 12, NULL, NULL),
(477, 'Junagadh', 12, NULL, NULL),
(478, 'Kachchh', 12, NULL, NULL),
(479, 'Kheda', 12, NULL, NULL),
(480, 'Mahesana', 12, NULL, NULL),
(481, 'Narmada', 12, NULL, NULL),
(482, 'Navsari', 12, NULL, NULL),
(483, 'Panch Mahals', 12, NULL, NULL),
(484, 'Patan', 12, NULL, NULL),
(485, 'Porbandar', 12, NULL, NULL),
(486, 'Rajkot', 12, NULL, NULL),
(487, 'Sabarkantha', 12, NULL, NULL),
(488, 'Surat', 12, NULL, NULL),
(489, 'Surendra Nagar', 12, NULL, NULL),
(490, 'Tapi', 12, NULL, NULL),
(491, 'The Dangs', 12, NULL, NULL),
(492, 'Vadodara', 12, NULL, NULL),
(493, 'Valsad', 12, NULL, NULL),
(494, 'Daman', 9, NULL, NULL),
(495, 'Diu', 9, NULL, NULL),
(496, 'Dadra & Nagar Haveli', 8, NULL, NULL),
(497, 'Ahmed Nagar', 21, NULL, NULL),
(498, 'Akola', 21, NULL, NULL),
(499, 'Amravati', 21, NULL, NULL),
(500, 'Aurangabad', 21, NULL, NULL),
(501, 'Beed', 21, NULL, NULL),
(502, 'Bhandara', 21, NULL, NULL),
(503, 'Buldhana', 21, NULL, NULL),
(504, 'Chandrapur', 21, NULL, NULL),
(505, 'Dhule', 21, NULL, NULL),
(506, 'Gadchiroli', 21, NULL, NULL),
(507, 'Gondia', 21, NULL, NULL),
(508, 'Hingoli', 21, NULL, NULL),
(509, 'Jalgaon', 21, NULL, NULL),
(510, 'Jalna', 21, NULL, NULL),
(511, 'Kolhapur', 21, NULL, NULL),
(512, 'Latur', 21, NULL, NULL),
(513, 'Mumbai', 21, NULL, NULL),
(514, 'Mumbai Suburban', 21, NULL, NULL),
(515, 'Nagpur', 21, NULL, NULL),
(516, 'Nanded', 21, NULL, NULL),
(517, 'Nandurbar', 21, NULL, NULL),
(518, 'Nashik', 21, NULL, NULL),
(519, 'Osmanabad', 21, NULL, NULL),
(520, 'Parbhani', 21, NULL, NULL),
(521, 'Pune', 21, NULL, NULL),
(522, 'Raigarh (Maharashtra)', 21, NULL, NULL),
(523, 'Ratnagiri', 21, NULL, NULL),
(524, 'Sangli', 21, NULL, NULL),
(525, 'Satara', 21, NULL, NULL),
(526, 'Sindhudurg', 21, NULL, NULL),
(527, 'Solapur', 21, NULL, NULL),
(528, 'Thane', 21, NULL, NULL),
(529, 'Wardha', 21, NULL, NULL),
(530, 'Washim', 21, NULL, NULL),
(531, 'Yavatmal', 21, NULL, NULL),
(532, 'Adilabad', 2, NULL, NULL),
(533, 'Anantapur', 2, NULL, NULL),
(534, 'Chittoor', 2, NULL, NULL),
(535, 'East Godavari', 2, NULL, NULL),
(536, 'Guntur', 2, NULL, NULL),
(537, 'Hyderabad', 2, NULL, NULL),
(538, 'Kadapa (Cuddapah)', 2, NULL, NULL),
(539, 'Karim Nagar', 2, NULL, NULL),
(540, 'Khammam', 2, NULL, NULL),
(541, 'Krishna', 2, NULL, NULL),
(542, 'Kurnool', 2, NULL, NULL),
(543, 'Mahbubnagar', 2, NULL, NULL),
(544, 'Medak', 2, NULL, NULL),
(545, 'Nalgonda', 2, NULL, NULL),
(546, 'Nellore', 2, NULL, NULL),
(547, 'Nizamabad', 2, NULL, NULL),
(548, 'Prakasam', 2, NULL, NULL),
(549, 'Rangareddy', 2, NULL, NULL),
(550, 'Srikakulam', 2, NULL, NULL),
(551, 'Visakhapatnam', 2, NULL, NULL),
(552, 'Vizianagaram', 2, NULL, NULL),
(553, 'Warangal', 2, NULL, NULL),
(554, 'West Godavari', 2, NULL, NULL),
(555, 'Bagalkot', 17, NULL, NULL),
(556, 'Bangalore', 17, NULL, NULL),
(557, 'Bangalore Rural', 17, NULL, NULL),
(558, 'Belgaum', 17, NULL, NULL),
(559, 'Bellary', 17, NULL, NULL),
(560, 'Bidar', 17, NULL, NULL),
(561, 'Bijapur (Karnataka)', 17, NULL, NULL),
(562, 'Chamrajnagar', 17, NULL, NULL),
(563, 'Chickmagalur', 17, NULL, NULL),
(564, 'Chikkaballapur', 17, NULL, NULL),
(565, 'Chitradurga', 17, NULL, NULL),
(566, 'Dakshina Kannada', 17, NULL, NULL),
(567, 'Davanagere', 17, NULL, NULL),
(568, 'Dharwad', 17, NULL, NULL),
(569, 'Gadag', 17, NULL, NULL),
(570, 'Gulbarga', 17, NULL, NULL),
(571, 'Hassan', 17, NULL, NULL),
(572, 'Haveri', 17, NULL, NULL),
(573, 'Kodagu', 17, NULL, NULL),
(574, 'Kolar', 17, NULL, NULL),
(575, 'Koppal', 17, NULL, NULL),
(576, 'Mandya', 17, NULL, NULL),
(577, 'Mysore', 17, NULL, NULL),
(578, 'Raichur', 17, NULL, NULL),
(579, 'Ramanagara', 17, NULL, NULL),
(580, 'Shimoga', 17, NULL, NULL),
(581, 'Tumkur', 17, NULL, NULL),
(582, 'Udupi', 17, NULL, NULL),
(583, 'Uttara Kannada', 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positive_date` date NOT NULL,
  `negative_date` date NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `dname`, `gender`, `age`, `blood_group`, `positive_date`, `negative_date`, `state_id`, `city_id`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Rahul', 'female', 34, 'A-', '2022-03-11', '2022-03-31', 6, 55, '8787878787', '2022-03-11 04:11:58', '2022-03-11 04:11:58'),
(3, 'lalita', 'female', 53, 'A-', '2022-03-03', '2022-03-31', 6, 55, '7678909876', '2022-03-11 06:45:25', '2022-03-11 06:45:25'),
(4, 'Rahul Pathak', 'male', 34, 'B-', '2022-03-01', '2022-03-18', 21, 513, '7876545678', '2022-03-11 07:56:18', '2022-03-11 08:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_10_082955_create_donors_table', 1),
(6, '2022_03_10_083153_create_plasma_requests_table', 1),
(7, '2022_03_10_085517_create_state_city_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plasma_requests`
--

CREATE TABLE `plasma_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positive_date` date NOT NULL,
  `negative_date` date NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plasma_requests`
--

INSERT INTO `plasma_requests` (`id`, `rname`, `gender`, `age`, `blood_group`, `positive_date`, `negative_date`, `state_id`, `city_id`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Rushi', 'male', 34, 'A+', '2022-03-10', '2022-03-18', 9, 495, '8787878987', '2022-03-11 04:39:48', '2022-03-11 04:39:48'),
(3, 'Rutik Kamble', 'male', 54, 'B+', '2022-03-19', '2022-03-31', 3, 256, '8765456787', '2022-03-11 09:10:45', '2022-03-11 09:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(10) UNSIGNED NOT NULL,
  `sname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `sname`, `created_at`, `updated_at`) VALUES
(1, 'Andaman & Nicobar Islands', NULL, NULL),
(2, 'Andhra Pradesh', NULL, NULL),
(3, 'Arunachal Pradesh', NULL, NULL),
(4, 'Assam', NULL, NULL),
(5, 'Bihar', NULL, NULL),
(6, 'Chandigarh', NULL, NULL),
(7, 'Chhattisgarh', NULL, NULL),
(8, 'Dadra & Nagar Haveli', NULL, NULL),
(9, 'Daman & Diu', NULL, NULL),
(10, 'Delhi', NULL, NULL),
(11, 'Goa', NULL, NULL),
(12, 'Gujarat', NULL, NULL),
(13, 'Haryana', NULL, NULL),
(14, 'Himachal Pradesh', NULL, NULL),
(15, 'Jammu & Kashmir', NULL, NULL),
(16, 'Jharkhand', NULL, NULL),
(17, 'Karnataka', NULL, NULL),
(18, 'Kerala', NULL, NULL),
(19, 'Lakshadweep', NULL, NULL),
(20, 'Madhya Pradesh', NULL, NULL),
(21, 'Maharashtra', NULL, NULL),
(22, 'Manipur', NULL, NULL),
(23, 'Meghalaya', NULL, NULL),
(24, 'Mizoram', NULL, NULL),
(25, 'Nagaland', NULL, NULL),
(26, 'Odisha', NULL, NULL),
(27, 'Puducherry', NULL, NULL),
(28, 'Punjab', NULL, NULL),
(29, 'Rajasthan', NULL, NULL),
(30, 'Sikkim', NULL, NULL),
(31, 'Tamil Nadu', NULL, NULL),
(32, 'Tripura', NULL, NULL),
(33, 'Uttar Pradesh', NULL, NULL),
(34, 'Uttarakhand', NULL, NULL),
(35, 'West Bengal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plasma_requests`
--
ALTER TABLE `plasma_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plasma_requests`
--
ALTER TABLE `plasma_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
