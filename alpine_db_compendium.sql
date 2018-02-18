-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2018 at 10:38 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpine_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL,
  `from_price` decimal(11,2) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `beds` int(11) DEFAULT NULL,
  `sqm` int(11) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`id`, `from_price`, `gallery_id`, `page_meta_data_id`, `slideshow_id`, `beds`, `sqm`, `pax`) VALUES
(1, '180.50', 12, 12, 21, 1, 125, 2),
(2, '180.00', 12, 13, 19, 1, 125, 2),
(3, '180.00', 13, 17, 20, 1, 125, 2),
(4, '200.00', 0, 21, 0, 4, 32, 1),
(5, '0.00', 14, 23, 1, 0, 0, 0),
(6, '200.00', 12, 34, 17, 4, 50, 8),
(7, '200.00', 0, 40, 0, 2, 200, 4);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_has_compendium_section`
--

CREATE TABLE `accommodation_has_compendium_section` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `compendium_section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accommodation_has_compendium_section`
--

INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(636, '', 179, 8),
(637, '', 179, 9),
(638, '', 179, 10),
(639, '', 179, 11),
(640, '', 179, 12),
(691, '', 185, 8),
(692, '', 185, 9),
(693, '', 185, 10),
(694, '', 185, 11),
(695, '', 185, 12),
(726, '', 114, 8),
(727, '', 114, 9),
(728, '', 114, 10),
(729, '', 114, 11),
(730, '', 114, 12),
(781, '', 191, 8),
(782, '', 191, 9),
(783, '', 191, 10),
(784, '', 191, 11),
(785, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to Waiheke Island and to Island Haven.</p>\r\n\r\n<p>accommodation address: 34 Trig Hill Road, Onetangi.</p>\r\n\r\n<p>This ipad&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,</p>\r\n\r\n<p>Erin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.</p>\r\n\r\n<p>After hours assistance in case of <em>emergency only</em> is available for guests in residence on 021 391 057. Fire, Police &amp; Ambulance dial 111.</p>', 191, 1),
(786, '<p>Arrival/Departure Information<br />\r\nCheck in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key under the front door mat.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', 191, 2),
(787, '<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 191, 3),
(788, '<p><strong>BEACH:</strong> Onetangi beach is a 12 minute walk from the house. &nbsp;To get to the beach, walk down Trig Hill down to Waiheke Rd, follow the rd past the Z service station to the beach.</p>\r\n\r\n<p><strong>CLEANING:</strong> We ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition and the cleaners are there for longer than the time allocated.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>DISHWASHER:</strong> The controls for the dishwasher are inside the door at the top. To scroll through the cycles press the &ldquo;P&rdquo; button until the desired cycle LED it lit. If the dishwasher does not start running within 1 minute of the door being closed, press the &ldquo;P&rdquo; button until the beeping stops. Then repeat the process for cycle selection and close the door to run.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse box is located in the cupboard under the stairs . The gas bottles are located at the rear of the garage. Gas is used for the hob and hot water in the eastern end of the house. &nbsp;A hot water cylinder located in the linen cupboard by the 3rd bedroom services the laundry and downstairs bathroom. If you run out of gas, please check the tanks as the gas may need to be switched over from the empty tank to the full tank. &nbsp;Please contact Stay Waiheke should you require assistance.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> &nbsp;Please use caution with the fire and do not leave the house with the fire going and unattended. &nbsp;In the winter months .firewood, paper and kindling are located in the cupboard next to the fireplace. &nbsp;Additional wood can be purchased from the supermarket or petrol stations.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> You will find a hair dryers in the bathroom upstairs.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> In addition to the fire, there is a heat pump and airconditioner in the living area, the controls are located on the wall in the kitchen next to the clock. There are 3 free standing heaters in the cupboard under the stairs.</p>\r\n\r\n<p><strong>INTERNET:</strong> The wifi network isTELECOM96EEA1. &nbsp;The password is: 0F3541B0E1</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron and ironing board are located in the laundry.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> The laundry is located next to the downstairs bathroom/</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>LIGHTS: </strong>&nbsp;There a many halogen lights located in the house, please ensure these are all switched off prior to leaving the house as if left on these can be a fire risk.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the top drawer below the toaster. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Upon departure, please leave all rubbish outside in the bins provided. &nbsp;Rubbish collection day for Viewpoint is a Monday. &nbsp;If you are staying on a Monday, please place your rubbish and recycles in the bins and wheel to the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>SPA:&nbsp;</strong><br />\r\nPlease shower prior to using the spa.<br />\r\nPlease ensure the &ldquo;pump 1&rdquo; button is turned off and cover replaced/locked when exiting the spa.<br />\r\nPlease do not power off the spa.<br />\r\nTo unlock the spa control pad, press the &ldquo;locked&rdquo; button twice or until the lock symbol is off. &nbsp;To adjust the heat, press the &ldquo;minute/up&rdquo; arrow or the &ldquo;hour/down&rdquo; arrow to desired temperature. &nbsp;To operate the jets, press the &ldquo;pump 1&rdquo; button. &nbsp;Function buttons have been circled in black marker.<br />\r\nNotes: &nbsp;Heat symbol in top right corner of display panel should always be showing. &nbsp;If the spa is at temperature the symbol will be flashing and if it is heating, the symbol will be still. &nbsp;Pump 3 is the heating pump and will go on when heating and auto off when at temperature.</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO:</strong> &nbsp;The television has Freeview and a DVD/CD/stereo located under the main TV in the living room. &nbsp;Power on the TV using the TV remote and power and select the HDMI1 option from the source button, control the Freeview box using the DISH TV remote. &nbsp;</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use, please refrain from running deep baths as this not only uses large quantities of water but also puts a strain on the septic system when emptied.</p>', 191, 4),
(789, '', 191, 12),
(849, '', 118, 8),
(850, '', 118, 9),
(851, '', 118, 10),
(852, '', 118, 11),
(853, '', 118, 12),
(984, '', 193, 8),
(985, '', 193, 9),
(986, '', 193, 10),
(987, '', 193, 11),
(988, '', 193, 12),
(1207, '', 150, 8),
(1208, '', 150, 9),
(1209, '', 150, 10),
(1210, '', 150, 11),
(1211, '', 150, 12),
(1565, '', 100, 8),
(1566, '', 100, 9),
(1567, '', 100, 10),
(1568, '', 100, 11),
(1569, '', 100, 12),
(1870, '', 132, 8),
(1871, '', 132, 9),
(1872, '', 132, 10),
(1873, '', 132, 11),
(1874, '', 132, 12),
(2219, '', 181, 8),
(2220, '', 181, 9),
(2221, '', 181, 10),
(2222, '', 181, 11),
(2223, '', 181, 12),
(2436, '', 164, 8),
(2437, '', 164, 9),
(2438, '', 164, 10),
(2439, '', 164, 11),
(2440, '', 164, 12),
(2607, '', 204, 8),
(2608, '', 204, 9),
(2609, '', 204, 10),
(2610, '', 204, 11),
(2611, '', 204, 12),
(3497, '', 102, 8),
(3498, '', 102, 9),
(3499, '', 102, 10),
(3500, '', 102, 11),
(3501, '', 102, 12),
(3557, '', 167, 8),
(3558, '', 167, 9),
(3559, '', 167, 10),
(3560, '', 167, 11),
(3561, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nDear Guests,<br />\r\nWelcome to Waiheke Island and to Wharetana Bay Estate.</p>\r\n\r\n<p>accommodation address&nbsp;65 Vintage Lane in Te Whau. &nbsp;House phone:&nbsp;+ 649 372 5535</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. &nbsp;Our team is available&nbsp;to suggest and assist&nbsp;with bookings for restaurants and activities on the island. &nbsp;We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of <em>emergency only</em> is available for guests in residence on 021 391 057. <em>&nbsp;Please ring 111 for &nbsp;Fire, Ambulance or Police.</em></p>', 167, 1),
(3562, '<p><strong>BEACH:</strong> You can access Dead Dog Bay from the accommodation by following the track in front of the tennis court. &nbsp;Onetangi beach, which is a 2.5k white sand beach with two seaside cafes, is a 7 minute drive from the accommodation. &nbsp;To get to Onetangi beach, take a left out of the drive and follow Vintage Lane to the end. &nbsp;Turn left on Te Whau Drive and left again on OBrien Road. &nbsp;Follow Obrien to the end and turn right onto Onetangi Road. &nbsp;Follow Onetangi Road to the beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;A&nbsp;spare gas bottle beside the BBQ.</p>\r\n\r\n<p><strong>CONCIERGE SERVICES: &nbsp;</strong>Please contact Stay Waiheke on 09 372 5402 or 021 if you would like assistance with bookings for restaurants or island activities.</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY:</strong> The fuse box is located in the laundry room cupboard (lower level). &nbsp;</p>\r\n\r\n<p><strong>FIRST AID:</strong> You will find first aid supplies in the top left drawer of the guest bathroom by the kitchen.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp;Located in the corner cupboard to the left of the stove. &nbsp;There is a second fire extinguisher located under the stairs at the lower level.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> You will find wood for the fireplaces by the BBQ.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER</strong>: Located in each bathroom vanity drawers.</p>\r\n\r\n<p><strong>HEATING</strong>: In addition to the fireplace, there is under floor heating in full bathrooms.</p>\r\n\r\n<p><strong>INTERNET:</strong> &nbsp;The main Router is in the study, in the corner to the right of the printers. There is a wireless system around the House with airports in the Kitchen, Master &amp; Lower Bedrooms and the Weekender. If the connection drops out, (it will occasionally we are quite a long way from the exchange) simply unplug the power cord on the back of the Router, wait 1min and plug it in; it will take a couple of minutes to reboot.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp;Located in the laundry&nbsp;room - left hand cupboard.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>MUSIC:</strong>&nbsp;The 3.5mm jack on kitchen island connects to a multi-channel Amplifier in cupboard under the island on sea.<br />\r\nWhen a phone/ipad etc is plugged in and played it should come on automatically - you will hear a little click and hey presto! &ndash; you may need to turn the device up to trigger the sensor. &nbsp;It will then turn off automatically after you stop playing music.&nbsp;<br />\r\nIf it doesn&rsquo;t come on, it can be turned on manually using the button on the Amp, but it will need turning off after use to avoid overheating. &nbsp;Speakers and Volume controls: The amp runs 2 pairs of speakers in the kitchen /dining area&ndash; the control for these is below island bench, on the seating end, nearest the cooker.&nbsp;<br />\r\nFront deck speakers, (over outside table on the deck), volume control in on the large wooden facia between the kitchen and TV snug (sea side).&nbsp;<br />\r\nBack deck speaker (on left side of outdoor fireplace) volume is controlled by the input volume on the playing device (phone/ipad etc).</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the kitchen corner cupboard.&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867 or contact our office.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Please leave rubbish and recycles in the bins by the garage. &nbsp;Rubbish will be collected during your stay.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM: </strong>The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION:</strong> Please see individual instructions for the televisions.</p>\r\n\r\n<p><strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water..&nbsp;</p>', 167, 4),
(3563, '<p><a href=\"https://www.google.co.nz/maps/place/65+Vintage+Ln,+Waiheke+Island,+Auckland+1971/@-36.8108405,175.0422064,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c9a1d4b0cc77:0x33badaf2d3e7d519!8m2!3d-36.8108405!4d175.0443951\">https://www.google.co.nz/maps/place/65+Vintage+Ln,+Waiheke+Island,+Auckland+1971/@-36.8108405,175.0422064,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c9a1d4b0cc77:0x33badaf2d3e7d519!8m2!3d-36.8108405!4d175.0443951</a></p>', 167, 12),
(3648, '', 152, 8),
(3649, '', 152, 9),
(3650, '', 152, 10),
(3651, '', 152, 11);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(3652, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to Waiheke Island and to Bach 2.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.<br />\r\nThe office phone is available between 8:30 am and 5:30 pm.</p>\r\n\r\n<p><em><strong>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</strong></em></p>\r\n\r\n<p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"374\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hashtag\"/>\r\n </w:LatentStyles></xml><![endif]--><!--[if gte mso 10]><style>/* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	color:black;}</style><![endif]--></p>', 152, 1);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(3653, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox.</p>\r\n\r\n<p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"374\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hashtag\"/>\r\n </w:LatentStyles></xml><![endif]--><!--[if gte mso 10]><style>/* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	color:black;}</style><![endif]--></p>', 152, 2);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(3654, '<p>&nbsp;We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ol>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"374\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hashtag\"/>\r\n </w:LatentStyles></xml><![endif]--><!--[if gte mso 10]><style>/* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	color:black;}</style><![endif]--></p>', 152, 3);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(3655, '<p><strong>BEACH:</strong>&nbsp; Palm Beach (Mawhitpana Bay) is the closest white sand swimming beach and is a 15 minute walk or a 2 minute drive. To get to Palm Beach, take a left out of the drive and then a quick right onto Hill Road.&nbsp; Take your first left onto Tiri View Road and follow to the end.&nbsp; There is a lovely playground and public BBQ&rsquo;s at Palm Beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY: </strong>In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FUSE BOX:</strong> The fuse box is located above the Fridge</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> A hair dryer is located under the sink in the laundry area.</p>\r\n\r\n<p><strong>INTERNET/WiFi:</strong> Please select &ldquo;Bach2&rdquo; network, the password if cory2416.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; An iron and ironing board are located in the laundry area.</p>\r\n\r\n<p><strong>NOISE:&nbsp;</strong> This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:&nbsp;</strong> Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch under the kitchen sink. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; Rubbish collection day for Bach 2 is a Wednesday.&nbsp; If you are staying on a Wednesday, please place your rubbish in the council bins and leave by the roadside by 8am. Waiheke Island transfer station is located at 102 Ostend Road.</p>\r\n\r\n<p>The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM: </strong>The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING: </strong>This is a smoke free home.&nbsp;</p>\r\n\r\n<p><strong>SPA:</strong><br />\r\n<strong>Please shower prior to using the spa.<br />\r\nPlease ensure the &ldquo;pump 1&rdquo; button is turned off and cover replaced/locked when exiting the spa.<br />\r\nPlease do not power off the spa.</strong></p>\r\n\r\n<p>To unlock the spa control pad, press the &ldquo;locked&rdquo; button twice or until the lock symbol is off.&nbsp; To adjust the heat, press the &ldquo;minute/up&rdquo; arrow or the &ldquo;hour/down&rdquo; arrow to desired temperature.&nbsp; To operate the jets, press the &ldquo;pump 1&rdquo; button.&nbsp; Function buttons have been circled in black marker.</p>\r\n\r\n<p>Notes:&nbsp; Heat symbol in top right corner of display panel should always be showing.&nbsp; If the spa is at temperature the symbol will be flashing and if it is heating, the symbol will be still.&nbsp; Pump 3 is the heating pump and will go on when heating and auto off when at temperature.</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO:&nbsp;</strong> Use the Samsung remote to turn on the TV and scroll channels.&nbsp;&nbsp; The TV has built in FREEVIEW (basic channels) only.</p>\r\n\r\n<p><strong>VEHICLE:&nbsp;</strong> A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.</p>\r\n\r\n<p><!--[if gte mso 9]><xml><w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"374\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hashtag\"/>\r\n </w:LatentStyles></xml><![endif]--><!--[if gte mso 10]><style>/* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Arial\",sans-serif;\r\n	color:black;}</style><![endif]--></p>', 152, 4),
(3656, '<p>Info about the map</p>', 152, 12),
(3657, '', 183, 8),
(3658, '', 183, 9),
(3659, '', 183, 10),
(3660, '', 183, 11),
(3661, '<p>Dear Guests,</p>\r\n\r\n<p><br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Bach on Palm&nbsp;located at 33 Miro Road - Palm Beach. This tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>If we can be of assistance, please contact Stay&nbsp;Waiheke&nbsp;on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay&nbsp;Waiheke&nbsp;after hours assistance in the case of emergency only is available for guests in residence on 021 391 057. &nbsp; &nbsp;In case of medical, police or fire emergency, please dial 111.</p>', 183, 1),
(3662, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox. &nbsp;The lockbox is&nbsp;mounted to the retaining wall in the BBQ area on teh left hand side. &nbsp;Lockbox code: 5033.</p>\r\n\r\n<p><br />\r\nDEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 183, 3),
(3663, '<p><strong>BEACH:</strong> &nbsp;Palm Beach (Mawhitpana Bay) is the closest white sand swimming beach and is just down the hill (to your left)&nbsp;from the house. &nbsp;There is a lovely playground and public BBQ&rsquo;s at Palm Beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>BI-FOLD DOORS: </strong>Please ensure the locks for the bifold doors are flush with the door when open to avoid damaging the door.</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>GARDEN: </strong>&nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE:</strong>&nbsp;Due to fire bans on the island, please do not use the fireplace or wood.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER: &nbsp;</strong>Located above the fridge.</p>\r\n\r\n<p><strong>FUSE BOX: </strong>The fuse box is located under the house. &nbsp;Please contact Stay Waiheke if you require access.</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> A hair dryer is located in the top drawer in the main bedroom.</p>\r\n\r\n<p><strong>INTERNET/WiFi:</strong> Please select &ldquo;Vodafone H3N9&rdquo; network, the password is HD2PCRBEEB7Y4Z.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; Located in the second bedroom cupboard.</p>\r\n\r\n<p><strong>NOISE: </strong>&nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch under the kitchen sink. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Rubbish collection day for Bach on Palm&nbsp;is a Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish in the council bins and leave by the roadside by 8am. Waiheke Island transfer station is located at 102 Ostend Road.&nbsp;</p>\r\n\r\n<p>The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING: </strong>This is a smoke free home.</p>\r\n\r\n<p><strong>STEREO:</strong></p>\r\n\r\n<p>? Put on at system.<br />\r\n? These is a plug-in cord to play from an i-pod/i-phone, etc.<br />\r\n? For DVD, put DVD in and it should automatically switch on TV and play.&nbsp;</p>\r\n\r\n<p><strong>TELEVISION:</strong></p>\r\n\r\n<p>? Basic Sky TV provided.<br />\r\n? Switch on at side of TV or on TV remote.<br />\r\n? On TV remote mode selector to 1 for TV, 2/3 for DVD.<br />\r\n? Select Sky channels on Sky remote.<br />\r\n? To use TV remote, move bigger sub woofer speaker at base of TV slightly aside as it<br />\r\nprevents the signal where it is in the middle.</p>\r\n\r\n<p><strong>VEHICLE: </strong>&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.&nbsp;</p>', 183, 4),
(3664, '<p><a href=\"https://goo.gl/maps/HeaDqvexPWw\">https://goo.gl/maps/HeaDqvexPWw</a></p>', 183, 12),
(3723, '', 86, 8),
(3724, '', 86, 9),
(3725, '', 86, 10),
(3726, '', 86, 11),
(3727, '', 86, 12),
(3736, '', 5, 8),
(3737, '', 5, 9),
(3738, '', 5, 10),
(3739, '', 5, 11),
(3740, '', 5, 12),
(3741, '', 122, 8),
(3742, '', 122, 9),
(3743, '', 122, 10),
(3744, '', 122, 11),
(3745, '', 122, 12),
(3813, '', 211, 8),
(3814, '', 211, 9),
(3815, '', 211, 10),
(3816, '', 211, 11),
(3817, '', 211, 12),
(3856, '', 56, 8),
(3857, '', 56, 9),
(3858, '', 56, 10),
(3859, '', 56, 11),
(3860, '', 56, 12),
(3897, '', 130, 8),
(3898, '', 130, 9),
(3899, '', 130, 10),
(3900, '', 130, 11),
(3901, '', 130, 12),
(3902, '', 84, 8),
(3903, '', 84, 9),
(3904, '', 84, 10),
(3905, '', 84, 11),
(3906, '', 84, 12),
(3928, '', 74, 8),
(3929, '', 74, 9),
(3930, '', 74, 10),
(3931, '', 74, 11),
(3932, '', 74, 12),
(3933, '', 98, 8),
(3934, '', 98, 9),
(3935, '', 98, 10),
(3936, '', 98, 11),
(3937, '', 98, 12),
(3958, '', 67, 8),
(3959, '', 67, 9),
(3960, '', 67, 10),
(3961, '', 67, 11);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(3962, '', 67, 12),
(3979, '', 76, 8),
(3980, '', 76, 9),
(3981, '', 76, 10),
(3982, '', 76, 11),
(3983, '', 76, 12),
(3984, '', 166, 8),
(3985, '', 166, 9),
(3986, '', 166, 10),
(3987, '', 166, 11),
(3988, '', 166, 12),
(3989, '', 58, 8),
(3990, '', 58, 9),
(3991, '', 58, 10),
(3992, '', 58, 11),
(3993, '', 58, 12),
(3994, '', 99, 8),
(3995, '', 99, 9),
(3996, '', 99, 10),
(3997, '', 99, 11),
(3998, '', 99, 12),
(4004, '', 35, 8),
(4005, '', 35, 9),
(4006, '', 35, 10),
(4007, '', 35, 11),
(4008, '', 35, 12),
(4032, '', 8, 8),
(4033, '', 8, 9),
(4034, '', 8, 10),
(4035, '', 8, 11),
(4036, '', 8, 12),
(4121, '', 39, 8),
(4122, '', 39, 9),
(4123, '', 39, 10),
(4124, '', 39, 11),
(4125, '', 39, 12),
(4141, '', 73, 8),
(4142, '', 73, 9),
(4143, '', 73, 10),
(4144, '', 73, 11),
(4145, '', 73, 12),
(4146, '', 72, 8),
(4147, '', 72, 9),
(4148, '', 72, 10),
(4149, '', 72, 11),
(4150, '', 72, 12),
(4151, '', 61, 8),
(4152, '', 61, 9),
(4153, '', 61, 10),
(4154, '', 61, 11),
(4155, '', 61, 12),
(4156, '', 162, 8),
(4157, '', 162, 9),
(4158, '', 162, 10),
(4159, '', 162, 11),
(4160, '', 162, 12),
(4209, '', 42, 8),
(4210, '', 42, 9),
(4211, '', 42, 10),
(4212, '', 42, 11),
(4213, '', 42, 12),
(4244, '', 202, 8),
(4245, '', 202, 9),
(4246, '', 202, 10),
(4247, '', 202, 11),
(4248, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Cosy Cottage located at&nbsp;73 Ocean&nbsp;Road, Surfdale.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\n<em>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</em></p>', 202, 1),
(4249, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox which is located by the lower backdoor: &nbsp;code 890345. Press clear, enter code then press open.&nbsp;</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 202, 3),
(4250, '<p><strong>BEACH: </strong>Palm beach is the closest swimming beach to Cosy Cottage and located 2 kilometres from the house. &nbsp;To get to Palm beach, take a right out of the drive and take a right onto Junction Road to end. &nbsp;Take a right onto Hill Road and a left onto Palm Road. &nbsp;Follow Palm Road to the end. &nbsp;There is a fantastic playground and BBQ area at Palm Beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER</strong>: All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse box is located in the lower level hall by the stairs. &nbsp;A spare gas bottle is located&nbsp;next&nbsp;to the firewood&nbsp;by the car port.</p>\r\n\r\n<p><strong>FIRST AID:</strong> This is located in the kitchen above the pantry.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> This is located in the pantry on the bottom shelf.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> &nbsp;The fireplace is a wood burner. You will find extra firewood by the carport. &nbsp;Please ensure the fire is out when you are not in residence and upon departure. &nbsp;Please leave ashes in firebox.</p>\r\n\r\n<p><strong>GARDEN: </strong>&nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> This is located in the upstairs bathroom</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> In addition to the fire, there are&nbsp;wall heaters and small&nbsp;oil heater.</p>\r\n\r\n<p><strong>INTERNET:</strong> &nbsp;Network name: Spark-59VPF6. &nbsp;Password: SDY72WB9PM</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;These are located in the downstairs wardrobe.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> You will find a washing machine in the upstairs bathroom. &nbsp;There is not a dryer at the house. &nbsp;There is a drying rack on the covered deck.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torches on top of the fridge and in the downstairs wardrobe.&nbsp;&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Rubbish collection day for Cosy Cottage is Thursday.&nbsp;&nbsp;If you are staying on a Thursday, please place your rubbish and recycles in council bins at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING</strong>: This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION:</strong> &nbsp;You will find TV instructions in black cabinet drawer.</p>\r\n\r\n<p><strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.&nbsp;</p>', 202, 4),
(4251, '<p><a href=\"https://goo.gl/maps/S55Qk2t7NV12\">https://goo.gl/maps/S55Qk2t7NV12</a></p>', 202, 12),
(4277, '', 187, 8),
(4278, '', 187, 9),
(4279, '', 187, 10),
(4280, '', 187, 11),
(4281, '', 187, 12),
(4282, '', 188, 8),
(4283, '', 188, 9),
(4284, '', 188, 10),
(4285, '', 188, 11),
(4286, '', 188, 12),
(4308, '', 53, 8),
(4309, '', 53, 9),
(4310, '', 53, 10),
(4311, '', 53, 11),
(4312, '', 53, 12),
(4321, '', 121, 8),
(4322, '', 121, 9),
(4323, '', 121, 10),
(4324, '', 121, 11),
(4325, '', 121, 12),
(4326, '', 117, 8),
(4327, '', 117, 9),
(4328, '', 117, 10),
(4329, '', 117, 11),
(4330, '', 117, 12),
(4349, '', 109, 8),
(4350, '', 109, 9),
(4351, '', 109, 10),
(4352, '', 109, 11),
(4353, '', 109, 12),
(4381, '', 68, 8),
(4382, '', 68, 9),
(4383, '', 68, 10),
(4384, '', 68, 11),
(4385, '<p>Dear Guests,</p>\r\n\r\n<p><br />\r\nWelcome to Waiheke Island and to The Vineyard Cottage located at 8 Brown Road -&nbsp;Onetangi. This tablet&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nAndrew and Kim Rae<br />\r\n<br />\r\nPlease contact Kim on 027 27 11 236 or Andrew on 021 930 683 if you need assistance during your stay. &nbsp;</p>\r\n\r\n<p>You can also contact the team at&nbsp;Stay Waiheke on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay Waiheke after hours emergency assistance is available for guests in residence on 021 391 057. &nbsp; &nbsp;In case of medical, police or fire emergency, please dial 111.</p>', 68, 1),
(4386, '<p>Access to the cottage is via 4 wheel drive only. &nbsp;If you have a 2 wheel drive vehicle, please park in the lay by area just before the hill.</p>\r\n\r\n<p>Drive Waiheke has a selection of Toyota 4WDs for hire from $100 per day and we are happy to&nbsp;arrange a vehicle to be delivered to the cottage during your stay. &nbsp;Please contact Stay Waiheke on 09 372 5402 if you would like to hire a vehicle.</p>', 68, 2),
(4387, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure, please turn off all lights, close and lock windows/doors, turn off the heat pump and leave the key in the lock box. &nbsp;The lock box is mounted on the back exterior house wall out&nbsp;the door and to your right. &nbsp;Lock box code: 0518. &nbsp;Thanks very much!</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 68, 3),
(4388, '<p><strong>House Information</strong></p>\r\n\r\n<p><strong>BEACH:</strong> &nbsp;You can walk to Onetangi beach in about 10 minutes. To get to Onetangi beach, walk out if Brown Rd and take a right. Take the first left onto 7th Avenue and you will see a set of stairs going down to the beach (160 steps). &nbsp;There are 2 cafes on the eastern end of the beach.</p>\r\n\r\n<p><strong>BBQ</strong>: A gas BBQ us there for you to use. &nbsp;We ask that that you please ensure the BBQ is left clean and ready for the for use for the next guests. A charge of $50 will be applied if the BBQ is not cleaned after use.</p>\r\n\r\n<p><strong>CLEANING:</strong> Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances such as the oven and BBQ are left in a clean condition and that the accommodation in generally is left as found.</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water. &nbsp;Water from the tap is filtered with additional filtered drinking water&nbsp;left for you in the cottage.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> &nbsp;There is a fire extinguisher located under sink in the kitchen.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> We provide wood for the fire in winter only. If you would like to use the fire in summer, you can usually find wood at the Z petrol station on the corner of Seaview and Onetangi Roads. &nbsp;Extra wood is stored at the back of the house.&nbsp;</p>\r\n\r\n<p><strong>FIRST AID:</strong> &nbsp;There is a first aid kit located in the wardrobe</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> &nbsp;This is located in the drawer in the bathroom vanity.</p>\r\n\r\n<p><strong>HEATING AND AC</strong>: &nbsp;There is a heat pump located in the bedroom. &nbsp;Please use the remote to operate.</p>\r\n\r\n<p><strong>INTERNET:</strong> &nbsp;There is WIFI at the cottage. &nbsp;The code is: cypressridge</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;These are located in and beside the wardrobe in the bedroom.</p>\r\n\r\n<p><strong>OLIVE OIL:</strong> &nbsp; At Cypress Ridge we manage approximately 1000 olive trees. &nbsp;Kim keeps running them over with the car or the tractor so we are not exactly sure how many we have. &nbsp;:-). &nbsp;We grow 5 varieties of olives&hellip; Frantoio, Luchino, Pendolino, Koroneiki and Picual. &nbsp;The olives are pressed and blended at Rangihoua Estate which is located on Gordons Road at the entrance to Rocky Bay. &nbsp;A visit to their tasting room is highly recommended. &nbsp;The Rangihoua Estate Waiheke Blend 2010 (which includes our olives) was voted in the top 20 in the world by an Italian olive oil commission and Rangihoua continues to win awards around the globe for our amazing Waiheke Island olive oil. &nbsp;Our oil is left in the cottage for you to try. &nbsp;We have Cypress Ridge oil for sale. &nbsp;Please contact Kim if you&#39;d like to take some home. &nbsp;500ml&nbsp;- $40. 250ml - $20.</p>\r\n\r\n<p><strong>PARKING:</strong> Access to the cottage is suitable for 4 wheel drive vehicles only. If you have a two wheel drive vehicle, please park in the parking bay located on the drive about 20m in on the left. &nbsp;If you have a 4 wheel drive vehicle, please park directly out the front of the cottage.&nbsp;</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages are rare on Waiheke and when they occur are usually repaired quickly. &nbsp;A torch is located under the kitchen sink. &nbsp;Please contact us if you experience a loss of power.&nbsp;</p>\r\n\r\n<p><strong>RUBBISH:</strong> Please place your recyclables in the recycle bin located behind the house and your rubbish in the red bag in the bin behind the house. &nbsp;</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> Waiheke Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the system can occur with large or toxic items.</p>\r\n\r\n<p><strong>TV/DVD:</strong>&nbsp; The TV offers &#39;Freeview&quot; basic television and there is a DVD player with an assortment of movies.</p>\r\n\r\n<p><strong>VINEYARDS:</strong> We are very lucky to be located in the heart of the Onetangi Wine Valley! &nbsp;There are seven vineyards in the valley producing a variety of award winning artisan wines. &nbsp;Looking out from the lounge you will see our vineyard (Cypress Ridge) on your left. &nbsp;We grow syrah, cabernet &amp; viognier grapes which are managed and sold by Miro vineyard. &nbsp;Miro is the next vineyard to the right with Obsidian in the distance. &nbsp;To the south, you will find Stonyridge, Topknot Hill (Wild on Waiheke), Te Motu and The Hay Paddock. &nbsp;Miro, Wild on Waiheke and Te Motu all have restaurants. &nbsp;Please contact the vineyards for dining and tasting hours. &nbsp;You can walk to all the vineyards from the accommodation in between 2 and 25 minutes. To get to Miro, walk to the first crest on our drive and you will see a set of stairs going to the restaurant on your left. &nbsp;Please bring a torch at night. You can continue on to Obsidian from Miro via the &lsquo;trophy trail&rdquo;. &nbsp;Look for the sign posted walkway at the entrance to Miro. &nbsp;You can access the other vineyards using the trail (follow the signs from Miro) or directly from the cottage. &nbsp;To get to Stonyridge, Te Motu and Wild on Waiheke from the cottage, walk to the top of our vineyard (the one on your left when facing the vines) and head south over the ridge. &nbsp;You will see Te Motu to the left and Stonyridge to your right in the distance at the top of the next ridge. &nbsp;You will be walking south through our olive grove (wear comfortable shoes) and depending on your route, you may pass our kitchen and rose garden, the chicken house, an old caravan (the love shack) or wander through the native bush track on the way. &nbsp;There are two bridges at the bottom of the accommodation to get you across a small stream. (Please call Kim if you need clarification!)</p>\r\n\r\n<p><strong>WATER</strong>: properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible. &nbsp;We try to ensure there is plenty of water in the tank for guests but if you happen to run out, please call. &nbsp;We have a bore and can refill the tank for you.</p>', 68, 4),
(4389, '<p><a href=\"https://www.google.co.nz/maps/place/5+Brown+Rd,+Onetangi,+Auckland+1081/@-36.7895499,175.0662785,17z/data=!4m5!3m4!1s0x6d72c8e0efff1e77:0x4e00474c2167e3ef!8m2!3d-36.789623!4d175.0681668\">https://www.google.co.nz/maps/place/5+Brown+Rd,+Onetangi,+Auckland+1081/@-36.7895499,175.0662785,17z/data=!4m5!3m4!1s0x6d72c8e0efff1e77:0x4e00474c2167e3ef!8m2!3d-36.789623!4d175.0681668</a></p>', 68, 12),
(4390, '', 127, 8),
(4391, '', 127, 9),
(4392, '', 127, 10),
(4393, '', 127, 11),
(4394, '', 127, 12),
(4533, '', 215, 8),
(4534, '', 215, 9),
(4535, '', 215, 10),
(4536, '', 215, 11),
(4537, '', 215, 12),
(4562, '', 3, 8),
(4563, '', 3, 9),
(4564, '', 3, 10),
(4565, '', 3, 11),
(4566, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Makoha House&nbsp;located at 29 Great Barrier Road&nbsp;in Palm Beach.</p>\r\n\r\n<p>This tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 3, 1),
(4567, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure&nbsp;please action items on the departure checklist, lock all doors and windows and leave the key in the lock box. &nbsp;The lock box is located to the right of the entrance door - code 2918.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 3, 3),
(4568, '<p><strong>BEACH:</strong> &nbsp;Palm Beach (Mawhitpana Bay) is the closest large swimming beach to the accommodation and is a 18 min walk by road or a 2 minute drive. There is a walkway which takes you down to the beach at the end of Cory Rd, this is a quicker way of getting to the beach &nbsp;Take a right when you exit the drive and the walkway (signed Mawhitipana Reserve) is about 100m on the left. &nbsp;It takes you through the reserve down to Palm Beach. &nbsp;Little Oneroa is another great swimming beach and is only a 4 minute drive or a 25 minute walk, it has a great playground if you have kids. There are plenty of beautiful bays to explore on the northern side.&nbsp;</p>\r\n\r\n<p><strong>BBQ:</strong> &nbsp;A gas BBQ us there for you to use. &nbsp;We ask that that you please ensure the BBQ is left clean and ready for the for use for the next guests. A charge of $50 will be applied if the BBQ&rsquo;s are not cleaned after use.</p>\r\n\r\n<p><strong>CLEANING:</strong> Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances are left in a clean condition and that the accommodation in general is left as found.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> &nbsp;The fuse box is located to the left of the fridge. &nbsp;An extra gas bottle for the BBQ is left beside the BBQ.<br />\r\n&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> &nbsp;There is a fire extinguisher located under the sink in the kitchen.</p>\r\n\r\n<p><strong>FIREWOOD: </strong>Firewood is left in the shed located out and to the left of the entrance in winter. &nbsp;Additional wood can be purchased at petrol stations.</p>\r\n\r\n<p><strong>FIRST AID and HAIRDRYERS:</strong> &nbsp;There is a first aid kit and a hairdryer in the cabinet in the bathroom on the main living level.</p>\r\n\r\n<p><strong>HEATING AND AC:</strong> &nbsp;There is a gas heater in the lounge.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET:</strong> The network name is Spark 93-R7ER &nbsp;T9URENHPEU</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD: </strong>The iron and ironing board are kept in the bathroom on the main living level.&nbsp;</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp;&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay&nbsp;Waiheke&nbsp;for 30 days. &nbsp;Please contact Stay&nbsp;Waiheke&nbsp;within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:&nbsp;</strong>&nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by&nbsp;11pm&nbsp;at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp;&nbsp;Power outages on&nbsp;Waiheke&nbsp;are rare but do occur on occasion. &nbsp;You will find a torch in the hall cupboard. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><br />\r\n<strong>RUBBISH:</strong> Rubbish collection day for Mahoka House is Wednesday. &nbsp;Upon departure, please leave all rubbish and recycles in the city collection bins located at the end of the drive. &nbsp;Alternatively, you could take rubbish to the transfer station located at 102 Ostend Road. &nbsp; The transfer station accepts household rubbish in red rubbish bags (left at the accommodation) and all recyclables. &nbsp;There are also rubbish and recycle bins in the car park at both ferries.&nbsp;</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> Waiheke Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the septic system can occur with large or toxic items.</p>\r\n\r\n<p><strong>SUN UMBRELLA:</strong> &nbsp;Please remember to put the sun umbrella down when not in use as high winds can cause damage.</p>\r\n\r\n<p><strong>TV: </strong>The TV offers FREEVIEW television. &nbsp;Power on the TV using the Sony remote. &nbsp;Using the Sony remote, ensure the source is set to Video 2 using the top left button on the Sony remote. &nbsp;Power on the GOG box and use the GOG remote to scroll channels.</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online <a href=\"http://www.staywaiheke.com/rentalcars\">http://www.staywaiheke.com/rentalcars</a>&nbsp;for rates and availability.</p>\r\n\r\n<p><strong>WATER: </strong>properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible.&nbsp;</p>', 3, 4),
(4569, '<p><a href=\"https://www.google.co.nz/maps/place/29+Great+Barrier+Rd,+Oneroa,+Auckland+1081/@-36.7791253,175.0348621,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c94444dc1a55:0x9fe17f2b5978c3d4!8m2!3d-36.7791296!4d175.0370508\">https://www.google.co.nz/maps/place/29+Great+Barrier+Rd,+Oneroa,+Auckland+1081/@-36.7791253,175.0348621,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c94444dc1a55:0x9fe17f2b5978c3d4!8m2!3d-36.7791296!4d175.0370508</a></p>', 3, 12),
(4705, '', 142, 8),
(4706, '', 142, 9),
(4707, '', 142, 10),
(4708, '', 142, 11),
(4709, '', 142, 12),
(4790, '', 220, 8),
(4791, '', 220, 9),
(4792, '', 220, 10),
(4793, '', 220, 11),
(4794, '', 220, 12),
(5136, '', 206, 8),
(5137, '', 206, 9),
(5138, '', 206, 10),
(5139, '', 206, 11),
(5140, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to&nbsp;Waiheke&nbsp;Island and to Sunshine Cottage.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.<br />\r\nThe office phone is available between 8:30 am and 5:30 pm.</p>\r\n\r\n<p><em>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</em></p>', 206, 1),
(5141, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox.&nbsp; Lockbox code: 0918</p>', 206, 2),
(5142, '<p>&nbsp;We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 206, 3),
(5143, '<p>BEACH: Onetangi beach is just out the door.&nbsp; Onetangi&nbsp;beach is a lovely sandy beach with safe swimming and a great beach for a walk.&nbsp; There are two seaside cafes on the beach.</p>\r\n\r\n<p>BBQ:&nbsp;A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.</p>\r\n\r\n<p>CLEANING:&nbsp;Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition. &nbsp;&nbsp;</p>\r\n\r\n<p>GARDEN:&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we&nbsp;apologise&nbsp;for any inconvenience.</p>\r\n\r\n<p>EMERGENCY:&nbsp;In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p>FUSE BOX:&nbsp;The fuse box is located in the outside main bedroom on the wall by the bookshelf.</p>\r\n\r\n<p>HAIR DRYER:&nbsp;A hair dryer is located in the bathroom cupboard</p>\r\n\r\n<p>IRON &amp; IRONING BOARD:&nbsp; An iron and ironing board are located in the tall white kitchen cabinet.</p>\r\n\r\n<p>KEYS: The main entry to the house is through the back door.&nbsp; As you enter the house you will find three keys in a shell on the kitchen bench.&nbsp; The brass key is for the bathroom and the&nbsp;&quot;Silica&quot; key is for the sleepout.</p>\r\n\r\n<p>KITCHEN: The 3 switches by the stove are... Top - toaster, Middle - water pump (please do not touch), Bottom - Fridge (please leave on)</p>\r\n\r\n<p>NOISE:&nbsp;&nbsp;This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by&nbsp;11pm&nbsp;at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p>POWER OUTAGE:&nbsp;&nbsp;Power outages on&nbsp;Waiheke&nbsp;are rare but do occur on occasion.&nbsp; You will find a torch in the tall white kitchen cabinet. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p>RUBBISH:&nbsp; Rubbish collection day for Sunshine Cottage is on a Monday.&nbsp; If you are staying on a Wednesday, please place your rubbish in the red council bags and leave by the roadside by 8am.&nbsp;Waiheke&nbsp;Island transfer station is located at 102 Ostend Road.</p>\r\n\r\n<p>The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p>SEPTIC SYSTEM:&nbsp;The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p>SMOKING:&nbsp;This is a smoke free home.&nbsp;</p>\r\n\r\n<p>VEHICLE:&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars&nbsp;for rates and availability.</p>\r\n\r\n<p>WATER:&nbsp;Like all properties on&nbsp;Waiheke&nbsp;we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.</p>', 206, 4),
(5144, '<p><a href=\"https://goo.gl/maps/QehUt2xGGJC2\">https://goo.gl/maps/QehUt2xGGJC2</a></p>', 206, 12),
(5181, '', 33, 8),
(5182, '', 33, 9),
(5183, '', 33, 10),
(5184, '', 33, 11),
(5185, '', 33, 12),
(5194, '', 10, 8),
(5195, '', 10, 9),
(5196, '', 10, 10),
(5197, '', 10, 11),
(5198, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Valhalla located at 72 Cory Road in Palm Beach.<br />\r\n&nbsp;<br />\r\nThis tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;<br />\r\n&nbsp;<br />\r\nThank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke<br />\r\n&nbsp;<br />\r\nPh: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of&nbsp;emergency only&nbsp;is available for guests in residence on 021 391 057. &nbsp;For police, fire and ambulance ring 111.</p>', 10, 1),
(5199, '<p>Check in is from&nbsp;4pm and we ask that you check out of this accommodation before 10:00 on the day of your departure. &nbsp;On departure, please close and lock all doors/windows&nbsp;and leave the key in the lock box. &nbsp;The lock box is mounted on the house to the left when facing the garage. &nbsp;The lock box code is 7218.<br />\r\n&nbsp;<br />\r\n<strong>We would appreciate if you could check the following prior to your departure. &nbsp;</strong><br />\r\n&nbsp;<br />\r\nDishes have been washed or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been placed in the bins by the garage.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>\r\n\r\n<p>&nbsp;</p>', 10, 3),
(5200, '<p><strong>BEACH:</strong> &nbsp;Palm Beach (Mawhitpana Bay) is the closest large swimming beach to the accommodation and is a 15 min walk by road or a 2 minute drive. There is a walkway which takes you down to the beach at the end of Cory Rd, this is a quicker way of getting to the beach &nbsp;Take a right when you exit the drive and the walkway (signed Mawhitipana Reserve) is about 100m on the left. &nbsp;It takes you through the reserve down to Palm Beach. &nbsp;Little Oneroa is another great swimming beach and is only a 4 minute drive or a 25 minute walk, it has a great playground if you have kids. There are plenty of beautiful bays to explore on the northern side.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>BBQ:</strong> A gas BBQ and a wood burning BBQ available for you to use. &nbsp;We ask that that you please ensure the BBQ&rsquo;s are left clean and ready for the for use for the next guests. A charge of $50 will be applied if the BBQ&rsquo;s are not cleaned after use. &nbsp;If you would like to use the wood burning BBQ, please check with our team to confirm there is not a current fire ban on the island.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>CLEANING:</strong> Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances are left in a clean condition and that the accommodation in general is left as found.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>DISHWASHER:</strong> The controls are located inside the dishwasher drawers. Scroll through programme to select cycle.<br />\r\n&nbsp;<br />\r\n<strong>DRINKING WATER</strong>: All properties on Waiheke run off tank water which is safe to drink. &nbsp;There is filtered water by the main sink.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> &nbsp;The power board is located on the wall in the store-room. &nbsp;The store room is located on the left before the stairs to the rumpus/garage. &nbsp;The gas bottles are located in the drive area by the pool fence with a spare gas bottle located in the garage. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).<br />\r\n&nbsp;<br />\r\n<strong>EXTRA FRIDGE:</strong> &nbsp;There is an additional fridge/freezer in the laundry.<br />\r\n&nbsp;<br />\r\n<strong>FIRE EXTINGUISHER:</strong> &nbsp;There is a fire extinguisher and fire blanket located in the kitchen pantry.<br />\r\n&nbsp;<br />\r\n<strong>FIRST AID:</strong> &nbsp;There is a first aid kit located to the right on the upper shelf in the pantry in the kitchen.<br />\r\n&nbsp;<br />\r\n<strong>HAIR DRYERS:</strong> These are located in the bathrooms for your use.<br />\r\n&nbsp;<br />\r\n<strong>HEATING AND AC:</strong> &nbsp;There are various heaters located in the accommodation. &nbsp;Please ensure that these are switched off prior to your departure.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET:</strong> There is WIFI at Valhalla. &nbsp;network: Valhalla Password ilikewaiheke<br />\r\n&nbsp;<br />\r\n<strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron is located behind the laundry door, the iron is located in the cupboard in the laundry.<br />\r\n&nbsp;<br />\r\n<strong>KITCHEN AND LAUNDRY:</strong> Please use only soft cloths to clean the stainless appliances and refrain from using any scouring pads on the stainless steel as it will scratch.<br />\r\n&nbsp;<br />\r\n<strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.<br />\r\n&nbsp;<br />\r\n<strong>PATIO DOORS:</strong> To lock these doors please close door, lift handle up and then turn the key to lock.<br />\r\n&nbsp;<br />\r\n<strong>POOL:</strong> &nbsp;The swimming pool is serviced on a regular basis. &nbsp;Please excuse any interruptions due to pool maintenance. &nbsp;Please do not top up or fill the pool with the house water. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>POWER OUTAGE:</strong> &nbsp;In the case of a power outage, first check the power board located in the store-room on the left before the stairs to the rumpus/garage, to see if a switch has tripped. &nbsp;There are torches in the pantry cupboard in the kitchen. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.<br />\r\n&nbsp;<br />\r\n<strong>RUBBISH:</strong>&nbsp;Please place rubbish and recycles in council bins in the drive prior to departure. Rubbish collection day for Valhalla is Wednesday. &nbsp;If you are staying on a Wednesday, please place your red rubbish bin and blue recycling bin by the drive before 8am. &nbsp;Alternatively, we would greatly appreciate it if you could take rubbish to the transfer station located at 102 Ostend Road. &nbsp; The transfer station accepts household rubbish in red rubbish bags (left at the accommodation) and all recyclables. &nbsp;There are also rubbish and recycle bins in the car park at both ferries.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> Waiheke Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the septic system can occur with large or toxic items.<br />\r\n&nbsp;<br />\r\n<strong>TV/SKY/DVD:</strong> TV in lounge: &nbsp;To watch TV, power on the TV using the Samsung remote. &nbsp;Set the source to HDMI3 for SKY. &nbsp;Power on the SKY box using the SKY remote and scroll channels using the SKY remote. &nbsp;To watch DVD, set the source to &ldquo;component 1&rdquo; using the Samsung remote. &nbsp;Power on and use the DVD player with the DVD remote. &nbsp;For sound on the DVD you will need to push the &ldquo;video&rdquo; button on the actual Bose system unit or remote. Also on the bose system &ldquo;AUX&rdquo; button is for the ipod doc system.<br />\r\n&nbsp;<br />\r\nThe TV in the kitchen/dining area will show whatever channel is selected in the living room. &nbsp;Use the Sky volume to control volume of kitchen TV.<br />\r\n&nbsp;<br />\r\n<strong>WATER:</strong> properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible.&nbsp;</p>', 10, 4),
(5201, '<p><a href=\"https://goo.gl/maps/TDBLx3tksX62\">https://goo.gl/maps/TDBLx3tksX62</a></p>', 10, 12),
(5255, '', 148, 8),
(5256, '', 148, 9),
(5257, '', 148, 10),
(5258, '', 148, 11),
(5259, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Blackwood Retreat located at 16 Tawa Street in Oneroa.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 148, 1),
(5260, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box.&nbsp; The lock box code 5016.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 148, 3),
(5261, '<p><strong>BEACH:</strong> Walking to Little Oneroa beach - (10 minutes) - Take a right out of the accommodation onto Tawa Street, turn right onto Kiwi St, turn right onto Moa Ave to the main road (Oceanview Rd).&nbsp; Cross Oceanview Road and you will find a pathway to the beach to the right.&nbsp; Driving to Oneroa beach - Take a right out of the accommodation onto Tawa Street, turn right onto Kiwi St, turn right onto Moa Ave to the main road (Oceanview Rd).&nbsp; Take a left onto Oceanview Road and then a right onto Puriri Road to the beach.</p>\r\n\r\n<p><strong>BBQ: </strong>A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER</strong>: All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The gas bottles are located on the left hand side of the garage.&nbsp; The fusebox is located in the garage.</p>\r\n\r\n<p><strong>FIREPLACE:</strong>&nbsp; There is a gas fire at the house.&nbsp; Use the remote control located in the study to operate.</p>\r\n\r\n<p><strong>FIRST AID KIT:&nbsp;</strong> This is located in the bottom right drawer in kitchen when facing the sea.</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY: </strong>In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> Located in the master bathroom cupboard</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> In addition to the fire, there are freestanding heaters and a heat pump in the lower level twin bedroom.</p>\r\n\r\n<p><strong>INTERNET:</strong>&nbsp; Network name: SPARK - UQKG2M&nbsp;5g&nbsp; Password (case sensitive) LK34KJLXYN</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; Located in the laundry.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> Please note:&nbsp; The Asko dryer is self venting and the condenser needs to be emptied after each cycle.&nbsp; Slide the container on the far left towards you to remove.&nbsp; Please clean lint after each cycle.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp; UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch in the bottom right drawer of the kitchen island.&nbsp; To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; Rubbish collection day for Blackwood Retreat is a Tuesday.&nbsp; If you are staying on a Tuesday, please place your rubbish and recycles in the bins provided at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA:&nbsp;</strong> Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p><strong>TELEVISION:&nbsp; </strong>Power on the TV using the LG remote.&nbsp; Power on the SKY box using the SKY remote and scroll channels using the SKY remote.&nbsp;</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.</p>', 148, 4),
(5262, '<p><a href=\"https://goo.gl/maps/75yBRPCf8rj\">https://goo.gl/maps/75yBRPCf8rj</a></p>', 148, 12),
(5312, '', 120, 8),
(5313, '', 120, 9),
(5314, '', 120, 10),
(5315, '', 120, 11),
(5316, '', 120, 12),
(5495, '', 81, 8),
(5496, '', 81, 9),
(5497, '', 81, 10),
(5498, '', 81, 11),
(5499, '', 81, 12),
(5500, '', 128, 8),
(5501, '', 128, 9),
(5502, '', 128, 10),
(5503, '', 128, 11),
(5504, '', 128, 12),
(5515, '', 225, 8),
(5516, '', 225, 9),
(5517, '', 225, 10),
(5518, '', 225, 11),
(5519, '', 225, 12),
(5614, '', 135, 8),
(5615, '', 135, 9),
(5616, '', 135, 10),
(5617, '', 135, 11),
(5618, '', 135, 12),
(5654, '', 207, 8),
(5655, '', 207, 9),
(5656, '', 207, 10),
(5657, '', 207, 11),
(5658, '', 207, 12),
(5906, '', 83, 8),
(5907, '', 83, 9),
(5908, '', 83, 10),
(5909, '', 83, 11),
(5910, '', 83, 12),
(5916, '', 217, 8),
(5917, '', 217, 9),
(5918, '', 217, 10),
(5919, '', 217, 11),
(5920, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Church Bay Views located at 33 Church Bay Road in Oneroa.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence&nbsp;on 021 391 057.&nbsp;&nbsp;</p>', 217, 1),
(5921, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox which is mounted by the entrance door.&nbsp; Lockbox code: 3318</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 217, 3);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(5922, '<p><strong>BEACH and VILLAGE:</strong>&nbsp; Oneroa beach is the closest white sand swimming beach to the accommodation however there are many more island beaches to explore.&nbsp; To get to Oneroa&nbsp;beach and village, take a left out of the drive onto Church Bay Road.&nbsp; Continue on to Mako Street and then turn right onto Oceanview&nbsp;Road.&nbsp; In the centre of the village and on Oceanview&nbsp;Road there are signposted tracks down to the beach.&nbsp; If you go through the village and take a left on Puriri Road you will find parking for the beach along&nbsp;Beach Parade.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use.&nbsp; The combination to unlock the BBQ is 1980.&nbsp;&nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY, GAS AND WATER PUMP:&nbsp;</strong> The fuse box is located&nbsp;in the kitchen by the front door on the left hand side.&nbsp; The gas bottles are located&nbsp;under the stair well - on the left hand side of the house.&nbsp;Please note:&nbsp; the switch for the water pump is on the kitchen wall by the door.&nbsp; The switch needs to be left on for the pump to supply water to the house.</p>\r\n\r\n<p><strong>FIRST AID:</strong>&nbsp; This is located in the kitchen in the bottom drawer opposite the oven.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp; This is located in the cupboard above the stove.</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> This is located in the bathroom vanity.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> There is a heat pump and fan in the lounge.&nbsp; The heat pump remote is kept on the side table.</p>\r\n\r\n<p><strong>INTERNET:&nbsp;</strong>&nbsp;</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; These are kept&nbsp;In master bedroom wardrobe.</p>\r\n\r\n<p><strong>LAUNDRY:</strong>&nbsp; The washing machine and dryer are located in the kitchen.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp; UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch in the bottom drawer opposite the oven.&nbsp; To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.&nbsp; Once the power is restored you will need to reset the oven clock in order for the oven to work.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; Rubbish collection day for Church Bay Views is Tuesday.&nbsp;&nbsp;If you are staying on a Tuesday, please place your rubbish in a red rubbish bag located under the kitchen sink and recycles in plastic supermarket bags at the roadside by 7am.&nbsp;&nbsp;Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>TELEVISION:&nbsp;&nbsp;</strong>Turn on TV with Sony remote with green button make sure Source on Digital . (Smart TV) . Push home this brings up all apps, scroll to any app that you want and push enter which is the centre button. For Netfilx scroll to Waiheke Guests . To change push home.</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER: </strong>Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.&nbsp; Please note:&nbsp; the switch for the water pump is on the kitchen wall by the door.&nbsp; The switch needs to be left on for the pump to supply water to the house.</p>', 217, 4),
(5923, '<p><a href=\"https://goo.gl/maps/EtVE8jDpUtN2\">https://goo.gl/maps/EtVE8jDpUtN2</a></p>', 217, 12),
(5944, '', 227, 8),
(5945, '', 227, 9),
(5946, '', 227, 10),
(5947, '', 227, 11),
(5948, '', 227, 12),
(5954, '', 12, 8),
(5955, '', 12, 9),
(5956, '', 12, 10),
(5957, '', 12, 11),
(5958, '', 12, 12),
(5973, '', 208, 8),
(5974, '', 208, 9),
(5975, '', 208, 10),
(5976, '', 208, 11),
(5977, '', 208, 12),
(6091, '', 216, 8),
(6092, '', 216, 9),
(6093, '', 216, 10),
(6094, '', 216, 11),
(6095, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Island Beauty located at&nbsp;308D Sea View Road in Onetangi.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.&nbsp; For non emergencies, please ring during business hours.&nbsp; Fire, Police and Ambulance dial&nbsp;111.</p>', 216, 1),
(6096, '<p>Arrival/Departure Information<br />\r\nCheck in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox which is mounted to the house outside the entrance door. Lockbox code: 6972&nbsp;</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 216, 3),
(6097, '<p><strong>BEACH:</strong> Onetangi&nbsp;beach is the closest beach to the house.&nbsp; You can walk in 20-25 minutes or there is parking at the beach.&nbsp; Take a left out of the drive and a left onto Seaview&nbsp;Road.&nbsp; Continue along Seaview&nbsp;Road until you reach 7th&nbsp;Avenue (there are stairs at the top of 7th&nbsp;Ave if you are walking).&nbsp; Take a left onto 7th&nbsp;Avenue and continue to the beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY:&nbsp;</strong> The fuse box and the hot water cylinder are located in the laundry.</p>\r\n\r\n<p><strong>FIRST AID:</strong> This is located in the mid floor Bathroom cupboard.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> This is located under Kitchen sink.</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong>&nbsp; A hairdryer is located&nbsp;in the&nbsp;middle bathroom on the shelf.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong>&nbsp;There is a heat pump/AC unit located in the lounge. There is also a wall heater in the downstairs bedroom.&nbsp;</p>\r\n\r\n<p><strong>INTERNET:&nbsp;</strong> The WIFI password is&nbsp;RBMRUJLBLU</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; These are located in the laundry.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp; UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch in under the kitchen sink.&nbsp;&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH</strong>:&nbsp; Rubbish collection day for Island Beauty is Monday.&nbsp;&nbsp;If you are staying on a Monday, please place your rubbish in a red rubbish bag located under the kitchen sink and recycles in plastic supermarket bags at the roadside by 7am.&nbsp; Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>SPA:</strong>&nbsp; Use the arrow keys on the panel to control the temperature in the spa. There is a paper manual by the compendium for more information.&nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA:</strong>&nbsp; Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p><strong>TELEVISION:&nbsp;</strong> Power on the&nbsp;TV using Sony remote.&nbsp; Set source to TV/HDMI for play station 3 /Video 1 for DVD player.&nbsp; The DVD has a&nbsp; Panasonic remote.&nbsp;</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.&nbsp;</p>', 216, 4),
(6098, '<p><a href=\"https://goo.gl/maps/fNLAgxU4RzR2\">https://goo.gl/maps/fNLAgxU4RzR2</a></p>', 216, 12),
(6117, '', 231, 8),
(6118, '', 231, 9),
(6119, '', 231, 10),
(6120, '', 231, 11),
(6121, '', 231, 12),
(6130, '', 79, 8),
(6131, '', 79, 9),
(6132, '', 79, 10),
(6133, '', 79, 11),
(6134, '', 79, 12),
(6282, '', 41, 8),
(6283, '', 41, 9),
(6284, '', 41, 10),
(6285, '', 41, 11),
(6286, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to&nbsp;Waiheke&nbsp;Island and to Belle Point located at 55 Belle Terrace. This tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>If we can be of assistance, please contact Stay&nbsp;Waiheke&nbsp;on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay&nbsp;Waiheke&nbsp;after hours assistance in the case of emergency only is available for guests in residence on 021 391 057. &nbsp;For all non emergency calls, please contact the office during business hours.&nbsp; In case of medical, police or fire emergency, please dial 111.</p>', 41, 1),
(6287, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure, please lock all windows and doors, action items on the departure checklist and leave the key in the lockbox which is mounted on the house to the right of the front door as you exit. &nbsp;The lock box code is 5518.</p>\r\n\r\n<p>Departure Checklist:&nbsp;<br />\r\nWe would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left in the rubbish/recycle bins outside.<br />\r\nUsed towels have been placed in the shower.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 41, 3),
(6288, '<p><strong>BBQ:</strong> A gas BBQ us there for you to use. &nbsp;We ask that that you please ensure the BBQ is left clean and ready for the for use for the next guests. A charge of $50 will be applied if the BBQ&rsquo;s are not cleaned after use.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances are left in a clean condition and that the accommodation in general is left as found.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink. The drinking dispenser on the fridge is filtered water<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> There is a gas cylinder externally located in the cupboard at the lower level of the house to the left of the lower bedroom (when looking at the house). &nbsp;A spare gas bottle for the BBQ is also located in this area. &nbsp;The fuse box is located on the wall between the kitchen and the lounge.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> &nbsp;There is a fire extinguisher located under the kitchen sink.</p>\r\n\r\n<p><strong>FIRE:</strong> Wood for the fire is located by the laundry which is to your left as you go out the lower bedroom doors.</p>\r\n\r\n<p><strong>FIRST AID:</strong> &nbsp;There is a first aid kit located under the sink in the upstairs bathroom.</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> This is located in the bathroom vanity.</p>\r\n\r\n<p><strong>HEATING AND AC:</strong> There are fans in the upstairs bedrooms. &nbsp;The fan controls are located on the wall.</p>\r\n\r\n<p><strong>INTERNET:</strong> The wifi code is HGFCM5QRFW</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron is located in the cupboard in the back upstairs bedroom.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> Is accessed externally on the lower level of the house. There is a washing machine and dryer for your use.</p>\r\n\r\n<p><strong>LEFT accommodation: </strong>&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> Please be considerate of neighbours and keep noise levels to an enjoyable level. Strictly no parties.&nbsp;</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;In the case of a power outage, first please check that no switch has tripped in the power board (located on the wall between the kitchen and living room). If there is a continued power outage there is a torch located under the kitchen sink. &nbsp; Please contact Vector Outages on 0508 832 867 to find out when power is scheduled to be restored. &nbsp;</p>\r\n\r\n<p><strong>RUBBISH:</strong> Rubbish collection day for Belle Point is Monday morning. &nbsp;If you are staying on a Monday, please place your rubbish (in the red bags provided) and recycles by the roadside for collection. &nbsp;Alternatively, we would greatly appreciate it if you could take rubbish to the transfer station located at 102 Ostend Road. &nbsp;There are also rubbish and recycle bins in the car park at both ferries.&nbsp;</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> Waiheke Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the septic system can occur with large or toxic items.</p>\r\n\r\n<p><strong>TRANSPORTATION:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online <a href=\"http://www.staywaiheke.com/rentalcars\">http://www.staywaiheke.com/rentalcars</a>&nbsp;for rates and availability.</p>\r\n\r\n<p><strong>TV/DVD: </strong>&nbsp;Turn on the TV using the power button on the top of the TV. &nbsp;Please use the LG remote to scroll through the source buttons until you get to HDMI and select. &nbsp;Please use the Sky remote to select the channel you require.</p>\r\n\r\n<p><strong>WATER:</strong> properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible. Our hot water system is very hot, so be careful you do not scold yourselves.&nbsp;</p>\r\n\r\n<p><strong>WATER PUMP:</strong> &nbsp;This is accessed via the laundry in the wall cupboard.</p>', 41, 4),
(6289, '<p><a href=\"https://goo.gl/maps/EbmoyEBoHxT2\">https://goo.gl/maps/EbmoyEBoHxT2</a></p>', 41, 12),
(6290, '', 44, 8),
(6291, '', 44, 9),
(6292, '', 44, 10),
(6293, '', 44, 11),
(6294, '', 44, 12),
(6303, '', 87, 8),
(6304, '', 87, 9),
(6305, '', 87, 10),
(6306, '', 87, 11),
(6307, '<p>Dear Guests,<br />\r\n&nbsp;<br />\r\nWelcome to Waiheke Island and to The Pah. &nbsp;This tablet&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;<br />\r\n&nbsp;<br />\r\nThank you and have a wonderful stay,<br />\r\nErin Andrews and Kim Rae and the team at Stay Waiheke<br />\r\nwww.staywaiheke.com<br />\r\n&nbsp;<br />\r\nPh: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of <em>emergency only</em> is available for guests in residence on 021 391 057.</p>\r\n\r\n<p>Fire, police and ambulance dial 111</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 87, 1),
(6308, '<p>Check in is from 4pm and we ask that you check out of this accommodation before 10:30 am on the day of your departure. &nbsp;On departure, please action the items on the departure checklist, close and lock all windows and doors and replace the keys in the lock box which is mounted on the pillar on the deck of the white cottage. The Code is 0718.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>We would appreciate if you could check the following prior to your departure.</strong><br />\r\n&nbsp;<br />\r\nDishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left outside in council rubbish&nbsp;bins.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 87, 3),
(6309, '<p><strong>BEACH:</strong> &nbsp;The nearest beaches are Onetangi Beach. &nbsp;Walking - When you exit the driveway take a right and walk 15 meters on Sea View Rd and you will see a walkway on the right signed Jacobs Ladder. This will take you down to the beach. Alternatively there is another track at the end of Pah Rd which will take you down to Fourth Avenue. Driving - turn right when exiting the drive and turn left down Seaview Rd until you come to the junction with Onetangi Rd, turn left and follow until you get to the beach &nbsp;&nbsp;<br />\r\nPalm Beach is approximately a 7 min drive from The Pah. Turn right onto Seaview Rd and follow Seaview Rd, turn right onto View Rd for 750 m, turn right onto Cres Rd West for 800 m, turn right onto Bay Rd for 450 m, Slight right onto Palm Rd for 650 m and your will arrive at Palm Beach.<br />\r\n&nbsp;<br />\r\n<strong>BBQ: </strong>&nbsp;A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests.<br />\r\n&nbsp;<br />\r\n<strong>CLEANING: </strong>Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).<br />\r\n&nbsp;<br />\r\n<strong>FIREPLACE:</strong> There is firewood located at the western&nbsp;side of the house. &nbsp;Please ensure the fire is extinguished when leaving the accommodation and ensure it is supervised whilst alight. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>FIRE EXTINGUISHER:</strong> &nbsp;There is a fire extinguisher located under the kitchen sink.<br />\r\n&nbsp;<br />\r\n<strong>FIRST AID:</strong> &nbsp;There is a first aid kit located in the master bedroom vanity cupboard.<br />\r\n&nbsp;<br />\r\n<strong>FUSE BOX:</strong> The fuse box is located by the entrance door in the laundry. &nbsp;Switches for underfloor heating are in the fuse box.<br />\r\n&nbsp;<br />\r\n<strong>GAS BOTTLES:</strong> The gas bottle for the hob is located in the front of house by the kitchen.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET: WiFi</strong> network is Spark- HX7JUR-5G&nbsp;and the password is AVMF5HALJ7<br />\r\n&nbsp;<br />\r\n<strong>IRON AND IRONING BOARD:</strong> &nbsp;The iron and ironing board are located in the laundry.<br />\r\n&nbsp;<br />\r\n<strong>NOISE:</strong> The Pah is in the middle of a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;If noise control are called due to excessive noise, a $1000 noise bond is payable as per the T&rsquo;s and C&rsquo;s of The Pah.<br />\r\n&nbsp;<br />\r\n<strong>OUTDOOR FURNITURE:</strong> There are 8, 1950&rsquo;s butterfly chairs with black canvas covers for your outdoor use. &nbsp;Please ensure the covers are brought in at night or if it is windy. &nbsp;Please also ensure these are brought into the house prior to your departure.<br />\r\nThe sun loungers should be positioned near the house on very windy days to mitigate damage.<br />\r\nPlease ensure you put the retractable awning back in when you are not at the accommodation. &nbsp;The remote is located on the wall by the doors from the kitchen.<br />\r\n&nbsp;<br />\r\n<strong>POWER OUTAGE:</strong> &nbsp;Power outages are rare on Waiheke and when they occur are usually repaired quickly. &nbsp;A torch is located under the kitchen sink. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867. Please contact us if you need assistance.<br />\r\n&nbsp;<br />\r\n<strong>RUBBISH:</strong> The rubbish bins are located in beside the white sleepout . Household rubbish goes in the red bin and all recyclables go&nbsp;into the blue bin.&nbsp;Please place the bins at the bottom of the drive upon departure.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet. &nbsp;Please also be mindful and water usage as this also causes strain on the septic system.<br />\r\n&nbsp;<br />\r\n<strong>SMOKING:</strong> Smoking is not permitted inside the accommodation. Any cigarette butts should be disposed of responsibly. &nbsp;</p>\r\n\r\n<p><strong>STATUES:</strong> Please be careful of the statues beside the fireplace, as these are not secured and have been broken in the past.</p>\r\n\r\n<p><strong>TELEVISION:</strong>&nbsp;&nbsp;To operate the TV&hellip; power on the smart TV using the Samsung remote . The TV will play Netflix and other on demand channels through the internet. There is no&nbsp;Freeview&nbsp;or cable at the house.<br />\r\n&nbsp;<br />\r\nWhen you power on the TV select the smart hub&nbsp;coloured&nbsp;cube in the&nbsp;centre&nbsp;of the remote to bring up the menu for online watching.&nbsp;<br />\r\n&nbsp;<br />\r\nToggle left or right using the arrows on the remote to select a viewing option and press the enter button in the&nbsp;centre&nbsp;of the remote. &nbsp;Use these keys to navigate your options.</p>\r\n\r\n<p><strong>UMBRELLAS:</strong>&nbsp;When putting up the 3 large umbrellas on the terrace be sure that the spokes are not crossed over, please DO NOT force them, there will only be difficulty erecting if the spokes are not in the correct position. &nbsp;Please always take them down in the evening or if it is windy.</p>\r\n\r\n<p><strong>WATER:</strong> &nbsp;Like all properties on Waiheke we are on rain water so be mindful of how much you use as replenishment at short notice is not always possible.<br />\r\n&nbsp;</p>', 87, 4),
(6310, '<p><a href=\"https://goo.gl/maps/fsuhrwLZQhJ2\">https://goo.gl/maps/fsuhrwLZQhJ2</a></p>', 87, 12),
(6311, '', 97, 8),
(6312, '', 97, 9),
(6313, '', 97, 10),
(6314, '', 97, 11),
(6315, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to Waiheke Island and to Number Five.<br />\r\nThis tablet&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.<br />\r\n&nbsp;<br />\r\nPh: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057<br />\r\n&nbsp;<br />\r\nThank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke Ltd<br />\r\nStay Waiheke<br />\r\nwww.staywaiheke.com</p>\r\n\r\n<p>&nbsp;</p>', 97, 1),
(6316, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure please lock all windows and doors, action items on the departure checklist and leave the key in the lock box remembering to scramble the code. &nbsp;The lock box is mounted on the house and located out the door to the left at the bottom of the stairs. The lock box code is 0518.<br />\r\n&nbsp;<br />\r\n<strong>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</strong><br />\r\n&nbsp;<br />\r\nDishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left in the council bins outside.<br />\r\nUsed towels have been placed in the shower.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>\r\n\r\n<p>&nbsp;</p>', 97, 3),
(6317, '<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>BEACH:</strong> There is a track leading down to Onetangi beach. &nbsp;The walk takes about five minutes. &nbsp;To access the track (Jacobs Ladder), go out the drive and take a right. &nbsp;You will see the entrance to the track on your right. &nbsp;To drive to the beach, go out of the drive and turn right and then left onto Seaview Road. &nbsp;At the end of Seaview Road (by the petrol station) turn left and continue straight to the beach.<br />\r\n&nbsp;<br />\r\n<strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.<br />\r\n&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> &nbsp;The fuse box is located in the pantry. &nbsp;Gas bottles are under the house.<br />\r\n&nbsp;<br />\r\n<strong>GARDEN:</strong> &nbsp;The garden at Number Five is maintained regularly on a Monday (excluding public holidays). &nbsp;If you are staying on a Monday, apologies for any inconvenience. &nbsp;The gardener will do his work as quickly as possible.<br />\r\n&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).<br />\r\n&nbsp;<br />\r\n<strong>FIRE EXTINGUISHER</strong>: &nbsp;A fire extinguisher is located under the kitchen sink.<br />\r\n&nbsp;<br />\r\n<strong>FIRST AID KIT:</strong> A first aid kit is located under the kitchen sink.<br />\r\n&nbsp;<br />\r\n<strong>HAIR DRYER:</strong> &nbsp;There is a hair dryer located in the master bathroom.<br />\r\n&nbsp;<br />\r\n<strong>HEATING AND A/C:</strong> There are panel heaters in the bedrooms and a freestanding heater in the lounge.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET: </strong>&nbsp;The network name is vodafoneBDC7 and password 64357580.<br />\r\n&nbsp;<br />\r\n<strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron and ironing board are located in the pantry. &nbsp;The ironing board is opposite the fridge and iron is in the cupboard to the right of the fridge.<br />\r\n&nbsp;<br />\r\n<strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.<br />\r\n&nbsp;<br />\r\n<strong>LAUNDRY:</strong> &nbsp;The laundry is located in the freestanding building on the lower level. &nbsp;The key for the laundry is the same as for the main house.<br />\r\n&nbsp;<br />\r\n<strong>MUSIC:</strong> &nbsp;There is a bluetooth speaker on the side table by the sofa. &nbsp;Press and hold the button in the centre of the unit until the bluetooth light flashes. &nbsp;Connect your device to play music.<br />\r\n&nbsp;<br />\r\n<strong>NOISE: </strong>&nbsp;Number Five is in the middle of a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>PARKING:</strong> &nbsp;Please park in the parking area to the left as you pull into the shared drive. &nbsp;Please be mindful not to block access to the back house.<br />\r\n&nbsp;<br />\r\n<strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the cupboard below the sink. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.<br />\r\n&nbsp;<br />\r\n<strong>accommodation:</strong> &nbsp;Please note that the house in front towards the sea is private and not accessible for guests staying at Number Five.<br />\r\n&nbsp;<br />\r\n<strong>RUBBISH:</strong> &nbsp;Rubbish collection day at Number Five is Monday. &nbsp;If you are staying on a Monday, please put the rubbish and recycle bins by the road before 8am. &nbsp;The rubbish bins are located at the eastern side of the house.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.<br />\r\n&nbsp;<br />\r\n<strong>SMOKING:</strong> This is a smoke free home.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>TELEVISION: </strong>&nbsp;To power on the television, press the top on/off button on the right side of the TV. &nbsp;To view FREEVIEW TV, power on the FREEVIEW box using the &ldquo;dish TV&rdquo; remote and set the source on the TV to &ldquo;Satellite&rdquo;. The source button is also on the right side of the TV and is the very bottom button below the &ldquo;menu&rdquo; button. Use the &ldquo;dish tv&rdquo; remote to scroll Freeview channels. &nbsp;<br />\r\nThe television has Apple TV however you will need to log in to itunes with your own account. &nbsp;To watch Apple TV, power on the Apple box using the Apple remote and set the source toHDMI1. &nbsp;Use the Apple remote to scroll channels. &nbsp;&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>WATER: </strong>&nbsp;Like all properties on Waiheke we are on rain water so be mindful of how much you use.&nbsp;</p>', 97, 4),
(6318, '<p><a href=\"https://goo.gl/maps/ugiwGicSZxv\">https://goo.gl/maps/ugiwGicSZxv</a></p>', 97, 12),
(6332, '', 147, 8),
(6333, '', 147, 9),
(6334, '', 147, 10),
(6335, '', 147, 11),
(6336, '', 147, 12),
(6345, '', 154, 8),
(6346, '', 154, 9),
(6347, '', 154, 10),
(6348, '', 154, 11),
(6349, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to&nbsp;Waiheke&nbsp;Island and to Crescent Villa located at 75 Crescent Road Extension.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 154, 1),
(6350, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box which is mounted to the post outside the side&nbsp;door. &nbsp;Code: 7518.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been taken outside and left in council bins.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 154, 3),
(6351, '<p><strong>BEACH:</strong> The closest beach is Palm Beach, this is a 22 min walk down &nbsp;to the beach 1.4km- walk 850 mtr down the track that is to the right of the driveway to Te Toki Road then head up the road and turn onto Palm Beach road, follow the road down to the shops and walk across the road to the walkway which takes you to the beach. Alternatively it is a 5min drive to Palm Beach and 10min drive to Onetangi Beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is at the house&nbsp;for you to use. A spare gas bottle is kept under the house - accessed from the path on the seaside of the house.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse board is the right above the front door in the hallway you will need to get a ladder to reach which is kept in the laundry. You will find two large 45kg bottles at the back of the house if you do find you are out of hot water go to the back of the house and switch the bottle to the full one and make sure the full one is screwed to open not closed.&nbsp;</p>\r\n\r\n<p><strong>FIREPLACE:</strong> &nbsp;The fire in the kitchen is &nbsp;for decoration as has not been used in years. The fire in the main lounge will be set up for you in winter and extra wood&nbsp;is kept under the house - accessed from the path on the seaside of the house.. Please ensure the fire&nbsp;is out upon departure.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> This is located on the shelf above the stove in the kitchen.</p>\r\n\r\n<p><strong>FIRST AID KIT:</strong> &nbsp;This is located in the back bathroom cupboard.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> Is located&nbsp;in cupboard in the main bathroom.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong>&nbsp;The controls for the heating/A/C is located in the hallway by the bedroom closest to the bathroom. &nbsp;Power on using the yellow button and adjust the temperature using the grey arrow buttons.&nbsp;</p>\r\n\r\n<p><strong>INTERNET:</strong> &nbsp;The router is in the lounge on the marble table the network name is Telecom9DCC30. The password is 3FB50B1F67.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; You will find and iron and ironing board in the laundry.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> &nbsp;There is a washing machine and dryer in the laundry.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. When there is no power there will be no ability to use the water or flush toilets as the pump requires electricity. &nbsp;You will find a torch in the front entrance cabinet drawer.&nbsp; To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867. Please contact Stay Waiheke&nbsp;with any questions.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Rubbish collection day for Crescent Villa is a&nbsp;Wednesday. &nbsp;If you are staying on a Wednesday please place your rubbish and recycles in council bins at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries. &nbsp;Please leave rubbish in bins upon departure.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA:</strong> &nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p><strong>TELEVISION:</strong>&nbsp; Power on&nbsp;the TV using&nbsp;the large&nbsp;Samsung remote. &nbsp;To watch SKY, set the source to HDMI2. Power on the&nbsp;SKY box using&nbsp;the SKY&nbsp;remote. To change channels use the SKY&nbsp;remote.&nbsp;</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 154, 4),
(6352, '<p><a href=\"https://goo.gl/maps/y5NxrZC5X8B2\">https://goo.gl/maps/y5NxrZC5X8B2</a></p>', 154, 12),
(6369, '', 174, 8),
(6370, '', 174, 9),
(6371, '', 174, 10),
(6372, '', 174, 11),
(6373, '', 174, 12),
(6387, '', 178, 8),
(6388, '', 178, 9),
(6389, '', 178, 10),
(6390, '', 178, 11),
(6391, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Baywatch&nbsp;Estate.</p>\r\n\r\n<p>accommodation address: 345 Gordons Road. &nbsp;House phone:&nbsp;9 372 4581</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. &nbsp;Our team is available&nbsp;to suggest and assist&nbsp;with bookings for restaurants and activities on the island. &nbsp;We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of&nbsp;emergency only&nbsp;is available for guests in residence on 021 391 057.&nbsp;&nbsp;Please ring 111 for &nbsp;Fire, Ambulance or Police.</p>', 178, 1),
(6392, '<p><strong>BEACH</strong>:&nbsp;There is a semi private beach accessed via a track off the entrance road. &nbsp;Walk down&nbsp;the drive and you will see the gated path to the beach on your right. &nbsp;</p>\r\n\r\n<p><strong>BBQ:&nbsp;</strong>A gas BBQ is there for you to use which is located on the deck by the kitchen.&nbsp;</p>\r\n\r\n<p><strong>CONCIERGE SERVICES:</strong> &nbsp;Please contact Stay&nbsp;Waiheke&nbsp;on 09 372 5402 or 021 if you would like assistance with transfers, bookings for restaurants or island services or activities.</p>\r\n\r\n<p><strong>DRINKING WATER</strong>:&nbsp;All properties on&nbsp;Waiheke&nbsp;run off tank water. &nbsp;The water at the house is filtered and&nbsp;safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY and GAS:</strong> &nbsp;The fuse box is located on the back wall of the garage. &nbsp;The gas bottles are located outside the house by the laundry.</p>\r\n\r\n<p><strong>FIRST AID: </strong>A first aid kit is located under the kitchen sink.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER: </strong>A fire extinguisher is located under the kitchen sink.</p>\r\n\r\n<p><strong>FIREPLACE: </strong>The fireplace is currently not operational.</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis. &nbsp;Please let us know if you would prefer the gardener did not come to the accommodation during your stay.</p>\r\n\r\n<p><strong>EMERGENCY:</strong>&nbsp;In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER: </strong>A hair dryer is located in the master bathroom vanity.</p>\r\n\r\n<p><strong>HEATING:</strong>&nbsp;There is underfloor heating in the bathrooms.</p>\r\n\r\n<p><strong>HOUSE PHONE:</strong>&nbsp;House phone number: +64 9 372 4581 - local calls only please.</p>\r\n\r\n<p><strong>INTERNET:&nbsp;</strong>&nbsp;The network name is Chez Bartlett, there is no password.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp;Located in the laundry&nbsp;room - left hand cupboard.</p>\r\n\r\n<p><strong>MUSIC</strong>: You can play music using the sound system in the dining room cabinet. &nbsp;Please see instructions for the sound system.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp;&nbsp;Power outages on&nbsp;Waiheke&nbsp;are rare but do occur on occasion. &nbsp;You will find a torch in the kitchen corner cupboard.&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867 or contact our office.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp;&nbsp;Please leave rubbish and recycles in the bins by the garage. &nbsp;Rubbish will be collected during your stay.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong>&nbsp;The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong>&nbsp;This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars&nbsp;for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong>&nbsp;Like all properties on&nbsp;Waiheke&nbsp;we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water..</p>', 178, 4),
(6393, '<p><a href=\"https://www.google.co.nz/maps/place/345+Gordons+Rd,+Waiheke+Island,+Auckland+1971/@-36.8282889,175.071489,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c847d9990f97:0x7f913133132465fe!8m2!3d-36.8282889!4d175.073683\">https://www.google.co.nz/maps/place/345+Gordons+Rd,+Waiheke+Island,+Auckland+1971/@-36.8282889,175.071489,17z/data=!3m1!4b1!4m5!3m4!1s0x6d72c847d9990f97:0x7f913133132465fe!8m2!3d-36.8282889!4d175.073683</a></p>', 178, 12),
(6394, '', 189, 8),
(6395, '', 189, 9),
(6396, '', 189, 10),
(6397, '', 189, 11),
(6398, '', 189, 12),
(6399, '', 190, 8),
(6400, '', 190, 9),
(6401, '', 190, 10),
(6402, '', 190, 11),
(6403, '', 190, 12),
(6417, '', 192, 8),
(6418, '', 192, 9),
(6419, '', 192, 10),
(6420, '', 192, 11),
(6421, '', 192, 12),
(6422, '', 194, 8),
(6423, '', 194, 9),
(6424, '', 194, 10),
(6425, '', 194, 11);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(6426, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Island View located at 27 Miro Road in Palm Beach.</p>\r\n\r\n<p>This tablet&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 194, 1),
(6427, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box. &nbsp;The lock box is&nbsp;located to the right of the entrance door - code 5636.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 194, 3),
(6428, '<p><strong>BEACH:</strong>&nbsp;Palm Beach is the closest white sand beach to Island View and is accessed by heading to the left and down the hill from the accommodation.</p>\r\n\r\n<p><strong>BBQ</strong>: A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse box is located behind the toilet door on the main&nbsp;level of the house. &nbsp;Gas bottles are located around the back of the house.</p>\r\n\r\n<p><strong>FIRST AID: </strong>You will find a first aid kit in the bathroom on the main living level.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER</strong>: You will find a fire extinguisher next to the friedge in the kitchen.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> Wood for the fire is located outside the kitchen window. &nbsp;Additional wood can be purchased at all petrol stations.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong>&nbsp;You will find a hair dryer in the upstairs bathroom cupboard.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong>&nbsp; In addition to the wood fire, there is a free standing heater located in the hall cupboard.</p>\r\n\r\n<p><strong>INTERNET:</strong> &nbsp;The WIFI&nbsp;password: NiceView123</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD: </strong>&nbsp;You will find an iron and ironing board in the laundry cupboard.</p>\r\n\r\n<p><strong>KAYAKS:</strong>&nbsp;Paddles, life jackets &amp; trolley are located in the downstairs bedroom. Kayak Chain pad lock&nbsp;combination 563. &nbsp;Please rinse off and return the kayak, paddles, trolley and life jackets after use.</p>\r\n\r\n<p><strong>LEFT accommodation: </strong>&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE: </strong>&nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the hall cupboard. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Rubbish collection day for Island View is a Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish and recycles in the council bins provided and leave at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO: </strong>&nbsp;You will find instructions for the TV by the television.</p>\r\n\r\n<p><strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER: </strong>Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.&nbsp;</p>', 194, 4),
(6429, '<p><a href=\"https://goo.gl/maps/Rwbr2Vv9xCv\">https://goo.gl/maps/Rwbr2Vv9xCv</a></p>', 194, 12),
(6438, '', 197, 8),
(6439, '', 197, 9),
(6440, '', 197, 10),
(6441, '', 197, 11),
(6442, '<p>Dear Guests,</p>\r\n\r\n<p><strong>Welcome to Waiheke Island and to The Mariner located at 400 Seaview Road in Onetangi.</strong></p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 197, 1),
(6443, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box which is mounted to the post outside the entrance door. &nbsp;Code: 4009.</p>\r\n\r\n<p><strong>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</strong></p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 197, 3),
(6444, '<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>BEACH:</strong> Onetangi beach is a 5 minute walk from the house. &nbsp;To get to the beach, walk out the drive to Seaview Road and turn right. &nbsp;Take your first right onto Seventh Avenue. &nbsp;At the top of 7th Avenue, you&rsquo;ll see a set of steps leading down to the beach.&nbsp;</p>\r\n\r\n<p><strong>CLEANING</strong>: Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:&nbsp;</strong>The gas bottle for the hob is located under the deck stairs. &nbsp;The fuse box is located under the deck.&nbsp; Please contact Stay Waiheke should you require assistance.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER: &nbsp;</strong>A fire extinguisher is located under the kitchen sink.</p>\r\n\r\n<p><strong>FIRST AID KIT:</strong> &nbsp;A first aid kit is located under the bathroom sink.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY</strong>: In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> You will find a hair dryer&nbsp;in the bathroom&nbsp;under the sink.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> There is a heat pump/AC unit in the lounge. &nbsp;The controller is by the TV. &nbsp;You wil need to ensure that the power point on the wall to the right of the unit is switched on.</p>\r\n\r\n<p><strong>INTERNET: </strong>The wifi network is 400a Seaview and the password is ilovewaiheke</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron and ironing board are located&nbsp;in the bathroom cupboard.</p>\r\n\r\n<p><strong>LEFT accommodation: </strong>&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE</strong>: &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the bathroom closet. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Upon departure, please leave all rubbish outside in the bins provided. &nbsp;The rubbish bins are located at the top of the drive between the two houses.&nbsp; Rubbish collection day for The Mariner&nbsp;is a Monday. &nbsp;If you are staying on a Monday, please place your rubbish and recycles in the bins located by at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO:</strong> &nbsp;The television has Freeview and Apple TV. &nbsp;Power on the TV using the Panasonic&nbsp;TV remote and power on the Freeview box using the Idish&nbsp;remote. &nbsp;To watch Freeview, set the source on the TV to HDMI1&nbsp;using the AV button on the TV remote. &nbsp;Scroll channels using the Idish remote. &nbsp;To watch Apple TV, set the source to HDMI2&nbsp;using the AV button on the TV remote, power on the Apple TV using the Apple TV remote and enter your Apple user ID and password.</p>\r\n\r\n<p><strong>WATER</strong>: Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 197, 4),
(6445, '<p><a href=\"https://goo.gl/maps/TSMjf8kz7pQ2\">https://goo.gl/maps/TSMjf8kz7pQ2</a></p>', 197, 12),
(6454, '', 131, 8),
(6455, '', 131, 9),
(6456, '', 131, 10),
(6457, '', 131, 11),
(6458, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Royal Blue located at 75 Margaret Reeve Lane, Te Whau. This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nThe team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nEmergency after hours assistance is available for guests in residence only on 021 391 057.&nbsp; For non emergency issues, please phone the office during business hours.&nbsp; Fire, Police, Ambulance dial 111.</p>\r\n\r\n<p>&nbsp;</p>', 131, 1),
(6459, '<p>Check in is from&nbsp;2pm&nbsp;and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp;</p>\r\n\r\n<p>On departure, please lock the door/s&nbsp;and leave the key in the lockbox CODE 2739145. This is attached to an external door on the right hand side of the house. Take the short path on the right of the main entrance and you will see the lock box attached to the external door to the shower courtyard.</p>\r\n\r\n<p><strong>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</strong></p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and BBQ are cleaned.</li>\r\n	<li>Rubbish and recycling has been placed in outside bins</li>\r\n	<li>Used towels have been placed in the shower.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 131, 3),
(6460, '<p><strong>BEACH:</strong>&nbsp;The closest beach is Dead Dog Bay which you can access via the public walkway off Margret Reeve Drive off the bottom of the driveway.</p>\r\n\r\n<p><strong>BBQ: </strong>A gas BBQ us there for you to use.&nbsp; We ask that that you please ensure the BBQ is left clean and ready for the for use for the next guests. A charge of $50 will be applied if the BBQ&rsquo;s are not cleaned after use.&nbsp; All BBQ utensils are in the kitchen drawers.&nbsp; Please ensure you turn the gas bottle off immediately after cooking and clean the BBQ and cooking utensils as these were left for you.<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>CLEANING</strong>: Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances are left in a clean condition and that the accommodation in general is left as found.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.&nbsp;</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse box is located Inside cupboard in master bedroom, behind the door. If power goes out please check this box to ensure none of the switches have tripped.&nbsp; If any of the switches are showing off, please flick the switch up to turn back on.&nbsp; Gas bottles are located by the back deck.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp; There is a fire extinguisher located under the kitchen sink.</p>\r\n\r\n<p><strong>FIRST AID:</strong>&nbsp; There is a first aid kit located in the cupboard above the fridge.</p>\r\n\r\n<p><strong>HEATING AND AC:</strong> A heater is provided. Do not cover this or place items over it.</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; The iron is located in the laundry cupboard.</p>\r\n\r\n<p><strong>INTERNET:</strong> Router is located in the games room. Spark is the network provider.&nbsp; Password is GB72ALXMJ2</p>\r\n\r\n<p><strong>LAUNDRY:</strong> Washing machine and dryer supplied. Please open the laundry window when operating the dryer.&nbsp;</p>\r\n\r\n<p><strong>NOISE:</strong> Please be considerate of neighbours and keep noise levels to an enjoyable level. Strictly no parties at the house.&nbsp;</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp; In the case of a power outage, first please check that no switch has tripped in the power board (located on the wall inside the back door. If there is a continued power outage there is a torch located in the cupboard above the fridge.&nbsp; To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.&nbsp;</p>\r\n\r\n<p><strong>RUBBISH:</strong> Collection of all waste is every Friday morning &ndash; please ensure bags of refuse and recycling are put on the roadside by the letterbox.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM: </strong>Waiheke Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the septic system can occur with inappropriate, large or toxic items.</p>\r\n\r\n<p><strong>TORCH:</strong>&nbsp; This is located above the fridge in the kitchen.</p>\r\n\r\n<p><strong>TV:&nbsp;&nbsp;</strong>Smart TV in lounge and another smart TV in games room.&nbsp; The TV instruction is next to the TV.&nbsp;</p>\r\n\r\n<p><strong>WATER:</strong> properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible.&nbsp;</p>\r\n\r\n<p><strong>WATER PUMP:</strong>&nbsp; Is located in the area behind the garage. In the Fuse Box there is a switch labeled power pump for the water.&nbsp;</p>', 131, 4),
(6461, '<p><a href=\"https://goo.gl/maps/rHanbezEp6L2\">https://goo.gl/maps/rHanbezEp6L2</a></p>', 131, 12),
(6467, '', 200, 8),
(6468, '', 200, 9),
(6469, '', 200, 10),
(6470, '', 200, 11),
(6471, '', 200, 12),
(6472, '', 222, 8),
(6473, '', 222, 9),
(6474, '', 222, 10),
(6475, '', 222, 11),
(6476, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to&nbsp;Waiheke&nbsp;Island and to Noll View located at 42 Tiri. This tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>If we can be of assistance, please contact Stay&nbsp;Waiheke&nbsp;on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay&nbsp;Waiheke&nbsp;after hours assistance in the case of emergency only is available for guests in residence on 021 391 057. &nbsp;For all non emergency calls, please contact the office during business hours.&nbsp; In case of medical, police or fire emergency, please dial 111.</p>', 222, 1),
(6477, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure, please lock all windows and doors, action items on the departure checklist and leave the key in the lockbox which is mounted on the far end of the retaining wall opposite the side door.&nbsp; The lock box code is 4218.</p>\r\n\r\n<p>Departure Checklist:&nbsp;<br />\r\nWe would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left in the rubbish/recycle bins outside.<br />\r\nUsed towels have been placed in the shower.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 222, 3),
(6478, '<p><strong>CLEANING:</strong>&nbsp;Your accommodation will be cleaned prior to the next guests however please ensure that any cooking appliances are left in a clean condition and that the accommodation in general is left as found.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong>&nbsp;All properties on&nbsp;Waiheke&nbsp;run off tank water which is safe to drink. The drinking dispenser on the fridge is filtered water<br />\r\n&nbsp;&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong>&nbsp; The fuse box is located on the wall in the lower level hallway.&nbsp; The hot water cylinder is located in the hallway cupboard.</p>\r\n\r\n<p><strong>EMERGENCY:</strong>&nbsp;In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp;&nbsp;There is a fire extinguisher located under the kitchen sink.</p>\r\n\r\n<p><strong>FIRST AID:</strong>&nbsp;&nbsp;There is a first aid kit located on the top shelf of the pantry to the left of the fridge in the kitchen.</p>\r\n\r\n<p><strong>HAIR DRYER:&nbsp;</strong>There are hair dryers in each bathroom.</p>\r\n\r\n<p><strong>HEATING AND AC:</strong>&nbsp;There are free standing heaters in each bedroom.&nbsp; There is a ceiling fan in the master bedroom.</p>\r\n\r\n<p><strong>INTERNET:</strong>&nbsp;The network name is Vodafone DC755&nbsp;and the&nbsp;password is&nbsp;JX43CNNDEJ</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp;&nbsp;These are located in the cupboard in the hallway between the two downstairs bedrooms.</p>\r\n\r\n<p><strong>LAUNDRY:</strong>&nbsp; There is a washing machine and dryer in the hallway by the side door.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp;&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay&nbsp;Waiheke&nbsp;for 30 days. &nbsp;Please contact Stay&nbsp;Waiheke&nbsp;within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp;Please be considerate of&nbsp;neighbours&nbsp;and keep noise levels to an enjoyable level. Strictly no parties.&nbsp;</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp;&nbsp;In the case of a power outage please check the power board.&nbsp;&nbsp;&nbsp;There is a torch located on the top shelf of the pantry to the left of the fridge in the kitchen.. &nbsp; Please contact Vector Outages on 0508 832 867 to find out when power is scheduled to be restored. &nbsp;</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp;Rubbish collection day for Noll View is Tuesday morning. &nbsp;If you are staying on a Tuesday, please place your rubbish and recycles in council bins by the roadside for collection. &nbsp;Alternatively, we would greatly appreciate it if you could take rubbish to the transfer station located at 102 Ostend Road. &nbsp;There are also rubbish and recycle bins in the car park at both ferries.&nbsp;</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong>&nbsp;Waiheke&nbsp;Island homes operate individual septic waste systems. It is important that you are very careful about what you put down the sink or toilet as blockages and damage to the septic system can occur with large or toxic items.</p>\r\n\r\n<p><strong>TRANSPORTATION:</strong>&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online&nbsp;http://www.staywaiheke.com/rentalcars&nbsp;for rates and availability.</p>\r\n\r\n<p><strong>TV/DVD:&nbsp;</strong>&nbsp;Turn TV on with the Panasonic remote.&nbsp; To watch SKY, set the source to&nbsp;HDMI 1 and power on the SKY remote. `Scroll channels using the SKY remote. There is an HDMI cable provided for guests&nbsp;to&nbsp;use.&nbsp; Please ensure the cable is left on site.</p>\r\n\r\n<p><strong>WATER:&nbsp;</strong>properties on the island use rainwater which is stored in the water tanks outside. In summer months, please be mindful to conserve water when possible. Our hot water system is very hot, so be careful you do not scold yourselves.&nbsp;</p>\r\n\r\n<p><strong>WATER PUMP:</strong>&nbsp;&nbsp;This is accessed via the laundry in the wall cupboard.</p>', 222, 4),
(6479, '<p><a href=\"https://goo.gl/maps/xzdbDtdk9dw\">https://goo.gl/maps/xzdbDtdk9dw</a></p>', 222, 12),
(6515, '', 16, 8),
(6516, '', 16, 9),
(6517, '', 16, 10),
(6518, '', 16, 11),
(6519, '', 16, 12),
(6539, '', 224, 8),
(6540, '', 224, 9),
(6541, '', 224, 10),
(6542, '', 224, 11),
(6543, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Ataahua located at 340 Seaview&nbsp;Road.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.&nbsp; For non emergencies, please contact us during business hours.&nbsp; Fire, Police, Ambulance dial 111.</p>\r\n\r\n<p><strong>A note from the owners:</strong></p>\r\n\r\n<p>Thank you for choosing to stay in our home.</p>\r\n\r\n<p>We (Amanda and Craig) are originally from Sydney and we came to live in New Zealand in August 2002.</p>\r\n\r\n<p>Originally we lived in Mission Bay and would often visit Waiheke for day trips in our boat. In 2010, we rented a house from an academic couple who went on a one year sabbatical.&nbsp; It was on a cliff top overlooking Sandy Bay and we spent many wonderful weekends there.</p>\r\n\r\n<p>During that year, we often travelled to Onetangi as it was the closest thing to a Sydney surf beach. On the way to the beach, we drove along Seaview Road and noticed a block of land for sale. Each time we would stop and walk down onto the land and admire the wonderful views.</p>\r\n\r\n<p>We bought the land in 2011, and started the process of building. We sold our house in Mission Bay and came to Waiheke to live. We rented in a number of lovely houses while we waited for the plans to be approved and for the house to be built. Once we moved here, or as they say &ldquo;burnt the bridge&rdquo;, we have committed to the island. It has been the best decision we have ever made.</p>\r\n\r\n<p>The house was built in 2012 and we have been here now for 6 years. In the water you can see dolphins, orcas and occasionally small sharks (we have only seen one!). In summer, huge schools of fish come into the bay and you can see them as big black spots on the blue sea. The big rock off the coast is called Gannet Rock and its covered with gannets which are large ocean going birds. On some days you will see hundreds of them hunting in the shallow water along the beach and below the house. They dive from great heights into the water and it creates quite a sight when hundreds of them are doing this together.</p>\r\n\r\n<p>Living on a Cliff</p>\r\n\r\n<p>The great thing about living on this cliff is that you get great views down the beach and out to sea. When the wind blows from the south (the prevailing wind) we do not get affected at all, as we are down from the top of the hill behind us.</p>\r\n\r\n<p>However, the wind can blow from the sea and when it does it can be very strong.</p>\r\n\r\n<p>There are a few precautions that you will need to take due to wind and rain from the ocean side and we would be grateful if you could follow these rules;</p>\r\n\r\n<p>When it is very stormy and really windy, please stay inside as it can be quite dangerous with the wind and possible items flying through the air.</p>\r\n\r\n<p>All items on the deck around the pool need to be secured. The cover needs to be on the large umbrella and the cover needs to be on the outside furniture and securely fastened.</p>\r\n\r\n<p>Doors and windows need to be closed as wind and rain will come into the house and cause flooding. Even opening a door to the ocean facing deck, will create a lot of wind that may cause doors to slam shut and other items to be dislodged.</p>\r\n\r\n<p>If you leave the house, please take care to check windows and door openings as storms can eventuate very quickly here.</p>\r\n\r\n<p>Enjoy your stay!</p>\r\n\r\n<p>&nbsp;</p>', 224, 1),
(6544, '<p>Arrival/Departure Information<br />\r\nCheck in is from&nbsp;2pm&nbsp;and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 224, 3),
(6545, '<p><strong>Access to the Beach</strong></p>\r\n\r\n<p>There is a path below the pool that goes down to the beach. The first sixty metres has good stairs, but below this the path is in the process of being upgraded. The path is walkable, but it can be slippery when dry and wet and there are fall offs on some parts. Extreme care should be taken if you use the path below the stairs. It is certainly not suitable for an elderly person or children. By all means take a walk down the steps and enjoy the view, but we recommend only fit people use the path until the works have been completed.</p>\r\n\r\n<p>To walk to the beach, just go up the driveway and turn left. Take the first road on the left (Seventh Av) which takes you down to the beach. It takes about 10 minutes to get there. To drive take the same directions and its only one minute.</p>\r\n\r\n<p><strong>Self-Help Instruction Videos</strong></p>\r\n\r\n<p>We have compiled some very short instruction videos for various appliances around the house. It may make it easier to see what you need to do, rather than reading instructions. You will see we have indicated below a topic when there is a video available.</p>\r\n\r\n<p>We can send them to your email account if required. My email is craig.mcivor@globalrateset.com and please excuse the quality of the videos. They will definitely not win a Golden Globe!</p>\r\n\r\n<p><strong>Front door Access</strong></p>\r\n\r\n<p>To open the door, slide the face plate up to reveal the keypad.</p>\r\n\r\n<p>Type in code which is 1203 and slide the panel back down. The door can then be opened.</p>\r\n\r\n<p><strong>Water Supply</strong></p>\r\n\r\n<p>We collect good old rain water from the sky and it is filtered before you it gets to the house. Waiheke has been through a severe dry spell and water has been in high demand. We have about 35,000 litres and while this is plenty for your stay, we would hope that you would be mindful of water usage especially showers.</p>\r\n\r\n<p>The water tank is under the deck on the seaward facing side. There is a hatch that can be opened.</p>\r\n\r\n<p><strong>Umbrellas on Deck</strong></p>\r\n\r\n<p>The large umbrella is easy to put up. As there is often a breeze and it is a big umbrella we recommend to use the side stays which tie into the cleats on the deck. This will keep the umbrella stable when the umbrella is up. Keep an eye on the wind in the afternoon as it can strengthen and getting the umbrella down in a strong wind can be awkward. Best to do it earlier than later. Umbrellas should be covered each night.</p>\r\n\r\n<p>VIDEO AVAILABLE</p>\r\n\r\n<p><strong>The Pool</strong></p>\r\n\r\n<p>The pool is a Magnesium salt pool, which makes it particularly soft and good for the skin. It is like mineral water. The pool is 2 metres deep throughout, so there is no shallow section. You should be aware of this when children are in the pool or as they get in.</p>\r\n\r\n<p>Please be careful around the pool.&nbsp; Climbing on the outside ledge should be definitely avoided, as there is a big fall off.</p>\r\n\r\n<p>When using the pool, please dry off outside before coming inside and sitting on any furniture.</p>\r\n\r\n<p><strong>Internet</strong></p>\r\n\r\n<p>We have High Speed Broadband to the house. Go to Amanda Lakes Network and use the password</p>\r\n\r\n<p>amandalake</p>\r\n\r\n<p>In the case that there is an outage, the modem is in the cupboard under the house. It is a large white box on top. Just pull out the power connection at the back of the modem, wait about 20 seconds, reinsert, and you will see it come back to life.</p>\r\n\r\n<p><strong>Beach Towels</strong></p>\r\n\r\n<p>Beach Towels can be found in the downstairs cupboard next to the library nook. Please use them as you like. Due to possibility of overnight rain and wind, best not to leave outside overnight.</p>\r\n\r\n<p><strong>Washing Machine</strong></p>\r\n\r\n<p>The washing machine is in the upstairs Laundry room. As Waiheke relies on tank water, the washing machine is set on a 30 minute cycle which covers all types of washing. Put clothes in machine and hit the Start button.</p>\r\n\r\n<p><strong>Dryer</strong></p>\r\n\r\n<p>A dryer is available for use in the upstairs Laundry room.</p>\r\n\r\n<p><strong>Clothes Line</strong></p>\r\n\r\n<p>There is a clothes line next to the small vegetable garden behind the wall with the Buddha on it.</p>\r\n\r\n<p><strong>Torches</strong></p>\r\n\r\n<p>There are two torches in the laundry cupboard above the sink.&nbsp; Both are ready to use and have new batteries.</p>\r\n\r\n<p>In case of a blackout, (which can happen on Waiheke if there is a storm) please do not use candles.</p>\r\n\r\n<p><strong>The Spa</strong></p>\r\n\r\n<p>The spa has its own security fencing and lock from the master bedroom bathroom. The cover should remain closed when not in use. The cover is held down by clips which need to be opened with a small flat key. One is tied to the seaward side clip. There is also one in the bathroom drawer on the right hand side. These can be inserted into the clip to open.</p>\r\n\r\n<p>Please supervise any children that use the spa.</p>\r\n\r\n<p>The entire cover can be lifted back towards the bathroom quite easily by one person. It does not come off but stays in this position while the spa is being used. To close -reverse the procedure and lock the clips on the seaward side.</p>\r\n\r\n<p>The temperature is set at 38.5 degrees. If you want it higher or lower, you can adjust by the panel by using the up and down arrows. For most people, this temperature is just right.</p>\r\n\r\n<p>The panel also has buttons for bubbles. The bubbles can be controlled by the controller. If you hit the first button next to the panel with red numbers, you will get low bubbles. If you hit the same button you get more. One more time and it will turn the bubbles off.&nbsp; While inside the spa the bubbles can be controlled by the noggles on the top of the spa. Just turn them to the left and right for less or more bubbles.</p>\r\n\r\n<p>VIDEO AVAILABLE</p>\r\n\r\n<p><strong>The Kitchen</strong></p>\r\n\r\n<p>Fridge</p>\r\n\r\n<p>The fridge has an ice maker and chilled water function. It can provide crushed ice of large cubes. Just hit the button called Dispenser and it will rotate through chilled water, crushed ice or large ice cubes. Just select what you want and push your glass in to connect with the back panel.</p>\r\n\r\n<p>The Dishwasher</p>\r\n\r\n<p>Dishwasher tablets can be found under the sink.</p>\r\n\r\n<p>There are four settings on the dishwasher. We find that the second setting works for us for most purposes.</p>\r\n\r\n<p>Induction Cook top</p>\r\n\r\n<p>We have an induction cook top and it is wonderful to use if you haven&rsquo;t had the pleasure in the past.</p>\r\n\r\n<p>All the pots and pans in the house are designed for induction cooking, so no need to check. You can use any of them on the cooktop.</p>\r\n\r\n<p>To operate the induction cooktop, place a pan or pot on one of the circles. Then put your finger on the symbol beneath the minus symbol at the bottom of the cooktop. It looks like a circle with a line going straight down. This turns on the unit for any pots that are on a element.</p>\r\n\r\n<p>To get heat to the pot or pan, you will need to use the +/- signs that correspond to the element you have your pan or pot on. The good thing about induction is that you can know precisely what level of heat you are using.</p>\r\n\r\n<p>0-3 Simmer/Warm</p>\r\n\r\n<p>4-7 Medium heat (we would cook a fish on 7 in a pan)</p>\r\n\r\n<p>8-10 Boiling (it boils things very quickly so keep an eye on it)</p>\r\n\r\n<p>When you remove the pan, the element will turn itself off.</p>\r\n\r\n<p>Fry Pans</p>\r\n\r\n<p>These fry pans are very good on induction cooktops and cook very quickly. They recommend that you use Coconut oil for best results. We have left some coconut oil next to the cooktop for you to use. It is a wonderful oil and very healthy. You just need a small amount in the pan to start. Then raise the temperature. It can withstand heat up to 350 degrees.</p>\r\n\r\n<p>The pans are non stick and you can use metal utensils (although we still use the silicon flips etc).&nbsp; Each time you use them, they actually improve the non stickability!&nbsp; To clean just wash in detergent and warm water.</p>\r\n\r\n<p>The Wok is also very good on the induction. Feel free to use it for a stir fry.</p>\r\n\r\n<p>Coffee Machine</p>\r\n\r\n<p>The Nespresso machine is there for your use during your stay. In the draw to the left of the machine you will find a number of capsules. Feel free to try out some different coffee types.</p>\r\n\r\n<p>Please remember to have water in the machine before using each time. To make frothed milk, just fill the frother unit on the side with milk up to the line on the inside, pop back on the unit and hit the button. It will light red and then go off when the milk is done.</p>\r\n\r\n<p>To get best results with the coffee, put a cup underneath the outlet and hit the button on the left once. It will put in a shot of hot water into the glass. This takes any old water out of the unit and also warms the cup. Throw this out of the cup. Put a capsule in the top of the unit (by lifting silver flap on top). Make sure it goes in the right way! Close the lid. Then hit the button on the left side of the machine once. It has been preset to give one shot of coffee. If you want a double, open the flap at the top, put in another capsule, close and hit the button once again.</p>\r\n\r\n<p>Note: Do not hold down the button or the machine thinks you are wanting to do it manually. If you do this, next time you hit the button it will give the same amount of coffee for the time you held it down.</p>\r\n\r\n<p>The machine stores the empty capsules in the middle of the machine. If it is full, you may not be able to put a new capsule in at the top. Don&rsquo;t force it, just pull out the middle section and remove the empty capsules. Replace and then put a new capsule in. Easy!</p>\r\n\r\n<p>VIDEO AVAILABLE</p>\r\n\r\n<p><strong>TV in Kitchen</strong></p>\r\n\r\n<p>This TV has Sky TV on it. To turn on the TV, hit the yellow power button on the top right hand side on the LG remote.</p>\r\n\r\n<p>Once it is on, then you can use the SKY controller to move between channels.</p>\r\n\r\n<p><strong>DVDs</strong></p>\r\n\r\n<p>For those rainy days, we have left a few DVDs in the downstairs unit under the TV. Please feel free to view these and return to their boxes after use.</p>\r\n\r\n<p><strong>Nearby Restaurants</strong></p>\r\n\r\n<p>Casita Miro &ndash; 5 min walk<br />\r\nCharlie Farleys &ndash; On the beach at Onetangi<br />\r\nBeach &ndash; On the beach at Onetangi<br />\r\nThe Shed or Te Motu &ndash;&nbsp; 5 minute drive near the golf course<br />\r\nStoney Ridge &ndash;&nbsp; 5 minute drive near the golf course<br />\r\nTantalus &ndash;&nbsp; 5 minute drive near the golf course</p>\r\n\r\n<p>We have left a copy of the local paper which provides a restaurant section with all telephone numbers</p>\r\n\r\n<p><strong>Fire Extinguisher</strong></p>\r\n\r\n<p>The Fire Extinguisher can be found in the laundry in the cupboard directly above the sink.</p>\r\n\r\n<p><strong>First Aid Kit</strong></p>\r\n\r\n<p>The first aid kit can be found in the laundry in the cupboard directly above the sink.</p>\r\n\r\n<p><strong>BBQ</strong></p>\r\n\r\n<p>A gas BBQ is available for use. It is down on the seaward deck. We kindly ask that you please ensure the BBQ is left clean and ready for use for the next guests. A charge of $50 will be applied if the BBQ is not cleaned after use. Also please be careful of spillage of oils on the deck.</p>\r\n\r\n<p>Please use the starter to ignite the hobs.</p>\r\n\r\n<p>Turn on gas at bottle<br />\r\nTurn on hob<br />\r\nLight hob with gas starter (gas starter is under the lid of BBQ)</p>\r\n\r\n<p>When finished. Turn off all gas hobs and turn off gas at bottle.</p>\r\n\r\n<p>Utensils are under the lid of the BBQ.</p>\r\n\r\n<p><strong>Inside Fireplace</strong></p>\r\n\r\n<p>In the bottom draw, in the drawers next to the oven on the right, there is a remote for the fire.</p>\r\n\r\n<p><strong>Outdoor Fireplace</strong></p>\r\n\r\n<p>The outside fireplace in the front courtyard, is gas operated. This is not to be used as a cooking device. It is only for ambience and a heat source. To operate;</p>\r\n\r\n<p>Hit the red button &ndash; it will glow red<br />\r\nHit the ON/OFF button below it and hold for 10 seconds till you hear a beep<br />\r\nHit the &ldquo;+&rdquo; button to make the flames go higher</p>\r\n\r\n<p>To turn off</p>\r\n\r\n<p>Hit the ON/OFF button once (fire will go out)<br />\r\nHit the red button to stop gas flowing</p>\r\n\r\n<p>VIDEO AVAILABLE</p>\r\n\r\n<p><strong>Hair Dryer</strong></p>\r\n\r\n<p>There are two hair dryers in the house, both in the downstairs bathrooms. The one in the master bathroom is in the bottom drawer on the left.</p>\r\n\r\n<p><strong>Iron and Ironing Board</strong></p>\r\n\r\n<p>The Iron and Ironing Board are in the cupboard downstairs next to the library nook.</p>\r\n\r\n<p><strong>Parking</strong></p>\r\n\r\n<p>Please park on the concrete apron or on the gravel driveway. A car can be turned in front of the garage, but please be careful not to damage the garage down during this process.</p>\r\n\r\n<p>Parking can be done on the median strip on the street edge as well at the front of the drive or along the street.</p>\r\n\r\n<p><strong>Power outages</strong></p>\r\n\r\n<p>These are rare on Waiheke and when they occur are usually repaired quickly.Two torches are located in the cupboard directly above the sink in the laundry. Please contact us if you experience a loss of power. Once the power is returned most items will reset themselves i.e. TV, Internet, Spa, Pool filter, Oven (but timer may be off).</p>\r\n\r\n<p><strong>Rubbish</strong></p>\r\n\r\n<p>Rubbish collection day for is Monday. Please place your recyclables in the recycle bin located behind next to the Garage on the left hand side. Please put your normal rubbish into the garbage bin with the red lid also next to the Garage.<br />\r\n<br />\r\n<strong>Stereo</strong></p>\r\n\r\n<p>We have provided two UE Boom speakers for you to use. They are portable and can be taken to where you want to hear music. To play via Bluetooth on your phone, download the UE Boom app and then sync with the unit.</p>\r\n\r\n<p>Follow the instructions on the app.</p>\r\n\r\n<p>Play your music on your Iphone or Smartphone and it will play through the speaker.</p>\r\n\r\n<p><strong>Outdoor retractable Canopy &ndash; Front Courtyard</strong></p>\r\n\r\n<p>This canopy is retractable if you want full sun on the courtyard. There is a controller on the Chinese cabinet. It has marked Open and Close. Take the controller and aim it at the canopy at its highest point (sometimes you need to move around a bit to get it to work). It will fully retract or stop where you want it to.</p>\r\n\r\n<p>To close, just hit the Close button in the same way.</p>\r\n\r\n<p>Please note. If the canopy is left open and it rains, all the furniture will be wet and this will mean loss of amenity for you for the rest of your stay.</p>\r\n\r\n<p><strong>Hot water</strong></p>\r\n\r\n<p>The hot water is gas operated and the gas tanks are beside the garage on the left hand side. These are regularly filled and there is a spare bottle. If there is no hot water, simply go to the bottles and turn the lever from one bottle to the other one.</p>\r\n\r\n<p><br />\r\n<strong>TV Downstairs (Sky, Netflix, DVD)</strong></p>\r\n\r\n<p>There are four controllers that we use (it sounds complicated and it probably is!).</p>\r\n\r\n<p>The first controller to use is the Larger Samsung Black Controller and you need to press the red button in the top right hand corner. You will only use this controller to turn the TV on and off and nothing else.</p>\r\n\r\n<p>Hit the Top right button of the silver Yamaha controller to turn on the Amplifier. When you do this, the TV will show display TV programs from Sky. You can use the Sky controller to move between channels.</p>\r\n\r\n<p>Please note, that volume is controlled by the Yamaha controller for DVD, TV and Apple TV (Netflix)</p>\r\n\r\n<p>If you want to go to Netflix, hit the A button on the Yamaha controller. When you do so, the screen will go blank. Use the Silver Apple controller and hit Menu. The menu for Apple TV will come on. Use the Apple controller to move to Netflix and hit the middle button to confirm. We have an account which you can use. It does not need any password.</p>\r\n\r\n<p>If you want to play a DVD. Go to the Yamaha Controller and hit D. Then go to the Samsung DVD player under the stairs and put in a DVD. This will start playing on the TV. You can use the small Samsung controller (not the bigger one used to turn the TV on and off) to control the DVD i.e pause, stop etc.</p>\r\n\r\n<p>Each time you finish watching, turn off the Yamaha controller and the larger Samsung controller, by hitting the off button on the top right of each.</p>\r\n\r\n<p>VIDEO AVAILABLE</p>', 224, 4),
(6546, '<p><a href=\"https://goo.gl/maps/ML5QUhCvZrH2\">https://goo.gl/maps/ML5QUhCvZrH2</a></p>', 224, 12),
(6557, '', 199, 8),
(6558, '', 199, 9),
(6559, '', 199, 10),
(6560, '', 199, 11),
(6561, '', 199, 12),
(6562, '', 201, 8),
(6563, '', 201, 9),
(6564, '', 201, 10),
(6565, '', 201, 11),
(6566, '', 201, 12),
(6583, '', 176, 8),
(6584, '', 176, 9),
(6585, '', 176, 10),
(6586, '', 176, 11),
(6587, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to 19 Queens&nbsp;located at 19 Queens Drive, Oneroa.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 176, 1);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(6588, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box&nbsp;which is mounted to the post opposite the front door at entrance. &nbsp;Code 1978.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 176, 3),
(6589, '<p><strong>BEACH:</strong> &nbsp;There is a walking track to Little Oneroa beach near the house. &nbsp;From the parking area, walk to the right. &nbsp;Take a right on McIntosh Road and follow to end. &nbsp;You&rsquo;ll see the track to Little O at the end of the road.<br />\r\n&nbsp;<br />\r\n<strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.<br />\r\n&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> The fuse box is located by the hot water cupboard in the kitchen. &nbsp;A 9 kg gas bottle for the hob is located under the house.<br />\r\n&nbsp;<br />\r\n<strong>FIRST AID</strong>: Located under the bathroom sink.<br />\r\n&nbsp;<br />\r\n<strong>FIRE EXTINGUISHER:</strong>&nbsp;Located under the kitchen sink.<br />\r\n&nbsp;<br />\r\n<strong>FIREPLACE: </strong>Please feel free to use the fire. &nbsp;You will find wood extra wood under the house - go out the deck door, down the stairs and to your left.&nbsp; Please do not empty the ash from the fire.<br />\r\n&nbsp;<br />\r\n<strong>GARDEN: </strong>&nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.<br />\r\n&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).<br />\r\n&nbsp;<br />\r\n<strong>HAIR DRYER: </strong>Located in the bathroom drawer.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET:</strong> &nbsp;The network name is CIRCUIT ST and password - 19Queens.<br />\r\n&nbsp;<br />\r\n<strong>IRON &amp; IRONING BOARD:</strong>&nbsp; The iron is located in the laundry area and the ironing board is located in the lounge cabinet near the bathroom.</p>\r\n\r\n<p><strong>LAUNDRY: </strong>&nbsp;There is a washer and dryer in the bathroom closet.<br />\r\n&nbsp;<br />\r\n<strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>MUSIC:</strong> &nbsp;There is an ipod doc and CD player in the master bedroom<br />\r\n&nbsp;<br />\r\n<strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.<br />\r\n&nbsp;<br />\r\n<strong>PARKING:</strong> Please park on the road verge by the letterbox. &nbsp;There are approximately 100 steps to the front door.<br />\r\n&nbsp;<br />\r\n<strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch under the kitchen sink. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.<br />\r\n&nbsp;<br />\r\n<strong>RUBBISH:</strong> &nbsp;Rubbish collection day for 19 Queens is a Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish in a red rubbish bag located under the sink and recycles in plastic supermarket bags at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.<br />\r\n&nbsp;<br />\r\n<strong>SMOKING</strong>: This is a smoke free home. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SUN UMBRELLA:</strong> &nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.<br />\r\n&nbsp;<br />\r\n<strong>TELEVISION:</strong> Power on the TV using the Samsung remote. &nbsp;Power on the SKY box using the SKY remote and scroll channels using the SKY remote.<br />\r\n&nbsp;<br />\r\n<strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.<br />\r\n&nbsp;<br />\r\n<strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 176, 4),
(6590, '<p><a href=\"https://goo.gl/maps/EVd1F9Gq4vw\">https://goo.gl/maps/EVd1F9Gq4vw</a></p>', 176, 12),
(6591, '', 11, 8),
(6592, '', 11, 9),
(6593, '', 11, 10),
(6594, '', 11, 11),
(6595, '', 11, 12),
(6596, '', 32, 8),
(6597, '', 32, 9),
(6598, '', 32, 10),
(6599, '', 32, 11),
(6600, '', 32, 12),
(6606, '', 219, 8),
(6607, '', 219, 9),
(6608, '', 219, 10),
(6609, '', 219, 11),
(6610, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Blackpool Boathouse located at 36 Moa Avenue.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.&nbsp; For all non emergency issues, please ring the office during business hours.&nbsp; Fire, Police, Ambulance dial 111.</p>', 219, 1),
(6611, '<p>Arrival/Departure Information<br />\r\nCheck in is from&nbsp;2pm&nbsp;and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key under the door mat.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 219, 3),
(6612, '<p>BEACH: You can walk to Little Oneroa and Oneroa beaches in about ten minutes.&nbsp; Both are lovely white sand beaches with safe swimming.&nbsp; Take a right out of the accommodation and walk to the end of Moa Ave.&nbsp; When you reach Oceanview Road take a right to get to Little Oneroa beach and then a left on Goodwin Ave.&nbsp; You&rsquo;ll find the beach, playground, dairy and takeaways at Little &ldquo;O&rdquo; beach.&nbsp; To reach Oneroa beach, take a left on Oceanview Road and a right on Puriri.&nbsp; If you take a left out of the accommodation you will find Blackpool Beach just down the road.</p>\r\n\r\n<p>BBQ: A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p>CLEANING: Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p>DRINKING WATER: All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p>ELECTRICITY AND GAS: The fuse box is located in the cupboard closest to the french doors in bedroom 2.&nbsp; The gas bottles are located on the driveway side of the house by the back bedroom # 3.</p>\r\n\r\n<p>ENTRANCE GATE: Please ensure the sliding pedestrian gate is securely closed when leaving the accommodation.</p>\r\n\r\n<p>FIRST AID: The first aid kit is located In bathroom cabinet.</p>\r\n\r\n<p>FIRE EXTINGUISHER:? This is located in the alcove cupboard to the left when entering the kitchen.</p>\r\n\r\n<p>FIREPLACE: The fire is wood burning and there is wood supplied by the fire.&nbsp; If you require additional firewood during your stay please contact our office.</p>\r\n\r\n<p>GARDEN:&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p>EMERGENCY: In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p>HAIR DRYER: This is located in the top right drawer behind the bedhead in the master bedroom.</p>\r\n\r\n<p>INTERNET:&nbsp; The router is located in the hall cupboard - Network name - Blackpool Boathouse&nbsp; &nbsp;Password - Oneroa36</p>\r\n\r\n<p>IRON &amp; IRONING BOARD: These are located in the master bedroom left side cupboard.&nbsp;</p>\r\n\r\n<p>LAUNDRY: This is located behind the barn doors in the hall.</p>\r\n\r\n<p>LEFT accommodation:&nbsp; UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p>NOISE:&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p>POWER OUTAGE:&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch in the alcove cupboard to the left when walking into the kitchen. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p>RUBBISH:&nbsp; Rubbish collection day for Blackpool Boathouse is a Tuesday.&nbsp; If you are staying on a Tuesday, please place your rubbish and recycles in the council bins at the roadside by 7am.&nbsp; You will find the bins just inside the fence in front parking bay.&nbsp; Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\nSEPTIC SYSTEM: The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p>SMOKING: This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p>STEREO: You can stream music from your preferred music account through the Sonos speakers.&nbsp; Log into your account using the Blackpool Boathouse WIFI and select network &quot;sonos&quot;.&nbsp; You can find a list of music apps that are compatible with Sonos here&hellip;.&nbsp; www.sonos.com/en/streaming-music</p>\r\n\r\n<p>SUN UMBRELLA:&nbsp; Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p>TELEVISION:&nbsp; With the black Bose remote turn on the sound by pressing the large power button in the middle of the third row from the top. Press the TV button - left button on second row from the top. Then press the Source Power button - right hand button on the third row from the top.<br />\r\nThirdly, press the CBL-SAT button - top left in the top row. This then turns the remote into a version of the sky remote and will give you all of the functions that a regular sky remote would give you.<br />\r\nTo turn the system off, press the large power button in the middle of the third row and then TV, and then Source Power - right hand button from the top.</p>\r\n\r\n<p>VEHICLE:&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p>WATER: Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.&nbsp;</p>', 219, 4),
(6613, '<p><a href=\"https://goo.gl/maps/xSiGrSAurgp\">https://goo.gl/maps/xSiGrSAurgp</a></p>', 219, 12),
(6614, '', 143, 8),
(6615, '', 143, 9),
(6616, '', 143, 10),
(6617, '', 143, 11),
(6618, '', 143, 12),
(6619, '', 172, 8),
(6620, '', 172, 9),
(6621, '', 172, 10),
(6622, '', 172, 11),
(6623, '', 172, 12),
(6629, '', 175, 8),
(6630, '', 175, 9),
(6631, '', 175, 10),
(6632, '', 175, 11),
(6633, '', 175, 12),
(6652, '', 213, 8),
(6653, '', 213, 9),
(6654, '', 213, 10),
(6655, '', 213, 11),
(6656, '<p>The lock box is located in the carport on the first post on the right. &nbsp;Lock box code: 0318</p>', 213, 2),
(6657, '', 213, 12),
(6658, '', 198, 8),
(6659, '', 198, 9),
(6660, '', 198, 10),
(6661, '', 198, 11),
(6662, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Taimana located at 7 Blake Street.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 198, 1),
(6663, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key under the door mat.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 198, 3),
(6664, '<p><strong>BEACH:</strong> Access Surfdale beach via the reserve in the back of the accommodation. &nbsp;</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>COASTERS ON TABLES:</strong> Please use coasters under drinks and hot mats under pots on the tables.</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>DOORS</strong>: In damp weather, the french doors in the bedroom may stick and will require a gentle push.</p>\r\n\r\n<p><strong>ELECTRICITY: </strong>The fuse box is in the hallway between the kitchen and lounge.</p>\r\n\r\n<p><strong>FIRST AID: &nbsp;</strong>This is located in the entranceway cupboard.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp;This is located on the kitchen wall.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> &nbsp;Firewood is in woodbox by the sleepout. &nbsp;Extra firewood is available for purchase at most petrol stations in winter.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER: &nbsp;</strong>This is located in the bathroom cabinet.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> &nbsp;In addition to the wood fire, there are electric heaters in the family room and bedrooms. &nbsp;</p>\r\n\r\n<p><strong>INTERNET: </strong>&nbsp;The network name is Terahui. &nbsp;The password&nbsp;CW021976221</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> These are located in the entranceway cupboard&nbsp;</p>\r\n\r\n<p><strong>LAUNDRY:</strong> &nbsp;You will find a washing machine (cold water only) in the bathroom. Please do not use&nbsp;hot water and turn machine&nbsp;off at switch after use.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>OVEN: </strong>It is important not to use the oven timer as this will cause the oven to stop working.</p>\r\n\r\n<p><strong>POWER OUTAGE: </strong>&nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in family room cabinet. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Rubbish collection day for Taimana is a Thursday. &nbsp;If you are staying on a Thursday, please place your rubbish and recycles in bins provided&nbsp;at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA: </strong>&nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO: </strong>&nbsp;See detailed instructions left by the TV.</p>\r\n\r\n<p><strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>', 198, 4),
(6665, '<p><a href=\"https://goo.gl/maps/oYvYH1VNWSz\">https://goo.gl/maps/oYvYH1VNWSz</a></p>', 198, 12),
(6666, '', 60, 8),
(6667, '', 60, 9),
(6668, '', 60, 10),
(6669, '', 60, 11),
(6670, '', 60, 12),
(6671, '', 177, 8),
(6672, '', 177, 9),
(6673, '', 177, 10),
(6674, '', 177, 11),
(6675, '', 177, 12),
(6676, '', 4, 8),
(6677, '', 4, 9),
(6678, '', 4, 10),
(6679, '', 4, 11),
(6680, '<p><strong>Black Cottage Welcome content goes here</strong></p>\r\n\r\n<p>Dear Guests,</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.</p>\r\n\r\n<p>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 4, 1),
(6681, '<p><strong>Black Cottage Arrival / Departure info</strong></p>\r\n\r\n<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key&nbsp;</p>', 4, 2),
(6682, '<p><strong>Black Cottage Departure checklist</strong></p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 4, 3),
(6683, '<p><strong>Black Cottage House info</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BEACH</strong>: &nbsp;Palm Beach (Mawhitpana Bay) is the closest white sand swimming beach and is a 15 minute walk or a 2 minute drive. To get to Palm Beach, take a left out of the drive and then a quick right onto Hill Road. &nbsp;Take your first left onto Tiri View Road and follow to the end. &nbsp;There is a lovely playground and public BBQ&rsquo;s at Palm Beach.</p>\r\n\r\n<p>BBQ: A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p>CLEANING: Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition. &nbsp;&nbsp;</p>\r\n\r\n<p>GARDEN: &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p>EMERGENCY: In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p>FUSE BOX: The fuse box is located above the Fridge</p>\r\n\r\n<p>HAIR DRYER: A hair dryer is located under the sink in the laundry area.</p>\r\n\r\n<p>INTERNET/WiFi: Please select &ldquo;Bach2&rdquo; network, the password if cory2416.</p>\r\n\r\n<p>IRON &amp; IRONING BOARD: &nbsp;An iron and ironing board are located in the laundry area.</p>\r\n\r\n<p>NOISE: &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p>POWER OUTAGE: &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch under the kitchen sink. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p>RUBBISH: &nbsp;Rubbish collection day for Bach 2 is a Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish in the council bins and leave by the roadside by 8am. Waiheke Island transfer station is located at 102 Ostend Road.&nbsp;</p>\r\n\r\n<p>The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\nSEPTIC SYSTEM: The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p>SMOKING: This is a smoke free home. &nbsp;</p>\r\n\r\n<p>SPA: Please shower prior to using the spa.<br />\r\nPlease ensure the &ldquo;pump 1&rdquo; button is turned off and cover replaced/locked when exiting the spa.<br />\r\nPlease do not power off the spa.<br />\r\nTo unlock the spa control pad, press the &ldquo;locked&rdquo; button twice or until the lock symbol is off. &nbsp;To adjust the heat, press the &ldquo;minute/up&rdquo; arrow or the &ldquo;hour/down&rdquo; arrow to desired temperature. &nbsp;To operate the jets, press the &ldquo;pump 1&rdquo; button. &nbsp;Function buttons have been circled in black marker.<br />\r\nNotes: &nbsp;Heat symbol in top right corner of display panel should always be showing. &nbsp;If the spa is at temperature the symbol will be flashing and if it is heating, the symbol will be still. &nbsp;Pump 3 is the heating pump and will go on when heating and auto off when at temperature.</p>\r\n\r\n<p>TELEVISION/CD/STEREO: &nbsp;Use the Samsung remote to turn on the TV and scroll channels. The TV has built in FREEVIEW (basic channels) only.</p>\r\n\r\n<p>VEHICLE: &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p>WATER: Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 4, 4),
(6684, '<p>Address &nbsp;Info here</p>', 4, 12),
(6685, '', 115, 8),
(6686, '', 115, 9),
(6687, '', 115, 10),
(6688, '', 115, 11),
(6689, '', 115, 12),
(6690, '', 168, 8),
(6691, '', 168, 9),
(6692, '', 168, 10),
(6693, '', 168, 11),
(6694, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Cape Cottage.<br />\r\n&nbsp;<br />\r\nThis tablet&nbsp;provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;<br />\r\n&nbsp;<br />\r\nThank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke<br />\r\n&nbsp;<br />\r\nPh: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of <em>emergency only</em> is available for guests in residence on 021 391 057. &nbsp;For police, fire and ambulance ring 111.<br />\r\n&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 168, 1),
(6695, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box which mounted to the house by the back door. &nbsp;Go out the back door and around the left corner of the house and you will find the lock box mounted to the house.&nbsp; &nbsp;The lock box code is 0218.</p>\r\n\r\n<p><strong>We would appreciate if you could check the following prior to your departure.</strong><br />\r\n&nbsp;<br />\r\nDishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left in bins outside.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>\r\n\r\n<p>&nbsp;</p>', 168, 3),
(6696, '<p><strong>BEACH:</strong> You can access Oneroa beach via the walking track through the village or via the boat ramp off Korora Road. &nbsp;Via the village: &nbsp;Turn right from the accommodation and walk down Waikere Road to the first roundabout. &nbsp;You will see the path to the beach on your left. &nbsp;Via boat ramp: &nbsp;Turn left from the accommodation and walk down Waikare Road to the end. &nbsp;Turn right onto Korora Road and follow the road to left bend. &nbsp;You will see the boat access road to the beach on your right.<br />\r\n&nbsp;<br />\r\n<strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>CAR HIRE:</strong> &nbsp;Please contact our office on 09 372 5402 (or book directly on our website) if you wish to hire a vehicle for use during your stay. &nbsp;We offer late model Toyota Rav 4&rsquo;s at competitive rates with free delivery to Cape Cottage.<br />\r\n&nbsp;<br />\r\n<strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.<br />\r\n&nbsp;<br />\r\n<strong>ELECTRICITY AND GAS:</strong> The gas bottles are located on the right side of the house when facing the house from the street. &nbsp;The fuse box is located above the fridge.<br />\r\n&nbsp;<br />\r\n<strong>FIRST AID:</strong> You will find a first aid kit in the first floor bathroom cupboard.<br />\r\n&nbsp;<br />\r\n<strong>FIRE EXTINGUISHER:?</strong> The fire extinguisher is located under the kitchen sink.<br />\r\n&nbsp;<br />\r\n<strong>FIREPLACE:</strong> &nbsp;Power on fire and adjust flame using the Rinnai remote or you can power on the fire by pushing the button on the firebox, top right.<br />\r\n&nbsp;<br />\r\n<strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.<br />\r\n&nbsp;<br />\r\n<strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).<br />\r\n&nbsp;<br />\r\n<strong>HAIR DRYER:</strong> A hair dryer is located in the lower level bathroom cupboard.<br />\r\n&nbsp;<br />\r\n<strong>HEATING AND A/C:</strong> The accommodation uses free standing oil heaters in winter.<br />\r\n&nbsp;<br />\r\n<strong>INTERNET:</strong> The network name spark-D4RR6Y password is KA7XMEV567.<br />\r\n&nbsp;<br />\r\n<strong>IRON &amp; IRONING BOARD: </strong>&nbsp;The iron and ironing board are located in the laundry room.<br />\r\n&nbsp;<br />\r\n<strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.<br />\r\n&nbsp;<br />\r\n<strong>MUSIC:</strong> &nbsp;There is an ipod dock in the lounge near the TV.<br />\r\n&nbsp;<br />\r\n<strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.<br />\r\n&nbsp;<br />\r\n<strong>OUTDOOR CUSHIONS:</strong> Please bring the outdoor cushions inside prior to departure.<br />\r\n&nbsp;<br />\r\n<strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch under the kitchen sink. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.<br />\r\n&nbsp;<br />\r\n<strong>RUBBISH:</strong>&nbsp; Please place rubbish and recycles&nbsp;in the&nbsp;bins in the driveway prior to departure. Rubbish collection day for Cape Cottage is a Tuesday. &nbsp;If you are staying on a Tuesday, please place your rubbish and recycles in council bins at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.<br />\r\n&nbsp;<br />\r\n<strong>SMOKING:</strong> This is a smoke free home. &nbsp;<br />\r\n&nbsp;<br />\r\n<strong>SUN UMBRELLA: </strong>&nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.<br />\r\n&nbsp;<br />\r\n<strong>TELEVISION</strong>: Power on the TV using the green power button on the LG remote. &nbsp;Power on both SKY boxes using SKY remote or power button on the unit. To watch SKY, set the source&nbsp;to TV using the input button (second row far right) on the LG remote. &nbsp;Scroll channels using the sky remote. &nbsp;To watch a DVD, set the source on the TV to AV and power on the DVD player using the SONY remote.<br />\r\n&nbsp;<br />\r\n<strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 168, 4),
(6697, '<p><a href=\"https://goo.gl/maps/epBkZoU6cTA2\">https://goo.gl/maps/epBkZoU6cTA2</a></p>', 168, 12),
(6698, '', 153, 8),
(6699, '', 153, 9),
(6700, '', 153, 10),
(6701, '', 153, 11),
(6702, '', 153, 12),
(6703, '', 139, 8),
(6704, '', 139, 9),
(6705, '', 139, 10),
(6706, '', 139, 11),
(6707, '', 139, 12),
(6750, '', 149, 8),
(6751, '', 149, 9),
(6752, '', 149, 10),
(6753, '', 149, 11),
(6754, '<p>Dear Guests,</p>\r\n\r\n<p><br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Enclosure Bay Retreat&nbsp;located at 84 Coromandel&nbsp;Road. This tablet&nbsp;provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>If we can be of assistance, please contact Stay&nbsp;Waiheke&nbsp;on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay&nbsp;Waiheke&nbsp;after hours assistance in the case of emergency only is available for guests in residence on 021 391 057. &nbsp;For all non emergency calls, please contact the office during business hours.&nbsp; In case of medical, police or fire emergency, please dial 111.</p>', 149, 1),
(6755, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lockbox. &nbsp;&nbsp;The lock box&nbsp;is attached to the downpipe on the deck. &nbsp;This is located by the second door. &nbsp;The key is for the first door - code 1616.</p>\r\n\r\n<p><br />\r\nDEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 149, 3),
(6756, '<p><strong>BEACH:</strong> &nbsp;Sandy Bay&nbsp;is the closest white sand swimming beach and is just down the hill (to your left)&nbsp;from the house. &nbsp;You can also reach Sandy Bay via the walking track which is located 150 metres up the road (to your right) from the house.</p>\r\n\r\n<p><strong>BBQ:</strong>&nbsp;A gas BBQ is there for you to use.&nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>BI-FOLD DOORS:</strong>&nbsp;Please ensure the locks for the&nbsp;bifold&nbsp;doors are flush with the door when open to avoid damaging the door.</p>\r\n\r\n<p><strong>CLEANING:</strong>&nbsp;Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp;&nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we&nbsp;apologise&nbsp;for any inconvenience.</p>\r\n\r\n<p><strong>GAS BOTTLES:</strong> &nbsp;Gas bottles are located under the house.</p>\r\n\r\n<p><strong>EMERGENCY:</strong>&nbsp;In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> &nbsp;Located above the fridge.</p>\r\n\r\n<p><strong>FIRST AID KIT: </strong>This is located in the main bathroom drawer.</p>\r\n\r\n<p><strong>FUSE BOX:</strong>&nbsp;The fuse box is located in the laundry. &nbsp;</p>\r\n\r\n<p><strong>HAIR DRYER:</strong>&nbsp;A hair dryer is located in the ensuite bathroom.</p>\r\n\r\n<p><strong>INTERNET/WiFi:</strong>&nbsp;Network: Enclosurebayreatreat&nbsp;Password&nbsp;84CoromandelRd - note captials for C &amp; R</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; Located in the laundry&nbsp;cupboard.</p>\r\n\r\n<p><strong>NOISE:&nbsp;</strong>&nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by&nbsp;11pm&nbsp;at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>OUTDOOR BEANBAGS: </strong>&nbsp;Upon departure, please bring the outdoor beanbags inside if they are dry. &nbsp;If they are wet, please leave under cover on the deck.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp;&nbsp;Power outages on&nbsp;Waiheke&nbsp;are rare but do occur on occasion. &nbsp;You will find a torch&nbsp;in sleepout&nbsp;and&nbsp;on laundry shelf. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp;&nbsp;Rubbish collection day for Enclosure Bay Retreat&nbsp;is a Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish in the council bins and leave by the roadside by 8am.&nbsp;Waiheke&nbsp;Island transfer station is located at 102&nbsp;Ostend&nbsp;Road.&nbsp;</p>\r\n\r\n<p>The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong>&nbsp;The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong>&nbsp;This is a smoke free home.&nbsp;</p>\r\n\r\n<p><strong>TELEVISION:</strong>&nbsp;&nbsp;Turn on the TV with remote - use Source to select - Freeview, Netflix, HDMI.</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars&nbsp;for rates and availability.</p>\r\n\r\n<p><strong>WATER:</strong>&nbsp;Like all properties on&nbsp;Waiheke&nbsp;we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water. &nbsp;The water tank and water pump are located under the house.</p>', 149, 4),
(6757, '', 149, 12),
(6758, '', 106, 8),
(6759, '', 106, 9),
(6760, '', 106, 10),
(6761, '', 106, 11),
(6762, '', 106, 12),
(6763, '', 203, 8),
(6764, '', 203, 9),
(6765, '', 203, 10),
(6766, '', 203, 11),
(6767, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to the Church House located at 13 Pah Road in Onetangi.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\n<em>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</em></p>', 203, 1),
(6768, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box. &nbsp;The lock box is mounted on a post outside the side door. &nbsp;Code: 9112.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left outside in council bins.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 203, 3);
INSERT INTO `accommodation_has_compendium_section` (`id`, `content`, `accommodation_id`, `compendium_section_id`) VALUES
(6769, '<p><strong>BEACH: &nbsp;</strong>The nearest beaches are Onetangi&nbsp;and Palm beach. &nbsp;Walking to Onetangi beach&nbsp;- When you exit the driveway take a right and walk 15 meters on Seaview Rd and you will see a walkway on the right signed Jacobs Ladder. This will take you down to the beach. Alternatively there is another track at the end of Pah Rd which will take you down to Fourth Avenue past the playground. Driving - turn right when exiting the drive and turn left down Seaview Rd until you come to the junction with Onetangi Rd, turn left and follow until you get to the beach. &nbsp;Palm Beach is approximately a 7 min drive from The Pah. Turn right onto Seaview Rd and follow Seaview Rd, turn right onto View Rd for 750 m, turn right onto Crescent Rd West for 800 m, turn right onto Bay Rd for 450 m, Slight right onto Palm Rd for 650 m and your will arrive at Palm Beach.</p>\r\n\r\n<p><strong>BBQ:</strong>&nbsp;A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong>&nbsp;Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>COASTERS ON TABLES:</strong>&nbsp;Please use coasters under drinks and hot mats under pots on the tables.</p>\r\n\r\n<p><strong>DRINKING WATER:</strong>&nbsp;All properties on&nbsp;Waiheke&nbsp;run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY:</strong>&nbsp;The fuse box is located in the kitchen on the wall to the left of the stove. &nbsp;Gas bottles are located on the left (west) side of the house.</p>\r\n\r\n<p><strong>FIRST AID:</strong> &nbsp;This is located above the fridge in the kitchen.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp;This is located above the fridge in the kitchen.</p>\r\n\r\n<p><strong>FIREPLACE:</strong>&nbsp;&nbsp;Firewood is in&nbsp;wood basket by the fire and stored under the house on the left (west) side.&nbsp;Extra firewood is available for purchase at most petrol stations in winter.</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp;&nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we&nbsp;apologise&nbsp;for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong>&nbsp;In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> &nbsp;This is located in the cupboard in the bedroom closest to the bathroom.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong>&nbsp;The control panel is on the wall by the bathroom. &nbsp;Power on using the blue button and use the dial to set the temperature.</p>\r\n\r\n<p><strong>INTERNET:</strong>&nbsp;&nbsp;The network name is&nbsp;The Church House. &nbsp;The password is&nbsp;Onetangi</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp;This is located in the cupboard in the bedroom closest to the bathroom.</p>\r\n\r\n<p><strong>LAUNDRY:</strong>&nbsp;&nbsp;You will find a washing machine and dryer in the bathroom cupboard.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong>&nbsp;&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay&nbsp;Waiheke&nbsp;for 30 days. &nbsp;Please contact Stay&nbsp;Waiheke&nbsp;within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp;&nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by&nbsp;11pm&nbsp;at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp;&nbsp;Power outages on&nbsp;Waiheke&nbsp;are rare but do occur on occasion. &nbsp;You will find a torch above the fridge. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp;&nbsp;Rubbish collection day for Church House&nbsp;is a Monday. &nbsp;If you are staying on a Monday, please place your rubbish and recycles in bins provided&nbsp;at the roadside by 7am.&nbsp;Waiheke&nbsp;Island transfer station is located at 102&nbsp;Ostend&nbsp;Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong>&nbsp;The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:&nbsp;</strong>This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION:</strong> &nbsp;Power on the TV using the Panasonic remote. &nbsp; To watch FREEVIEW TV, set the source on the Panasonic remote to AV2. &nbsp;Power on the DISH box using the DISH remote and use the DISH remote to scroll channels.</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp;&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars&nbsp;for rates and availability.</p>', 203, 4),
(6770, '<p><a href=\"https://goo.gl/maps/ZHkUWSGbffD2\">https://goo.gl/maps/ZHkUWSGbffD2</a></p>', 203, 12),
(6781, '', 159, 8),
(6782, '', 159, 9),
(6783, '', 159, 10),
(6784, '', 159, 11),
(6785, '', 159, 12),
(6796, '', 124, 8),
(6797, '', 124, 9),
(6798, '', 124, 10),
(6799, '', 124, 11),
(6800, '', 124, 12),
(6801, '', 229, 8),
(6802, '', 229, 9),
(6803, '', 229, 10),
(6804, '', 229, 11),
(6805, '', 229, 12),
(6828, '', 230, 8),
(6829, '', 230, 9),
(6830, '', 230, 10),
(6831, '', 230, 11),
(6832, '<p>Dear Guests,<br />\r\nWelcome to Waiheke Island and to Miro Studio located at 19 Miro Road in Palm Beach.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.&nbsp; Police, Fire, Ambulance dial 111.</p>', 230, 1),
(6833, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key&nbsp;</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away.</li>\r\n	<li>BBQ cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 230, 3),
(6834, '<p>BEACH:&nbsp; Beautiful Palm Beach is 150 metres out and to your left.</p>\r\n\r\n<p>BBQ: A gas BBQ is there for you to use.&nbsp; We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p>CLEANING: Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p>ELECTRICITY:&nbsp; The fuse box is located at the top of the stairs.&nbsp; The hot water cylinder is located under the stairs.</p>\r\n\r\n<p>FIRST AID: This is located&nbsp;in the bathroom cupboard.</p>\r\n\r\n<p>FIRE EXTINGUISHER:? This is located under the stairs.</p>\r\n\r\n<p>GARDEN:&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p>EMERGENCY: In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p>HAIR DRYER: This is located in the bathroom cupboard.</p>\r\n\r\n<p>HEATING AND A/C: There is a free standing heater in the studio.</p>\r\n\r\n<p>INTERNET:&nbsp;&nbsp;Network Name : Lipari.2.46hz/ Lipari . 5ghz&nbsp; &nbsp;Passowrd 19miroRoadPBW</p>\r\n\r\n<p>IRON &amp; IRONING BOARD:&nbsp; There is an iron and ironing board under the stairs.</p>\r\n\r\n<p>LEFT accommodation:&nbsp; UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p>NOISE:&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p>PARKING: Please pull in the drive and park to&nbsp;the right.&nbsp; The drive is shared with the owners so please do not block access.</p>\r\n\r\n<p>POWER OUTAGE:&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch on the shelf by the bed.&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p>RUBBISH:&nbsp; Rubbish collection day for Miro Studio is a Wednesday.&nbsp; The main bin is&nbsp;a black bin with a red back in it - located in the walkway on left hand side of garage. Please dispose of rubbish in there.&nbsp;Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\nSEPTIC SYSTEM: The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p>SMOKING: This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p>VEHICLE:&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p>WATER: Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.</p>', 230, 4),
(6835, '<p><a href=\"https://goo.gl/maps/apoQWoFvHhp\">https://goo.gl/maps/apoQWoFvHhp</a></p>', 230, 12),
(6836, '', 228, 8),
(6837, '', 228, 9),
(6838, '', 228, 10),
(6839, '', 228, 11),
(6840, '', 228, 12),
(6841, '', 165, 8),
(6842, '', 165, 9),
(6843, '', 165, 10),
(6844, '', 165, 11),
(6845, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Viewpoint located at 400 Seaview Road in Onetangi.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\n<em>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</em></p>', 165, 1),
(6846, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box located in the laundry cupboard outside the door. &nbsp;Code: 4008.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left outside in council bins provided.<br />\r\nUsed towels have been placed in the shower.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 165, 3),
(6847, '<p><strong>BBQ: </strong>A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.</p>\r\n\r\n<p><strong>BEACH:</strong> Onetangi beach is a 5 minute walk from the house. &nbsp;To get to the beach, walk out the drive to Seaview Road and turn right. &nbsp;Take your first right onto Seventh Avenue. &nbsp;At the top of 7th Avenue, you&rsquo;ll see a set of steps leading down to the beach.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong> The fuse box is located out the entrance door and to the left . The gas bottles are located under the deck on the right side of the house. &nbsp;Gas is used for the hob and hot water. &nbsp;If you run out of gas, please check the tanks as the gas may need to be switched over from the empty tank to the full tank. &nbsp;Please contact Stay Waiheke should you require assistance.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong> &nbsp;A fire extinguisher is located under the kitchen sink. &nbsp;</p>\r\n\r\n<p><strong>FIRST AID KIT:</strong> &nbsp;This is located on in the lower level bathroom under the sink.</p>\r\n\r\n<p><strong>FIREPLACE:</strong> &nbsp;Please use caution with the fire and do not leave the house with the fire going and unattended. &nbsp;Firewood, paper and kidling are located in the wood shed on the right side of the house. &nbsp;Additional wood can be purchased from the supermarket or petrol stations.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> You will find a hair dryers in the bathrooms under the sinks.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> In addition to the fire, there are two free standing heaters in the house.</p>\r\n\r\n<p><strong>INTERNET:</strong> The wifi network is Spark G59ZGD-5G. &nbsp;The password is: MT6ZFPZ6GW</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron and ironing board are located in the laundry room which is out the entrance door and to the left.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> The laundry is located out the entrance door in the cabinet to the left.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE</strong>: &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the pantry to the right of the fridge. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong> &nbsp;Upon departure, please leave all rubbish outside in the bins provided. &nbsp;The rubbish bins are located by the fence at the top of the drive between the two houses.&nbsp; Rubbish collection day for Viewpoint is a Monday. &nbsp;If you are staying on a Monday, please place your rubbish and recycles in the bins located by at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING: </strong>This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO:</strong> &nbsp;The television has Freeview and Apple TV. &nbsp;Power on the TV using the TV remote and power on the Freeview box using the GOG remote. &nbsp;To watch Freeview, set the source on the TV to HDMI2 using the AV button on the TV remote. &nbsp;Scroll channels using the GOG remote. &nbsp;To watch Apple TV, set the source to HDMI1 using the AV button on the TV remote, power on the Apple TV using the Apple TV remote and enter your Apple user ID and password.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.</p>', 165, 4),
(6848, '<p><a href=\"https://goo.gl/maps/4RtSv9EZ3452\">https://goo.gl/maps/4RtSv9EZ3452</a></p>', 165, 12),
(6849, '', 209, 8),
(6850, '', 209, 9),
(6851, '', 209, 10),
(6852, '', 209, 11),
(6853, '', 209, 12),
(6854, '', 223, 8),
(6855, '', 223, 9),
(6856, '', 223, 10),
(6857, '', 223, 11),
(6858, '', 223, 12),
(6859, '', 232, 8),
(6860, '', 232, 9),
(6861, '', 232, 10),
(6862, '', 232, 11),
(6863, '', 232, 12),
(6877, '', 158, 8),
(6878, '', 158, 9),
(6879, '', 158, 10),
(6880, '', 158, 11),
(6881, '', 158, 12),
(6882, '', 157, 8),
(6883, '', 157, 9),
(6884, '', 157, 10),
(6885, '', 157, 11),
(6886, '', 157, 12),
(6887, '', 196, 8),
(6888, '', 196, 9),
(6889, '', 196, 10),
(6890, '', 196, 11),
(6891, '<p>Dear Guests,</p>\r\n\r\n<p><br />\r\nWelcome to Waiheke Island and to Island&nbsp;Retreat located at 80 Delamore Drive. This tablet provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>If we can be of assistance, please contact Stay Waiheke on 09 372 5402 or 021 563 271 between 8:30 am and 5:30 pm. &nbsp; Stay Waiheke after hours assistance in the case of emergency only is available for guests in residence on 021 391 057. &nbsp;For all non emergency calls, please contact the office during business hours. &nbsp;In case of medical, police or fire emergency, please dial 111.</p>', 196, 1),
(6892, '<p>To access all&nbsp;rooms using the touchpad, enter code 13 and press OK and then enter code 1957 and&nbsp;press OK. &nbsp;</p>', 196, 2),
(6893, '<p>Please contact our team at Stay Waiheke&nbsp;to arrange a check out time.</p>', 196, 3),
(6894, '<p><strong>House Information</strong></p>\r\n\r\n<p><strong>BEACH and VILLAGE:</strong>&nbsp; Oneroa Beach&nbsp;is the closest white sand swimming beach and is 2k from the house and a 5&nbsp;minute drive. To get to Oneroa&nbsp;Beach, take a right&nbsp;out of the drive and continue on Delamore Drive to Tiri Road. &nbsp;Take a right onto Kororoa Road, a left onto Oceanview Road and continue along Oceanview Road through the village. &nbsp;After the second roundabout, turn left onto Puriri Road to the beach. &nbsp;There are several other lovley beaches to explore on the island including Onetangi and Palm beaches as well as a number of secluded bays accessed by the walking trails.</p>\r\n\r\n<p><strong>BBQ: </strong>A gas BBQ is there for you to use. &nbsp;You will find a spare gas tank next to the BBQ.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>FIREPLACE: &nbsp;</strong>The fire has a gas start with the start switch located on the right side of the chimney&nbsp;- turn on then depress bottom button to start. Firewood is in wood box to the left of the drive by garage. &nbsp;<strong>Use of the outdoor fire is not permitted due to fire risk.</strong></p>\r\n\r\n<p><strong>FIRE EXTINGUISHER: &nbsp;</strong>Your will find fire extinguishers in the master master bedroom under the&nbsp;sink, &nbsp;in the kitchen on right handside in bottom shelf by floor and in the&nbsp;lounge.</p>\r\n\r\n<p><strong>FIRST AID:</strong>&nbsp;You will find a first aid kit in the&nbsp;kitchen at the end of the&nbsp;bench.</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> You will find hair dryers in the wardrobes in all bedrooms.</p>\r\n\r\n<p><strong>ICEMAKER:</strong>&nbsp;This can be turned on and off by depressing the button</p>\r\n\r\n<p><strong>INTERNET/WiFi:</strong> Please select network name Hanson. &nbsp;The password is sunnyboy</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;An iron and ironing board are located in the linen cupboard in laundry area.</p>\r\n\r\n<p><strong>KITCHEN</strong>:&nbsp; Please use placemats on the table and kitchen top as it will mark and discolor,&nbsp;all&nbsp; manuals&nbsp;can be found in green folder in top left hand draw beside the oven&nbsp;.&nbsp;</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the kitchen top left hand drawer. The doors all work on battery so will be able to open and close them. To confirm an outage in your area and determine an estimated time of repair, you can contact our office or&nbsp;Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>POOL:&nbsp;</strong>The pool is heated and set at 28 degrees, you will find beach towels in the mudroom area behind the kitchen. Please do not take glass to the pool area. The pool is serviced regularly.&nbsp;</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; You will find council rubbish bins by the house to the left of the garage when facing the doors.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>TELEVISION: </strong>&nbsp;Power on the TV using the RCI remote by pressing&nbsp;the power button&nbsp;then press &quot;home&quot;. &nbsp;Select viewing/listening option.&nbsp; For cable TV, select&nbsp;&quot;MySky HDi&quot;. &nbsp;Use the RCI remote to scroll channels. Please place the remote in the cradle (and light goes red) to ensure it&#39;s charged / rocked.</p>\r\n\r\n<p><strong>WATER:</strong> Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay, please contact the office should you run out of water.</p>', 196, 4),
(6895, '', 196, 12),
(6896, '', 125, 8),
(6897, '', 125, 9),
(6898, '', 125, 10),
(6899, '', 125, 11),
(6900, '<p>Dear Guests,</p>\r\n\r\n<p><br />\r\nWelcome to Waiheke Island and to Serenity located at 2 Hill Road in Palm Beach.&nbsp; Serenity is a barefoot house and we would appreciate it if you would leave shoes outside.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.&nbsp;&nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.&nbsp; The office phone is available between 8:30 am and 5:30 pm.<br />\r\n<em>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.&nbsp; Please contact the office during business hours for assistance with non emergency matters.</em></p>', 125, 1),
(6901, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure.&nbsp; &nbsp;</p>\r\n\r\n<p><strong>DEPARTURE CHECKLIST:</strong> We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<ul>\r\n	<li>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.</li>\r\n	<li>Oven and/or BBQ&rsquo;s are cleaned.</li>\r\n	<li>Rubbish has been left as per accommodation instructions.</li>\r\n	<li>Used towels have been placed in the shower or bathtub.</li>\r\n	<li>Heaters have been switched off.</li>\r\n	<li>TV/entertainment cables and connections are left as found.</li>\r\n	<li>Lights are switched off.</li>\r\n	<li>Windows and doors are closed and secured/locked.</li>\r\n	<li>accommodation is left generally as found.</li>\r\n</ul>', 125, 3),
(6902, '<p><strong>BEACH:</strong> There is a pathway through the accommodation towards Palm Beach.&nbsp; You will find the start of the track at the bottom of the stairs on the left side of the house when facing the sea.&nbsp;There are two foot wash stations on the accommodation. One is located on the left-hand side wall when walking down the breach track from outdoor dining area. The second foot wash station is located by the outdoor shower, next to the guest house.&nbsp;</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use.&nbsp; Use a match to light the gas in the front and always keep on low. Very powerful.&nbsp;&nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests.&nbsp; A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>BLINDS:</strong>&nbsp; You will find the remote control for the blinds in the second drawer below the BOSE speaker in the kitchen.</p>\r\n\r\n<p><strong>BOSE SPEAKER:&nbsp; </strong>Connect your phone or device to the house WIFI.&nbsp; Power on the Bose speaker and pair your device to &quot;Hill Road&quot;.&nbsp; You will find a remote for the BOSE in the second drawer below the speaker.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found.&nbsp; Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp; Please use only eco friendly cleaning products.</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.&nbsp; There fridge also dispenses filtered water and ice.</p>\r\n\r\n<p><strong>ELECTRICITY AND GAS:</strong>&nbsp; The fuse box is located in the laundry.&nbsp; The gas bottles are located underneath the stairway on the left side of the house when facing the sea.&nbsp;Accessed through wooden door.</p>\r\n\r\n<p><strong>FIRST AID:</strong> This is located in the laundry.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:?</strong> This is located in the laundry.</p>\r\n\r\n<p><strong>FIREPLACE:</strong>&nbsp; INDOOR FIRE:&nbsp;The indoor fire is a gas fire.&nbsp; Please follow instructions for use:&nbsp; &nbsp;Turn far right power switch on.&nbsp; On the far left line up the ignite symbol on the knob with the white line to the left of the knob.&nbsp;&nbsp;At the same time, hold&nbsp;in the far left knob and push the far right button (next to on/off switch) until the pilot light goes on.&nbsp; You will see the pilot light -&nbsp;small flame above the switch on right.&nbsp; At this point, change the position of the far left knob to line up&nbsp;the flame symbol on the knob with the white line.&nbsp; Adjust flame using centre&nbsp;knob.&nbsp; OUTDOOR FIRE:&nbsp; &nbsp;This is a wood fire.&nbsp; You will find matches/kindling by the fire.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>GARDEN:</strong>&nbsp; The garden is maintained on a regular basis.&nbsp; If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>GUEST HOUSE:</strong>&nbsp; The key to the guest house is in the laundry on a leather heart keyring.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER: </strong>You will find a hair dryer in each bathroom.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> In addition to the fire, there is a heating system in the house which is controlled from the wall plate to the right of the fridge in the kitchen.&nbsp; Power on the system and use the arrow keys to adjust temperature.&nbsp; For heating, set the mode to the &quot;sun&quot; symbol and for cooling, set the mode to the &quot;snowflake&quot; symbol.&nbsp; There is air conditioning in the master bedroom.&nbsp; Control for the AC are on the wall near the bathroom.</p>\r\n\r\n<p><strong>INTERNET:</strong>&nbsp; The network name is The Rock and password&nbsp;kjellerik52</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong>&nbsp; These are located in the laundry.</p>\r\n\r\n<p><strong>KITCHEN:</strong>&nbsp;</p>\r\n\r\n<p>MICROWAVE: The microwave may have a safety function which locks any usage. In order use the microwave, press the STOP/RESET&nbsp;button three times. This will unlock the microwave.&nbsp;<br />\r\nType in number of seconds or minutes you want to microwave, then press start.&nbsp;<br />\r\nOVEN: The oven has two individual units. One larger, one smaller.&nbsp;<br />\r\nLARGE OVEN &ndash; Use the left knobs to operate.&nbsp;<br />\r\nSMALL OVEN &ndash; Use the right knobs to operate.<br />\r\nNB: In the case of a power cut and the power returns, you must reboot the oven. This is done by holding in all the buttons by the knobs at the same time for three seconds.&nbsp;</p>\r\n\r\n<p><strong>LAUNDRY:</strong> There is a washing machine and dryer in the laundry.&nbsp; Please use only eco products in the washing machine.</p>\r\n\r\n<p><strong>LEFT accommodation:&nbsp;</strong> UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS.&nbsp; Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days.&nbsp; Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>LOUVER SHADE:</strong>&nbsp; Use the remote marked &quot;LOUVER&quot; to operate the louver shade on the front patio.&nbsp; This is kept in the second drawer down below BOSE speaker in the kitchen.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>NOISE:</strong>&nbsp; This accommodation is in a residential area and noise should be kept to a minimum.&nbsp; Music needs to turned off or down by 11pm at night.&nbsp; We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>OUTSIDE SHOWER:</strong> There is an outside shower by the guest house which is great for washing off sand after a day at the beach.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong>&nbsp; Power outages on Waiheke are rare but do occur on occasion.&nbsp; You will find a torch in the laundry.&nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; Rubbish collection day for Serenity is a Tuesday. If you are staying on a Tuesday, please place your rubbish in a red council rubbish bag and recycles in plastic supermarket bags at the roadside by 7am.&nbsp; The red rubbish bags are in the laundry, back shelf.&nbsp;&nbsp;Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>TELEVISION:&nbsp;</strong>&nbsp;Main lounge: Power on the TV using the Samsung remote and scroll channels using the SKY remote.&nbsp; Ensure TV source (top right button on Samsung remote) is set to source HDMI 1/DVI.&nbsp; &nbsp;The SKY box is located in the left cabinet below the TV.&nbsp; Ensure the SKY box is powered on.</p>\r\n\r\n<p><strong>TELEVISION:</strong> Master bedroom:&nbsp; Power on the TV using the DVT&nbsp;button on the Bang and Olufsen remote.&nbsp; Scroll channels using the SKY remote.&nbsp; You will need to open the cabinet below the TV for the remote to reach the SKY box.</p>\r\n\r\n<p><strong>VEHICLE:</strong>&nbsp; A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure.&nbsp; Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER: </strong>Like all properties on Waiheke we rely on the rain for our water.&nbsp; We ensure there is sufficient water for your stay but please be mindful of how much you use.&nbsp; Please contact the office should you run out of water.&nbsp;</p>', 125, 4),
(6903, '', 125, 12),
(6912, '', 195, 8),
(6913, '', 195, 9),
(6914, '', 195, 10),
(6915, '', 195, 11),
(6916, '<p>Dear Guests,<br />\r\nWelcome to&nbsp;Waiheke&nbsp;Island and to Dreamy Palm Beach located at 6 Hill Road in Palm Beach.</p>\r\n\r\n<p>This book provides information about the accommodation and&nbsp;Waiheke&nbsp;Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything. &nbsp;</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay&nbsp;Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay. &nbsp;The office phone is available between 8:30 am and 5:30 pm.<br />\r\nAfter hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 195, 1),
(6917, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. &nbsp;On departure we ask that you please action items on the departure checklist, lock all doors and windows and leave the key in the lock box. &nbsp;The lock box is&nbsp;mounted to the post by the front door. &nbsp;The code is 64305.</p>\r\n\r\n<p>DEPARTURE CHECKLIST: We would appreciate if you could check the following prior to your departure.</p>\r\n\r\n<p>Dishes have been washed and put away.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 195, 3),
(6918, '<p><strong>BEACH:</strong>&nbsp;Palm Beach is a short walk from the house. &nbsp;To get to the beach, head out the drive to the right. &nbsp;At the bottom of the hill (opposite the dairy), you&#39;ll see the path to the beach on the right.&nbsp;</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING: </strong>Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>COASTERS ON TABLES:</strong> Please use coasters under drinks and hot mats under pots on the tables.</p>\r\n\r\n<p><strong>DRINKING WATER</strong>: All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>ELECTRICITY and POWER OUTAGE:</strong> The fuse box is&nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the wooden cupboard to the left of the stove.. &nbsp;To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>FIRST AID:</strong> &nbsp;This is located in the cabinet to the right of microwave.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER:</strong>&nbsp;This is located to the right of the microwave.</p>\r\n\r\n<p><strong>FIREPLACE: </strong>&nbsp;The fire is gas. &nbsp;The remote for the fire is mounted on the wall by the firebox.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> &nbsp;There are hairdryers&nbsp;located in each&nbsp;bathroom vanity drawer.</p>\r\n\r\n<p><strong>HEATING AND A/C:</strong> &nbsp;In addition to the&nbsp;fire, there is a heat pump in the lounge. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>INTERNET: </strong>&nbsp;The network name is Spark-B315-21EB. &nbsp;The password&nbsp;3YDAMF33Q14</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD: </strong>These are located in the laundry.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> &nbsp;The washing machine is small capacity. &nbsp;Use 30 minute quick wash and please do not overload.</p>\r\n\r\n<p><strong>LEFT accommodation: </strong>&nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE: </strong>&nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>RUBBISH: </strong>&nbsp;Rubbish collection day for Dreamy Palm Beach is Wednesday. &nbsp;If you are staying on a Wednesday, please place your rubbish and recycles in bins provided at the roadside by 7am. Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.</p>\r\n\r\n<p><strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA:</strong> &nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island.</p>\r\n\r\n<p><strong>TELEVISION/CD/STEREO:</strong> &nbsp;See detailed instructions left by the TV. &nbsp;Power on the TV using the Samsung TV remote. &nbsp;Power on the SAT box using the SAT remote. &nbsp;&nbsp; Use the SAT remote to scroll channels. Make sure source is on AV1&nbsp;to watch TV.</p>\r\n\r\n<p><strong>VEHICLE:</strong> &nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>', 195, 4),
(6919, '', 195, 12),
(6925, '', 101, 8),
(6926, '', 101, 9),
(6927, '', 101, 10),
(6928, '', 101, 11),
(6929, '', 101, 12),
(6935, '', 19, 8),
(6936, '', 19, 9),
(6937, '', 19, 10),
(6938, '', 19, 11),
(6939, '', 19, 12),
(6940, '', 57, 8),
(6941, '', 57, 9),
(6942, '', 57, 10),
(6943, '', 57, 11),
(6944, '', 57, 12),
(6945, '', 80, 8),
(6946, '', 80, 9),
(6947, '', 80, 10),
(6948, '', 80, 11),
(6949, '<p>Dear Guests,</p>\r\n\r\n<p>Welcome to Waiheke Island and to Villa Rangihoua&nbsp;located at 1B O&#39;Brien Road, Rocky Bay.</p>\r\n\r\n<p>This book provides information about the accommodation and Waiheke Island that we hope will ensure your stay here with us is an enjoyable one. We are always just a phone call away however, so please do give us a call if we can help with anything.</p>\r\n\r\n<p>Thank you and have a wonderful stay,<br />\r\nErin Andrews, Kim Rae and the team at Stay Waiheke</p>\r\n\r\n<p>Ph: 09 372 5402 or 021 563 271 if you need any assistance during your stay.<br />\r\nThe office phone is available between 8:30 am and 5:30 pm.</p>\r\n\r\n<p>After hours assistance in case of emergency only is available for guests in residence on 021 391 057.</p>', 80, 1),
(6950, '<p>Check in is from 2pm and we ask that you check out of this accommodation before 10:30 on the day of your departure. On departure we ask that you please action items on the departure checklist, leave keys on the entrance table and door unlocked.</p>\r\n\r\n<p><strong>&nbsp;We would appreciate if you could check the following prior to your departure.</strong></p>\r\n\r\n<p>Dishes have been washed and put away or placed in the dishwasher and dishwasher turned on.<br />\r\nOven and/or BBQ&rsquo;s are cleaned.<br />\r\nRubbish has been left as per accommodation instructions.<br />\r\nUsed towels have been placed in the shower or bathtub.<br />\r\nHeaters have been switched off.<br />\r\nTV/entertainment cables and connections are left as found.<br />\r\nLights are switched off.<br />\r\nWindows and doors are closed and secured/locked.<br />\r\naccommodation is left generally as found.</p>', 80, 3),
(6951, '<p><strong>BEACH:</strong>&nbsp;Onetangi beach is the closest white sandy beach to the house. &nbsp;To get to Onetangi&nbsp;beach, turn right out of the drive and follow the road to the end. &nbsp;Take a right onto Onetangi&nbsp;road and continue to the beach. &nbsp;To get to Rocky Bay beach, turn left out of the drive and continue on O&#39;Brien Road to the beach.</p>\r\n\r\n<p><strong>BBQ:</strong> A gas BBQ is there for you to use. &nbsp;We ask that you please ensure the BBQ is left clean and ready to use for the next guests. &nbsp;A $50 charge will be applied if the BBQ is left dirty.&nbsp;</p>\r\n\r\n<p><strong>CLEANING:</strong> Cleaning is included in your rate, however, we ask that the accommodation is generally left as found. &nbsp;Excess cleaning will be charged if the accommodation is not left in a tidy condition.&nbsp;</p>\r\n\r\n<p><strong>DRINKING WATER:</strong> All properties on Waiheke run off tank water which is safe to drink.</p>\r\n\r\n<p><strong>FIRST AID: &nbsp;</strong>A first aid kit is located in the kitchen pantry.</p>\r\n\r\n<p><strong>FIRE EXTINGUISHER</strong>:? The fire extinguisher is located in the kitchen pantry.</p>\r\n\r\n<p><strong>FIREPLACE: </strong>&nbsp;You will find wood/kindling for the fire outside the door and to the left side of the house. &nbsp;Please leave any ash from the fire in the fireplace.</p>\r\n\r\n<p><strong>GARDEN:</strong> &nbsp;The garden is maintained on a regular basis. &nbsp;If the gardener arrives during your stay, we apologise for any inconvenience.</p>\r\n\r\n<p><strong>EMERGENCY:</strong> In an emergency, dial 111. The loud air siren is a call for our local fire department (do not worry).</p>\r\n\r\n<p><strong>HAIR DRYER:</strong> &nbsp;You will find a hairdryer in each bathroom.</p>\r\n\r\n<p><strong>HEATING:</strong> &nbsp;In addition to the fire, there is underfloor heating in each bathroom and in the kitchen. &nbsp;There are space heaters located around the house.</p>\r\n\r\n<p><strong>INTERNET: </strong>&nbsp;The wifi password is frantoio</p>\r\n\r\n<p><strong>IRON &amp; IRONING BOARD:</strong> &nbsp;The iron/ironing board are in the laundry.</p>\r\n\r\n<p><strong>LAUNDRY:</strong> &nbsp;The laundry is located in the garage. &nbsp;There is a cloths horse in the laundry and a cloths line located to teh right of the garage.</p>\r\n\r\n<p><strong>LEFT accommodation:</strong> &nbsp;UPON DEPARTURE, PLEASE REMEMBER TO CHECK FOR PERSONAL BELONGINGS. &nbsp;Personal items left behind at the at the accommodation will be held by Stay Waiheke for 30 days. &nbsp;Please contact Stay Waiheke within 30 days of departure if you would like items returned. An administration fee of $25.00 plus the cost of postage and packaging will be charged for shipping and handling.</p>\r\n\r\n<p><strong>NOISE:</strong> &nbsp;This accommodation is in a residential area and noise should be kept to a minimum. &nbsp;Music needs to turned off or down by 11pm at night. &nbsp;We do have an active noise control officer on the island.</p>\r\n\r\n<p><strong>POWER OUTAGE:</strong> &nbsp;Power outages on Waiheke are rare but do occur on occasion. &nbsp;You will find a torch in the kitchen pantry. To confirm an outage in your area and determine estimated time of repair, you can contact Vector Outages on 0508 832 867.</p>\r\n\r\n<p><strong>RUBBISH:</strong>&nbsp; There are rubbish and recycling bins in the garage. &nbsp;Please separate rubbish and recycles and leave in the garage.&nbsp;Waiheke Island transfer station is located at 102 Ostend Road. The transfer station accepts household rubbish in red rubbish bags. There are also rubbish and recycle bins in the car park at both ferries.<br />\r\n&nbsp;<br />\r\n<strong>SEPTIC SYSTEM:</strong> The house has a septic system so no toiletries etc to be flushed down the toilet.</p>\r\n\r\n<p><strong>SMOKING:</strong> This is a smoke free home. &nbsp;</p>\r\n\r\n<p><strong>SUN UMBRELLA</strong>: &nbsp;Please ensure the sun umbrella is left down when not in use as high winds can be an issue on the island. &nbsp;</p>\r\n\r\n<p><strong>VEHICLE: </strong>&nbsp;A vehicle is available to hire with this accommodation and can be left at the ferry or airport upon departure. &nbsp;Please contact our office or view online www.staywaiheke.com/rentalcars for rates and availability.</p>\r\n\r\n<p><strong>WATER: </strong>Like all properties on Waiheke we rely on the rain for our water. &nbsp;We ensure there is sufficient water for your stay but please be mindful of how much you use. &nbsp;Please contact the office should you run out of water.&nbsp;</p>', 80, 4),
(6952, '<p><a href=\"https://goo.gl/maps/cUDDBp6i9Nu\">https://goo.gl/maps/cUDDBp6i9Nu</a></p>', 80, 12),
(6968, '', 1, 1),
(6969, '', 1, 8),
(6970, '', 1, 9),
(6971, '', 1, 10),
(6972, '', 1, 11),
(6973, '<p>Pinal test</p>', 1, 16),
(6974, '<p>this is arrival information</p>', 1, 2),
(6975, '<p>this is Departure check list</p>', 1, 3),
(6976, '<p>House Information</p>', 1, 4),
(6977, '<p>Location Map</p>', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `accom_feature`
--

CREATE TABLE `accom_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accom_feature`
--

INSERT INTO `accom_feature` (`id`, `name`, `status`, `rank`) VALUES
(1, 'Air Conditioning', 'A', 1),
(2, 'DVD Player', 'A', 2),
(3, 'Sky Channels', 'A', 3),
(4, 'Microwave', 'A', 4),
(5, 'Toaster', 'A', 5),
(6, 'Refrigerator', 'A', 6),
(7, 'Stereo', 'A', 7),
(8, 'Outdoor Table and Chairs', 'A', 8),
(9, 'Dining Table and Chairs', 'A', 9),
(10, '1 x Queen-Sized Bed', 'A', 19),
(11, '1 x Single bed', 'A', 18),
(12, 'Single Fold out Couch', 'A', 17),
(13, 'Double Glazed Windows', 'A', 16),
(14, 'Carpet Throughout', 'A', 15),
(15, 'Electric Blankets', 'A', 14),
(16, '32\" LCD TV', 'A', 13),
(17, 'Radio Alarm Clock', 'A', 12),
(18, 'Electric Kettle', 'A', 11),
(19, 'Wine Glasses', 'A', 10),
(20, 'Complimentary tea and coffee', 'A', 20),
(21, '1 x Double Fold Out Couch', 'A', 21),
(22, 'Gas Hobs', 'A', 22),
(23, 'Electric fry pan', 'A', 23),
(24, '2 x Single beds', 'A', 24),
(25, 'Heater', 'A', 25),
(26, 'Dual temp fridge/freezer', 'A', 26),
(27, '1 x Single/Double Bunk Set', 'A', 32),
(28, '1 x Single Bunk Set', 'A', 31),
(29, 'Electric heating', 'A', 30),
(30, 'Coffee mugs', 'A', 29),
(31, 'Medium Kitchen Storage', 'A', 28),
(32, 'Small mini fridge', 'A', 27),
(33, 'One parking space per cabin booked.', 'A', 33),
(34, 'Mineral Pools & Swimming Pool (seasonal)', 'A', 39),
(35, 'Internet lounge with comfortable couches', 'A', 38),
(36, 'Communal toilets and showers', 'A', 37),
(37, 'Kitchen/dining rooms (with TV)', 'A', 36),
(38, 'Drive through waste dump', 'A', 35),
(39, 'Fresh Water and picnic tables', 'A', 34),
(40, 'The powered camp sites have electrical hook-up with either hard or grassed surface parking', 'A', 40),
(41, 'Untitled', 'D', 0),
(42, 'Patio & BBQ Area', 'A', 41),
(43, 'Potbelly Stove', 'A', 42),
(44, 'Heat Pump', 'A', 43),
(45, '3 x Single Beds', 'A', 44),
(46, 'Large deck area with BBQ', 'A', 45),
(47, 'Outside, private bath', 'A', 46),
(48, 'Private garden area', 'A', 47),
(49, 'Small kitchen area', 'A', 48),
(50, 'En-suite shower room', 'A', 49),
(51, 'Electric radiator', 'A', 50),
(52, '1 x Queen-Sized Double Bed', 'A', 51),
(53, '1 x King-Sized Bed', 'A', 52),
(54, 'BBQ', 'A', 53),
(55, 'Kitchen Area', 'A', 54),
(56, 'Dishwasher', 'A', 55),
(57, 'Large open plan living/kitchen area', 'A', 56),
(58, 'Untitled', 'A', 67),
(59, 'Leather Lounge Suite', 'A', 66),
(60, 'Flat Screen TV', 'A', 65),
(61, 'Free Wi-Fi', 'A', 64),
(62, 'Ensuite Bathroom', 'A', 63),
(63, 'Tea/Coffee making facilities', 'A', 62),
(64, 'Hairdryer', 'A', 61),
(65, 'Bathrobes', 'A', 60),
(66, 'Iron/Ironing board', 'A', 59),
(67, 'Off Street Parking', 'A', 58),
(68, 'Private Patio', 'A', 57),
(69, 'BBQ', 'A', 68),
(70, 'Testing Feature', 'D', 100);

-- --------------------------------------------------------

--
-- Table structure for table `accom_has_feature`
--

CREATE TABLE `accom_has_feature` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `accom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accom_has_feature`
--

INSERT INTO `accom_has_feature` (`id`, `feature_id`, `accom_id`) VALUES
(1395, 1, 6),
(1396, 2, 6),
(1397, 3, 6),
(1398, 4, 6),
(1399, 5, 6),
(1400, 6, 6),
(1401, 7, 6),
(1402, 8, 6),
(1541, 1, 2),
(1542, 4, 2),
(1543, 32, 2),
(1544, 66, 2),
(1545, 65, 2),
(1546, 61, 2),
(1547, 1, 3),
(1548, 5, 3),
(1549, 9, 3),
(1550, 16, 3),
(1551, 12, 3),
(1552, 21, 3),
(1619, 1, 1),
(1620, 16, 1),
(1621, 20, 1),
(1622, 32, 1),
(1623, 31, 1),
(1624, 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `beamer_campaign`
--

CREATE TABLE `beamer_campaign` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `thumb_photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `preview_note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `terms_and_conditions` text CHARACTER SET utf8 NOT NULL,
  `beamer_phase` enum('D','P') NOT NULL DEFAULT 'D' COMMENT 'D= Draft , P=Published',
  `status` enum('A','D','H') NOT NULL DEFAULT 'H',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_deleted` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beamer_campaign`
--

INSERT INTO `beamer_campaign` (`id`, `name`, `subject`, `heading`, `photo`, `thumb_photo`, `preview_note`, `description`, `terms_and_conditions`, `beamer_phase`, `status`, `date_created`, `date_updated`, `date_deleted`, `created_by`, `updated_by`, `deleted_by`) VALUES
(6, 'Jed Talk: SilverStripe', 'Jed Talk: SilverStripe', 'Jed Talk: SilverStripe', '/library/man-old-fisherman-portrait-53159.jpg', '/uploads/2018/01/img-5a7138c138e87.jpg', 'Jed Talk: SilverStripe', '<p>Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe</p>', '<p>Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe</p>', 'P', 'H', '2018-01-31 03:27:38', '2018-01-31 03:32:17', '0000-00-00 00:00:00', 3, 3, 0),
(7, 'Testing Alpine Campaign', 'Testing Alpine Campaign', 'Testing Alpine Campaign', '/library/pexels-photo-276508.jpg', '/uploads/2018/02/img-5a73b493a4d3f.jpg', 'Testing Alpine Campaign', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mollis leo enim, ac facilisis ex elementum ac. Sed luctus lacinia ultricies. Aenean sed lacus in ipsum ullamcorper rhoncus. Nunc tempus vehicula elit id fringilla. Pellentesque molestie ornare ultrices. Mauris ullamcorper augue quis ipsum feugiat egestas. Quisque lobortis, quam vel tempor finibus, ligula nulla maximus magna, a gravida lectus sem suscipit velit. Nulla vitae est turpis. Proin consequat volutpat libero eget scelerisque. Cras consectetur, justo a commodo consectetur, purus metus viverra nisl, quis tempus mauris sem vel ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse fringilla vestibulum massa, quis ultricies odio lacinia in</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mollis leo enim, ac facilisis ex elementum ac. Sed luctus lacinia ultricies. Aenean sed lacus in ipsum ullamcorper rhoncus. Nunc tempus vehicula elit id fringilla. Pellentesque molestie ornare ultrices. Mauris ullamcorper augue quis ipsum feugiat egestas. Quisque lobortis, quam vel tempor finibus, ligula nulla maximus magna, a gravida lectus sem suscipit velit. Nulla vitae est turpis. Proin consequat volutpat libero eget scelerisque. Cras consectetur, justo a commodo consectetur, purus metus viverra nisl, quis tempus mauris sem vel ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse fringilla vestibulum massa, quis ultricies odio lacinia in</p>', 'P', 'H', '2018-02-01 02:54:30', '2018-02-02 00:45:07', '0000-00-00 00:00:00', 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `beamer_campaign_has_emails`
--

CREATE TABLE `beamer_campaign_has_emails` (
  `beamer_campaign_id` int(11) NOT NULL,
  `beamer_email_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beamer_campaign_has_emails`
--

INSERT INTO `beamer_campaign_has_emails` (`beamer_campaign_id`, `beamer_email_id`) VALUES
(6, 5),
(7, 6),
(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `beamer_campaign_sections`
--

CREATE TABLE `beamer_campaign_sections` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `section_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `beamer_campaign_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beamer_campaign_sections`
--

INSERT INTO `beamer_campaign_sections` (`id`, `heading`, `section_type`, `rank`, `beamer_campaign_id`) VALUES
(31, 'Accommodation', 'accommodations', 0, 6),
(32, 'Blog', 'blogs', 0, 6),
(33, 'Pages', 'pages', 0, 6),
(36, 'Blog', 'blogs', 2, 7),
(37, 'Pages', 'pages', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `beamer_campaign_section_items`
--

CREATE TABLE `beamer_campaign_section_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rank` smallint(6) NOT NULL,
  `beamer_campaign_section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beamer_campaign_section_items`
--

INSERT INTO `beamer_campaign_section_items` (`id`, `item_id`, `rank`, `beamer_campaign_section_id`) VALUES
(87, 1, 1, 31),
(88, 2, 1, 32),
(89, 5, 1, 33),
(96, 2, 1, 36),
(97, 8, 2, 36),
(98, 1, 1, 37),
(99, 2, 2, 37),
(101, 16, 3, 37);

-- --------------------------------------------------------

--
-- Table structure for table `beamer_email`
--

CREATE TABLE `beamer_email` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 NOT NULL,
  `list_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `list_email_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('A','D','H') DEFAULT 'H'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beamer_email`
--

INSERT INTO `beamer_email` (`id`, `name`, `label`, `list_id`, `list_email_address`, `status`) VALUES
(5, 'Test List', 'Test List', '06224f3593', 'us15-ea8041ee8a-54b903437d@inbound.mailchimp.com', 'A'),
(6, 'Newsletter 2', 'Newsletter 2', 'cef75cbd82', 'us15-ea8041ee8a-45837cab1c@inbound.mailchimp.com', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `page_meta_data_id`) VALUES
(2, 19),
(3, 26),
(4, 32),
(5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `date_posted` datetime DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `date_posted`, `page_meta_data_id`) VALUES
(2, '2017-11-16 00:00:00', 20),
(3, '2017-11-04 00:00:00', 24),
(4, '2017-11-01 00:00:00', 27),
(5, '2017-11-02 00:00:00', 28),
(6, '2017-11-04 00:00:00', 29),
(7, '2017-11-05 00:00:00', 30),
(8, '2017-11-06 00:00:00', 31),
(9, NULL, 37);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_has_category`
--

CREATE TABLE `blog_post_has_category` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post_has_category`
--

INSERT INTO `blog_post_has_category` (`category_id`, `post_id`) VALUES
(2, 7),
(3, 7),
(2, 6),
(3, 6),
(2, 5),
(3, 5),
(2, 4),
(3, 4),
(2, 3),
(3, 3),
(2, 2),
(3, 2),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cms_accessgroups`
--

CREATE TABLE `cms_accessgroups` (
  `access_id` int(11) NOT NULL,
  `access_name` varchar(100) NOT NULL,
  `access_users` char(1) NOT NULL DEFAULT 'N',
  `access_userpasswords` char(1) NOT NULL DEFAULT 'N',
  `access_useraccesslevel` char(1) NOT NULL DEFAULT 'N',
  `access_accessgroups` char(1) NOT NULL DEFAULT 'N',
  `access_cmssettings` char(1) NOT NULL DEFAULT 'N',
  `access_settings` char(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_accessgroups`
--

INSERT INTO `cms_accessgroups` (`access_id`, `access_name`, `access_users`, `access_userpasswords`, `access_useraccesslevel`, `access_accessgroups`, `access_cmssettings`, `access_settings`) VALUES
(1, 'Super Administrator', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(2, 'General Editor', 'Y', 'Y', 'N', 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `cms_blacklist_user`
--

CREATE TABLE `cms_blacklist_user` (
  `id` int(11) NOT NULL,
  `first_failed_attempt_on` datetime DEFAULT NULL,
  `failed_login_attempt_count` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `disabled_on` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `recent_login_attempt_on` datetime DEFAULT NULL,
  `failed_hour_count` int(11) NOT NULL,
  `total_failed_attempt` int(11) NOT NULL,
  `is_notified` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_blacklist_user`
--

INSERT INTO `cms_blacklist_user` (`id`, `first_failed_attempt_on`, `failed_login_attempt_count`, `date_updated`, `is_disabled`, `disabled_on`, `username`, `recent_login_attempt_on`, `failed_hour_count`, `total_failed_attempt`, `is_notified`, `ip_address`) VALUES
(1, '2018-01-25 03:34:55', 1, '2018-01-25 03:34:55', 0, NULL, 'thawktesting@dispotable.com', '2018-01-25 03:34:55', 0, 1, 0, '114.23.241.67');

-- --------------------------------------------------------

--
-- Table structure for table `cms_login_attempt`
--

CREATE TABLE `cms_login_attempt` (
  `id` int(11) NOT NULL,
  `username` tinyblob NOT NULL,
  `access_key` tinyblob,
  `is_successful` enum('N','Y') NOT NULL DEFAULT 'N',
  `ip_address` varchar(255) NOT NULL,
  `record_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_login_attempt`
--

INSERT INTO `cms_login_attempt` (`id`, `username`, `access_key`, `is_successful`, `ip_address`, `record_date`) VALUES
(1, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-07-21 16:32:05'),
(2, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-07-22 08:45:25'),
(3, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-11-14 12:02:00'),
(4, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-12-05 13:12:05'),
(5, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-12-06 09:38:02'),
(6, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-12-07 08:49:19'),
(7, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2016-12-08 09:43:35'),
(8, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-12 23:18:58'),
(9, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0x4920b59293d616fc25d4e051da4a0204, 'N', '127.0.0.1', '2017-06-13 22:50:22'),
(10, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-13 22:50:27'),
(11, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-14 04:20:59'),
(12, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-14 23:01:05'),
(13, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-15 23:51:40'),
(14, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-18 23:55:42'),
(15, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-06-19 23:21:52'),
(16, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-20 01:45:46'),
(17, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-20 23:31:19'),
(18, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-22 02:30:17'),
(19, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '222.152.160.20', '2017-06-23 03:25:18'),
(20, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '222.152.160.20', '2017-06-23 03:30:04'),
(21, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-26 00:34:42'),
(22, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-26 04:43:11'),
(23, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-27 22:26:22'),
(24, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '222.152.162.134', '2017-06-28 10:57:51'),
(25, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '222.152.162.134', '2017-06-28 10:57:58'),
(26, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-29 22:50:06'),
(27, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-06-29 23:51:26'),
(28, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-07-02 22:41:48'),
(29, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-07-03 22:11:37'),
(30, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-04 03:39:12'),
(31, 0x29505cdc40b4e04adb350f293f68e4c7bc3037c90d5b5e99114166e7ba233eb8, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '125.236.169.220', '2017-08-08 22:08:29'),
(32, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-09 00:20:10'),
(33, 0x29505cdc40b4e04adb350f293f68e4c7bc3037c90d5b5e99114166e7ba233eb8, 0xd43f2fdb462f5fbadec8ff450dc1dfd0, 'N', '125.236.169.220', '2017-08-09 00:50:50'),
(34, 0x29505cdc40b4e04adb350f293f68e4c7bc3037c90d5b5e99114166e7ba233eb8, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '125.236.169.220', '2017-08-09 00:51:02'),
(35, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '122.62.205.56', '2017-08-10 01:29:38'),
(36, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '122.62.205.56', '2017-08-21 05:02:55'),
(37, 0x29505cdc40b4e04adb350f293f68e4c7bc3037c90d5b5e99114166e7ba233eb8, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '125.236.183.124', '2017-08-21 09:25:30'),
(38, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-21 22:31:26'),
(39, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-22 02:51:29'),
(40, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-23 02:10:27'),
(41, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-08-23 21:46:41'),
(42, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.19', '2017-08-24 00:00:23'),
(43, 0x38351eda600812770b701eb862acd5766c6443a22dfc066e3fb777be8d34e474, 0xf868714787e9098521f5948c5916068d, 'N', '108.162.249.193', '2017-08-27 21:32:42'),
(44, 0x29505cdc40b4e04adb350f293f68e4c7bc3037c90d5b5e99114166e7ba233eb8, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '108.162.249.193', '2017-08-27 21:33:32'),
(45, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '198.41.238.31', '2017-08-31 00:01:01'),
(46, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-08-31 00:02:16'),
(47, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-08-31 01:01:23'),
(48, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x347b2dbde5b5115f62c792135d2cd851, 'N', '198.41.238.31', '2017-09-04 05:28:57'),
(49, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-09-12 03:45:34'),
(50, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-09-15 02:55:59'),
(51, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-09-27 03:01:20'),
(52, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-09-28 20:00:44'),
(53, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-12 01:04:08'),
(54, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-12 01:12:33'),
(55, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-12 01:12:41'),
(56, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-18 01:32:43'),
(57, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-18 01:32:52'),
(58, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-19 19:57:58'),
(59, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-19 19:58:10'),
(60, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-19 20:02:33'),
(61, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-19 20:02:38'),
(62, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-19 23:26:24'),
(63, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-19 23:26:29'),
(64, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-19 23:27:44'),
(65, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '198.41.238.31', '2017-10-19 23:29:08'),
(66, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-20 01:56:06'),
(67, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '198.41.238.31', '2017-10-30 01:01:07'),
(68, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-10-31 02:51:40'),
(69, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-10-31 02:52:22'),
(70, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-10-31 02:54:48'),
(71, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0x1984a4972fdc1a14f0c24e21dc3a66d9ab29fbee0fcaed127e5cbc85753a9dca, 'N', '127.0.0.1', '2017-10-31 22:18:49'),
(72, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-01 02:53:07'),
(73, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-01 02:56:12'),
(74, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-01 03:05:52'),
(75, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-06 05:06:56'),
(76, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-06 05:07:01'),
(77, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0x5937a3c68ce2cb76f9249f5af2acdc00, 'N', '127.0.0.1', '2017-11-06 05:07:06'),
(78, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-06 05:07:15'),
(79, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0x5937a3c68ce2cb76f9249f5af2acdc00, 'N', '127.0.0.1', '2017-11-06 05:08:31'),
(80, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-06 05:08:44'),
(81, 0x384d916b20cb4d11ea9ae333f3c7ec344b2794194bddc36b9043b9218e619d96, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-07 04:29:03'),
(82, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:39:52'),
(83, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:40:07'),
(84, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:40:18'),
(85, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:40:50'),
(86, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:42:53'),
(87, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:46:23'),
(88, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 02:51:09'),
(89, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-08 02:51:29'),
(90, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 03:02:17'),
(91, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 03:02:26'),
(92, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '127.0.0.1', '2017-11-08 03:03:03'),
(93, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-15 19:54:34'),
(94, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-16 00:28:41'),
(95, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-16 01:39:30'),
(96, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-16 02:25:06'),
(97, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-17 01:47:26'),
(98, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '127.0.0.1', '2017-11-21 01:30:47'),
(99, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 00:15:19'),
(100, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 00:42:31'),
(101, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 01:18:30'),
(102, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 01:19:56'),
(103, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 01:20:55'),
(104, 0xbec809a2f36bd0e1b234410e3f946ed506b1e4eba4f95280a1137a1a98b5efaf, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 01:31:59'),
(105, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 01:45:01'),
(106, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-22 23:02:43'),
(107, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-23 00:11:22'),
(108, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-23 00:50:32'),
(109, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-23 01:58:24'),
(110, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-23 19:50:23'),
(111, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-23 21:05:45'),
(112, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '58.28.154.63', '2017-11-26 12:39:00'),
(113, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-26 19:43:26'),
(114, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-27 00:43:01'),
(115, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-27 20:07:29'),
(116, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-27 20:32:18'),
(117, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-28 02:42:11'),
(118, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-28 02:44:38'),
(119, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-28 19:57:23'),
(120, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-28 21:15:21'),
(121, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-29 21:38:43'),
(122, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-11-30 02:38:56'),
(123, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-01 04:01:52'),
(124, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-05 02:58:09'),
(125, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-05 23:21:15'),
(126, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xb302bf258461d616ca97c49483aaaa8a, 'N', '114.23.241.67', '2017-12-05 23:26:23'),
(127, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xb302bf258461d616ca97c49483aaaa8a, 'N', '114.23.241.67', '2017-12-05 23:27:10'),
(128, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xb302bf258461d616ca97c49483aaaa8a, 'N', '114.23.241.67', '2017-12-05 23:27:22'),
(129, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xb302bf258461d616ca97c49483aaaa8a, 'N', '114.23.241.67', '2017-12-05 23:27:43'),
(130, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-05 23:28:26'),
(131, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '114.23.241.67', '2017-12-07 01:01:07'),
(132, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-07 01:01:19'),
(133, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-07 21:29:37'),
(134, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-11 22:26:07'),
(135, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-11 22:46:59'),
(136, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-13 00:56:30'),
(137, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-13 21:34:50'),
(138, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-15 00:50:26'),
(139, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-19 23:13:55'),
(140, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-20 20:52:53'),
(141, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-20 22:43:11'),
(142, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-21 00:00:54'),
(143, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2017-12-21 02:43:26'),
(144, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-02 20:03:46'),
(145, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-03 00:27:43'),
(146, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-03 01:44:30'),
(147, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-04 20:27:14'),
(148, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-04 21:12:17'),
(149, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-05 01:01:21'),
(150, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-07 21:05:01'),
(151, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-08 00:18:53'),
(152, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-09 21:52:38'),
(153, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-10 19:44:43'),
(154, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-16 03:24:46'),
(155, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-16 23:17:44'),
(156, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-17 00:41:06'),
(157, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-18 00:43:00'),
(158, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-18 01:04:13'),
(159, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-19 00:53:43'),
(160, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-22 03:12:32'),
(161, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-22 03:49:17'),
(162, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-22 20:23:28'),
(163, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-22 20:42:22'),
(164, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-22 21:59:57'),
(165, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-23 01:18:02'),
(166, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-23 02:05:06'),
(167, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-24 00:00:32'),
(168, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-24 22:01:53'),
(169, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-24 23:15:55'),
(170, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-24 23:21:52'),
(171, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 02:16:47'),
(172, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 03:19:21'),
(173, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 03:22:37'),
(174, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 03:30:09'),
(175, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 03:34:05'),
(176, 0xafc4ba37d23b52cd44e2ce21a511c0c59bda307d51dad03f66c834c4ac45ba60, 0x0786fd2e225e979b76bfd6e404b9ee64, 'N', '114.23.241.67', '2018-01-25 03:34:55'),
(177, 0xafc4ba37d23b52cd44e2ce21a511c0c5891f229dac2dc152633d064ed74a4baa, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 03:35:14'),
(178, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 20:46:55'),
(179, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 21:48:57'),
(180, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-25 22:11:56'),
(181, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-26 00:58:13'),
(182, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-26 01:34:46'),
(183, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-26 01:53:23'),
(184, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-26 02:17:27'),
(185, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '114.23.241.67', '2018-01-30 02:26:48'),
(186, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '114.23.241.67', '2018-01-30 02:26:51'),
(187, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '114.23.241.67', '2018-01-30 02:26:52'),
(188, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xf31031b3fb3ead91fd4e1cf2e408144e, 'N', '114.23.241.67', '2018-01-30 02:26:53'),
(189, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-30 20:13:35'),
(190, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-30 20:24:26'),
(191, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-31 02:49:46'),
(192, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-31 02:54:28'),
(193, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-31 20:39:05'),
(194, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-01-31 21:03:02'),
(195, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 00:06:01'),
(196, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 00:15:08'),
(197, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 00:17:30'),
(198, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 00:21:29'),
(199, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 01:18:28'),
(200, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 02:49:47'),
(201, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 03:13:36'),
(202, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 20:33:59'),
(203, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-01 21:32:18'),
(204, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-02 00:42:19'),
(205, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-02 01:31:59'),
(206, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-06 23:54:23'),
(207, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-07 20:01:40'),
(208, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-07 20:53:04'),
(209, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-08 01:23:15'),
(210, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-08 02:08:40'),
(211, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-08 02:12:33'),
(212, 0x5dd946d64029d62ed5093f93efcdf8b8cc7e05bda8449e6e9e93f94d12b2356b, 0xab29fbee0fcaed127e5cbc85753a9dca, 'Y', '114.23.241.67', '2018-02-08 20:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `cmsset_id` int(11) NOT NULL,
  `cmsset_name` varchar(100) NOT NULL,
  `cmsset_label` varchar(50) NOT NULL,
  `cmsset_explanation` varchar(255) NOT NULL,
  `cmsset_status` char(1) NOT NULL DEFAULT 'I',
  `cmsset_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`cmsset_id`, `cmsset_name`, `cmsset_label`, `cmsset_explanation`, `cmsset_status`, `cmsset_value`) VALUES
(10, 'pages_maximum', 'Page Limit', '', 'I', '12'),
(2, 'pages_generations', 'Page Generation Limit', 'The number of levels of children pages that are allowed to be made.', 'A', '5');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL COMMENT 'Primary key for user',
  `user_fname` varchar(45) DEFAULT NULL COMMENT 'User''s firstname',
  `user_lname` varchar(45) DEFAULT NULL COMMENT 'User''s lastname',
  `user_pass` varchar(255) DEFAULT NULL COMMENT 'User''s password (recommended as being sha256)',
  `user_email` varchar(100) DEFAULT NULL COMMENT 'User''s email address',
  `user_photo_path` varchar(255) DEFAULT NULL,
  `user_thumb_path` varchar(255) DEFAULT NULL,
  `user_introduction` mediumtext,
  `social_links` mediumtext,
  `last_login_date` datetime DEFAULT NULL,
  `access_id` int(11) DEFAULT '1' COMMENT 'User''s rights - whether they are admin, banned, general user etc. This is totally customisable and is up to the programmer.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `user_fname`, `user_lname`, `user_pass`, `user_email`, `user_photo_path`, `user_thumb_path`, `user_introduction`, `social_links`, `last_login_date`, `access_id`) VALUES
(3, 'Test', 'User', '9bc129f7a46381be15f1329c4479e02c70d10d19', 'support@tomahawk.co.nz', NULL, NULL, NULL, NULL, '2018-02-08 20:10:11', 1),
(6, 'Test', 'Test', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'thawktesting@dispostable.com', NULL, NULL, NULL, NULL, '2018-01-25 03:35:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `color_palettes`
--

CREATE TABLE `color_palettes` (
  `color_palette_id` smallint(5) UNSIGNED NOT NULL,
  `color_palette_name` varchar(100) NOT NULL,
  `color_palette_path` varchar(255) NOT NULL,
  `color_palette_cms_preview_thumb_path` varchar(255) NOT NULL,
  `color_palette_ref` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color_palettes`
--

INSERT INTO `color_palettes` (`color_palette_id`, `color_palette_name`, `color_palette_path`, `color_palette_cms_preview_thumb_path`, `color_palette_ref`) VALUES
(1, 'palette1', '/themes/palette1/assets/css/main.css', '/images/color-palette-previews/palette1.jpg', 'palette1'),
(2, 'palette2', '/themes/palette2/assets/css/main.css', '/images/color-palette-previews/palette2.jpg', 'palette2'),
(3, 'palette3', '/themes/palette3/assets/css/main.css', '/images/color-palette-previews/palette3.jpg', 'palette3');

-- --------------------------------------------------------

--
-- Table structure for table `color_palette_hex`
--

CREATE TABLE `color_palette_hex` (
  `id` int(11) NOT NULL,
  `primary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `secondary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color1` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color2` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color3` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color_palette_hex`
--

INSERT INTO `color_palette_hex` (`id`, `primary_color`, `secondary_color`, `color1`, `color2`, `color3`) VALUES
(1, '#997c2e', '#535353', '#514422', '#EAEBEC', '#FCFCFC'),
(2, '#2b547d', '#45484F', '#132132', '#EAEBEC', '#FCFCFC'),
(3, '#335e16', '#80878D', '#153727', '#D5D5D5', '#F4F4F4');

-- --------------------------------------------------------

--
-- Table structure for table `compendium_section`
--

CREATE TABLE `compendium_section` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL,
  `is_generic` enum('0','1') NOT NULL DEFAULT '0',
  `has_dark_bg` enum('0','1') NOT NULL DEFAULT '0',
  `is_map` enum('0','1') NOT NULL DEFAULT '0',
  `default_content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compendium_section`
--

INSERT INTO `compendium_section` (`id`, `icon`, `heading`, `status`, `rank`, `is_generic`, `has_dark_bg`, `is_map`, `default_content`) VALUES
(1, 'fa fa-info-circle', 'Welcome', 'A', 1, '1', '1', '', '<p>Flag: Generic</p>\r\n\r\n<p>- Welcome -</p>'),
(2, 'fa fa-clock-o', 'Arrival Information', 'A', 2, '', '1', '', '<p>Flag: Accommodation</p>\r\n\r\n<p>- Arrival Information -</p>'),
(3, 'fa fa-check', 'Departure Checklist', 'A', 3, '', '1', '', ''),
(4, 'fa fa-home', 'House Information', 'A', 4, '', '0', '0', ''),
(8, 'fa fa-ship', 'About Waiheke', 'A', 6, '1', '', '', '<p><strong>About Waiheke </strong></p>\r\n\r\n<p>Waiheke Island is known internationally as one of the most beautiful islands in the world. Just 35 minutes from downtown Auckland, Waiheke is often referred to as the Jewel in the Hauraki Gulf, and is an island of unique landscapes from beaches to rolling vineyards, diverse people from around the world, and an ever expanding selection of great wine and good food.&nbsp;</p>\r\n\r\n<p><strong>Beaches</strong><br />\r\nThere are five glorious white sand beaches on the north side of the island to choose from &ndash; Oneroa, Little Oneroa, Sandy Bay, Palm Beach and Onetangi Beach.&nbsp;</p>\r\n\r\n<p>The southern side beaches include Surfdale, Blackpool and Rocky Bay, and the Eastern side of the island is the shell covered beach at Whakanewha Regional Park &ndash; the perfect spot for a kayak and also where the camping ground is located.</p>\r\n\r\n<p>Man O&rsquo;War Bay at the &ldquo;bottom end&rdquo; is also well worth a visit (if you have a car) for some wine tasting at the renowned Man O&rsquo; War Vineyards tasting room right on the beach.</p>\r\n\r\n<p><strong>Geography</strong><br />\r\nThe island is 19.3 km long from west to east and varies in width from half a kilomter to 10 kilometers, and has a surface area of 92 km&sup2;. The coastline is 133.5 km, including 40 km of beaches. It is very hilly with few flat areas, the highest point being Maunganui at 231 metres. The climate is slightly warmer than Auckland with less humidity and rain and more sunshine hours.</p>\r\n\r\n<p>Townships<br />\r\nâ—&nbsp;&nbsp; &nbsp;Oneroa<br />\r\nâ—&nbsp;&nbsp; &nbsp;Surfdale<br />\r\nâ—&nbsp;&nbsp; &nbsp;Onetangi<br />\r\nâ—&nbsp;&nbsp; &nbsp;Rocky Bay</p>\r\n\r\n<p><strong>History</strong><br />\r\nVisit the Stony Batter WWII fortifications, which were built to keep the Japanese forces out. Open to the public they offer both an insight to the extent of defence preparations and wonderful views of the southern end of the Hauraki Gulf. Waiheke was discovered and settled by Maori approximately 1000 years ago and many signs of Maori occupation on Waiheke Island still exist today. Archaeological sites are scattered over the island including more than forty pa sites, cooking pits and terraced areas.</p>\r\n\r\n<p><strong>Viticulture</strong><br />\r\nWinegrowers have successfully matched the unique maritime climate and ancient soil structures to the selection of classical grape varieties in order to produce red and white wines with distinctive varietal character. There are over 20 wineries on the island, and during the summer months most have their cellar doors open to the public. You can visit most wineries via an organised tour, self-drive tour or hop on a many of the local buses.</p>\r\n\r\n<p><strong>Walks or Hiking</strong><br />\r\nOver 8 marked walks ranging in difficulty cross Waiheke with routes suitable for the very fit as well as easier routes for those just out for a stroll. Walkway maps can be found at the i-Site information center in Oneroa.</p>\r\n\r\n<p><strong>Birdlife on the island</strong><br />\r\nThere is a successful dotterel breeding programme, oystercatchers (torea-pango), white-faced heron (matukumoana), pied stilts (poaka), Caspian terns (Taranui), paradise ducks (putangitangi) are all found around the island Godwits (kuaka) are also sometimes spotted on the tidal flats while on the south side of the island where a large wetland is home to bittern (matuku), banded rail (mohopereru) and spotless crake (puweto).</p>\r\n\r\n<p><strong>Native bush</strong><br />\r\nWaiheke Island carefully guards it&rsquo;s status as a possum free island. The absence of these pests means forests and wildlife are allowed to thrive.</p>\r\n\r\n<p><strong>Visiting New Zealand</strong><br />\r\nIf it&rsquo;s your first time in New Zealand be sure to check out the 100% Pure New Zealand page for facts about travelling in New Zealand.</p>'),
(9, 'fa fa-list', 'Waiheke Services', 'A', 7, '1', '', '', '<p><strong>Waiheke Services </strong></p>\r\n\r\n<p><strong>Art galleries</strong></p>\r\n\r\n<p>Waiheke Community Art Gallery<br />\r\n2 Korora Road, Oneroa<br />\r\n93729907</p>\r\n\r\n<p>Toi Gallery<br />\r\n145 Ocean View Road, Oneroa<br />\r\n027 7732975</p>\r\n\r\n<p>Red Shed<br />\r\nMiro Road, Palm Beach<br />\r\n09 3729367</p>\r\n\r\n<p>Banks/ATMs</p>\r\n\r\n<p>ANZ<br />\r\n112 Ocean View Road, Oneroa</p>\r\n\r\n<p>ASB<br />\r\n120 Ocean View Road, Oneroa</p>\r\n\r\n<p>BNZ<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>Kiwibank<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>BBQs (public)</p>\r\n\r\n<p>There are free public BBQs located at beaches around the island.<br />\r\nLittle Oneroa, Palm Beach, Onetangi, Man O War Bay, Whakanewha Regional Park</p>\r\n\r\n<p>Cinema/Theatre</p>\r\n\r\n<p>Artworks Community Theatre<br />\r\n127 Ocean View Road, Oneroa<br />\r\n09 3722941</p>\r\n\r\n<p>Waiheke Island Cinema<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3724240</p>\r\n\r\n<p>Dentists</p>\r\n\r\n<p>Oneroa Dental Surgery<br />\r\n9/118 Ocean View Road, Oneroa<br />\r\n09 3726849</p>\r\n\r\n<p>Waiheke Dental Centre<br />\r\n2 Putiki Road, Ostend<br />\r\n09 3727422</p>\r\n\r\n<p>DIY/Garden Centre</p>\r\n\r\n<p>Placemakers<br />\r\n102 Ostend Road, Ostend<br />\r\n09 3720060</p>\r\n\r\n<p>Dry cleaning</p>\r\n\r\n<p>Sparkle<br />\r\nBelgium Street, Ostend<br />\r\n09 3728969</p>\r\n\r\n<p>DVD hire</p>\r\n\r\n<p>Video Ezy<br />\r\nOcean View Road, Oneroa<br />\r\n09 3728192</p>\r\n\r\n<p>Emergency services</p>\r\n\r\n<p>Police/Fire/Ambulance<br />\r\n111</p>\r\n\r\n<p>Waiheke Police Station<br />\r\n104 Ocean View Road<br />\r\n09 3721150</p>\r\n\r\n<p>Facsimile service</p>\r\n\r\n<p>Take Note<br />\r\nOcean View Road, Oneroa<br />\r\n09 3727174</p>\r\n\r\n<p>Ferries</p>\r\n\r\n<p>Fullers<br />\r\nMatiatia Ferry Terminal, Ocean View Road, Oneroa<br />\r\n09 3679111</p>\r\n\r\n<p>Sealink<br />\r\nKennedy Point Terminal,Donald Bruce Rd,Surfdale<br />\r\n09 3005900</p>\r\n\r\n<p>Library</p>\r\n\r\n<p>Auckland City Libraries, Waiheke<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3741325</p>\r\n\r\n<p>Market</p>\r\n\r\n<p>Ostend arts, craft and food market is held every Saturday morning 8am 12.30pm</p>\r\n\r\n<p>War Memorial Hall and grounds, Belgium Street, Ostend</p>\r\n\r\n<p>Medical Centres</p>\r\n\r\n<p>Oneroa Accident and Medical Centre<br />\r\n132 Ocean View Road, Oneroa<br />\r\n09 3728756</p>\r\n\r\n<p>Ostend Medical Centre<br />\r\n9 Belgium Street, Ostend<br />\r\n09 3725005</p>'),
(10, 'fa fa-star', 'Complimentary Booking Service', 'A', 8, '1', '', '', '<p><strong>Stay Waiheke Complimentary Booking Service</strong></p>\r\n\r\n<p>Stay Waiheke is pleased to be able to offer a complimentary booking service for a wide range of activities and services on offer including;</p>\r\n\r\n<p>â—&nbsp;&nbsp; &nbsp;Beauty services<br />\r\nâ—&nbsp;&nbsp; &nbsp;Car/scooter/bike rental<br />\r\nâ—&nbsp;&nbsp; &nbsp;Catering<br />\r\nâ—&nbsp;&nbsp; &nbsp;Heli-tours<br />\r\nâ—&nbsp;&nbsp; &nbsp;Mobile massage services<br />\r\nâ—&nbsp;&nbsp; &nbsp;Nanny service/ baby equipment hire<br />\r\nâ—&nbsp;&nbsp; &nbsp;Sightseeing tours<br />\r\nâ—&nbsp;&nbsp; &nbsp;Wine-tasting</p>\r\n\r\n<p>For more information about the activities and services we can organise on your behalf please check out our website <a href=\"http://www.staywaiheke.com\">www.staywaiheke.com</a> or give us a call 09 3725402 or 021 563 271.</p>'),
(11, 'fa fa-file-text-o', 'Terms & Conditions', 'A', 9, '1', '', '', '<p><strong>Terms &amp; Conditions </strong></p>\r\n\r\n<p><strong>Booking Terms:</strong></p>\r\n\r\n<p>Check-In<br />\r\n1.&nbsp;&nbsp; &nbsp;Check in time is from 2pm. There is no guaranteed check in before 2pm.</p>\r\n\r\n<p>Check-Out<br />\r\n1.&nbsp;&nbsp; &nbsp;Check out time is 10.30 or by prior arrangement. &nbsp;The property must be completely vacated by check out time. Failure to comply will incur surcharge.</p>\r\n\r\n<p>Occupancy<br />\r\n1.&nbsp;&nbsp; &nbsp;All properties are let on the understanding that the accommodation is for holiday use only, for the period specified and that no right to remain in the accommodation exists for the applicants or anyone in the applicant&rsquo;s party beyond the specified date and time.<br />\r\n2.&nbsp;&nbsp; &nbsp;At no time during the period of permitted use may the property be occupied overnight by more than the number of people specified on the booking form.(including children &amp; infants)<br />\r\n3.&nbsp;&nbsp; &nbsp;Guests must not sub-let the property nor use it for the purposes other than a holiday house.<br />\r\n4.&nbsp;&nbsp; &nbsp;No caravans, tents or other accommodation will be placed at the property without written permission.</p>\r\n\r\n<p>Pets<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees not to allow any animals on the property without the written consent of &ldquo;STAY Waiheke&rdquo;.<br />\r\n2.&nbsp;&nbsp; &nbsp;a) When animals are allowed on the property, the guest agrees that pets are not to be left unattended inside or outside the property at any time, guests will remove all pet waste from the property and be fully responsible for any damage caused by the pet.</p>\r\n\r\n<p>No Smoking Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;If smoking is allowed on the property, the guest agrees not to smoke inside the property. A breach of this policy will result in a NZ$500 cleaning fee. If smoking outdoors all cigarette butts must be disposed of.<br />\r\nUse of the Telephone<br />\r\n1.&nbsp;&nbsp; &nbsp;Where a telephone is available, the guest will ensure any calls made are &lsquo;collect&rsquo; or &lsquo;price required&rsquo; for anything outside the local calling area. Any costs incurred will be on charged to the guest.</p>\r\n\r\n<p>Linen<br />\r\n1.&nbsp;&nbsp; &nbsp;Where linen is provided by &lsquo;STAY Waiheke&rsquo; this includes bed sheets, pillow cases, bath towels and face cloths per person, hand towels, tea towels and bath mats. Beach or Spa towels are not provided unless stated on the web page for the property.&nbsp;<br />\r\n2.&nbsp;&nbsp; &nbsp;Some property owners store their own linen in the house. This linen is not intended for guest use. An additional charge is applicable if the guests use owner&rsquo;s linen.</p>\r\n\r\n<p>Quiet Enjoyment and Parties<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees to respect the rights of neighbors in regard to noise. &nbsp;Loud music is not permitted after 11pm. &nbsp;Local council noise regulations apply. &nbsp;Absolutely no house parties or &nbsp;weddings or post wedding BBQ&rsquo;s are allowed at the property without advance permission in writing.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Children<br />\r\n1.&nbsp;&nbsp; &nbsp;The guests accept full responsibility for checking with &ldquo;STAY Waiheke&rdquo; as to whether or not the property is, to the best knowledge of &ldquo;STAY Waiheke&rdquo;, safe for children.</p>\r\n\r\n<p>Property Maintenance<br />\r\n1.&nbsp;&nbsp; &nbsp;Although every effort is made to maintain properties in good order, wear &amp; tear on rental property is unavoidable. &nbsp;Please notify &lsquo;STAY Waiheke&rsquo; as soon as possible if a problem relating to the property exists. Every effort will be made to rectify any problem that exists in a timely manner. &nbsp;Repairs will be made as soon as possible after notification.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest is responsible for the safe-keeping of the owner&rsquo;s property and content during the period booked. Neither the owner nor &lsquo;STAY Waiheke&rsquo; is responsible for any stolen or lost items. Be safe and lock doors and windows when you are away and at night as you would at home. &nbsp;Any breakage or damage to content or structure of the building must be reported promptly to &lsquo;STAY Waiheke&rsquo; and the owner will be entitled to recover from the guest the cost of any repair or replacement needed due to guests act or default.<br />\r\n3.&nbsp;&nbsp; &nbsp;The Renter promises that it will:<br />\r\n4.&nbsp;&nbsp; &nbsp; Keep in a clean, liveable condition and in good repair (subject to Reasonable Wear and Tear):<br />\r\n5.&nbsp;&nbsp; &nbsp;(i) The interior of the Accommodation;<br />\r\n6.&nbsp;&nbsp; &nbsp;(ii) The carpets, curtains and all other items of the&nbsp;<br />\r\n7.&nbsp;&nbsp; &nbsp;Accommodation; an<br />\r\n8.&nbsp;&nbsp; &nbsp;(iii) All ï¬xtures and ï¬ttings of the accommodation, including outdoor furniture, kyaks, boats .<br />\r\n9.&nbsp;&nbsp; &nbsp;Clean and keep free from blockages and obstructions all ;baths, sinks, lavatories, cisterns, drains, gutters, pipes, chimneys and the like;<br />\r\n10.&nbsp;&nbsp; &nbsp;16.1 &nbsp;Keep clean the insides of all windows and replace any glass or mirrors which break for any reason.<br />\r\n11.&nbsp;&nbsp; &nbsp;Not damage, change or remove any of the Owner/Property Manager&rsquo;s installations, furniture, ï¬xtures and ï¬ttings;<br />\r\n12.&nbsp;&nbsp; &nbsp;BOND/ SECURITY DEPOSIT: The guest authorises &lsquo;STAY Waiheke&rsquo; to obtain an authorization for the security deposit on his/her credit card and to debit his /her credit card for costs incurred for damage, breakage or cleaning. Where a credit card is not available, the guest agrees to pay a security deposit at the time of final payment if requested to do so.The guest agrees that the liability is not limited to this amount. In the event that there is a problem with the credit card being debited the Renter agrees to immediately pay the amount owing to the Owner/Property Manager in cash, bank cheque or by electronic funds transfer of cleared funds to an account speciï¬ed by the Owner/Property Manager.<br />\r\n13.&nbsp;&nbsp; &nbsp;Some Owners/Property Managers require payment of a cash bond in addition to or instead of credit card bond. Typically the cash bond is $500 - $1,500 depending on the nature of the Accommodation, is paid into the Owner/Property Manager&rsquo;s nominated bank account prior to check in and is repaid within 7 working days of the completion of the Holiday Tenancy or upon the ï¬nal resolution of a dispute.<br />\r\n14.&nbsp;&nbsp; &nbsp;The property must be left in a clean and tidy state and all furniture returned to the place in which it was found on arrival. &nbsp;Guests are fully responsible for cleaning all crockery, cutlery, general utensils, Oven and BBQ, and disposing of their rubbish in the prescribed way. If they are left dirty you may be charged an min but not limited to excess clean charge of $50. All doors and windows are to be closed and locked before check-out.&nbsp;<br />\r\n15.&nbsp;&nbsp; &nbsp;Neither the owner nor &lsquo;STAY Waiheke&rsquo; shall be liable for any loss or damage to property however caused during your stay.<br />\r\n16.&nbsp;&nbsp; &nbsp;Whenever the Accommodation is left unattended, the Renter will fasten all locks to all doors and windows and activate any burglar alarm, to prevent unauthorised access to the Accommodation. A call out due to lost keys or lockout will attract a non-negotiable minimum fee of $100 plus GST to be deducted from the Renter&rsquo;s credit card. The Renter will not change or install any locks on any doors or windows nor have additional keys made&nbsp;<br />\r\n17.&nbsp;&nbsp; &nbsp;for any locks without the prior written consent of the Owner/Property Manager.</p>\r\n\r\n<p>Booking and Reservation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees that &lsquo;STAY Waiheke&rsquo; is the booking agent only and any dispute regarding the availability, the standard of the property or chattels will be solely between the guest and the owner of the property. The guest agrees that &lsquo;STAY Waiheke&rsquo; may give the guests contact details to the owner of the property if they request so.<br />\r\n2.&nbsp;&nbsp; &nbsp;No property shall be considered booked until &lsquo;STAY Waiheke&rsquo; has confirmed the booking in writing.<br />\r\n3.&nbsp;&nbsp; &nbsp;A 50% deposit of the total accommodation charge is payable within 48 hours of booking with the balance payable 14 days prior to the date of arrival. &nbsp;If booking falls between 15 December and 15 January, balance of payment is due 21 days prior to the date of arrival. &nbsp;The guests authorise STAY Waiheke to charge full payment due 10 days prior to arrival if no payment is made prior.<br />\r\n4.&nbsp;&nbsp; &nbsp;Some Owner/Property Managers require the Renter to agree to further terms and conditions speciï¬c to its accommodation at the time of booking. If the Renter does not wish to be bound by an Owner/Property Manager&rsquo;s additional terms and conditions for any reason, then the Renter can cancel the booking and STAY Waiheke will refund the Renter in full subject to STAY Waiheke receiving notice in writing from the Renter within 5 working days&nbsp;<br />\r\n5.&nbsp;&nbsp; &nbsp;of the completion of the online booking process.<br />\r\n6.&nbsp;&nbsp; &nbsp;Dishonored payments of balances not received 7 days before the start of the let will result in the booking being canceled and deposit forfeited.</p>\r\n\r\n<p>Cancellation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;Cancellation of a booking by the guests will incur a $50 administration charge. In addition:<br />\r\na.&nbsp;&nbsp; &nbsp;Within 60 days of arrival:50% of the total accommodation costs unless the property can be rebooked.<br />\r\nb.&nbsp;&nbsp; &nbsp;Within 30 days of arrival: 100% of the total accommodation costs unless the property can be rebooked.<br />\r\nc.&nbsp;&nbsp; &nbsp;All booking canceled within 14 days of arrival or non-arrivals:100% of all booking costs.<br />\r\nd.&nbsp;&nbsp; &nbsp;No refunds are given for early departure.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that, should the property become unavailable or un-live able for any reason (the reason to be verified by &lsquo;STAY Waiheke&rsquo; as being justified), then STAY Waiheke&rsquo; will use their best endeavors to find a satisfactory alternative. Should a replacement property not be available all monies paid by the guest to &lsquo;STAY Waiheke will be refunded in full. The guest agrees that the owner and &lsquo;STAY Waiheke&rsquo; liability is limited to the refunding of such monies.<br />\r\n3.&nbsp;&nbsp; &nbsp;&lsquo;STAY Waiheke&rsquo; reserves the right to cancel reservation at any time, in which event the deposit shall be refunded in full.<br />\r\nPrinciple<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees, that should all of these conditions not be adhered to, the owners or their agents will have the right to immediately terminate this contract and the guest and all other persons will vacate the property immediately if requested to do so by the owners or the owners&rsquo; agent. In this event, the guest agrees that no refund will be due or paid for any unused accommodation nights.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that by making a booking, they indicate to accept the booking conditions as set out above.</p>\r\n\r\n<p>INSURANCE AND NO LIABILITY<br />\r\nThe Renter will not do anything that could adversely affect the Owner/Property Manager&rsquo;s insurance over the Accommodation.<br />\r\n1.&nbsp;&nbsp; &nbsp;The personal effects of the Renter will not be insured by the Owner/Property Manager. The Renter acknowledges that all personal items and vehicles (including vehicle contents) of the Renter remain the Renter&rsquo;s responsibility and the Owner/Property Manager accepts no responsibility for loss or damage.<br />\r\n2.&nbsp;&nbsp; &nbsp;In the event that the Renter uses extra facilities at the Accommodation including, but not limited to, kayaks, dinghies, bicycles, trampolines, spas and swimming pools, such use is entirely at the Renter&rsquo;s own risk at all times and the Owner/Property Manager accepts no responsibility for any injury or loss to the Renter. Children are to be supervised at all times by a parent or responsible adult.</p>'),
(12, 'fa fa-map-marker', 'Location Map', 'A', 5, '', '', '1', ''),
(13, '', 'Untitled', 'H', 0, '0', '0', '0', NULL),
(14, '', 'Untitled', 'H', 0, '0', '0', '0', NULL),
(15, 'fa fa-info-circle', 'Test', 'H', 0, '', '', '', '<p>Test</p>'),
(16, 'fa fa-info-circle', 'Pinal test', 'A', 0, '', '', '', '<p>this is pinal</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_column`
--

CREATE TABLE `content_column` (
  `content` mediumtext NOT NULL,
  `css_class` varchar(255) NOT NULL,
  `span` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `content_row_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_column`
--

INSERT INTO `content_column` (`content`, `css_class`, `span`, `rank`, `content_row_id`) VALUES
('<p>Column 1</p>', 'col-xs-12', 0, 1, 196),
('<p>Column 1</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 1, 197),
('<p>Column 2</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 2, 197),
('<p>Column 3</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 3, 197),
('<p>Column 1</p>', 'col-xs-12', 0, 1, 304),
('<p>Column 1</p>', 'col-xs-12 col-sm-6 col-md-6', 0, 1, 305),
('<p>Column 2</p>', 'col-xs-12 col-sm-6 col-md-6', 0, 2, 305),
('<p>Column 1</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 1, 306),
('<p>Column 2</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 2, 306),
('<p>Column 3</p>', 'col-xs-12 col-sm-6 col-md-4', 0, 3, 306),
('', 'col-xs-12 col-sm-6 col-md-3', 0, 1, 307),
('<p>Column 2</p>', 'col-xs-12 col-sm-6 col-md-3', 0, 2, 307),
('<p>Column 3</p>', 'col-xs-12 col-sm-6 col-md-3', 0, 3, 307),
('<p>Column 4</p>', 'col-xs-12 col-sm-6 col-md-3', 0, 4, 307),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 630),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 631),
('<p>Alpine Lodge &amp; Retreat</p>\r\n\r\n<p>1 Mountain View Lane<br />\r\nThe Rocky Mountains<br />\r\nColarado<br />\r\nUnited States</p>\r\n\r\n<p>Phone: +1 234 5678<br />\r\nEmail: stay@alpinelodge.com</p>', 'col-xs-12', 0, 1, 638),
('', 'col-xs-12', 0, 1, 639),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 688),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 689),
('<h1 style=\"text-align: center;\">Meet Your Host</h1>', 'col-xs-12', 0, 1, 690),
('<p style=\"text-align: center;\"><img alt=\"\" src=\"/library/man-old-fisherman-portrait-53159.jpg\" style=\"width: 632px; height: 420px;\" /></p>', 'col-xs-12', 0, 1, 692),
('<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>John Smith</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Sed placerat bibendum faucibus. Sed eu pharetra risus.&nbsp;</p>', 'col-xs-12', 0, 1, 693),
('<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>', 'col-xs-12', 0, 1, 696),
('<p><img alt=\"\" src=\"/library/pexels-photo.jpg\" /></p>', 'col-xs-12 col-sm-6 col-md-6', 0, 1, 697),
('<p>Column 2</p>', 'col-xs-12 col-sm-6 col-md-6', 0, 2, 697),
('<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>', 'col-xs-12', 0, 1, 700),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 702),
('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>', 'col-xs-12', 0, 1, 703);

-- --------------------------------------------------------

--
-- Table structure for table `content_row`
--

CREATE TABLE `content_row` (
  `id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_row`
--

INSERT INTO `content_row` (`id`, `rank`, `page_meta_data_id`) VALUES
(196, 3, 34),
(197, 4, 34),
(304, 1, 35),
(305, 2, 35),
(306, 3, 35),
(307, 4, 35),
(479, 1, 13),
(480, 2, 13),
(481, 1, 17),
(482, 2, 17),
(628, 1, 4),
(629, 2, 4),
(630, 3, 4),
(631, 4, 4),
(638, 1, 8),
(639, 1, 11),
(688, 1, 5),
(689, 2, 5),
(690, 3, 5),
(691, 4, 5),
(692, 5, 5),
(693, 6, 5),
(694, 1, 1),
(695, 2, 1),
(696, 3, 1),
(697, 4, 1),
(698, 1, 2),
(699, 2, 2),
(700, 5, 2),
(701, 1, 22),
(702, 2, 22),
(703, 3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `comments` mediumtext,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `date_of_enquiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `first_name`, `last_name`, `email_address`, `contact_number`, `comments`, `status`, `date_of_enquiry`, `ip_address`) VALUES
(1, 'asd', 'asd', 'asd@qq.com', '123', '123', 'A', '2018-01-08 10:05:14', '114.23.241.67');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `public_token` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `success_message` text,
  `mailchimp_list_id` varchar(255) NOT NULL,
  `terms_and_conditions` text,
  `xml_data` longtext,
  `json_data` text CHARACTER SET utf8 NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `public_token`, `name`, `email_subject`, `success_message`, `mailchimp_list_id`, `terms_and_conditions`, `xml_data`, `json_data`, `date_created`, `date_updated`, `date_deleted`, `status`) VALUES
(3, 'e75e1fe2fa', 'Form 1', 'Aenean non imperdiet erat, at iaculis tellus', 'Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ornare interdum mauris, id cursus leo cursus eget. Morbi elementum ipsum at lectus suscipit sagittis. Donec aliquam eu metus a maximus. Donec euismod vel justo quis iaculis. Phasellus a pharetra sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat commodo nec eu urna. Ut faucibus velit nec orci feugiat, in pharetra ipsum tempor. Vivamus eget venenatis diam. Sed ullamcorper sapien sit amet consequat convallis. Cras lacus lorem, posuere id nisl sed, molestie facilisis odio.</p>\r\n\r\n<p>Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.</p>\r\n\r\n<p>Etiam ac purus porta erat euismod volutpat. Etiam fringilla sem in mi lobortis mollis. Vivamus mi augue, tristique at tempus eu, facilisis eleifend odio. Vestibulum aliquet, nunc id dapibus auctor, enim neque imperdiet magna, ac mollis justo odio id enim. Vivamus nec dolor lobortis, lacinia massa ut, blandit lorem. Ut nec tristique lectus. Vivamus eget maximus justo, sed interdum lectus. Vestibulum faucibus felis nec ipsum rutrum malesuada. Nullam a lectus at lorem mattis pharetra. Maecenas blandit finibus mauris, sed pretium augue eleifend sed. Fusce tempus sagittis justo, vel malesuada magna.</p>', '<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" label=\"Text Field\" class=\"form-control\" name=\"text-1516846607674\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516918871143\">\n			<option label=\"Option 1\" value=\"Option 1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"header\" subtype=\"h2\" label=\"Additional Information\" class=\"form-heading\"></field>\n		<field type=\"date\" required=\"true\" label=\"Arrival Date\" class=\"form-control\" name=\"date-1516672514853\"></field>\n		<field type=\"date\" required=\"true\" label=\"Departure Date\" class=\"form-control\" name=\"date-1516672543816\"></field>\n		<field type=\"select\" label=\"Select Tour Extra\" class=\"form-control\" name=\"select-1516672557027\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" label=\"Proin eget accumsan odio\" toggle=\"true\" name=\"checkbox-group-1516672812218\">\n			<option label=\"Yes, Proin eget accumsan\" value=\"yes\" selected=\"true\">Yes, Proin eget accumsan</option>\n		</field>\n		<field type=\"textarea\" required=\"true\" label=\"Comments\" class=\"form-control\" name=\"textarea-1516672862845\"></field>\n	</fields>\n</form-template>', '[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516846607674\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516918871143\",\"values\":[{\"label\":\"Option 1\",\"value\":\"Option 1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Additional Information\",\"className\":\"form-heading\"},{\"type\":\"date\",\"required\":true,\"label\":\"Arrival Date\",\"className\":\"form-control\",\"name\":\"date-1516672514853\"},{\"type\":\"date\",\"required\":true,\"label\":\"Departure Date\",\"className\":\"form-control\",\"name\":\"date-1516672543816\"},{\"type\":\"select\",\"label\":\"Select Tour Extra\",\"className\":\"form-control\",\"name\":\"select-1516672557027\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"label\":\"Proin eget accumsan odio\",\"toggle\":true,\"name\":\"checkbox-group-1516672812218\",\"values\":[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\",\"selected\":true}]},{\"type\":\"textarea\",\"required\":true,\"label\":\"Comments\",\"className\":\"form-control\",\"name\":\"textarea-1516672862845\"}]', '2018-01-23 01:43:32', '2018-01-25 22:21:36', NULL, 'A'),
(4, 'be976d07f2', 'Form 2', 'Testing Email Subject', 'Success! Aenean non imperdiet erat, at iaculis tellus', '06224f3593', '<p>Lorem&nbsp;ipsum&nbsp;dolor sit&nbsp;amet,&nbsp;consectetur&nbsp;adipiscing elit. Maecenas ornare&nbsp;interdum&nbsp;mauris, id&nbsp;cursus&nbsp;leo&nbsp;cursus&nbsp;eget.&nbsp;Morbi&nbsp;elementum&nbsp;ipsum&nbsp;at lectus suscipit sagittis.&nbsp;Donec&nbsp;aliquam&nbsp;eu metus a maximus.&nbsp;Donec&nbsp;euismod vel justo quis iaculis. Phasellus a&nbsp;pharetra&nbsp;sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat&nbsp;commodo&nbsp;nec eu urna. Ut&nbsp;faucibus&nbsp;velit&nbsp;nec&nbsp;orci&nbsp;feugiat, in&nbsp;pharetra&nbsp;ipsum&nbsp;tempor. Vivamus&nbsp;eget&nbsp;venenatis diam. Sed&nbsp;ullamcorper&nbsp;sapien&nbsp;sit&nbsp;amet&nbsp;consequat&nbsp;convallis.&nbsp;Cras&nbsp;lacus&nbsp;lorem,&nbsp;posuere&nbsp;id&nbsp;nisl&nbsp;sed,&nbsp;molestie&nbsp;facilisis&nbsp;odio.</p>\r\n\r\n<p>Proin&nbsp;eget&nbsp;accumsan&nbsp;odio, nec consequat&nbsp;eros.&nbsp;Quisque&nbsp;ultrices&nbsp;hendrerit&nbsp;dui.&nbsp;Pellentesque&nbsp;sed&nbsp;mi at&nbsp;augue&nbsp;accumsan&nbsp;mattis. Curabitur ac&nbsp;neque&nbsp;ligula.&nbsp;Duis&nbsp;consectetur&nbsp;lorem&nbsp;a&nbsp;lorem&nbsp;tincidunt&nbsp;pharetra.&nbsp;Etiam&nbsp;a&nbsp;pretium&nbsp;augue,&nbsp;dignissim&nbsp;volutpat&nbsp;justo. Phasellus vel&nbsp;scelerisque&nbsp;odio, et&nbsp;eleifend&nbsp;massa.</p>\r\n\r\n<p>Etiam&nbsp;ac purus&nbsp;porta&nbsp;erat&nbsp;euismod&nbsp;volutpat.&nbsp;Etiam&nbsp;fringilla&nbsp;sem in mi&nbsp;lobortis&nbsp;mollis. Vivamus mi&nbsp;augue,&nbsp;tristique&nbsp;at&nbsp;tempus&nbsp;eu,&nbsp;facilisis&nbsp;eleifend&nbsp;odio.&nbsp;Vestibulum&nbsp;aliquet, nunc id&nbsp;dapibus&nbsp;auctor,&nbsp;enim&nbsp;neque&nbsp;imperdiet&nbsp;magna, ac mollis justo&nbsp;odio&nbsp;id&nbsp;enim. Vivamus nec dolor&nbsp;lobortis,&nbsp;lacinia&nbsp;massa&nbsp;ut, blandit&nbsp;lorem. Ut nec&nbsp;tristique&nbsp;lectus. Vivamus&nbsp;eget&nbsp;maximus justo,&nbsp;sed&nbsp;interdum&nbsp;lectus.&nbsp;Vestibulum&nbsp;faucibus&nbsp;felis&nbsp;nec&nbsp;ipsum&nbsp;rutrum&nbsp;malesuada.&nbsp;Nullam&nbsp;a lectus at&nbsp;lorem&nbsp;mattis&nbsp;pharetra. Maecenas blandit&nbsp;finibus&nbsp;mauris,&nbsp;sed&nbsp;pretium&nbsp;augue&nbsp;eleifend&nbsp;sed.&nbsp;Fusce&nbsp;tempus&nbsp;sagittis justo, vel&nbsp;malesuada&nbsp;magna.</p>', '<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516928480296\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516928481403\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516928482534\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516928483984\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516928486172\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n			<option label=\"Option 3\" value=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" toggle=\"true\" name=\"checkbox-group-1517443694599\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516928488190\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>', '[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516928480296\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516928481403\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516928482534\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516928483984\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516928486172\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"toggle\":true,\"name\":\"checkbox-group-1517443694599\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516928488190\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]', '2018-01-26 00:58:16', '2018-02-01 00:08:35', NULL, 'A'),
(5, '6741375167', 'Form 3', '', '', '', '', '<form-template>\n	<fields>\n		<field class=\"form-control\" description=\"Your first name\" type=\"text\" required=\"true\" name=\"first-name\" subtype=\"text\" label=\"First Name\"></field>\n		<field class=\"form-control\" description=\"Your last name\" type=\"text\" required=\"true\" name=\"last-name\" subtype=\"text\" label=\"Last Name\"></field>\n		<field class=\"form-control\" description=\"Your email address\" type=\"text\" required=\"true\" name=\"email-address\" subtype=\"text\" label=\"Email Address\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930889348\" subtype=\"text\" label=\"Text Field\"></field>\n		<field class=\"form-control\" type=\"textarea\" required=\"true\" name=\"textarea-1516930890364\" label=\"Text Area\"></field>\n		<field class=\"form-control\" type=\"select\" required=\"true\" name=\"select-1516930891729\" label=\"Select\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" name=\"radio-group-1516930892811\" label=\"Radio Group\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" name=\"checkbox-group-1516930895412\" label=\"Checkbox Group\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n		</field>\n		<field class=\"form-control\" type=\"date\" required=\"true\" name=\"date-1516930904254\" label=\"Date Field\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>', '[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516930889348\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516930890364\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516930891729\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516930892811\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516930895412\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516930904254\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]', '2018-01-26 01:41:25', '2018-01-26 01:42:14', NULL, 'A'),
(6, 'd56b6398da', 'Form 4', '', '', '', '', '<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516931658825\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516931658289\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516931657706\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931608861\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931655977\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931610056\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931652921\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931611477\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931650560\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931613674\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931648361\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931616918\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931646779\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931620620\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931645104\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>', '[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516931658825\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516931658289\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516931657706\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931608861\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931655977\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931610056\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931652921\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931611477\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931650560\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931613674\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931648361\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931616918\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931646779\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931620620\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931645104\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]', '2018-01-26 01:53:27', '2018-01-26 01:54:28', NULL, 'A'),
(7, '0499043477', 'Form 5', '', '', '', '', '<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516933306163\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516933308337\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516933310419\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516933234305\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516933318111\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516933237652\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516933322383\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516933241607\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516933325849\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516933245472\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516933330537\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516933254385\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516933334364\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516933262515\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516933337860\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>', '[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516933306163\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516933308337\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516933310419\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516933234305\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516933318111\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516933237652\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516933322383\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516933241607\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516933325849\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516933245472\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516933330537\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516933254385\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516933334364\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516933262515\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516933337860\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]', '2018-01-26 02:20:25', '2018-01-26 02:22:52', NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `form_entry`
--

CREATE TABLE `form_entry` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `form_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_entry`
--

INSERT INTO `form_entry` (`id`, `first_name`, `last_name`, `full_name`, `email_address`, `ip_address`, `date_added`, `form_id`) VALUES
(1, 'Pinal', 'Desai', 'Pinal Desai', 'pinal.j.desai@gmail.com', '114.23.241.67', '2018-01-23 02:02:22', 3),
(2, 'Pinal', 'Desai', 'Pinal Desai', 'pinal.j.desai@gmail.com', '114.23.241.67', '2018-01-23 02:03:59', 3),
(3, 'Testing', 'Test', 'Testing Test', 'alan@tomahawk.co.nz', '114.23.241.67', '2018-01-30 02:49:24', 3),
(4, 'alpine', 'alpine', 'alpine alpine', 'alan@tomahawk.co.nz', '114.23.241.67', '2018-01-31 21:04:51', 3),
(5, 'alpine', 'test', 'alpine test', 'alan@tomahawk.co.nz', '114.23.241.67', '2018-02-01 00:09:47', 4),
(6, 'alpine', 'Test', 'alpine Test', 'alan@tomahawk.co.nz', '114.23.241.67', '2018-02-01 00:19:50', 4);

-- --------------------------------------------------------

--
-- Table structure for table `form_entry_data`
--

CREATE TABLE `form_entry_data` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` text,
  `form_id` int(11) NOT NULL,
  `form_entry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_entry_data`
--

INSERT INTO `form_entry_data` (`id`, `label`, `value`, `form_id`, `form_entry_id`) VALUES
(1, 'First Name', 'Pinal', 3, 1),
(2, 'Last Name', 'Desai', 3, 1),
(3, 'Email Address', 'pinal.j.desai@gmail.com', 3, 1),
(4, 'Additional Information', '', 3, 1),
(5, 'Arrival Date', '24/01/2018', 3, 1),
(6, 'Departure Date', '26/01/2018', 3, 1),
(7, 'Select Tour Extra', 'option-2', 3, 1),
(8, 'Proin eget accumsan odio', '', 3, 1),
(9, 'Comments', 'This is a Test', 3, 1),
(10, 'First Name', 'Pinal', 3, 2),
(11, 'Last Name', 'Desai', 3, 2),
(12, 'Email Address', 'pinal.j.desai@gmail.com', 3, 2),
(13, 'Additional Information', '', 3, 2),
(14, 'Arrival Date', '27/01/2018', 3, 2),
(15, 'Departure Date', '31/01/2018', 3, 2),
(16, 'Select Tour Extra', 'option-3', 3, 2),
(17, 'Proin eget accumsan odio', 'yes', 3, 2),
(18, 'Comments', 'TEST', 3, 2),
(19, 'First Name', 'Testing', 3, 3),
(20, 'Text Field', 'Test', 3, 3),
(21, 'Last Name', 'Test', 3, 3),
(22, 'Email Address', 'alan@tomahawk.co.nz', 3, 3),
(23, 'Checkbox Group', 'Option 2', 3, 3),
(24, 'Additional Information', '', 3, 3),
(25, 'Arrival Date', '01/02/2018', 3, 3),
(26, 'Departure Date', '02/02/2018', 3, 3),
(27, 'Select Tour Extra', 'option-1', 3, 3),
(28, 'Proin eget accumsan odio', 'yes', 3, 3),
(29, 'Comments', 'test', 3, 3),
(30, 'First Name', 'alpine', 3, 4),
(31, 'Text Field', 'test', 3, 4),
(32, 'Last Name', 'alpine', 3, 4),
(33, 'Email Address', 'alan@tomahawk.co.nz', 3, 4),
(34, 'Checkbox Group', 'Option 1, ', 3, 4),
(35, 'Additional Information', '', 3, 4),
(36, 'Arrival Date', '01/03/2018', 3, 4),
(37, 'Departure Date', '02/03/2018', 3, 4),
(38, 'Select Tour Extra', 'option-1', 3, 4),
(39, 'Proin eget accumsan odio', 'yes, ', 3, 4),
(40, 'Comments', 'alpine test', 3, 4),
(41, 'First Name', 'alpine', 4, 5),
(42, 'Last Name', 'test', 4, 5),
(43, 'Email Address', 'alan@tomahawk.co.nz', 4, 5),
(44, 'Text Field', 'alpine test', 4, 5),
(45, 'Text Area', 'alpine test', 4, 5),
(46, 'Select', 'option-1', 4, 5),
(47, 'Radio Group', 'option-1, ', 4, 5),
(48, 'Checkbox Group', 'option-1, ', 4, 5),
(49, 'Checkbox Group', 'option-1, ', 4, 5),
(50, 'Date Field', '02/02/2018', 4, 5),
(51, 'Header', '', 4, 5),
(52, 'First Name', 'alpine', 4, 6),
(53, 'Last Name', 'Test', 4, 6),
(54, 'Email Address', 'alan@tomahawk.co.nz', 4, 6),
(55, 'Text Field', 'alpine test', 4, 6),
(56, 'Text Area', 'alpine test', 4, 6),
(57, 'Select', 'option-1', 4, 6),
(58, 'Radio Group', 'option-1, ', 4, 6),
(59, 'Checkbox Group', 'option-1, ', 4, 6),
(60, 'Checkbox Group', 'option-1, ', 4, 6),
(61, 'Date Field', '01/02/2018', 4, 6),
(62, 'Header', '', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_required` enum('N','Y') NOT NULL DEFAULT 'N',
  `is_multiple` enum('Y','N') DEFAULT 'N',
  `is_toggle` enum('Y','N') NOT NULL DEFAULT 'N',
  `class` varchar(255) DEFAULT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `options_json` text,
  `rank` int(11) NOT NULL,
  `form_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `label`, `name`, `placeholder`, `default_value`, `type`, `is_required`, `is_multiple`, `is_toggle`, `class`, `help_text`, `subtype`, `options_json`, `rank`, `form_id`) VALUES
(126, 'First Name', 'first-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 1, 3),
(127, 'Text Field', 'text-1516846607674', NULL, NULL, 'text', 'N', 'N', 'N', 'form-control', NULL, 'text', '[]', 2, 3),
(128, 'Last Name', 'last-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 3, 3),
(129, 'Email Address', 'email-address', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 4, 3),
(130, 'Checkbox Group', 'checkbox-group-1516918871143', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"Option 1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]', 5, 3),
(131, 'Additional Information', NULL, NULL, NULL, 'header', 'N', 'N', 'N', 'form-heading', NULL, 'h2', '[]', 6, 3),
(132, 'Arrival Date', 'date-1516672514853', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 7, 3),
(133, 'Departure Date', 'date-1516672543816', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 8, 3),
(134, 'Select Tour Extra', 'select-1516672557027', NULL, NULL, 'select', 'N', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 9, 3),
(135, 'Proin eget accumsan odio', 'checkbox-group-1516672812218', NULL, NULL, 'checkbox-group', 'N', 'N', 'Y', NULL, NULL, NULL, '[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\"}]', 10, 3),
(136, 'Comments', 'textarea-1516672862845', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 11, 3),
(153, 'First Name', 'first-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 1, 5),
(154, 'Last Name', 'last-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 2, 5),
(155, 'Email Address', 'email-address', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 3, 5),
(156, 'Text Field', 'text-1516930889348', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 4, 5),
(157, 'Text Area', 'textarea-1516930890364', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 5, 5),
(158, 'Select', 'select-1516930891729', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]', 6, 5),
(159, 'Radio Group', 'radio-group-1516930892811', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]', 7, 5),
(160, 'Checkbox Group', 'checkbox-group-1516930895412', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"value\":\"option-1\",\"label\":\"Option 1\"}]', 8, 5),
(161, 'Date Field', 'date-1516930904254', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 9, 5),
(162, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 10, 5),
(163, 'First Name', 'first-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 1, 6),
(164, 'First Name', 'text-1516931658825', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 2, 6),
(165, 'Last Name', 'last-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 3, 6),
(166, 'Last Name', 'text-1516931658289', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 4, 6),
(167, 'Email Address', 'email-address', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 5, 6),
(168, 'Email Address', 'text-1516931657706', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 6, 6),
(169, 'Text Field', 'text-1516931608861', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 7, 6),
(170, 'Text Field', 'text-1516931655977', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 8, 6),
(171, 'Text Area', 'textarea-1516931610056', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 9, 6),
(172, 'Text Area', 'textarea-1516931652921', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 10, 6),
(173, 'Select', 'select-1516931611477', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 11, 6),
(174, 'Select', 'select-1516931650560', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 12, 6),
(175, 'Radio Group', 'radio-group-1516931613674', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 13, 6),
(176, 'Radio Group', 'radio-group-1516931648361', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 14, 6),
(177, 'Checkbox Group', 'checkbox-group-1516931616918', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"}]', 15, 6),
(178, 'Checkbox Group', 'checkbox-group-1516931646779', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"}]', 16, 6),
(179, 'Date Field', 'date-1516931620620', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 17, 6),
(180, 'Date Field', 'date-1516931645104', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 18, 6),
(181, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 19, 6),
(182, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 20, 6),
(183, 'First Name', 'first-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 1, 7),
(184, 'First Name', 'text-1516933306163', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 2, 7),
(185, 'Last Name', 'last-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 3, 7),
(186, 'Last Name', 'text-1516933308337', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 4, 7),
(187, 'Email Address', 'email-address', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 5, 7),
(188, 'Email Address', 'text-1516933310419', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 6, 7),
(189, 'Text Field', 'text-1516933234305', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 7, 7),
(190, 'Text Field', 'text-1516933318111', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 8, 7),
(191, 'Text Area', 'textarea-1516933237652', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 9, 7),
(192, 'Text Area', 'textarea-1516933322383', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 10, 7),
(193, 'Select', 'select-1516933241607', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 11, 7),
(194, 'Select', 'select-1516933325849', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 12, 7),
(195, 'Radio Group', 'radio-group-1516933245472', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 13, 7),
(196, 'Radio Group', 'radio-group-1516933330537', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 14, 7),
(197, 'Checkbox Group', 'checkbox-group-1516933254385', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"}]', 15, 7),
(198, 'Checkbox Group', 'checkbox-group-1516933334364', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"}]', 16, 7),
(199, 'Date Field', 'date-1516933262515', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 17, 7),
(200, 'Date Field', 'date-1516933337860', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 18, 7),
(201, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 19, 7),
(202, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 20, 7),
(213, 'First Name', 'first-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your first name', 'text', '[]', 1, 4),
(214, 'Last Name', 'last-name', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your last name', 'text', '[]', 2, 4),
(215, 'Email Address', 'email-address', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', 'Your email address', 'text', '[]', 3, 4),
(216, 'Text Field', 'text-1516928480296', NULL, NULL, 'text', 'Y', 'N', 'N', 'form-control', NULL, 'text', '[]', 4, 4),
(217, 'Text Area', 'textarea-1516928481403', NULL, NULL, 'textarea', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 5, 4),
(218, 'Select', 'select-1516928482534', NULL, NULL, 'select', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 6, 4),
(219, 'Radio Group', 'radio-group-1516928483984', NULL, NULL, 'radio-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]', 7, 4),
(220, 'Checkbox Group', 'checkbox-group-1516928486172', NULL, NULL, 'checkbox-group', 'Y', 'N', 'N', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]', 8, 4),
(221, 'Checkbox Group', 'checkbox-group-1517443694599', NULL, NULL, 'checkbox-group', 'Y', 'N', 'Y', NULL, NULL, NULL, '[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]', 9, 4),
(222, 'Date Field', 'date-1516928488190', NULL, NULL, 'date', 'Y', 'N', 'N', 'form-control', NULL, NULL, '[]', 10, 4),
(223, 'Header', NULL, NULL, NULL, 'header', 'N', 'N', 'N', NULL, NULL, 'h2', '[]', 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `general_importantpages`
--

CREATE TABLE `general_importantpages` (
  `imppage_id` int(11) NOT NULL,
  `imppage_name` varchar(150) NOT NULL,
  `page_id` int(11) NOT NULL,
  `imppage_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `is_mobile` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_importantpages`
--

INSERT INTO `general_importantpages` (`imppage_id`, `imppage_name`, `page_id`, `imppage_showincms`, `is_mobile`) VALUES
(1, 'Home', 1, 'N', 0),
(2, '404', 11, 'Y', 0),
(3, 'Testimonial', 7, 'Y', 0),
(4, 'Contact', 8, 'Y', 0),
(5, 'Accommodation', 2, 'Y', 0),
(6, 'Bookings', 6, 'Y', 0),
(7, 'Gallery', 12, 'Y', 0),
(8, 'blog', 15, 'Y', 0),
(9, 'Compendium', 25, 'Y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `general_pages`
--

CREATE TABLE `general_pages` (
  `id` int(11) NOT NULL COMMENT 'Primary key for pages',
  `access_level` enum('P','L') NOT NULL DEFAULT 'P' COMMENT 'P = Public, L = Private',
  `meta_cache` tinyint(1) NOT NULL DEFAULT '1',
  `slideshow_type` enum('C','D') NOT NULL DEFAULT 'D',
  `parent_id` int(11) DEFAULT '0',
  `template_id` int(11) DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `publish_on_set_time` enum('Y','N') NOT NULL DEFAULT 'N',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_pages`
--

INSERT INTO `general_pages` (`id`, `access_level`, `meta_cache`, `slideshow_type`, `parent_id`, `template_id`, `page_meta_data_id`, `publish_on_set_time`, `publish_on`, `hide_on`, `form_id`) VALUES
(1, 'P', 1, 'D', 0, 1, 1, 'N', '2017-11-01 05:32:54', '0000-00-00 00:00:00', 3),
(2, 'P', 1, 'D', 0, 1, 2, 'N', '2017-11-29 20:55:57', '2017-11-28 10:41:29', 0),
(3, 'P', 1, 'D', 0, 1, 3, 'Y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'P', 1, 'D', 0, 1, 4, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'P', 1, 'D', 0, 1, 5, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'P', 1, 'D', 0, 1, 6, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'P', 1, 'D', 5, 1, 7, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'P', 1, 'D', 0, 1, 8, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'P', 1, 'D', 0, 1, 9, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7),
(10, 'P', 1, 'D', 0, 1, 10, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4),
(11, 'P', 1, 'D', 0, 1, 11, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'P', 1, 'D', 0, 1, 14, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 'P', 1, 'D', 0, NULL, 15, 'Y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 'P', 1, 'D', 0, NULL, 16, 'Y', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 'P', 1, 'D', 5, 1, 18, 'N', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 'P', 1, 'D', 0, 1, 22, 'N', '2017-11-28 07:44:11', '2017-11-28 08:59:07', 0),
(17, 'P', 1, 'D', 0, 1, 25, 'N', '2017-11-28 15:53:42', '2017-11-28 15:54:59', NULL),
(18, 'P', 1, 'D', 0, 1, 33, 'Y', '2017-11-22 02:28:58', '2017-11-22 02:28:58', NULL),
(19, 'P', 1, 'D', 0, 1, 35, 'Y', '2017-11-23 11:29:20', '2017-11-23 11:31:00', NULL),
(20, 'P', 1, 'D', 0, NULL, 37, 'Y', NULL, NULL, NULL),
(21, 'P', 1, 'D', 0, 1, 38, 'Y', '2017-11-27 21:39:37', '2017-11-27 21:39:37', NULL),
(22, 'P', 1, 'D', 0, 1, 38, 'N', '2018-01-22 22:00:02', '2018-01-22 22:00:02', 0),
(23, 'P', 1, 'D', 0, 1, 39, 'N', '2018-01-22 22:00:57', '2018-01-22 22:00:57', 0),
(24, 'P', 1, 'D', 0, NULL, 41, 'N', NULL, NULL, NULL),
(25, 'P', 1, 'D', 0, 2, 42, 'N', '2018-02-13 02:41:02', '2018-02-13 02:41:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL COMMENT 'Company/Business/Website name	',
  `start_year` int(4) DEFAULT NULL,
  `email_address` mediumtext COMMENT 'Email Address',
  `phone_number` varchar(100) DEFAULT NULL,
  `address` mediumtext,
  `booking_url` varchar(255) DEFAULT NULL,
  `js_code_head_close` mediumtext,
  `js_code_body_open` mediumtext,
  `js_code_body_close` mediumtext,
  `adwords_code` mediumtext,
  `mailchimp_api_key` varchar(100) DEFAULT NULL,
  `mailchimp_list_id` varchar(50) DEFAULT NULL,
  `resbook_id` varchar(100) NOT NULL,
  `map_latitude` float(10,6) DEFAULT NULL,
  `map_longitude` float(10,6) DEFAULT NULL,
  `map_address` mediumtext,
  `map_styles` longtext,
  `map_heading` varchar(255) DEFAULT NULL,
  `map_description` mediumtext,
  `map_zoom_level` smallint(6) NOT NULL,
  `map_marker_latitude` float(10,6) NOT NULL,
  `map_marker_longitude` float(10,6) NOT NULL,
  `slideshow_speed` int(11) DEFAULT '3000',
  `set_sitemapupdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `set_sitemapstatus` char(1) DEFAULT NULL,
  `homepage_slideshow_caption` varchar(255) DEFAULT NULL,
  `tripadvisor_widget_code` mediumtext,
  `color_palette_id` smallint(5) DEFAULT NULL,
  `company_logo_path` varchar(255) DEFAULT NULL,
  `webfont_headings` varchar(100) DEFAULT NULL,
  `webfont_text` varchar(100) DEFAULT NULL,
  `booking_engine_url` varchar(100) DEFAULT NULL,
  `mailchimp_email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `company_name`, `start_year`, `email_address`, `phone_number`, `address`, `booking_url`, `js_code_head_close`, `js_code_body_open`, `js_code_body_close`, `adwords_code`, `mailchimp_api_key`, `mailchimp_list_id`, `resbook_id`, `map_latitude`, `map_longitude`, `map_address`, `map_styles`, `map_heading`, `map_description`, `map_zoom_level`, `map_marker_latitude`, `map_marker_longitude`, `slideshow_speed`, `set_sitemapupdated`, `set_sitemapstatus`, `homepage_slideshow_caption`, `tripadvisor_widget_code`, `color_palette_id`, `company_logo_path`, `webfont_headings`, `webfont_text`, `booking_engine_url`, `mailchimp_email`) VALUES
(1, 'Alpine Lodge & Retreat', 0, 'ian@tomahawk.co.nz;alan@tomahawk.co.nz', '+1 100 123 4567', '17 Constellation Drive\r\nAuckland', '', '', '', '', '', '6577a17dd0a66458981c0b4126a86b45-us15', '06224f3593', '1144', -36.746696, 174.736298, '17 Constellation Dr, Rosedale, Auckland 0632, New Zealand', '[{\"featureType\":\"administrative\",\"elementType\":\"geometry\",\"stylers\":[{\"color\":\"#a7a7a7\"}]},{\"featureType\":\"administrative\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#737373\"}]},{\"featureType\":\"landscape\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#efefef\"}]},{\"featureType\":\"poi\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#dadada\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"color\":\"#696969\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#b3b3b3\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d6d6d6\"}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#ffffff\"},{\"weight\":1.8}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d7d7d7\"}]},{\"featureType\":\"transit\",\"elementType\":\"all\",\"stylers\":[{\"color\":\"#808080\"},{\"visibility\":\"off\"}]},{\"featureType\":\"water\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#d3d3d3\"}]}]', '', '', 13, -36.746696, 174.736298, 5, '2018-02-08 07:15:53', 'I', '', '<div id=\"TA_selfserveprop452\" class=\"TA_selfserveprop\">\r\n<ul id=\"qUFEsQADPa\" class=\"TA_links hUYXyJei\">\r\n<li id=\"w52drAvt\" class=\"g9yvErBj\">\r\n<a target=\"_blank\" href=\"https://www.tripadvisor.co.nz/\"><img src=\"https://www.tripadvisor.co.nz/img/cdsi/img2/branding/150_logo-11900-2.png\" alt=\"TripAdvisor\"/></a>\r\n</li>\r\n</ul>\r\n</div>\r\n<script src=\"https://www.jscache.com/wejs?wtype=selfserveprop&uniq=452&locationId=6925660&lang=en_NZ&rating=true&nreviews=5&writereviewlink=true&popIdx=true&iswide=false&border=true&display_version=2\"></script>', 2, '/library/company-logo/alpine.png', 'Raleway', 'Raleway', 'http://www.google.com', 'pinal@tomahawk.co.nz');

-- --------------------------------------------------------

--
-- Table structure for table `installed_modules`
--

CREATE TABLE `installed_modules` (
  `id` int(11) NOT NULL,
  `number` int(100) DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` longtext CHARACTER SET latin1,
  `type` enum('C','O','A') CHARACTER SET latin1 NOT NULL DEFAULT 'C',
  `status` enum('A','D','H') CHARACTER SET latin1 DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installed_modules`
--

INSERT INTO `installed_modules` (`id`, `number`, `label`, `description`, `type`, `status`) VALUES
(0, 1, 'Site Map', 'This is your main navigation for your website. You can have a maximum of 7 main menu links and any number of sub-menu links.', 'C', 'A'),
(1, 2, 'General Content Pages', 'This is the main module you use to edit content on each page of your website.', 'C', 'A'),
(2, 3, 'Quicklinks', 'These are automatically formatted image links to other pages on your website. You simply select a list of pages you want to link to and the CMS does the rest.', 'C', 'A'),
(3, 4, 'Location Map', 'Your location page will include a Google map pinpointing your location.', 'C', 'A'),
(4, 5, 'Slideshows', 'This module allows you to add any number of images to a gallery that can then be used as a slideshow on any of your website\'s pages.', 'C', 'A'),
(5, 6, 'Photo Gallery', 'As many photo galleries can be created as you wish. These are then displayed on your main gallery page or an individual gallery can be included on any selected page.', 'C', 'A'),
(6, 7, 'Accommodation or Activity Module - depending on Website type', 'This module allows you to easily setup your accommodation options and have them automatically displayed on your accommodation page', 'C', 'A'),
(7, 8, 'Contact Page Enquiry Form', 'An enquiry form will sit on your contact page where visitors can send you messages by completing the form.', 'C', 'A'),
(8, 9, 'File Manager', 'Using the file manager you can upload any type of document including photos, word documents, PDF file, etc. This allows you to create links on your site to these documents.', 'C', 'A'),
(9, 10, 'Booking Button - Main navigation CTA to ResBook booking page or external link', 'Whether you\'re using ResBook or any other booking engine, your website will have a main booking call-to-action on every page of your website.', 'C', 'A'),
(10, 11, 'Booking Calendar Widget - ResBook only', 'If you\'re using ResBook, this widget will sit on all pages of your site just below the hero slideshow.', 'C', 'A'),
(11, 12, 'Social Media icon footer links', 'This module allows you to add links to the listed social media platforms and will display icons in the footer of your website.', 'C', 'A'),
(12, 13, 'Partner logos - limited to 3 and displayed in the footer', 'This feature allows you to add up to 3 selected logos that will appear in your website. Contact us if you need to add more.', 'C', 'A'),
(13, 14, 'Footer Links', 'When creating your website\'s site map you can specify which pages you want to have as links in the footer section of your site.', 'C', 'A'),
(14, 15, 'Copyright Notice', 'The website will automatically insert a copyright notice into the footer of your website.', 'C', 'A'),
(15, 16, 'Redirects Module', 'This module allows you to easily migrate from and older website to your new website by adding redirects from the old website pages to their equivalent page on your new site.', 'C', 'A'),
(16, 17, 'Enquiries Module', 'This module provides access to all enquiries made through your contact page form.', 'C', 'A'),
(17, 18, 'Sitemap Generator', 'This module allows you to create a site map XML file for submission to Google.', 'C', 'A'),
(18, 19, 'Reviews', 'This module allows you to add as many customer reviews as you want. A randomly displayed review is displayed in your footer section.', 'O', 'A'),
(19, 20, 'Mailchimp', '', 'O', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `mod_id` int(11) NOT NULL COMMENT 'Primary key for include',
  `mod_name` varchar(255) DEFAULT NULL COMMENT 'Include name',
  `mod_path` varchar(255) DEFAULT NULL COMMENT 'Include URL/file path (exclude the extension)',
  `mod_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `mod_mobile` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`mod_id`, `mod_name`, `mod_path`, `mod_showincms`, `mod_mobile`) VALUES
(1, 'Slideshow', 'slideshow', 'N', NULL),
(2, 'Contact', 'contact', 'Y', NULL),
(3, 'Quicklinks', 'quicklinks', 'Y', NULL),
(5, 'Testimonial', 'testimonial', 'N', NULL),
(7, 'Gallery Carousel', 'gallery_carousel', 'N', NULL),
(6, 'Map', 'map', 'Y', NULL),
(4, 'Accommodation', 'accommodation', 'N', NULL),
(8, 'Bookings', 'bookings', 'N', NULL),
(9, 'Gallery', 'gallery', 'Y', NULL),
(10, 'Blog', 'blog', 'Y', NULL),
(11, 'Form', 'form', 'N', NULL),
(12, 'Payments', 'payments', 'Y', NULL),
(13, 'Compendium', 'compendium', 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_pages`
--

CREATE TABLE `module_pages` (
  `modpages_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `modpages_rank` int(4) DEFAULT NULL,
  `mod_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_pages`
--

INSERT INTO `module_pages` (`modpages_id`, `page_id`, `modpages_rank`, `mod_id`) VALUES
(18, 1, 3, 4),
(7, 7, 2, 4),
(255, 8, 2, 2),
(270, 1, 4, 3),
(252, 12, 2, 9),
(251, 4, 1, 6),
(254, 15, 1, 10),
(267, 23, 1, 12),
(266, 22, 1, 12),
(271, 16, 1, 3),
(269, 5, 1, 3),
(177, 19, 1, 3),
(272, 25, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `module_templates`
--

CREATE TABLE `module_templates` (
  `tmplmod_id` int(11) NOT NULL,
  `tmpl_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `tmplmod_rank` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_templates`
--

INSERT INTO `module_templates` (`tmplmod_id`, `tmpl_id`, `mod_id`, `tmplmod_rank`) VALUES
(1, 1, 1, 20),
(2, 1, 5, 8),
(3, 1, 4, 2),
(4, 1, 7, 7),
(6, 1, 8, 6),
(7, 1, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `page_has_quicklink`
--

CREATE TABLE `page_has_quicklink` (
  `page_id` int(11) NOT NULL,
  `quicklink_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_has_quicklink`
--

INSERT INTO `page_has_quicklink` (`page_id`, `quicklink_page_id`) VALUES
(19, 2),
(19, 4),
(19, 5),
(5, 2),
(5, 4),
(1, 2),
(1, 16),
(1, 4),
(2, 16),
(2, 4),
(16, 2),
(16, 4),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `page_meta_data`
--

CREATE TABLE `page_meta_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `footer_menu` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `quicklink_heading` varchar(255) DEFAULT NULL,
  `quicklink_menu_label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `introduction` mediumtext,
  `short_description` mediumtext,
  `description` mediumtext,
  `photo` varchar(255) DEFAULT NULL,
  `thumb_photo` varchar(255) DEFAULT NULL,
  `photo_caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext,
  `og_title` varchar(255) DEFAULT NULL,
  `og_meta_description` mediumtext,
  `og_image` varchar(255) DEFAULT NULL,
  `time_based_publishing` enum('N','Y') NOT NULL DEFAULT 'N',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('A','H','D') DEFAULT 'H',
  `rank` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `slideshow_id` int(11) DEFAULT NULL,
  `page_meta_index_id` int(11) DEFAULT '1',
  `page_js_code_head_close` mediumtext,
  `page_js_code_body_open` mediumtext,
  `page_js_code_body_close` mediumtext,
  `quicklink_photo` varchar(255) DEFAULT NULL,
  `quicklink_thumb` varchar(255) DEFAULT NULL,
  `address` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_meta_data`
--

INSERT INTO `page_meta_data` (`id`, `name`, `menu_label`, `footer_menu`, `heading`, `sub_heading`, `quicklink_heading`, `quicklink_menu_label`, `url`, `full_url`, `introduction`, `short_description`, `description`, `photo`, `thumb_photo`, `photo_caption`, `title`, `meta_description`, `og_title`, `og_meta_description`, `og_image`, `time_based_publishing`, `publish_on`, `hide_on`, `is_locked`, `status`, `rank`, `date_created`, `date_updated`, `date_deleted`, `created_by`, `updated_by`, `gallery_id`, `slideshow_id`, `page_meta_index_id`, `page_js_code_head_close`, `page_js_code_body_open`, `page_js_code_body_close`, `quicklink_photo`, `quicklink_thumb`, `address`) VALUES
(1, 'Home', 'Home', 'Home', 'Welcome to Alpine Lodge & Retreat', '', '', '', 'home', '/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', '', NULL, '/library/pexels-photo-276508.jpg', '/uploads/2018/02/img-5a728300e045f.jpg', '', 'Alpine Lodge and Retreat', '', '', '', '', 'N', NULL, NULL, 1, 'A', 1, '2016-03-17 11:10:30', '2018-02-01 03:01:21', NULL, 1, 3, 0, 1, 1, '', '', '', '', NULL, NULL),
(2, 'Accommodation', 'Accommodation', '', 'Lodge Accommodation Options', '', 'Accommodation Options', 'View Options', 'accommodation', '/accommodation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '/library/pexels-photo-276551.jpg', '/uploads/2018/02/img-5a72830a91be3.jpg', '', '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 2, '2017-06-12 23:21:07', '2018-02-01 03:01:30', NULL, 1, 3, 0, 10, 1, '', '', '', '/library/pexels-photo-279746.jpg', '/uploads/2017/11/img-5a1f2a123d676.jpg', NULL),
(4, 'Our Location', 'Our Location', '', 'Our Location', '', 'Our Location', 'Set our location', 'location', '/location', '', 'This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '', '', '', '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 4, '2017-06-12 23:22:20', '2017-12-06 01:44:47', NULL, 1, 3, 0, 0, 1, '', '', '', '/library/pexels-photo-279329.jpg', '/uploads/2017/11/img-5a1dbda0eb48f.jpg', NULL),
(5, 'About', 'About', '', 'About Us', '', 'About us', 'About Us', 'about-us', '/about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non', NULL, '/library/pexels-photo.jpg', '/uploads/2018/01/img-5a7138a8923fe.jpg', '', 'About Us', '', '', '', '', 'N', NULL, NULL, 0, 'A', 6, '2017-06-12 23:22:47', '2018-01-31 03:31:54', NULL, 1, 3, 0, 0, 1, '', '', '', '/library/pexels-photo-271634.jpg', '/uploads/2017/11/img-5a0b9949ca3c0.jpg', NULL),
(6, 'Reservations', '', '', 'Reservations', '', '', '', 'reservations', '/reservations', '', '', NULL, '', '', '', 'Bookings', '', '', '', '', 'N', NULL, NULL, 0, 'A', 8, '2017-06-12 23:22:58', '2017-12-06 01:45:41', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(7, 'Reviews', 'Reviews', '', 'What our customers say', '', '', '', 'reviews', '/about-us/reviews', '', '', NULL, '', '', '', 'What our customers say', '', '', '', '', 'N', NULL, NULL, 0, 'A', 2, '2017-06-12 23:24:39', '2017-12-06 01:45:23', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(8, 'Contact', 'Contact', '', 'Our Contact Details', '', '', '', 'contact', '/contact', 'Sub alpine retreat in St Arnaud Village, Nelson Lakes, South Island New Zealand', '', NULL, '', '', '', 'Our Contact Details', '', '', '', '', 'N', NULL, NULL, 0, 'A', 7, '2017-06-12 23:25:27', '2017-12-06 01:45:33', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(9, 'Privacy Policy', '', 'Privacy Policy', 'Privacy Policy', '', '', '', 'privacy-policy', '/privacy-policy', '', '', NULL, '', '', '', 'Privacy Policy', '', '', '', '', 'N', NULL, NULL, 0, 'A', 10, '2017-06-12 23:26:02', '2018-01-26 02:23:15', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(10, 'Terms & Conditions', '', 'Terms & Conditions', 'Terms & Conditions', '', '', '', 'terms-conditions', '/terms-conditions', 'Sub alpine retreat in St Arnaud Village, Nelson Lakes, South Island New Zealand', '', NULL, '', '', '', 'Terms & Conditions', '', '', '', '', 'N', NULL, NULL, 0, 'A', 9, '2017-06-12 23:26:39', '2018-01-26 01:05:25', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(11, '404 Error page', '', '', '404 Error page', '', '', '', '404-error-page', '/404-error-page', '', '', NULL, '', '', '', '404 Error Page', '', '', '', '', 'N', NULL, NULL, 0, 'A', 11, '2017-06-12 23:27:19', '2017-12-06 01:46:07', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(12, 'Alpine Forest Suite', 'alpine forest Suite', NULL, 'Alpine Forest Suite', NULL, NULL, NULL, 'alpine-forest-suite', '/accommodation/alpine-forest-suite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '/library/pexels-photo-279746.jpg', '/uploads/2017/11/img-5a1dc098afaca.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 1, '2017-06-14 23:01:09', '2018-02-13 21:17:36', NULL, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Address box in accommodation'),
(13, 'Rockey Mountain Suite', 'Rockey Mountain Suite', NULL, 'Rockey Mountain Suite', NULL, NULL, NULL, 'rockey-mountain-suite', '/accommodation/rockey-mountain-suite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'This is a paragraph of text about the lodge\'s facilities. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '/library/pexels-photo-276508.jpg', '/uploads/2017/11/img-5a1dc0c120f25.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 2, '2017-06-15 02:54:40', '2017-11-28 20:48:25', NULL, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Gallery', 'Gallery', '', 'Photo Gallery', '', '', '', 'gallery', '/gallery', '', '', NULL, '', '', '', 'Photo Gallery', '', '', '', '', 'N', NULL, NULL, 0, 'A', 5, '2017-06-18 23:55:47', '2017-12-06 01:44:56', NULL, 1, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(17, 'Mountain Sunrise Suite', 'Mountain Sunrise Suite', NULL, 'Mountain Sunrise Suite', NULL, NULL, NULL, 'mountain-sunrise-suite', '/accommodation/mountain-sunrise-suite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '/library/pexels-photo-276551.jpg', '/uploads/2017/11/img-5a1dc0e4a32fb.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 3, '2017-09-28 20:09:12', '2017-11-28 20:50:16', NULL, 1, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Blog', 'Blog', '', 'Blog', '', '', '', 'blog', '/about-us/blog', '', '', NULL, '', '', '', 'Blog', '', '', '', '', 'N', NULL, NULL, 0, 'A', 1, '2017-11-10 03:18:39', '2017-12-06 01:45:13', NULL, 3, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(19, 'Test Blog Category', 'Test Blog Category', NULL, 'Test Blog Category', NULL, NULL, NULL, 'test-category', '/category/test-category', NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 0, '2017-11-10 03:25:40', '2017-11-28 03:17:52', NULL, 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Test Blog Post', NULL, NULL, 'Test Blog Post', NULL, NULL, NULL, 'testblogpost', '/post/testblogpost', NULL, 'Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>\r\n\r\n<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>\r\n\r\n<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo pede, ornare a, lacinia eu, vulputate vel, nisl.</p>', '/library/pexels-photo-271634.jpg', '/uploads/2017/11/img-5a1cd50a6367a.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', NULL, '2017-11-10 03:26:26', '2017-11-28 03:16:26', NULL, 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Facitilies', 'Facitilies', '', 'Facilities', '', 'Lodge Facilities', 'Find out more', 'facitilies', '/facitilies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.', 'This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.', NULL, '/library/pexels-photo-261426.jpg', '/uploads/2018/02/img-5a7283229a377.jpg', '', 'Facilities |', '', '', '', '', 'N', NULL, NULL, 0, 'A', 3, '2017-11-15 03:51:08', '2018-02-01 03:01:54', NULL, 3, 3, 0, 10, 1, '', '', '', '/library/pexels-photo-261426.jpg', '/uploads/2017/11/img-5a1dbe4680cc5.jpg', NULL),
(24, 'test blog post 2', NULL, NULL, 'test blog post 2', NULL, NULL, NULL, '2017-11-21-024028', '/post/2017-11-21-024028', NULL, 'test 2', '', '/library/cds-6647-hdr.jpg', '/uploads/2017/11/img-5a1ccd3bb04ac.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'D', NULL, '2017-11-21 02:40:28', '2017-11-28 02:43:07', '2017-11-28 03:16:33', 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Testing Blog Category', 'Testing Blog Category', NULL, 'Testing Blog Category', NULL, NULL, NULL, 'testing-blog-category', '/category/testing-blog-category', NULL, NULL, NULL, '', NULL, NULL, 'Testing Blog Category', 'Testing Blog Category', 'Testing Blog Category', 'Testing Blog Category', '/library/pexels-photo-271634.jpg', 'N', NULL, NULL, 0, 'D', 1, '2017-11-22 01:39:16', '2017-11-22 01:40:23', '2017-11-28 03:16:44', 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Testing Blog Post 2', NULL, NULL, 'Testing Blog Post 2', NULL, NULL, NULL, 'testing-blog-post-2', '/post/testing-blog-post-2', NULL, 'Testing Blog Post 2', '<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>', '/library/pexels-photo-276551.jpg', '/uploads/2018/02/img-5a7282e18303c.jpg', NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', NULL, '2017-11-22 02:24:00', '2018-02-01 03:00:49', NULL, 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Accommodation', 'Accommodation', NULL, 'Accommodation', NULL, NULL, NULL, 'accommodation', '/category/accommodation', NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'D', NULL, '2017-11-22 02:28:06', '2017-11-22 02:28:17', '2017-11-22 02:32:06', 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Accommodation', 'Accommodation', NULL, 'Accommodation', NULL, NULL, NULL, 'accommodation-category', '/category/accommodation-category', NULL, NULL, NULL, '', NULL, NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'D', NULL, '2017-11-23 00:59:38', '2017-11-23 01:00:51', '2017-11-23 02:01:14', 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, 'Untitled post', NULL, NULL, NULL, '2018-01-19 01:07:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, 0, 'A', 0, '2018-01-19 01:07:30', '2018-01-19 01:07:30', NULL, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Payments', '', '', 'Payments', '', '', '', 'payments', '/payments', '', '', NULL, '', '', '', 'Payments', '', '', '', '', 'N', NULL, NULL, 0, 'D', NULL, '2018-01-22 22:00:02', '2018-01-22 22:00:13', '2018-01-22 22:00:54', 3, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(39, 'Payments', '', '', 'Payments', '', '', '', 'payments', '/payments', '', '', NULL, '', '', '', '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 0, '2018-01-22 22:00:57', '2018-01-22 22:01:14', NULL, 3, 3, 0, 0, 1, '', '', '', '', NULL, NULL),
(40, 'Test', 'Test', NULL, 'Test', NULL, NULL, NULL, 'test', '/accommodation/test', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 'N', NULL, NULL, 0, 'A', NULL, '2018-02-01 00:21:45', '2018-02-01 00:22:01', NULL, 3, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Untitled', NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 02:36:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, 0, 'H', 0, '2018-02-13 02:36:29', '2018-02-13 02:36:29', NULL, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Compendium', '', '', 'Compendium', '', '', '', 'compendium', '/compendium', '', '', NULL, '', '', '', '', '', '', '', '', 'N', NULL, NULL, 0, 'A', 12, '2018-02-13 02:36:43', '2018-02-13 03:42:05', NULL, 3, 3, 0, 0, 1, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_meta_index`
--

CREATE TABLE `page_meta_index` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_meta_index`
--

INSERT INTO `page_meta_index` (`id`, `name`, `value`, `title`) VALUES
(1, 'Index and Follow (Default)', 'all', 'Use this if you want to let search engines do their normal job.'),
(2, 'Do not Index or Follow', 'none', 'This is for sections of a site that shouldn\'t be indexed and shouldn\'t have links followed.'),
(3, 'Follow, but do not Index', 'noindex, follow', 'Search engine robots can follow any links on this page but will not include this page.'),
(4, 'Index but do not Follow', 'index, nofollow', 'Search engine robots should include this page but not follow any links on this page.'),
(5, 'Do not archive', 'noarchive', 'Useful if the content changes frequently: headlines, auctions, etc. The search engine still archives the information, but won\'t show it in the results.');

-- --------------------------------------------------------

--
-- Table structure for table `partner_logos`
--

CREATE TABLE `partner_logos` (
  `id` int(11) NOT NULL,
  `logo_label` varchar(10) DEFAULT NULL,
  `url_label` varchar(100) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_active` enum('N','Y') DEFAULT 'Y',
  `rank` int(11) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner_logos`
--

INSERT INTO `partner_logos` (`id`, `logo_label`, `url_label`, `photo_path`, `url`, `is_active`, `rank`, `alt_text`) VALUES
(1, 'Logo1', 'Url1', '', '', 'Y', 1, ''),
(2, 'Logo2', 'Url2', '/library/par_logo_1.png', 'http://www.test.com', 'Y', 2, 'Partner logo 2'),
(3, 'Logo3', 'Url3', '/library/par_logo_2.png', 'http://www.test.com', 'Y', 3, 'Partner logo 3');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `full_path` varchar(255) DEFAULT NULL COMMENT 'URL to the slide-image relative to the public_html folder (recommended). ',
  `thumb_path` varchar(255) DEFAULT NULL,
  `caption_heading` varchar(255) DEFAULT NULL,
  `caption` longtext,
  `alt_text` varchar(255) DEFAULT NULL,
  `button_label` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `type` enum('N','P') NOT NULL DEFAULT 'N',
  `rank` int(11) DEFAULT NULL COMMENT 'Heirarchy/Order for the slides (lower is greater)',
  `photo_group_id` int(11) DEFAULT NULL COMMENT 'Foreign Key to the slideshow group for this slide',
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `full_path`, `thumb_path`, `caption_heading`, `caption`, `alt_text`, `button_label`, `url`, `width`, `height`, `type`, `rank`, `photo_group_id`, `name`) VALUES
(87, '/library/cds-8794.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(86, '/library/cds-6824-hdr1.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(84, '/library/cds-6647-hdr.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(535, '/library/pexels-photo-279329.jpg', '/uploads/2017/11/img-5a1dd6b583d23.jpg', NULL, '', '', NULL, NULL, 6000, 4000, 'N', 9, 14, ''),
(532, '/library/pexels-photo-271676.jpg', '/uploads/2017/11/img-5a1dd6b36fed7.jpg', NULL, '', '', NULL, NULL, 6000, 4000, 'N', 6, 14, ''),
(468, '/library/pexels-photo-298007.jpg', '/uploads/2017/11/img-5a1dc3ab605da.jpg', NULL, '', '', NULL, NULL, 5616, 3744, 'N', 6, 13, ''),
(469, '/library/pexels-photo-342800.jpg', '/uploads/2017/11/img-5a1dc3ad1dfea.jpg', NULL, '', '', NULL, NULL, 2561, 2000, 'N', 7, 13, ''),
(470, '/library/pexels-photo-534151.jpg', '/uploads/2017/11/img-5a1dc3ad8dd39.jpg', NULL, '', '', NULL, NULL, 2988, 1994, 'N', 8, 13, ''),
(534, '/library/pexels-photo-276551.jpg', '/uploads/2017/11/img-5a1dd6b5519ec.jpg', NULL, '', '', NULL, NULL, 1920, 1280, 'N', 8, 14, ''),
(533, '/library/pexels-photo-276508.jpg', '/uploads/2017/11/img-5a1dd6b51d24b.jpg', NULL, '', '', NULL, NULL, 1920, 1281, 'N', 7, 14, ''),
(85, '/library/cds-6647-hdr.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(82, '/library/cds-8764-hdr.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(83, '/library/cds-6824-hdr1.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 1, NULL, NULL),
(81, '/library/cds-6647-hdr.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(80, '/library/cds-6647-hdr.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(79, '/library/cds-8770.jpg', NULL, '', '', NULL, NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(88, '/library/cds-8794.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(89, '/library/cds-8794.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, NULL, NULL),
(635, '/library/pexels-photo-279746.jpg', NULL, '', '', '', NULL, NULL, 5164, 3272, 'N', 0, 10, NULL),
(282, '/library/cds-6647-hdr.jpg', NULL, '', '', '', NULL, NULL, 1500, 1000, 'N', 0, 11, NULL),
(614, '/library/pexels-photo-271634.jpg', '/uploads/2017/11/img-5a1dd90963d4d.jpg', NULL, '', '', NULL, NULL, 2251, 1500, 'N', 8, 12, ''),
(615, '/library/pexels-photo-271654.jpg', '/uploads/2017/11/img-5a1dd909a9b34.jpg', NULL, '', '', NULL, NULL, 7308, 4555, 'N', 9, 12, ''),
(613, '/library/pexels-photo-261426.jpg', '/uploads/2017/11/img-5a1dd90936a02.jpg', NULL, '', '', NULL, NULL, 1920, 1280, 'N', 7, 12, ''),
(612, '/library/pexels-photo-257961.jpg', '/uploads/2017/11/img-5a1dd9082f952.jpg', NULL, '', '', NULL, NULL, 4496, 3372, 'N', 6, 12, ''),
(611, '/library/pexels-photo-208750.jpg', '/uploads/2017/11/img-5a1dd907d7161.jpg', NULL, '', '', NULL, NULL, 2201, 1548, 'N', 5, 12, ''),
(634, '/library/pexels-photo-106936.jpg', NULL, '', '', '', NULL, NULL, 6000, 3376, 'N', 0, 10, NULL),
(632, '/library/pexels-photo-271634.jpg', NULL, '', '', '', NULL, NULL, 2251, 1500, 'N', 1, 1, NULL),
(633, '/library/pexels-photo-534151.jpg', NULL, '', 'Relax and experience stunning mountain views at Alpine Lodge & Retreat', '', NULL, NULL, 2988, 1994, 'N', 2, 1, NULL),
(610, '/library/pexels-photo-106936.jpg', '/uploads/2017/11/img-5a1dd9060213c.jpg', NULL, '', '', NULL, NULL, 6000, 3376, 'N', 4, 12, ''),
(606, '/library/pexels-photo-298007.jpg', '/uploads/2017/11/img-5a1dd90210dc0.jpg', NULL, 'test 1', 'test image 1 alt text', NULL, NULL, 5616, 3744, 'N', 0, 12, 'test image 1 name'),
(609, '/library/pexels-photo.jpg', '/uploads/2017/11/img-5a1dd9049e3a7.jpg', NULL, '', '', NULL, NULL, 5374, 3217, 'N', 3, 12, ''),
(608, '/library/pexels-photo-534151.jpg', '/uploads/2017/11/img-5a1dd90437019.jpg', NULL, '', '', NULL, NULL, 2988, 1994, 'N', 2, 12, ''),
(471, '/library/pexels-photo.jpg', '/uploads/2017/11/img-5a1dc3ae094c4.jpg', NULL, '', '', NULL, NULL, 5374, 3217, 'N', 9, 13, ''),
(467, '/library/pexels-photo-279746.jpg', '/uploads/2017/11/img-5a1dc3aa50af7.jpg', NULL, '', '', NULL, NULL, 5164, 3272, 'N', 5, 13, ''),
(466, '/library/pexels-photo-279652.jpg', '/uploads/2017/11/img-5a1dc3a8d81cf.jpg', NULL, '', '', NULL, NULL, 5680, 3786, 'N', 4, 13, ''),
(465, '/library/pexels-photo-279329.jpg', '/uploads/2017/11/img-5a1dc3a7251c7.jpg', NULL, '', '', NULL, NULL, 6000, 4000, 'N', 3, 13, ''),
(464, '/library/pexels-photo-276551.jpg', '/uploads/2017/11/img-5a1dc3a6e99a4.jpg', NULL, '', '', NULL, NULL, 1920, 1280, 'N', 2, 13, ''),
(463, '/library/pexels-photo-276508.jpg', '/uploads/2017/11/img-5a1dc3a6b7475.jpg', NULL, '', '', NULL, NULL, 1920, 1281, 'N', 1, 13, ''),
(462, '/library/pexels-photo-271676.jpg', '/uploads/2017/11/img-5a1dc3a517b94.jpg', NULL, '', '', NULL, NULL, 6000, 4000, 'N', 0, 13, ''),
(531, '/library/pexels-photo-271654.jpg', '/uploads/2017/11/img-5a1dd6b14fec4.jpg', NULL, '', '', NULL, NULL, 7308, 4555, 'N', 5, 14, ''),
(530, '/library/pexels-photo-271634.jpg', '/uploads/2017/11/img-5a1dd6b10a85c.jpg', NULL, '', '', NULL, NULL, 2251, 1500, 'N', 4, 14, ''),
(529, '/library/pexels-photo-261426.jpg', '/uploads/2017/11/img-5a1dd6b0cc6ad.jpg', NULL, '', '', NULL, NULL, 1920, 1280, 'N', 3, 14, ''),
(528, '/library/pexels-photo-257961.jpg', '/uploads/2017/11/img-5a1dd6afbc599.jpg', NULL, '', '', NULL, NULL, 4496, 3372, 'N', 2, 14, ''),
(527, '/library/pexels-photo-208750.jpg', '/uploads/2017/11/img-5a1dd6af73c2d.jpg', NULL, '', '', NULL, NULL, 2201, 1548, 'N', 1, 14, ''),
(526, '/library/pexels-photo-106936.jpg', '/uploads/2017/11/img-5a1dd6ad8142c.jpg', NULL, '', '', NULL, NULL, 6000, 3376, 'N', 0, 14, ''),
(482, '/library/pexels-photo-279652.jpg', '/uploads/2017/11/img-5a1dc4891e71a.jpg', NULL, '', '', NULL, NULL, 5680, 3786, 'N', 0, 18, ''),
(483, '/library/pexels-photo-279746.jpg', '/uploads/2017/11/img-5a1dc48a92657.jpg', NULL, '', '', NULL, NULL, 5164, 3272, 'N', 1, 18, ''),
(484, '/library/pexels-photo-298007.jpg', '/uploads/2017/11/img-5a1dc48ba92c5.jpg', NULL, '', '', NULL, NULL, 5616, 3744, 'N', 2, 18, ''),
(485, '/library/pexels-photo-342800.jpg', '/uploads/2017/11/img-5a1dc48d6db12.jpg', NULL, '', '', NULL, NULL, 2561, 2000, 'N', 3, 18, ''),
(486, '/library/pexels-photo-534151.jpg', '/uploads/2017/11/img-5a1dc48de36d8.jpg', NULL, '', '', NULL, NULL, 2988, 1994, 'N', 4, 18, ''),
(487, '/library/pexels-photo.jpg', '/uploads/2017/11/img-5a1dc48e5db3f.jpg', NULL, '', '', NULL, NULL, 5374, 3217, 'N', 5, 18, ''),
(488, '/library/pexels-photo-106936.jpg', '/uploads/2017/11/img-5a1dc48fc0ee6.jpg', NULL, '', '', NULL, NULL, 6000, 3376, 'N', 6, 18, ''),
(489, '/library/pexels-photo-208750.jpg', '/uploads/2017/11/img-5a1dc491a1487.jpg', NULL, '', '', NULL, NULL, 2201, 1548, 'N', 7, 18, ''),
(490, '/library/pexels-photo-257961.jpg', '/uploads/2017/11/img-5a1dc491ea703.jpg', NULL, '', '', NULL, NULL, 4496, 3372, 'N', 8, 18, ''),
(491, '/library/pexels-photo-261426.jpg', '/uploads/2017/11/img-5a1dc492f0083.jpg', NULL, '', '', NULL, NULL, 1920, 1280, 'N', 9, 18, ''),
(497, '/library/pexels-photo-271654.jpg', NULL, '', 'Superior Quality Accommodation', '', NULL, NULL, 7308, 4555, 'N', 2, 19, NULL),
(496, '/library/pexels-photo-342800.jpg', NULL, '', 'Superior Quality Accommodation', '', NULL, NULL, 2561, 2000, 'N', 1, 19, NULL),
(498, '/library/pexels-photo-276551.jpg', NULL, '', 'Superior Quality Accommodation', '', NULL, NULL, 1920, 1280, 'N', 1, 20, NULL),
(499, '/library/pexels-photo-208750.jpg', NULL, '', 'Superior Quality Accommodation', '', NULL, NULL, 2201, 1548, 'N', 2, 20, NULL),
(624, '/library/pexels-photo-276508.jpg', NULL, '', '', '', NULL, NULL, 1920, 1281, 'N', 1, 21, NULL),
(625, '/library/pexels-photo-271676.jpg', NULL, '', 'Superior Quality Accommodation', '', NULL, NULL, 6000, 4000, 'N', 2, 21, NULL),
(607, '/library/pexels-photo-342800.jpg', '/uploads/2017/11/img-5a1dd903be866.jpg', NULL, '', '', NULL, NULL, 2561, 2000, 'N', 1, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `photo_group`
--

CREATE TABLE `photo_group` (
  `id` int(11) NOT NULL COMMENT 'Primary key for the slideshow/gallery group',
  `name` varchar(255) NOT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `type` enum('C','G','S') NOT NULL DEFAULT 'S' COMMENT 'C - Carousel, G - Gallery, S - Slideshow(Default)',
  `show_in_cms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `show_on_gallery_page` enum('N','Y') NOT NULL DEFAULT 'N',
  `rank` int(11) NOT NULL DEFAULT '0',
  `auto_rotate` enum('Y','N') DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_group`
--

INSERT INTO `photo_group` (`id`, `name`, `menu_label`, `type`, `show_in_cms`, `show_on_gallery_page`, `rank`, `auto_rotate`) VALUES
(1, 'Home Page Slideshow', NULL, 'S', 'Y', 'N', 0, 'N'),
(14, 'Food & Beverage', 'Food & Beverage', 'G', 'Y', 'Y', 3, 'Y'),
(13, 'Facilities', 'Facilities', 'G', 'Y', 'Y', 2, 'Y'),
(12, 'Accommodation', 'Accommodation', 'G', 'Y', 'Y', 1, 'Y'),
(11, 'test', NULL, 'S', 'Y', 'N', 0, 'Y'),
(10, 'Accommodation sildeshow', NULL, 'S', 'Y', 'N', 0, 'Y'),
(18, 'Location', 'Location', 'G', 'Y', 'Y', 4, 'Y'),
(19, 'Rocky Lodge slideshow', NULL, 'S', 'Y', 'N', 0, 'Y'),
(20, 'Mountain Sunrise Suite', NULL, 'S', 'Y', 'N', 0, 'Y'),
(21, 'Alpine Forest Suite', NULL, 'S', 'Y', 'N', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_account`
--

CREATE TABLE `pmt_account` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `user` varchar(255) NOT NULL,
  `api_key` text NOT NULL,
  `logo_path` varchar(150) DEFAULT NULL,
  `is_live` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `has_cc` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `type` enum('dps','paypal') NOT NULL DEFAULT 'dps'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_account`
--

INSERT INTO `pmt_account` (`id`, `label`, `user`, `api_key`, `logo_path`, `is_live`, `has_cc`, `type`) VALUES
(1, 'DPS', 'Tomahawk_Dev', '9d11e64e5f26792355ac0e16739a2bbc3d1818a14e4f165c2e307b0b8b117aa0', '/graphics/dps-logo.png', 'N', 'Y', 'dps'),
(2, 'PayPal', 'ameyaaklekar-facilitator@gmail.com', '67gxI27ABjGCqyQ7Z8rv-QP6zbvFvuHPfrsAUa4Y3Z9S63P1nbw5iFfjUUK', '/graphics/paypal-logo.png', 'N', 'N', 'paypal'),
(3, 'DPS', '', '', '/graphics/dps-logo.png', 'Y', 'Y', 'dps'),
(4, 'PayPal', '', '', '/graphics/paypal-logo.png', 'Y', 'N', 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_account_has_pmt_credit_card`
--

CREATE TABLE `pmt_account_has_pmt_credit_card` (
  `pmt_account_id` int(11) NOT NULL,
  `pmt_credit_card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_account_has_pmt_credit_card`
--

INSERT INTO `pmt_account_has_pmt_credit_card` (`pmt_account_id`, `pmt_credit_card_id`) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pmt_credit_card`
--

CREATE TABLE `pmt_credit_card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_credit_card`
--

INSERT INTO `pmt_credit_card` (`id`, `name`, `image_path`) VALUES
(1, 'Visa', '/graphics/credit-cards/visa.png'),
(2, 'MasterCard', '/graphics/credit-cards/master-card.png'),
(3, 'American Express', '/graphics/credit-cards/amex.png'),
(4, 'Diners Club', '/graphics/credit-cards/diners.png');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_history_status`
--

CREATE TABLE `pmt_history_status` (
  `id` int(11) NOT NULL,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_history_status`
--

INSERT INTO `pmt_history_status` (`id`, `label`, `description`) VALUES
(1, 'New', 'The request was created.'),
(2, 'Viewed', 'The request has been viewed by the client.'),
(3, 'Success', 'The client paid the request amount through'),
(4, 'Notify Admin Success', 'A notification email was sent successfully to you, informing you that a payment was made.'),
(5, 'Notify Client Success', 'A notification email was sent successfully to the client, regarding their payment transaction.\n'),
(6, 'Declined', 'Client payment attempt was unsuccessful.'),
(7, 'Sent', 'The request was sent successfully to the client.'),
(8, 'Notify Admin Fail', 'A notification email was sent successfully to you, informing you that a payment was declined.');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_message`
--

CREATE TABLE `pmt_message` (
  `id` int(11) NOT NULL,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_message`
--

INSERT INTO `pmt_message` (`id`, `label`, `description`) VALUES
(1, 'New', 'A newly created request.'),
(2, 'Viewed by client.', 'The request has been viewed by the client.'),
(3, 'Accepted by merchant', 'Payment Accepted. Your request has been processed through Direct Payment Solutions, and payment was accepted.'),
(4, 'Declined by merchant', 'Payment Declined. The request has been processed through Direct Payment Solutions, but the payment was declined. Please try again.'),
(5, 'Cancelled by client', 'The client cancelled the request.'),
(6, 'Deleted', 'The request has been deleted.'),
(7, 'Sent', 'Your request was sent successfully.');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_payer`
--

CREATE TABLE `pmt_payer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmt_payer`
--

INSERT INTO `pmt_payer` (`id`, `first_name`, `last_name`, `full_name`, `email_address`) VALUES
(56, 'Q', 'A', 'Q A', 'ian@tomahawk.co.nz');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_request`
--

CREATE TABLE `pmt_request` (
  `id` int(11) NOT NULL,
  `public_token` varchar(15) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` enum('A','C','D','N','P') DEFAULT 'N' COMMENT 'A - Approved, C - Canceled, D - Declined, N - New, P - Pending',
  `cms_status` enum('A','D') NOT NULL DEFAULT 'A' COMMENT 'A - Active, D - Deleted',
  `reference` varchar(100) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `email_sent` enum('N','Y') NOT NULL DEFAULT 'N',
  `email_subject` varchar(150) DEFAULT NULL,
  `email_content` text,
  `comments` text,
  `created_on` datetime DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `declined_on` datetime DEFAULT NULL,
  `pmt_payer_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F',
  `pmt_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_request`
--

INSERT INTO `pmt_request` (`id`, `public_token`, `amount`, `status`, `cms_status`, `reference`, `request_url`, `email_sent`, `email_subject`, `email_content`, `comments`, `created_on`, `approved_on`, `declined_on`, `pmt_payer_id`, `email_template_id`, `payment_type`, `pmt_transaction_id`) VALUES
(43, '34a6923befn34e6', '1.00', 'P', 'A', 'TEST', 'https://alpine.netzone.nz/payments/?pid=34a6923befn34e6', 'N', 'Payment Details', '<p>Dear Q A,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://alpine.netzone.nz/payments/?pid=34a6923befn34e6\" target=\"_blank\">https://alpine.netzone.nz/payments/?pid=34a6923befn34e6</a></p>', NULL, '2018-01-22 22:01:38', NULL, NULL, 56, 4, 'F', 56);

-- --------------------------------------------------------

--
-- Table structure for table `pmt_request_history`
--

CREATE TABLE `pmt_request_history` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `label` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `pmt_request_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_request_history`
--

INSERT INTO `pmt_request_history` (`id`, `date_time`, `label`, `details`, `pmt_request_id`) VALUES
(251, '2018-01-22 22:01:38', 'NEW', 'The request was created.', 43),
(252, '2018-01-22 22:01:38', 'SENT', 'The request was sent successfully to the client.', 43),
(253, '2018-01-22 22:01:54', 'VIEWED', 'The request has been viewed by the client.', 43);

-- --------------------------------------------------------

--
-- Table structure for table `pmt_settings`
--

CREATE TABLE `pmt_settings` (
  `id` int(11) NOT NULL,
  `encryption_key` varchar(40) NOT NULL,
  `notification_email_address` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text,
  `success_message` text,
  `fail_message` text,
  `success_email_body` text,
  `fail_email_body` text,
  `processed_message` text,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F' COMMENT 'F: Full payment. P: pre-auth payment'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmt_settings`
--

INSERT INTO `pmt_settings` (`id`, `encryption_key`, `notification_email_address`, `terms_and_conditions`, `success_message`, `fail_message`, `success_email_body`, `fail_email_body`, `processed_message`, `payment_type`) VALUES
(1, 'aafd03ccdce3520545c5f1c5599f6e60', 'ian@tomahawk.co.nz', '<p><strong>Payment &ndash; </strong>A deposit of 25% of the total cost of your booking plus full payment of the itinerary planning fee is required once your bookings have been confirmed. The balance is then payable 42 days prior to the first day of your New Zealand itinerary. If a booking is made within 42 days of the first day of your New Zealand itinerary, full payment is required at the time of booking confirmation.</p>\r\n\r\n<p>Payments can either be made by credit card via the secure server on our web site or by direct crediting our bank account. Please be aware that for if you wish to make your payment by either Visa or MasterCard a 1.5% credit card fee will be applicable. If you would prefer to make your payment by American Express a 2.5% credit card fee will be applicable.</p>\r\n\r\n<p>Alternatively, you can choose to pay by direct credit into our bank account. We will absorb the cost of the deposit into our bank account; however any applicable fees charged by your bank will be your responsibility.</p>\r\n\r\n<p><strong>Cancellations Charges &ndash; </strong>If you have to cancel all, or part of your holiday for any reason, the following cancellation fees are applicable. For cancellation more than 30 days prior to your arrival in New Zealand: 25% (deposit amount); 8-30 days prior to your arrival: 40%; 7 days or less: 100%.<br />\r\nImportant note - Experience New Zealand Travel recommends that you obtain personal travel insurance to cover any cancellation of part or all of your holiday.</p>\r\n\r\n<p><strong>Amendment Fee:</strong> An amendment fee of NZ$20 per amendment will apply when a confirmed booking is changed.</p>\r\n\r\n<p><strong>ENZTL Responsibilities </strong>- ENZTL operate the experiencenz.com web site as agents for the owner/operators identified in the web site. Whilst we have visited (and do visit on a regular basis) all of the properties on the web site, we are not responsible for the individual properties. We are not liable for any loss or damage caused by any failure or improper performance by any of the owner/operators. However, in the event that a owner/operator cannot provide you with contracted accommodation, we will use our best endeavours to provide you with alternative accommodation, but otherwise we shall have no liability to you.</p>', '<p><span style=\"font-size: 26px;\"><strong>Payment Success!</strong></span></p>\r\n\r\n<p>Your payment request was processed successfully. A confirmation email has been sent to <u>{email_address}</u></p>\r\n\r\n<p>Thank you for your booking.</p>', '<p><span style=\"font-size: 26px;\"><strong>Payment Failed</strong></span></p>\r\n\r\n<p>Unfortunately, your payment was not processed.<br />\r\nThe response from your bank was <strong>{response_text}</strong>.</p>\r\n\r\n<p>Please check your email as you&#39;ll be emailed a new link to try again.</p>', '<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for making payment for our request on&nbsp;{request_date}.</p>\r\n\r\n<p>The amount of {currency_symbol}{amount} was successfully transferred to our bank account.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment SUCCESSFUL</strong></p>\r\n\r\n<p>Please keep this email for your records.</p>\r\n\r\n<p>If you have any further queries, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>', '<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for visiting our payment page and trying to make payment. Unfortunately the payment was declined.</p>\r\n\r\n<p>Amount of {currency_symbol}{amount} &nbsp;is still withstanding.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment FAILED</strong></p>\r\n\r\n<p>To re-process payment, please visit this link:</p>\r\n\r\n<p><a href=\"{payment_url}\">{payment_url}</a></p>\r\n\r\n<p>If you have any issues with payment, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>', '<p><span style=\"font-size: 26px;\"><strong>Payment Transaction Already Processed</strong></span></p>\r\n\r\n<p>The payment request you tried to process has already been processed.</p>\r\n\r\n<p>You&#39;re seeing this page because the transaction request you tried to process has previously been completed successfully or canceled.&nbsp;</p>', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_template`
--

CREATE TABLE `pmt_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email_address` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text,
  `logo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_template`
--

INSERT INTO `pmt_template` (`id`, `name`, `short_description`, `from_name`, `from_email_address`, `subject`, `content`, `logo_path`) VALUES
(1, 'Template 4', '', '', '', '', '<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>', '/graphics/logo-sm.png'),
(2, 'Template 3', '', '', '', '', '<p>Dear {full_name},</p>\r\n\r\n<p><br />\r\nNZ${payment_amount}&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n{payment_link}</p>\r\n\r\n<p>&nbsp;</p>', '/graphics/logo-sm.png'),
(3, 'Template 2', '', '', '', 'Payment link', '<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>', '/graphics/logo-drivingnz.png'),
(4, 'Template 1', '', '', '', 'Payment Details', '<p>Dear {full_name},</p>\r\n\r\n<p>&nbsp;NZ${payment_amount}</p>\r\n\r\n<p>{payment_link}</p>', '/graphics/logo-drivingnz.png');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_template_tag`
--

CREATE TABLE `pmt_template_tag` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_template_tag`
--

INSERT INTO `pmt_template_tag` (`id`, `label`, `key`, `description`) VALUES
(1, 'First Name', 'first_name', 'Recipient\'s first name.'),
(2, 'Last Name', 'last_name', 'Recipient\'s last name.'),
(3, 'Full Name', 'full_name', 'Recipient\'s full name.'),
(4, 'Payment Amount', 'payment_amount', 'Amount of the payment request.'),
(5, 'Payment_Link', 'payment_link', 'Link to the payment page.'),
(6, 'Currency Symbol', 'currency_symbol', 'Currency Symbol displayed before any amount');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_transaction`
--

CREATE TABLE `pmt_transaction` (
  `id` int(11) NOT NULL,
  `amount_settlement` decimal(10,2) DEFAULT '0.00',
  `auth_code` varchar(250) DEFAULT NULL,
  `cc_name` varchar(250) DEFAULT NULL,
  `cc_holder_name` varchar(250) DEFAULT NULL,
  `cc_number` varchar(200) DEFAULT NULL,
  `cc_date_expire` varchar(100) DEFAULT NULL,
  `dps_billing_id` varchar(20) DEFAULT NULL,
  `dps_ref` varchar(200) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `data1` varchar(250) DEFAULT NULL,
  `paypal_payer_id` varchar(50) DEFAULT NULL,
  `paypal_payer_status` varchar(50) DEFAULT NULL,
  `currency_settlement` varchar(100) DEFAULT 'NZD',
  `client_ip` varchar(150) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `currency_input` varchar(100) DEFAULT NULL,
  `merchant_ref` varchar(255) DEFAULT NULL,
  `response_text` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `response_url` mediumtext NOT NULL,
  `date_processsed` datetime DEFAULT NULL,
  `pmt_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_transaction`
--

INSERT INTO `pmt_transaction` (`id`, `amount_settlement`, `auth_code`, `cc_name`, `cc_holder_name`, `cc_number`, `cc_date_expire`, `dps_billing_id`, `dps_ref`, `type`, `data1`, `paypal_payer_id`, `paypal_payer_status`, `currency_settlement`, `client_ip`, `txn_id`, `currency_input`, `merchant_ref`, `response_text`, `mac_address`, `response_url`, `date_processsed`, `pmt_account_id`) VALUES
(56, '1.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'NZD', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `redirect`
--

CREATE TABLE `redirect` (
  `id` int(11) NOT NULL,
  `old_url` longtext NOT NULL,
  `new_url` longtext NOT NULL,
  `status_code` int(11) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `redirect`
--

INSERT INTO `redirect` (`id`, `old_url`, `new_url`, `status_code`, `status`) VALUES
(1, 'http://www.maramavineyard.com/vineyard', 'http://www.maramavineyard.com/gallery', 301, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  `second_icon_path` varchar(255) DEFAULT NULL,
  `icon_alt` varchar(255) DEFAULT NULL,
  `widget_blob` mediumtext,
  `placement` enum('L','R') DEFAULT 'L',
  `use_icon` enum('0','1') DEFAULT '0',
  `icon_cls` varchar(255) DEFAULT NULL,
  `element_class` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `has_widget` enum('0','1') DEFAULT '0',
  `is_external` enum('0','1') DEFAULT '0',
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `label`, `url`, `title`, `icon_path`, `second_icon_path`, `icon_alt`, `widget_blob`, `placement`, `use_icon`, `icon_cls`, `element_class`, `rank`, `has_widget`, `is_external`, `is_active`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'Join us on Facebook', '/themes/global/graphics/social-icons/icon-facebook.png', NULL, 'Join us on Facebook', NULL, 'L', '1', 'fa fa-facebook', NULL, 1, '0', '1', '1'),
(2, 'Instagram', 'https://www.instagram.com', 'Follow us on Instagram', '/themes/global/graphics/social-icons/icon-instagram.png', NULL, 'Follow us on Instagram', NULL, 'L', '1', 'fa fa-instagram', NULL, 2, '0', '1', '1'),
(3, 'Twitter', 'https://www.twitter.com', 'Follow us on Twitter', '/themes/global/graphics/social-icons/icon-twitter.png', NULL, 'Follow us on Twitter', NULL, 'L', '1', 'fa fa-twitter', NULL, 4, '0', '1', '1'),
(4, 'Youtube', 'https://www.youtube.com', 'Join us on Youtube', '/themes/global/graphics/social-icons/icon-youtube.png', NULL, 'Join us on Youtube', NULL, 'L', '1', 'fa fa-youtube', NULL, 3, '0', '1', '1'),
(5, 'Google+', 'https://plus.google.com/discover', 'Join us on Google+', '/themes/global/graphics/social-icons/icon-googleplus.png', NULL, 'Join us on Google+', NULL, 'L', '1', 'fa fa-google-plus', NULL, 5, '0', '1', '1'),
(6, 'Pinterest', 'https://www.pinterest.nz', 'Join us on Pinterest', '/themes/global/graphics/social-icons/icon-pinterest.png', NULL, 'Join us on Pinterest', NULL, 'L', '1', 'fa fa-pinterest-p', NULL, 6, '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `templates_normal`
--

CREATE TABLE `templates_normal` (
  `tmpl_id` int(11) NOT NULL COMMENT 'Primary key for template',
  `tmpl_name` varchar(100) DEFAULT NULL COMMENT 'Template name',
  `tmpl_path` varchar(100) DEFAULT NULL COMMENT 'Template URL (i.e. ''default'', ''shop'', ''googlemap'' etc). It is recommended that you leave the extension up to the application/code.',
  `tmpl_previewimg` varchar(100) DEFAULT NULL,
  `tmpl_nummoduletags` int(11) NOT NULL DEFAULT '0',
  `tmpl_showincms` varchar(1) NOT NULL DEFAULT 'Y',
  `tmpl_mobile` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates_normal`
--

INSERT INTO `templates_normal` (`tmpl_id`, `tmpl_name`, `tmpl_path`, `tmpl_previewimg`, `tmpl_nummoduletags`, `tmpl_showincms`, `tmpl_mobile`) VALUES
(1, 'Default', 'index.html', NULL, 0, 'Y', NULL),
(2, 'Compendium', 'compendium.html', NULL, 0, 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL COMMENT 'Primary key for the testimonial',
  `person` varchar(100) DEFAULT NULL COMMENT 'Who represents this testimonial',
  `company` varchar(100) NOT NULL,
  `detail` longtext COMMENT 'The testimonial itself',
  `status` enum('A','D','H') DEFAULT 'H' COMMENT 'Boolean for whether or not the current testimonial should be displayed. (0 = off, 1=on)',
  `rank` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `person`, `company`, `detail`, `status`, `rank`) VALUES
(10, 'The Snow Family', '', 'We absolutely loved every minute of our stay at Alpine Lodge & Retreat and look forward to our return vacation next year!', 'A', 0),
(14, 'The Rain Family', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 'A', 0),
(11, 'Test person 2', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 'D', 0),
(12, 'Test person 3', '', 'Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.', 'D', 0),
(13, 'Testing Person', '', 'Testing Review', 'D', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accommodation_has_compendium_section`
--
ALTER TABLE `accommodation_has_compendium_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accom_feature`
--
ALTER TABLE `accom_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accom_has_feature`
--
ALTER TABLE `accom_has_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beamer_campaign`
--
ALTER TABLE `beamer_campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beamer_campaign_sections`
--
ALTER TABLE `beamer_campaign_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beamer_campaign_section_items`
--
ALTER TABLE `beamer_campaign_section_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beamer_email`
--
ALTER TABLE `beamer_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_accessgroups`
--
ALTER TABLE `cms_accessgroups`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `cms_blacklist_user`
--
ALTER TABLE `cms_blacklist_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_login_attempt`
--
ALTER TABLE `cms_login_attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`cmsset_id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `color_palettes`
--
ALTER TABLE `color_palettes`
  ADD PRIMARY KEY (`color_palette_id`);

--
-- Indexes for table `color_palette_hex`
--
ALTER TABLE `color_palette_hex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compendium_section`
--
ALTER TABLE `compendium_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_column`
--
ALTER TABLE `content_column`
  ADD KEY `content_row_id` (`content_row_id`);

--
-- Indexes for table `content_row`
--
ALTER TABLE `content_row`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_meta_data_id` (`page_meta_data_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_entry`
--
ALTER TABLE `form_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_entry_data`
--
ALTER TABLE `form_entry_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_importantpages`
--
ALTER TABLE `general_importantpages`
  ADD PRIMARY KEY (`imppage_id`);

--
-- Indexes for table `general_pages`
--
ALTER TABLE `general_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_parent` (`parent_id`),
  ADD KEY `page_meta_data_id` (`page_meta_data_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installed_modules`
--
ALTER TABLE `installed_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `module_pages`
--
ALTER TABLE `module_pages`
  ADD PRIMARY KEY (`modpages_id`);

--
-- Indexes for table `module_templates`
--
ALTER TABLE `module_templates`
  ADD PRIMARY KEY (`tmplmod_id`);

--
-- Indexes for table `page_meta_data`
--
ALTER TABLE `page_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bsh_query_1` (`status`,`menu_label`,`heading`,`title`,`sub_heading`);

--
-- Indexes for table `page_meta_index`
--
ALTER TABLE `page_meta_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_logos`
--
ALTER TABLE `partner_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_group` (`photo_group_id`);

--
-- Indexes for table `photo_group`
--
ALTER TABLE `photo_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_account`
--
ALTER TABLE `pmt_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_account_has_pmt_credit_card`
--
ALTER TABLE `pmt_account_has_pmt_credit_card`
  ADD PRIMARY KEY (`pmt_account_id`,`pmt_credit_card_id`);

--
-- Indexes for table `pmt_credit_card`
--
ALTER TABLE `pmt_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_history_status`
--
ALTER TABLE `pmt_history_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name` (`label`);

--
-- Indexes for table `pmt_message`
--
ALTER TABLE `pmt_message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name` (`label`);

--
-- Indexes for table `pmt_payer`
--
ALTER TABLE `pmt_payer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_request`
--
ALTER TABLE `pmt_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pmt_request_pmt_transaction_idx` (`pmt_transaction_id`),
  ADD KEY `fk_pmt_payer1_idx` (`pmt_payer_id`),
  ADD KEY `email_template_id` (`email_template_id`);

--
-- Indexes for table `pmt_request_history`
--
ALTER TABLE `pmt_request_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pmt_request_id` (`pmt_request_id`);

--
-- Indexes for table `pmt_settings`
--
ALTER TABLE `pmt_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_template`
--
ALTER TABLE `pmt_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_template_tag`
--
ALTER TABLE `pmt_template_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_transaction`
--
ALTER TABLE `pmt_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirect`
--
ALTER TABLE `redirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates_normal`
--
ALTER TABLE `templates_normal`
  ADD PRIMARY KEY (`tmpl_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `accommodation_has_compendium_section`
--
ALTER TABLE `accommodation_has_compendium_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6978;
--
-- AUTO_INCREMENT for table `accom_feature`
--
ALTER TABLE `accom_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `accom_has_feature`
--
ALTER TABLE `accom_has_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;
--
-- AUTO_INCREMENT for table `beamer_campaign`
--
ALTER TABLE `beamer_campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `beamer_campaign_sections`
--
ALTER TABLE `beamer_campaign_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `beamer_campaign_section_items`
--
ALTER TABLE `beamer_campaign_section_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `beamer_email`
--
ALTER TABLE `beamer_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_accessgroups`
--
ALTER TABLE `cms_accessgroups`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_blacklist_user`
--
ALTER TABLE `cms_blacklist_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_login_attempt`
--
ALTER TABLE `cms_login_attempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `cmsset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for user', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `color_palette_hex`
--
ALTER TABLE `color_palette_hex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `compendium_section`
--
ALTER TABLE `compendium_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `content_row`
--
ALTER TABLE `content_row`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `form_entry`
--
ALTER TABLE `form_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `form_entry_data`
--
ALTER TABLE `form_entry_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `general_importantpages`
--
ALTER TABLE `general_importantpages`
  MODIFY `imppage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `general_pages`
--
ALTER TABLE `general_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for pages', AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for include', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `module_pages`
--
ALTER TABLE `module_pages`
  MODIFY `modpages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `module_templates`
--
ALTER TABLE `module_templates`
  MODIFY `tmplmod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `page_meta_data`
--
ALTER TABLE `page_meta_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `page_meta_index`
--
ALTER TABLE `page_meta_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `partner_logos`
--
ALTER TABLE `partner_logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;
--
-- AUTO_INCREMENT for table `photo_group`
--
ALTER TABLE `photo_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the slideshow/gallery group', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pmt_account`
--
ALTER TABLE `pmt_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pmt_credit_card`
--
ALTER TABLE `pmt_credit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pmt_history_status`
--
ALTER TABLE `pmt_history_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pmt_message`
--
ALTER TABLE `pmt_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pmt_payer`
--
ALTER TABLE `pmt_payer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `pmt_request`
--
ALTER TABLE `pmt_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pmt_request_history`
--
ALTER TABLE `pmt_request_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `pmt_settings`
--
ALTER TABLE `pmt_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pmt_template`
--
ALTER TABLE `pmt_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pmt_template_tag`
--
ALTER TABLE `pmt_template_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pmt_transaction`
--
ALTER TABLE `pmt_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `redirect`
--
ALTER TABLE `redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `templates_normal`
--
ALTER TABLE `templates_normal`
  MODIFY `tmpl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for template', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the testimonial', AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
