-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2022 at 10:11 AM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `designekta`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'We are a design based enterprise dealing in Tech and Design product &amp; services. We are flexible, agile and committed to your success. Just think of us as an extension of your team using our experience to create results that everyone is insanely proud of.', 'thumb9.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `position`, `image`, `email`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `google`, `content`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Albert Muhatia', 'Web Developer', '2018-12-1423:43:03imageloading.gif', 'albertmuhatia@gmail.com', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'www,instagram.com', 'http://www.youtube.com', 'http://google.com', NULL, '$2y$10$bGErkjmtNonogrSSaVKCbe5OBkGdQ0Mjdwqtuk0DvqxU.tOdDbNsC', 'tyQPtM8KjXj5LLxHA8f03j0b9oCnchJTfX7mXIRXLAz6Ns5ebAyW2XBNjnEv', NULL, NULL),
(2, 'John  Kirimi', 'Graphics Designer', 'loading.gif', 'johniecarlos@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZVksUQmOIHQ/48kTaWvtK.kL7I74d./NMjGUZNO4e6Me8S.T2RMua', 'g83dEu2PXai5gt5CO2n00Pq0I116ypSKQwOXEGtIQejG8jZpe3Hm3VYHEYyu', '2018-12-14 20:18:19', '2018-12-14 20:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Page Banner', 'imgonline-com-ua-CompressToSize-h0OXmYInD9Nl5kD9.jpg', 'Home Offers', NULL, NULL),
(2, 'counter', 'banner1.jpg', 'Home Offers', '2018-12-14 13:00:00', '2018-12-14 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slung`, `author`, `cat`, `image_one`, `image_two`, `image_three`, `image_four`, `content`, `created_at`, `updated_at`) VALUES
(1, 'How to Configure Webmail On Gmail', 'how-to-configure-webmail-on-gmail', 'Albert Muhatia', '1', '2021-01-2616:23:33imageGmail-logo.jpg', NULL, NULL, NULL, '<div><div><span>1. Login to gmail<br>2. On the left-hand corner, click settings</span><span>3. Select settings in the dropdown.<br>4. Select the accounts and import tab</span><span>5. Click ‘ADD POP3 mail accounts for you own’<br>6. Enter your email(webmail) and click next step<br>7. Enter your full email address(webmail) in the Username field and your webmail password.<br>8. Choose any other thing you may want but don’t change the server or the port number’leave them as they are.<br>9. Click add account.<br>10. On the next step,check the first box(yes I want to be able to send mails) Click next step<br>11. Check the box(treat as an alias) and click next<br>12. -Smtp server: mail.yourdomainname<br>-username: your full email address(webmail)<br>-passsword: webmail password<br>-Choose Port 25 (Non SSL) or 465 (SSL).<br>13. click add account.<br>14. enjoy.</span></div></div><br>', '2021-01-26 13:23:33', '2021-01-26 13:23:33'),
(2, 'How to create email accounts on cPanel.', 'how-to-create-email-accounts-on-cpanel', 'Albert Muhatia', '1', '2021-01-2616:59:54imagepastedimage0.png', NULL, NULL, NULL, 'Professional emails or domain emails can be created once you have an active domain name and a hosting. The hosting is meant to give space for files and accounts including email accounts. This guide gives a step by step procedure of creating domain emails on the cpanel.What is required<ul><li>An active domain name</li><li>A hosting package.</li></ul><div>Step ILogin to the panel (cpanel) of your hosting package using the credentials provided for you. Once&nbsp; you&nbsp; are logged in, navigate to the&nbsp;EMAIL section&nbsp;of the cpanel <br></div><br><div><br></div><div><br></div><div><b>Step ii</b></div><div><b></b><br></div><div>Click to open the&nbsp;Email accounts link, and proceed to the&nbsp;“Create”<span>&nbsp;button on the far right, to start the creation of email accounts.<br></span></div><div><br></div><div><b>Step III</b><br></div><div><br></div><div><span>With more than 1 domains in the same cpanel, you have the&nbsp; option of choosing a domain name for the emails in the first drop down list as shown below. In the username field, enter the&nbsp;preferred username for instance, admin, support, info&nbsp;e.t.c. Do not enter&nbsp; the domain name as it will be appended as&nbsp; it appears on the right. If you enter&nbsp;admin, the resulting address will be&nbsp;<a target=\"\" rel=\"\">admin@domain.co.ke</a>.</span></div><div><br></div><div><br><b>Step IV</b><br></div><div><br></div><div>You can allocate the storage space or otherwise leave it to default and complete the process by clicking&nbsp; on the create button at the&nbsp; bottom. That is all your email account has been created. You can now access the inbox in the ways explained in step&nbsp;V&nbsp;below.</div><div><br></div><div><br><b>Step V</b></div><div><br></div><div>How to login to domain emails.Option 1-Direct webmail link<span>For a domain email, you can simply login using a link in the following format:&nbsp;domain.co.ke/webmail.&nbsp;This is simply typing the full domain name&nbsp; and / webmail on the browser.</span>Option 2-Via cPanelIn the cPanel, under EMail accounts section as shown&nbsp; in step 1 above, you can auto login to the respective email account by clicking on the Manage button beside each account as shown below;</div><br><br><br><br>', '2021-01-26 13:59:54', '2021-01-26 13:59:54'),
(3, 'How to install Let’s Encrypt in your cPanel', 'how-to-install-lets-encrypt-in-your-cpanel', 'Albert Muhatia', '1', '2021-01-2617:05:07imagele-logo-twitter-noalpha.png', NULL, NULL, NULL, 'To install the free Let’s Encrypt SSL, please follow the steps below:<ul><li>Login to&nbsp;the cPanel</li><li>Navigate to&nbsp;Let’s Encrypt&nbsp;icon in the cPanel under&nbsp;Security&nbsp;section</li></ul><div><br></div><div><ul><li>Click&nbsp;Issue&nbsp;link</li></ul></div><br><ul><li>On the page that appears, click&nbsp;Issue&nbsp;button at the base of the page. The certificate will now install. Should take about 30 seconds to 1 minute. Once through, you’ll get a notice saying the SSL has been installed successfully.</li></ul><div></div><br><ul><li>Now, on cPanel, go to&nbsp;File Manager&gt;&gt;public_html&nbsp;folder. On your top right, click&nbsp;Settings&gt;&gt;Show Hidden Files&nbsp;then&nbsp;Save.</li></ul><br><ul><li>Check for a file called&nbsp;.htaccess&nbsp;and add the following code at the top and Save</li></ul><br><code><div>RewriteEngine On</div></code><div><code>RewriteCond %{HTTPS} off<br></code></div><div><code>RewriteRule ^(.*)$ <a href=\"https://%{HTTP_HOST}%{REQUEST_URI}\" target=\"\" rel=\"\">https://%{HTTP_HOST}%{REQUEST_URI}</a> [L,R=301]</code><br></div><div><br></div><div>Note: If you are installing the Let’s Encrypt SSL on a&nbsp;subdomain, instead of navigating to&nbsp;File Manager &gt;&gt; public_html&nbsp;folder as described in step 6, you will navigate to the root folder of the subdomain. The same applies to&nbsp;Addon domains. Simply put, where your website files will reside is where you place the&nbsp;.htaccess&nbsp;file after installing Let’s Encrypt</div><ul><li>Now that You have installed Let’s Encrypt, access the site and confirm it’s on https!</li></ul><br>', '2021-01-26 14:05:07', '2021-01-26 14:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `cat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`, `created_at`, `updated_at`) VALUES
(1, 'Websites', '2018-12-12 12:37:00', '2018-12-12 12:37:00'),
(2, 'Merchandise', '2018-12-12 12:37:12', '2018-12-12 12:37:12'),
(3, 'New', '2018-12-14 17:19:30', '2018-12-14 17:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `blog_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

CREATE TABLE `copyright` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, ' This website and its content is copyright of Designekta Studios - ©\r\nDesignekta Studios  2019. All rights reserved.\r\n\r\nAny redistribution or reproduction of part or all of the contents in\r\nany form is partially prohibited other than the following:\r\n<ul><li>\r\n	you may print or download to a local hard disk extracts for your\r\n	personal and non-commercial use only\r\n	</li><li>\r\n	you may copy the content to individual third parties for their\r\n	personal use, but only if you acknowledge the website as the source\r\n	of the material\r\n	</li><li>\r\n	Free Web themes can be downloaded reused and redistributed but the\r\n	footer back-links have to be retained\r\n</li></ul>\r\n\r\nYou may not, except with our express written permission, distribute\r\nor commercially exploit the content. Nor may you transmit it or store\r\nit in any other website or other form of electronic retrieval system.\r\n\r\n<br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listofclients`
--

CREATE TABLE `listofclients` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listofclients`
--

INSERT INTO `listofclients` (`id`, `name`, `order`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Stagepass Audio Visual Limited', 1, 'http://stagepass.co.ke/', '118321916_2755484834709417_8025724802684873451_o.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(2, 'Megapipes Solutions Limited', 2, 'http://megapipes.com/', 'logomega.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(3, 'Creation Office Fitouts', 3, 'http://creationltd.co.ke/', 'creatio logo.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(4, 'Amani Vehicle Sounds', 4, 'http://amanivehiclesounds.co.ke/', 'amaniCropped.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(5, 'Treven Cleaners Limited', 5, 'http://trevencleanersltd.co.ke/', 'TREVEN W-01.webp', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(6, 'Kenspeed Real Estate', 26, 'http://kenspeed.co.ke/', 'KenSpeed.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(7, 'Proton Engineering Limited', 25, 'https://www.protonafrica.com/', 'proton.jpg', '2020-09-01 10:51:17', '2020-09-01 10:51:17'),
(8, 'Gobeys Electronics Limited', 24, 'http://gobeys.co.ke/', 'GOBEYS-1.jpg', '2020-09-01 17:40:15', '2020-09-01 17:40:15'),
(9, 'Child Ambassadors Initiative', 23, 'http://childambassadorsinitiative.org/', 'ALBO-removebg-preview (2).jpg', '2020-09-01 17:42:56', '2020-09-01 17:42:56'),
(10, 'AOL Outdoors Adventures', 22, 'http://aoloutdooradventures.com/', '79309914_452538508763408_2369031873742503936_n.png', '2020-09-01 17:42:56', '2020-09-01 17:42:56'),
(11, 'Koriema Agrifoods', 21, 'http://koriema-agrifoods.co.ke/', 'Koriema Logos-1.jpg', '2020-09-01 17:43:33', '2020-09-01 17:43:33'),
(12, 'Sparol Solution Limited', 20, 'http://sparol.co.ke/', 'sparol.webp', '2020-09-01 17:43:33', '2020-09-01 17:43:33'),
(14, 'Sabvil Flowers', 19, '#', 'download (1).jpg', '2020-09-01 18:12:25', '2020-09-01 18:12:25'),
(15, 'iPerformance Africa', 18, 'http://iperformanceafrica.com/', '5f17d5c8161b8.jpg', '2020-09-01 18:14:08', '2020-09-01 18:14:08'),
(16, 'Pius Forex University', 17, 'http://piusforexuniversity.com/', 'IMG_20200405_042052[1] (1).jpg', '2020-09-01 18:42:00', '2020-09-01 18:42:00'),
(17, 'Africare ', 16, 'https://www.africare.org', 'logo.jpg', '2020-09-03 12:16:03', '2020-09-03 12:16:03'),
(18, 'Edition Investments Limited', 15, 'http://editioninvestments.com/', 'Edition 1-01.jpg', '2020-11-06 15:53:38', '2020-11-06 15:53:38'),
(19, 'Amanya & Company Advocates', 14, 'https://amanyalaw.co.ke', 'AMANYA-02.jpg', '2020-12-13 21:14:04', '2020-12-13 21:14:04'),
(20, 'Care Pro Staffing(Carepro LLC)', 13, 'https://careprostaffing.com', 'careproLLC.jpg', '2020-12-14 14:44:50', '2020-12-14 14:44:50'),
(21, 'Homeboyz Entertainment Limited', 12, 'https://homeboyz.co.ke', 'logz.jpg', '2020-12-14 14:48:57', '2020-12-14 14:48:57'),
(22, 'Academics Captain', 11, 'https://academicscaptain.com', 'AcademicsCaptain.jpg', '2021-01-31 10:08:20', '2021-01-31 10:08:20'),
(23, 'Pipdot Fx Consultants ', 8, 'https://pipdotfx.com', 'pipdot.jpg', '2020-12-14 14:48:57', '2020-12-14 14:48:57'),
(24, 'Africa Reinsurance Cooperation ', 9, 'https://www.africa-re.com/', 'africare.jpg', '2021-06-15 16:45:14', '2021-06-15 16:45:14'),
(25, 'Level Five Productions Limited', 10, 'https://levelfiveproductions.com/', 'Level5Produtions.jpg', '2021-07-13 09:33:28', '2021-07-13 09:33:28'),
(26, 'Bestcoders Tutorials', 7, 'https://bestcoders.net/', 'logo-light-text2.jpg', '2021-07-29 19:28:17', '2021-07-29 19:28:17'),
(27, 'Apex Engineering Limited', 6, 'http://apexengltd.com/', 'logo-2.jpg', '2021-09-29 08:16:03', '2021-09-29 08:16:03'),
(28, 'Dinsights', 26, 'http://dinsights.co.ke/', 'cropped-dinsights.jpg', '2021-09-30 01:32:06', '2021-09-30 01:32:06'),
(29, 'Emigan Realtors', 27, 'https://emiganrealtors.co.ke/', 'Emigan-Realtors-03-1.jpg', '2021-09-30 01:32:06', '2021-09-30 01:32:06'),
(30, 'Inso kenya', 28, 'https://www.ngosafety.org/', 'inso.jpg', '2021-09-30 01:35:27', '2021-09-30 01:35:27'),
(31, 'Kenya Bankers Association ', 29, '#', 'kba.jpg', '2021-09-30 01:35:27', '2021-09-30 01:35:27'),
(32, 'vartech east africa', 30, 'https://www.vartecheastafrica.com/', 'vartech east africa.jpg', '2021-09-30 01:36:02', '2021-09-30 01:36:02'),
(33, 'Accesories Kenya', 31, 'https://accessories.co.ke', 'Accesories-Kenya-Logos.jpg', '2021-10-01 13:08:13', '2021-10-01 13:08:13'),
(34, 'Remtak Limited', 32, 'https://www.facebook.com/RemtakLtd/', 'remtak.jpg', '2021-10-01 13:55:12', '2021-10-01 13:55:12'),
(35, 'Kemasatsi Consultancy ', 33, 'https://kemasatsi.co.ke', 'KEMASATSI.jpg', '2021-10-04 09:36:22', '2021-10-04 09:36:22'),
(36, 'Sasema Management Company', NULL, 'http://sasemagroup.com/', 'sasema.jpg', '2021-11-26 13:57:56', '2021-11-26 13:57:56'),
(37, 'Tala Cottages', 40, 'https://talacottages.com', 'TALACOTTAGESLOGOHorizontal-01.jpg', '2022-02-14 15:35:53', '2022-02-14 15:35:53'),
(38, 'Venshaq Holdings', 40, 'https://venshaq.com', 'Venshaq.jpg', '2022-02-14 15:35:53', '2022-02-14 15:35:53'),
(39, 'Jspex Design', 40, 'https://jspexdesign.com/', 'jspex-design-Hor-alt-12.jpg\r\n', '2022-02-14 15:35:53', '2022-02-14 15:35:53'),
(40, 'Crysstal Car Audio', 40, 'https://crystalcaraudio.com/', 'Crystal-Logo-06.jpg', '2022-02-14 15:35:53', '2022-02-14 15:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `company`, `budget`, `manager`, `content`, `status`, `email`, `phone`, `subject`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-04-08 00:32:28', '2020-04-08 00:32:28'),
(2, 'International', NULL, NULL, NULL, 'Handcrafted', 0, 'couponmered@gmail.com', NULL, 'back-end', '2020-08-04 06:42:19', '2020-08-04 06:42:19'),
(3, 'Personal Loan Account', NULL, NULL, NULL, 'optical', 0, 'parklinemiami@bozzuto.com', NULL, 'Wisconsin', '2020-08-21 02:08:19', '2020-08-21 02:08:19'),
(4, 'withdrawal', NULL, NULL, NULL, 'system', 0, 'parklinemiami@bozzuto.com', NULL, 'Investment Account', '2020-08-21 05:49:46', '2020-08-21 05:49:46'),
(5, 'systemic', NULL, NULL, NULL, 'Borders', 0, 'macy.freiha@hotmail.com', NULL, 'Crossroad', '2020-08-25 12:25:49', '2020-08-25 12:25:49'),
(6, 'Cambridgeshire', NULL, NULL, NULL, 'Phased', 0, 'rociocuenca15@yahoo.com', NULL, 'HDD', '2020-08-27 14:50:38', '2020-08-27 14:50:38'),
(7, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-10-18 18:54:46', '2020-10-18 18:54:46'),
(8, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-10-18 18:54:46', '2020-10-18 18:54:46'),
(9, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-10-18 18:54:48', '2020-10-18 18:54:48'),
(10, 'Albert  Muhatia', NULL, NULL, NULL, 'This is a test Form', 0, 'nektatech@gmail.com', NULL, 'Test Contact Form', '2020-11-30 16:06:59', '2020-11-30 16:06:59'),
(11, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-30 16:07:08', '2020-11-30 16:07:08'),
(12, 'Albert  Muhatia', NULL, NULL, NULL, 'this is a form', 0, 'nektatech@gmail.com', NULL, 'Test Contact Form', '2020-11-30 16:07:24', '2020-11-30 16:07:24'),
(13, 'Albert  Muhatia', NULL, NULL, NULL, 'This is a test form', 0, 'nektatech@gmail.com', NULL, 'Test Contact Form', '2020-11-30 16:12:06', '2020-11-30 16:12:06'),
(14, 'Joe Miller', NULL, NULL, NULL, 'IMPORTANCE NOTICE\n\n\n\nNotice#: 491343\n\nDate: 2020-12-03    \n\n\n\nExpiration message of your designekta.com\n\n\n\nEXPIRATION NOTIFICATION\n\n\n\nCLICK HERE FOR SECURE ONLINE PAYMENT: http://yourdomaincivil.xyz/?n=designekta.com&r=a&t=1606889613&p=v1\n\n\n\nThis purchase expiration notification designekta.com advises you about the submission expiration of domain designekta.com for your e-book submission. \n\nThe information in this purchase expiration notification designekta.com may contains CONFIDENTIAL AND/OR LEGALLY PRIVILEGED INFORMATION from the processing department from the processing department to purchase our e-book submission. NON-COMPLETION of your submission by the given expiration date may result in CANCELLATION of the purchase.\n\n\n\nCLICK HERE FOR SECURE ONLINE PAYMENT: http://yourdomaincivil.xyz/?n=designekta.com&r=a&t=1606889613&p=v1\n\n\n\nACT IMMEDIATELY. The submission notification designekta.com for your e-book will EXPIRE WITHIN 2 DAYS after reception of this email\n\n\n\nThis notification is intended only for the use of the individual(s) having received this message. \n\n\n\nPLEASE CLICK ON SECURE ONLINE PAYMENT TO COMPLETE YOUR PAYMENT\n\n\n\nSECURE ONLINE PAYMENT: http://yourdomaincivil.xyz/?n=designekta.com&r=a&t=1606889613&p=v1\n\n\n\nNon-completion of your submission by given expiration date may result in cancellation.\n\n\n\nAll online services will be restored automatically upon confirmation of payment. Delivery will be completed within 24 hours. \n\n\n\nCLICK UNDERNEATH FOR IMMEDIATE PAYMENT:\n\n\n\nSECURE ONLINE PAYMENT: http://yourdomaincivil.xyz/?n=designekta.com&r=a&t=1606889613&p=v1', 0, 'info@domainworld.com', NULL, '66X3ZX', '2020-12-02 05:13:36', '2020-12-02 05:13:36'),
(15, 'Habib Ullah', NULL, NULL, NULL, 'Hello,\nI\'m full stack web developer and i love to work with inspiring & creative agencies and people. I\'ve been involved in the web development since last 5 years.\nMy area of expertise are:\n\n- Core PHP / CI / Laravel\n- Git / Bitbucket\n- NPM, Gulp, SCSS\n- WordPress, Shopify\n- Clickfunnel\n- HTML5 & CSS3\n- Bootstrap / Foundation\n- JS (javascript / jQuery)\n- PSD/Sketch/AI to HTML/WordPress\n- WordPress Theme Development\n- WordPress Plugin Development\n- API integrations with plugins and themes\n- eCommerce Solutions / WooCommerce\n\nPlease visit my personal portfolio:\nhttp://webcure.me/\nSome of my work samples on themeforest are:\nhttps://themeforest.net/user/gomalthemes\n\nThank you so much for your time and consideration.', 0, 'devwebcure@gmail.com', NULL, 'Full Stack Developer', '2020-12-11 10:16:04', '2020-12-11 10:16:04'),
(16, 'Aylla Lara', NULL, NULL, NULL, 'Hello Marketing Head,\n\nThis is Aylla from Canada, I provide SEO, Blog Posting & writing services. So I thought to drop you an email to see that if there is an opportunity to work with you. Currently, I have sites in many niches. I provide permanent posts with the do-follow backlink for the purpose of branding your service or products. As you know that only Unique content published on an authority blog of your niche with the backlink can help you in your website optimization efforts.\n\nMain Features of this:\n\n- We will write and publish 500+ articles on top quality relevant websites with our link.\n- We will not publish the articles until you review them and give us your approval.\n- We will comprise-2 links in each article.\n- We will send a report with all the published article URLs.\n\nIf this sounds good, please let me know. Looking forward to listening from you soon.\n\nKindly reply to proceed!\n\nBest regards,\nAylla', 0, 'lara.linkbuilding@gmail.com', NULL, 'Content-Based Outreach for Link Building', '2020-12-22 09:58:43', '2020-12-22 09:58:43'),
(17, 'Aylla Lara', NULL, NULL, NULL, 'Hello Marketing Head,\n\nThis is Aylla from Canada, I provide SEO, Blog Posting & writing services. So I thought to drop you an email to see that if there is an opportunity to work with you. Currently, I have sites in many niches. I provide permanent posts with the do-follow backlink for the purpose of branding your service or products. As you know that only Unique content published on an authority blog of your niche with the backlink can help you in your website optimization efforts.\n\nMain Features of this:\n\n- We will write and publish 500+ articles on top quality relevant websites with our link.\n- We will not publish the articles until you review them and give us your approval.\n- We will comprise-2 links in each article.\n- We will send a report with all the published article URLs.\n\nIf this sounds good, please let me know. Looking forward to listening from you soon.\n\nKindly reply to proceed!\n\nBest regards,\nAylla', 0, 'lara.linkbuilding@gmail.com', NULL, 'Content-Based Outreach for Link Building', '2020-12-22 09:58:43', '2020-12-22 09:58:43'),
(18, 'Paul Skelcher', NULL, NULL, NULL, 'I came across your website after searching for agency companies on clutch.co\n\nAnd I was wondering if you would like to partner up?\n\nBasically what we do is make animated videos that are designed to promote your service online and increase your website conversion rate.\n\nSo I wanted to offer you a 30 second explainer video for your service for just $197. (including script/voiceover)\n\nAll I ask in return is a quick testimonial if you like the video!\n\nIf you are interested in this offer, you can find out more and get started at:\nwww.30secondexplainervideos.com/explainer-promo\n\nOr can you shoot me a quick email for a brief discussion!\n\nCheers,\nPaul\nwww.30secondexplainervideos.com/explainer-promo', 0, 'paul@30secondexplainervideos.com', NULL, 'Partnership', '2020-12-30 22:44:47', '2020-12-30 22:44:47'),
(19, 'contingency', NULL, NULL, NULL, 'fuchsia', 0, 'Florence_Block@yahoo.com', NULL, 'Books', '2021-01-02 08:35:10', '2021-01-02 08:35:10'),
(20, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-01-02 08:35:12', '2021-01-02 08:35:12'),
(21, 'invoice', NULL, NULL, NULL, 'synthesizing', 0, 'info@cannagreenexpress.io', NULL, 'parse', '2021-01-10 22:41:06', '2021-01-10 22:41:06'),
(22, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-01-10 22:41:07', '2021-01-10 22:41:07'),
(23, 'Joe Miller', NULL, NULL, NULL, 'Notice#: 491343\nDate: 2021-01-16  \n\nYOUR IMMEDIATE ATTENTION TO THIS MESSAGE IS ABSOLUTELY NECESSARY!\n\nYOUR DOMAIN designekta.com WILL BE TERMINATED WITHIN 24 HOURS\n\nWe have not received your payment for the renewal of your domain designekta.com\n\nWe have made several attempts to reach you by phone, to inform you regarding the TERMINATION of your domain designekta.com\n\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://yourdomainregistration.ga/?n=designekta.com&r=a&t=1610748029&p=v1\n\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 24 HOURS, YOUR DOMAIN designekta.com WILL BE TERMINATED\n\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://yourdomainregistration.ga/?n=designekta.com&r=a&t=1610748029&p=v1\n\nACT IMMEDIATELY. \n\nThe submission notification designekta.com will EXPIRE WITHIN 24 HOURS after reception of this email', 0, 'info@domainworld.com', NULL, 'I2VID92W13', '2021-01-15 21:00:32', '2021-01-15 21:00:32'),
(24, 'Albert  Muhatia', NULL, NULL, NULL, 'sssssgsgs', 0, 'nektatech@gmail.com', NULL, 'Contact Form Query', '2021-01-19 03:15:51', '2021-01-19 03:15:51'),
(25, 'Albert  Muhatia', 'Designekta Enterprises', '$600 — $1000', 'John Gitonga', 'This is a test form', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-19 15:57:05', '2021-01-19 15:57:05'),
(26, 'Albert  Muhatia', 'Designekta Enterprises', '$600 — $1000', 'John Gitonga', 'This is a trial here', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-19 16:06:14', '2021-01-19 16:06:14'),
(27, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'John Gitonga', 'This is a test', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-19 16:11:39', '2021-01-19 16:11:39'),
(28, 'Albert  Muhatia', 'Designekta Enterprises', '$1000 — $2500', 'John Gitonga', 'This is a sample', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-19 16:36:08', '2021-01-19 16:36:08'),
(29, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'John Gitonga', 'This is a sample', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-22 08:30:56', '2021-01-22 08:30:56'),
(30, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'John Gitonga', 'This is a sample message', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-01-24 17:32:01', '2021-01-24 17:32:01'),
(31, 'Hallie Connell', 'Hallie Connell', '$1000 - $2500', NULL, 'Hello\r\n\r\nLet’s face it…\r\n\r\nSending out emails is fun – as long as you keep getting responses… (But before I get into the details of how you can get more replies, let me tell you a little secret)\r\n\r\nYou might have heard about Abraham Lincoln’s sharpening an axe before chopping a tree quote? If not, here it is…\r\n\r\nHe said, “Give me six hours to chop down a tree and I will spend the first four sharpening the axe.”\r\n\r\nNow, how does it apply to you and the way you reach out to people?\r\n\r\nWell, no matter how good you think your email is – no one will open it if its subject line is not enticing enough…\r\n\r\nIt won’t matter if your email brings a lot of value – if the recipient doesn’t open it in the first place…\r\n\r\nThis is where the whole ‘sharpening the axe’ theory steps in…\r\n\r\nSo, if you’re sending out multiple emails in a day and not getting any responses, there’s a chance that your emails are not being opened…\r\n\r\nComing back to how you can get more replies…\r\n\r\nOver these years, I’ve tried and tested multiple subject lines and identified what makes people tick…\r\n\r\nTo help you out and send the elevator back, I’ve put all of them together in a done for you, fill in the blank free resource so that you can use them whenever you want…\r\n\r\nFollow this link to get access to this free resource and sharpen the axe to get responses like never before!\r\n\r\nhttps://usualprospect.com/emails', 0, 'hallie.connell@yahoo.com', '031-7641832', 'Contact Form Query', '2021-01-26 08:16:28', '2021-01-26 08:16:28'),
(32, 'WJltQdUIZ', 'jwobKSXkFMxEAifp', NULL, 'wVNgeulfCDQn', 'dCTGemJopcWawVQZ', 0, 'sauerevy88@gmail.com', '4973991538', 'Contact Form Query', '2021-02-04 03:03:30', '2021-02-04 03:03:30'),
(33, 'UDYJqtskpxHCF', 'wtmCQnENUMru', NULL, 'eAUSHPjpaqtvsM', 'DjQzIGkHmJ', 0, 'sauerevy88@gmail.com', '7883198762', 'Contact Form Query', '2021-02-04 03:03:32', '2021-02-04 03:03:32'),
(34, 'Elva', 'Elva best essay writing service uk & Lindquist Services', NULL, NULL, 'No matter if some one searches for his necessary thing, thus he/she needs \r\nto bbe available that in detail, so that thing is maintained over here.\r\n\r\nhttps://gumroad.com/commonappessaytopics/p/on-line-research-papers-buy-assist-with-tutorial-papers-on-line-in-britain-58915159-7c97-46d4-95e3-47fca71f8afd\r\nExperiences and Theses With Many benefits Top-Qulity Essay Composing and Edting Assistance.\r\n\r\n\r\nessay writing service canada\r\nessay writing service canada', 0, 'elvalindquist@gmail.com', '06-96535025', 'Contact Form Query', '2021-02-05 10:20:37', '2021-02-05 10:20:37'),
(35, 'RgGBEDYr', 'LKeafiszYIlNbCXm', NULL, 'JKfZrAyclV', 'BLsuvcUEWibdHAa', 0, 'winfordhao71@gmail.com', '5078283274', 'Contact Form Query', '2021-02-16 21:49:53', '2021-02-16 21:49:53'),
(36, 'fwTvpSGgunWYNXMc', 'cJZCsDgURXyGbpt', NULL, 'tkRPdArUZQCfL', 'IawHOmnjJU', 0, 'winfordhao71@gmail.com', '9534404498', 'Contact Form Query', '2021-02-16 21:49:56', '2021-02-16 21:49:56'),
(37, 'wyZJQeqMvWzf', 'rDmHqvUQwdeOxtSC', NULL, 'RhHnYEKyzb', 'ToigeGpaCmqRyls', 0, 'josephpfeinberg@gmail.com', '3575590147', 'Contact Form Query', '2021-02-21 08:43:13', '2021-02-21 08:43:13'),
(38, 'qXwOCzhtmvdHuFgT', 'RKjqMbDnfdJYk', NULL, 'sbDzOGZStnI', 'obrdMLtwf', 0, 'josephpfeinberg@gmail.com', '9347272274', 'Contact Form Query', '2021-02-21 08:43:16', '2021-02-21 08:43:16'),
(39, 'LjnUsApdaqxlVkC', 'JArZWHutjMnvp', NULL, 'cLpwhFnbzHSfVd', 'npOXkuVByfSNrWvw', 0, 'rhjablonski@unitybox.de', '4469862040', 'Contact Form Query', '2021-02-21 18:48:53', '2021-02-21 18:48:53'),
(40, 'EkAbiTugfvalDR', 'GtEmpZAdC', NULL, 'ibTVqjZlG', 'IxQvyWodrMtlfq', 0, 'rhjablonski@unitybox.de', '5586872876', 'Contact Form Query', '2021-02-21 18:48:57', '2021-02-21 18:48:57'),
(41, 'rNYPVXdf', 'GRUXlmuIhvc', NULL, 'JcCWiDNQolbvnX', 'ZtACREMGHFWVycqX', 0, 'e636l30@charter.net', '4702822128', 'Contact Form Query', '2021-02-22 01:23:20', '2021-02-22 01:23:20'),
(42, 'WlHYUAmhLCNvjtkq', 'kGEHYDpIRwPJO', NULL, 'FueEgktyJo', 'jQqWSCabdmlHfEK', 0, 'e636l30@charter.net', '9759435083', 'Contact Form Query', '2021-02-22 01:23:25', '2021-02-22 01:23:25'),
(43, 'AVedPaxIjCFhgym', 'fTCqIjlbmXr', NULL, 'YuLrDfVkPdvgKXsi', 'oepwtUMHSiWsNx', 0, 'nosullivantx@gmail.com', '2921057930', 'Contact Form Query', '2021-02-22 21:26:07', '2021-02-22 21:26:07'),
(44, 'jIXPkNGMzlBgJs', 'YunSaIWT', NULL, 'ECKWZyTBsbVGDtY', 'IAgfFKJZiocd', 0, 'nosullivantx@gmail.com', '6925690982', 'Contact Form Query', '2021-02-22 21:26:10', '2021-02-22 21:26:10'),
(45, 'BjspzrnFP', 'kvDbjyioFWMnB', NULL, 'FBfArgqk', 'XCHdmioYrRcjWOI', 0, 'dncoy1@gmail.com', '4130905695', 'Contact Form Query', '2021-02-22 21:32:46', '2021-02-22 21:32:46'),
(46, 'eDVqCNKFtBL', 'QjCDdflFMJ', NULL, 'zdpXAaWituwDRyS', 'ZNhWtVQpJH', 0, 'dncoy1@gmail.com', '4123519429', 'Contact Form Query', '2021-02-22 21:32:47', '2021-02-22 21:32:47'),
(47, 'Eric Jones', 'talkwithwebvisitor.com', '$300 - $600', NULL, 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at designekta.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-02-22 22:43:26', '2021-02-22 22:43:26'),
(48, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'John Gitonga', 'Test With capcha', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-02-23 05:27:46', '2021-02-23 05:27:46'),
(49, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'zsss', 'Test With capcha', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-02-23 05:40:54', '2021-02-23 05:40:54'),
(50, 'Albert  Muhatia', 'Designekta Enterprises', '$600 — $1000', 'John Gitonga', 'This is a test with capca', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-02-23 05:43:28', '2021-02-23 05:43:28'),
(51, 'KYqXfrOZSd', 'WdtNcMXbCpEfGoaD', NULL, 'bLnNxOQaUEgKWM', 'RFAGJLYPZUsfcC', 0, 'jjonas828@gmail.com', '3995726991', 'Contact Form Query', '2021-02-23 08:19:43', '2021-02-23 08:19:43'),
(52, 'fHQCqJjMW', 'xhQSALRbw', NULL, 'KXfyHOdtG', 'TyFptxuiJsvUL', 0, 'mikegordon@patuxentnursery.com', '8318333412', 'Contact Form Query', '2021-02-23 10:16:11', '2021-02-23 10:16:11'),
(53, 'wKREXTxSc', 'rtiOhSknxHAyzZvs', NULL, 'nrGhwdTEezsRBU', 'YoaGnzRmwWlTSMXJ', 0, 'mikegordon@patuxentnursery.com', '7261594044', 'Contact Form Query', '2021-02-23 10:16:14', '2021-02-23 10:16:14'),
(54, 'bUewZdATF', 'DqamoWkYQEKCZI', NULL, 'jhOzlRys', 'LMCzuoFKIH', 0, 'mojh81@hotmail.com', '8007784116', 'Contact Form Query', '2021-02-23 16:07:27', '2021-02-23 16:07:27'),
(55, 'NPVySRDZMAYJ', 'BxwmKAnClY', NULL, 'KXnYmSqOB', 'PSGVIYQozxXN', 0, 'mojh81@hotmail.com', '7590196318', 'Contact Form Query', '2021-02-23 16:07:32', '2021-02-23 16:07:32'),
(56, 'SLDfnVTt', 'MfFavdcEoek', NULL, 'oGuCbeAXIzNYkRPx', 'EqZBjMwYFhSX', 0, 'ftjs@citenet.net', '4687563066', 'Contact Form Query', '2021-02-23 17:06:45', '2021-02-23 17:06:45'),
(57, 'OHMxnweDLohmdBtc', 'aeESDYkCgrGKhwP', NULL, 'xsHldIWJph', 'MODZJRAThUx', 0, 'ftjs@citenet.net', '2309177673', 'Contact Form Query', '2021-02-23 17:07:03', '2021-02-23 17:07:03'),
(58, 'gPmuNLnKYR', 'aoMdxqZuQKeA', NULL, 'aUyFeEoCZvcrz', 'MyoQFCSxJi', 0, 'jnic3371@hotmail.com', '3250850533', 'Contact Form Query', '2021-02-23 22:58:07', '2021-02-23 22:58:07'),
(59, 'FwNyaugPBnDijQ', 'twafVOqC', NULL, 'laixsUWnk', 'qocsLwkXzhN', 0, 'jnic3371@hotmail.com', '3149274501', 'Contact Form Query', '2021-02-23 22:58:11', '2021-02-23 22:58:11'),
(60, 'hPomjkbvnHLIZWx', 'WOrNshHaTv', NULL, 'RIeCFfHdoDJcnmUu', 'RSwKHAhmn', 0, 'b.g.garraway@gmail.com', '6009249652', 'Contact Form Query', '2021-02-24 03:54:34', '2021-02-24 03:54:34'),
(61, 'ItmyHPkhA', 'pvxkOLVqN', NULL, 'ZybzeOYKqCtxfG', 'OjZzQBuXTGnvhkRi', 0, 'b.g.garraway@gmail.com', '7652461255', 'Contact Form Query', '2021-02-24 03:54:37', '2021-02-24 03:54:37'),
(62, 'CWjkFfVinToZaGvy', 'ieTJgytPNC', NULL, 'XkMvoHPFKUuQJDx', 'kvKQInwVeBfyP', 0, 'alyzaar@gmail.com', '7997235965', 'Contact Form Query', '2021-02-24 11:26:11', '2021-02-24 11:26:11'),
(63, 'giEwBCPbUadxrp', 'KFmWdXic', NULL, 'oMxhrjKYFCdwL', 'wHyLmAIUMbBfvF', 0, 'alyzaar@gmail.com', '9228878541', 'Contact Form Query', '2021-02-24 11:26:14', '2021-02-24 11:26:14'),
(64, 'LViKleca', 'wAeOyBkL', NULL, 'soQjFmfgbtGYR', 'kOAUzPIebsRVTa', 0, 'bhick@gvtc.com', '8296645531', 'Contact Form Query', '2021-02-24 12:09:53', '2021-02-24 12:09:53'),
(65, 'QwxslbHzPf', 'wziFhRCgOKferx', NULL, 'KtbfGaYUOgkvnl', 'gqpOMUzhCA', 0, 'bhick@gvtc.com', '8837842694', 'Contact Form Query', '2021-02-24 12:09:56', '2021-02-24 12:09:56'),
(66, 'DPSmjucVd', 'WopmCxIfEDt', NULL, 'TcyRVahH', 'cxymXplP', 0, 'henry@tgmsystem.com', '3280359928', 'Contact Form Query', '2021-02-24 18:12:59', '2021-02-24 18:12:59'),
(67, 'cuNwdJhfACUnZ', 'elsgbZDABNkPcFrz', NULL, 'HPVUdnmZhDXiFM', 'lJPyYbnBeSEQxu', 0, 'e636l30@charter.net', '9547865813', 'Contact Form Query', '2021-02-24 19:18:12', '2021-02-24 19:18:12'),
(68, 'qsymSDFLK', 'JMSuHolgweKNcR', NULL, 'HMqBePTzKQfYdhI', 'TPtmBFyoirsMAa', 0, 'e636l30@charter.net', '3554838363', 'Contact Form Query', '2021-02-24 19:18:16', '2021-02-24 19:18:16'),
(69, 'NdcJHqne', 'UYHCyhFeAJRWs', NULL, 'ikoxTsIzH', 'SshxyBHNiUoX', 0, 'smoorebaker@gmail.com', '3521655708', 'Contact Form Query', '2021-02-24 19:59:32', '2021-02-24 19:59:32'),
(70, 'RefodKQASkHa', 'UspVDocBXmKC', NULL, 'lcyQvYLDUgAxVG', 'MowzuACvybj', 0, 'aly.2285@hotmail.com', '7200141903', 'Contact Form Query', '2021-02-25 15:55:40', '2021-02-25 15:55:40'),
(71, 'mEHFgzGb', 'EqgMLCjfQk', NULL, 'BkIlPwpRszrJtE', 'MwXOzbrsFUiqpYE', 0, 'aly.2285@hotmail.com', '4045959499', 'Contact Form Query', '2021-02-25 15:55:45', '2021-02-25 15:55:45'),
(72, 'DTJEmLAYQsqOK', 'SyQPIuzDTjOHVdrn', NULL, 'aTijEXBdQtyKvkPJ', 'EHruIzOFQsiM', 0, 'aly.2285@hotmail.com', '6996664197', 'Contact Form Query', '2021-02-25 18:45:10', '2021-02-25 18:45:10'),
(73, 'fQAnsDVlIHKaWxp', 'eOlHWwqYJR', NULL, 'fdgbDneVkhy', 'MDrBlfQIjE', 0, 'aly.2285@hotmail.com', '8397513500', 'Contact Form Query', '2021-02-25 18:45:11', '2021-02-25 18:45:11'),
(74, 'dLzevZtaC', 'EYxwdJSLVkTqNzG', NULL, 'oBfxXYzSWFgU', 'dbAZHhGyPkN', 0, 'todd.wiskur@nustarenergy.com', '6584831814', 'Contact Form Query', '2021-02-25 22:20:53', '2021-02-25 22:20:53'),
(75, 'dCekpufwTEvJ', 'FxPOwXDskNcEZtJR', NULL, 'HaQNlbAVy', 'lwnfLOgPiHz', 0, 'todd.wiskur@nustarenergy.com', '8603474441', 'Contact Form Query', '2021-02-25 22:20:57', '2021-02-25 22:20:57'),
(76, 'jvfzZtIMiyLsOThV', 'TrtbJBoOdPNj', NULL, 'bjUMKhcx', 'PoBqTSyk', 0, 'ashes2115@gmail.com', '7206896416', 'Contact Form Query', '2021-02-26 02:03:18', '2021-02-26 02:03:18'),
(77, 'FtgOAvNdIq', 'WlgkeGCiTqEHFwf', NULL, 'ETJwXcUaeCMSWBik', 'HDVkOXzpwgJMFU', 0, 'ashes2115@gmail.com', '7923770520', 'Contact Form Query', '2021-02-26 02:03:30', '2021-02-26 02:03:30'),
(78, 'ZwAnaxhERS', 'dAWrjvNQBp', NULL, 'kUjzVZxnsDTWdbEY', 'EpDYyjsNxO', 0, 'nyupro1998@gmail.com', '6373488267', 'Contact Form Query', '2021-02-26 17:16:44', '2021-02-26 17:16:44'),
(79, 'MLkusiaxEvlShTX', 'gOxdXQDIBtckur', NULL, 'FLDtzZQGTgJSr', 'BrVbLOvlUcqSF', 0, 'collerville@gmail.com', '7961482955', 'Contact Form Query', '2021-02-26 17:33:22', '2021-02-26 17:33:22'),
(80, 'JfzRCNsyLnm', 'lHKAqhERwnD', NULL, 'PGNECLeoK', 'pvzHQfxLDUMPmY', 0, 'simon702@hotmail.nl', '9076095984', 'Contact Form Query', '2021-02-26 18:59:56', '2021-02-26 18:59:56'),
(81, 'bupBaGOJznV', 'yONeprfYha', NULL, 'isefSdIc', 'byAiKQqrwNGn', 0, 'simon702@hotmail.nl', '9704090563', 'Contact Form Query', '2021-02-26 18:59:57', '2021-02-26 18:59:57'),
(82, 'noVIQEOkM', 'eXICQskxvPTS', NULL, 'TyxZDLpRIwrBPV', 'YUgNJEKvjMQ', 0, 'salfranz6969@gmail.com', '4776071754', 'Contact Form Query', '2021-02-27 00:11:58', '2021-02-27 00:11:58'),
(83, 'dSDlquCFvwnr', 'JZQuBPvdo', NULL, 'vtDeFfToGWZSjb', 'xcLEdtbMnlaIeH', 0, 'salfranz6969@gmail.com', '2912683987', 'Contact Form Query', '2021-02-27 00:12:02', '2021-02-27 00:12:02'),
(84, 'IxkCPqZrK', 'xjEOCITBPznrme', NULL, 'zenHhxwpoAK', 'bvARNrfjeMzqXS', 0, 'jairo1225@hotmail.com', '6887257948', 'Contact Form Query', '2021-02-27 11:54:54', '2021-02-27 11:54:54'),
(85, 'xElfaIMeZikqQ', 'RuNHtGWopieUZS', NULL, 'pObiMZAywfXBs', 'xOJZbCdLocTq', 0, 'jairo1225@hotmail.com', '4449128586', 'Contact Form Query', '2021-02-27 11:55:01', '2021-02-27 11:55:01'),
(86, 'QpySOfZBnLPFsCW', 'wGSWeDqn', NULL, 'xyRWoUODKkh', 'DupThAMcZaEfG', 0, 'slbarber4559@me.com', '6742554357', 'Contact Form Query', '2021-02-28 03:55:38', '2021-02-28 03:55:38'),
(87, 'LwJezjvoclOdRZK', 'JPnNoRrhqxTItV', NULL, 'eENdarwj', 'SMVPqNKlT', 0, 'slbarber4559@me.com', '2272896001', 'Contact Form Query', '2021-02-28 03:56:17', '2021-02-28 03:56:17'),
(88, 'IiOsVRNcAMd', 'IdKqTenu', NULL, 'ToeODvrulnqaHBc', 'vICjeRdWwlBDAYM', 0, 'cl599868@gmail.com', '6457682433', 'Contact Form Query', '2021-02-28 20:34:15', '2021-02-28 20:34:15'),
(89, 'bZVkHIof', 'TuWvSjioOchqD', NULL, 'VebHnFjKELTChIvx', 'IKbJmcwAVON', 0, 'hillarygarbutt789@yahoo.com', '9546102939', 'Contact Form Query', '2021-03-01 18:31:55', '2021-03-01 18:31:55'),
(90, 'abqCOQow', 'ZBxCJfnbtOHoPed', NULL, 'QOcYPKhVI', 'TbUrNDCzsh', 0, 'aldren.levey@yahoo.com', '2883083863', 'Contact Form Query', '2021-03-01 20:09:12', '2021-03-01 20:09:12'),
(91, 'wqfIMtGPHNzUTVa', 'UjKkaDxLrGsbXw', NULL, 'zaVGvDQYtdE', 'VoIUJZdeCuxGkmc', 0, 'aldren.levey@yahoo.com', '3368200736', 'Contact Form Query', '2021-03-01 20:09:13', '2021-03-01 20:09:13'),
(92, 'uUDJdwBfzNRPx', 'ueJwmsxdELqXU', NULL, 'UDfvKLOi', 'BnbVkesvulh', 0, 'carolgriffin4553@gmail.com', '6681870370', 'Contact Form Query', '2021-03-01 22:31:20', '2021-03-01 22:31:20'),
(93, 'fnoqdSCjIeNvmFzg', 'zsbOrZkAcphYRXF', NULL, 'uqTlcKQgdRUre', 'lTMvQyOC', 0, 'carolgriffin4553@gmail.com', '6387890748', 'Contact Form Query', '2021-03-01 22:31:21', '2021-03-01 22:31:21'),
(94, 'lYQhKIzWnCUeTyF', 'nLdjAKghu', NULL, 'jSlLDWMtNbUCxE', 'SJgdinEv', 0, 'reynoldstevens74@gmail.com', '4795637936', 'Contact Form Query', '2021-03-03 01:19:09', '2021-03-03 01:19:09'),
(95, 'PNEHKlGXukUp', 'wTaikFUqujfml', NULL, 'aFpmJxUAZQowi', 'dvBafoOjLVYGEQD', 0, 'reynoldstevens74@gmail.com', '2740558535', 'Contact Form Query', '2021-03-03 01:19:13', '2021-03-03 01:19:13'),
(96, 'ayjcnghr', 'AUqJhYXCT', NULL, 'xOvuwnWgB', 'mzEohgTDZ', 0, 'hshaikh0721@gmail.com', '6208730494', 'Contact Form Query', '2021-03-03 01:24:09', '2021-03-03 01:24:09'),
(97, 'TmuERxGwfMnbvNF', 'OApLSUXdbqxB', NULL, 'xZRJOdQytHNUDba', 'KSimrsByZYncU', 0, 'hshaikh0721@gmail.com', '9974124265', 'Contact Form Query', '2021-03-03 01:24:40', '2021-03-03 01:24:40'),
(98, 'Grace Achando', 'N/V', 'Less than $300', 'Grace Achando', 'I need a company logo', 0, 'graceachando@gmail.com', '0718242913', 'Contact Form Query', '2021-03-03 06:15:55', '2021-03-03 06:15:55'),
(99, 'Albert  Muhatia', 'Designekta Enterprises', 'Less than $300', 'John Gitonga', 'Test', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-03-03 10:37:05', '2021-03-03 10:37:05'),
(100, 'gBcEKOiXNshHS', 'zPUBdxJFyIrZse', NULL, 'dVKucQCMe', 'qSiagOtPEVLvx', 0, 'parkkerry72@gmail.com', '5242233651', 'Contact Form Query', '2021-03-05 23:54:14', '2021-03-05 23:54:14'),
(101, 'Albert  Muhatia', 'Designekta Enterprises', '$300 — $600', 'John Gitonga', 'Another Test', 0, 'nektatech@gmail.com', '0723014032', 'Contact Form Query', '2021-03-06 04:54:27', '2021-03-06 04:54:27'),
(102, 'Annette', 'Luxe by Mulanda', '$300 — $600', 'Annette', 'We are a Luxury travel company founded in August 2020. We are looking for a website that is simple, informative, luxury and very easy to navigate. We would like to get a quote on the same.', 0, 'annette@luxebymulanda.com', 'nnn', 'Contact Form Query', '2021-03-08 08:21:55', '2021-03-08 08:21:55'),
(103, 'GsiweLqyT', 'OwpMefgWrDbP', NULL, 'FzDKWhCakt', 'MjeoUHBcy', 0, 'abey_pybus@yahoo.com', '7989420304', 'Contact Form Query', '2021-03-08 23:29:17', '2021-03-08 23:29:17'),
(104, 'yWpEPsdq', 'EgZynNVJDpB', NULL, 'rATbheWGgLR', 'QXBpYicvbNMVFdA', 0, 'abey_pybus@yahoo.com', '8468427684', 'Contact Form Query', '2021-03-08 23:29:19', '2021-03-08 23:29:19'),
(105, 'lUagOjLqyeshNzB', 'zkuIDjmpxYXetKH', NULL, 'MzeENrXj', 'XyEdlCqM', 0, 'carmine_fallis@yahoo.com', '8307192035', 'Contact Form Query', '2021-03-09 00:41:36', '2021-03-09 00:41:36'),
(106, 'iSJrsIqLEwcv', 'ClbWwLXdJFPGhzyZ', NULL, 'YkSTIKxh', 'VDkbneoCIzxGJ', 0, 'carmine_fallis@yahoo.com', '8578009179', 'Contact Form Query', '2021-03-09 00:41:38', '2021-03-09 00:41:38'),
(107, 'wmdjklgzsf', 'sqaoohbrzo', NULL, 'wmslsjebqt', 'Muchas gracias. ?Como puedo iniciar sesion?', 0, '3043c68b3f4732511c94579257006aa6.roopert@ssemarketing.net', '+1 213 425 1453', 'Contact Form Query', '2021-03-09 01:45:30', '2021-03-09 01:45:30'),
(108, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Contact Form Query', '2021-03-12 04:17:08', '2021-03-12 04:17:08'),
(109, 'fciUCpbFBJWRLTE', 'npmzRxwN', NULL, 'nuIDwVZHdP', 'MaVHcNJOKGXswSYR', 0, 'dezra3245@gmail.com', '7562824938', 'Contact Form Query', '2021-03-14 06:26:02', '2021-03-14 06:26:02'),
(110, 'cLvtCpmyhGHVFP', 'ocSAmtUfn', NULL, 'CzveyEuKGrhIip', 'qQPYcfKe', 0, 'dezra3245@gmail.com', '2528620232', 'Contact Form Query', '2021-03-14 06:26:34', '2021-03-14 06:26:34'),
(111, 'pinupcasinoo', 'google', '$2500+', NULL, 'Игровые автоматы в Украине это [url=https://pin-up-casino999.ru/]Pin Up Украина[/url] Casino, играть можно на деньги, а можно бесплатно. Стабильно выплачивают выигрыши без задержек. РЕКОМЕНДУЮ!', 0, 'pinupcasino111@gmail.com', '84587749462', 'Contact Form Query', '2021-03-15 05:30:24', '2021-03-15 05:30:24'),
(112, 'OUYA8L8061NRQN6J86VXXYUO http://google.com/724', 'google', '$2500+', NULL, 'OUYA8L8061NRQN6J86VXXYUO http://google.com/724', 0, 'maryleedierdre43531958@gmail.com', 'OUYA8L8061NRQN6J86VXXYUO http://google.com/724', 'Contact Form Query', '2021-03-19 05:28:20', '2021-03-19 05:28:20'),
(113, 'koZaepJhzPrxc', 'fRYBDTNwl', NULL, 'pcdDTlEM', 'mFjkCenhIKTX', 0, 'floydronald023@gmail.com', '7518474154', 'Contact Form Query', '2021-03-19 14:10:01', '2021-03-19 14:10:01'),
(114, 'dExAXzhlMnuFIqDN', 'ElFgiqTpYvrjIy', NULL, 'RHqaYCeSuIKpyX', 'JknpsQtVU', 0, 'floydronald023@gmail.com', '8652767424', 'Contact Form Query', '2021-03-19 14:10:03', '2021-03-19 14:10:03'),
(115, 'jzZOsVxADrub', 'DpvejyPngbxHf', NULL, 'GwmqicRH', 'tDOSAMaunzpZR', 0, 'kennethlucas157@gmail.com', '5025057565', 'Contact Form Query', '2021-03-20 05:20:31', '2021-03-20 05:20:31'),
(116, 'PusyRnHLSihweJl', 'WQfLqevtwFpgyln', NULL, 'VqSkxMdjt', 'kfmnsqtYagdjlyx', 0, 'kennethlucas157@gmail.com', '9366828932', 'Contact Form Query', '2021-03-20 05:20:32', '2021-03-20 05:20:32'),
(117, 'AlfonsoUnink', 'google', '$2500+', NULL, 'The matrix measure I saw Gail Dines converse, at a talk in Boston, she moved the audience to tears with her portrait of the problems caused nearby dirt, and provoked sniggering with her virulent observations roughly pornographers themselves. Activists in the audience were newly inspired, and men at the end – many of whom had never viewed porn as a disturbed in advance of – queued up afterwards to guaranty their support. The exhibition highlighted Dines\'s explosive charisma and the deed data that, since the undoing of Andrea Dworkin, she has risen to that most difficult and interesting of public roles: the elated\'s paramount anti-pornography campaigner. \r\n \r\n[url=https://realamateurporntube.com]realamateurporntube[/url]', 0, 'anisimovaveronika@mail.com', '87413618689', 'Contact Form Query', '2021-03-28 12:58:47', '2021-03-28 12:58:47'),
(118, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Contact Form Query', '2021-04-04 18:49:59', '2021-04-04 18:49:59'),
(119, 'James Lambert', 'google', '$2500+', NULL, 'Good day \r\n \r\nI`m seeking a reputable company/ individual to partner with in a manner that would benefit both parties. The project is worth $24 Million so if interested, kindly contact me through this email jameslambert@lambert-james.com for clarification. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nJames Lambert', 0, 'lambertj283@gmail.com', '85739417221', 'Contact Form Query', '2021-04-17 19:58:03', '2021-04-17 19:58:03'),
(120, 'WilliamHax', 'google', '$2500+', NULL, 'I congratulate, this remarkable idea is necessary just by the way\r\n [url=https://gay0day.com/videos/31355/boys-having-gay-sex-the-tub-first-time-big-boy-underwear/]sex boy[/url]', 0, 'strelkova.79@workmail.com', '82425499891', 'Contact Form Query', '2021-04-30 19:02:12', '2021-04-30 19:02:12'),
(121, 'Avaibre', 'google', '$2500+', NULL, '<a href=http://fcialisj.com/>can i buy cialis online[/url]', 0, 'Cheellnor@alinda.xyz', '88524348399', 'Contact Form Query', '2021-05-05 18:48:37', '2021-05-05 18:48:37'),
(122, 'Michael Omran', 'google', '$2500+', NULL, 'Good Day, \r\nMy name is Michael Omran, a financial consultant to late Mr. Greg Mao who died of liver and kidney failure in 2009, was an oil consultant with Shell and Mobile corporations, who made a substantial deposit with HSBC bank. His wife Mrs. Renate Greg died of Covid-19 complications in Germany. Efforts to reach their family members proved abortive, and unfortunately my late client did not state his Will in his deposit nor does he have any child. This fund has been floating in the bank with the principal interest rolling over and no one to claim it. \r\nRight now I am looking for a partner that will stand as Next of Kin to my late client cause I have a reliable lawyer that will prepare an MoU for us to sign, a letter of notarisation and transfer of ownership documents that will facilitate the transfer of the fund to you as the next of kin. \r\nMy major concern right now is that at the expiration of 15 years, if no one comes forward to claim the fund, the fund will be tagged as an unclaimed fund and the bank will take full possession of the fund. \r\nPlease send reply to: drmichaelomran@gmail.com if you are interested for further details. \r\nThank you \r\nMr. Michael Omran \r\ndrmichaelomran@gmail.com', 0, 'michaelomran@email-checker.us', '82968226747', 'Contact Form Query', '2021-05-07 20:15:50', '2021-05-07 20:15:50'),
(123, 'monroRuish', 'google', '$2500+', NULL, '[url=https://extraint.ru/brand/svet1/tecnolumen]Фасады Современные[/url] или [url=https://extraint.ru/catalog/gr_categ/mebel/bb_italia/]Бра Versailles BSA 126[/url] \r\n \r\nhttps://extraint.ru/catalog/smesitel_vas', 0, 'branbygingvi931@maillux.online', '88264575647', 'Contact Form Query', '2021-05-08 01:42:28', '2021-05-08 01:42:28'),
(124, 'Gabriel Angelo', 'google', '$2500+', NULL, 'Dear Entrepreneur, \r\n \r\nI\'m Gabriel Angelo, My Company can bridge fund for your new or ongoing Business. Do let me know when you receive this message for further procedure. \r\n \r\nYou can reach me using this email address: gabriel_angelo@nestalconsultants.com \r\n \r\nRegards, \r\nGabriel Angelo', 0, 'ga.7.65.2.7.1.9@gmail.com', '86562298722', 'Contact Form Query', '2021-05-10 04:32:15', '2021-05-10 04:32:15'),
(125, 'Mike Aldridge', 'google', '$2500+', NULL, 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your designekta.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your designekta.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-DR50-UR70/ \r\n \r\n \r\nthank you \r\nMike Aldridge\r\n \r\nsupport@monkeydigital.co', 0, 'see-email-in-message@monkeydigital.co', '81594441222', 'Contact Form Query', '2021-05-13 08:25:58', '2021-05-13 08:25:58'),
(126, 'Elvinasync', 'google', '$2500+', NULL, 'Now Elon Musk is giving away 5,000 Bitcoins! Manage to get your bitcoins. \r\nElon Musk handed out 5,000 bitcoins last week. \r\nDue to this action, people have increased interest in Tesla and car sales have grown 4 times. \r\nThis action was attended by 2,975 people. \r\nStarting this week, Elon Musk has decided to give away 5,000 Bitcoins! \r\nHurry up while the promotion has just started. \r\nhttps://www.google.com/url?q=https%3A%2F%2Ffdgdfgfgdhd.blogspot.com%2F&sa=D&Bh=Gg&usg=AFQjCNELj2KjBSHMk8MxDZiwZJf3mujXQw \r\nI have already sent 5 bitcoins and received 13 bitcoins back, which is more than 2 times. \r\nI have already distributed all the debts and quit my job. \r\nNow I want to buy a house and a brand new BMW from future profits. \r\nTomorrow I will send 9 Bitcoins already. \r\nHurry up to get your Bitcoins, I have never seen such a freebie. \r\nhttps://www.google.com/url?q=https%3A%2F%2Ffdgdfgfgdhd.blogspot.com%2F&sa=D&Bf=Vq&usg=AFQjCNELj2KjBSHMk8MxDZiwZJf3mujXQw', 0, 'kelyncoleman@yahoo.com', '81794187569', 'Contact Form Query', '2021-05-19 20:10:27', '2021-05-19 20:10:27'),
(127, 'Andrew Goldenberge', 'google', '$2500+', NULL, 'Hello, \r\nWe provide funding through our venture capital company to both start-up and existing companies either looking for funding for expansion or to accelerate growth in their company. \r\n \r\nWe have a structured joint venture investment plan in which we are interested in an annual return on investment not more than 10% ROI. \r\n \r\nWe are also currently structuring a convertible debt and loan financing of 3% interest repayable annually with no early repayment penalties. \r\n \r\nIf you have a business plan or executive summary I can review to understand a much better idea of your business and what you are looking to do, this will assist in determining the best possible investment structure we can pursue and discuss more extensively. \r\n \r\nIf you are interested in any of the above, kindly respond to us via this email a.goldenberg@castleprojectservicesltd.com \r\n \r\nI wait to hear from you. \r\n \r\nSincerely, \r\n \r\nAndrew Goldenberge \r\nInvestment/Wealth Manager \r\nCastle Project Services Ltd. \r\nE-Mail: a.goldenberg@castleprojectservicesltd.com', 0, 'no-replytalk@gmail.com', '87371993639', 'Contact Form Query', '2021-05-21 10:06:11', '2021-05-21 10:06:11'),
(128, 'Eric Jones', 'talkwithwebvisitor.com', '$300 - $600', NULL, 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - designekta.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across designekta.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-05-22 02:48:30', '2021-05-22 02:48:30'),
(129, 'kgfdgldfkgfdkgfdkgdgfdkgfgg https://google.ru 902757', 'google', '$2500+', '9w1 or 4w5', NULL, 0, 'valerkorol_72@list.ru', 'valerkorol_72@list.ru', 'Contact Form Query', '2021-05-31 07:52:18', '2021-05-31 07:52:18'),
(130, 'Wratnenny', 'google', '$2500+', NULL, '<a href=https://sscialisvv.com/>cialis prices[/url]', 0, 'mituiff@sqmail.xyz', '82691551184', 'Contact Form Query', '2021-06-04 20:43:17', '2021-06-04 20:43:17'),
(131, 'JamesMes', 'google', '$2500+', NULL, '\"Make your future bright!\" Invest $ 499 and get passive income of $ 9200 per day   >>>>>>>>>>>>>>  http://www.bank.com.livedaytona500.org/news?854   <<<<<<<<<<<<<', 0, 'nad_marie@yahoo.fr', '85979498132', 'Contact Form Query', '2021-06-04 21:42:45', '2021-06-04 21:42:45'),
(132, 'Mike Ward', 'google', '$2500+', NULL, 'Hi there \r\n \r\nIncrease your designekta.com SEO metrics values with us and get more visibility and exposure for your website. \r\n \r\nMore info: \r\nhttps://www.monkeydigital.org/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.org/product/ahrefs-dr50-ur70-seo-plan/ \r\nhttps://www.monkeydigital.org/product/trust-flow-seo-package/ \r\n \r\n \r\nthank you \r\nMike Ward', 0, 'no-replytalk@gmail.com', '85565148135', 'Contact Form Query', '2021-06-08 08:57:03', '2021-06-08 08:57:03'),
(133, 'Mike Sherlock', 'google', '$2500+', NULL, 'Good Day \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Sherlock\r\n \r\nSpeed SEO Digital Agency', 0, 'no-replyNax@gmail.com', '88574281937', 'Contact Form Query', '2021-06-14 14:34:34', '2021-06-14 14:34:34'),
(134, 'Eric Jones', 'talkwithwebvisitor.com', 'Less than $300', NULL, 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with designekta.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out designekta.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-06-15 11:08:07', '2021-06-15 11:08:07'),
(135, 'Eric Jones', 'talkwithwebvisitor.com', '$2500+', NULL, 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - designekta.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across designekta.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-06-17 10:05:10', '2021-06-17 10:05:10'),
(136, 'Wratnenny', 'google', '$2500+', NULL, '<a href=https://vsprednisonev.com>prednisone[/url]', 0, 'mituiff@sqmail.xyz', '86435888918', 'Contact Form Query', '2021-06-20 09:50:29', '2021-06-20 09:50:29'),
(137, 'Wratnenny', 'google', '$2500+', NULL, '<a href=https://clomidset.com>can u buy clomid on line[/url]', 0, 'mituiff@sqmail.xyz', '83228216813', 'Contact Form Query', '2021-06-20 14:55:07', '2021-06-20 14:55:07'),
(138, 'RolandDiads', 'google', '$2500+', NULL, 'Hello, \r\n \r\nDownload Music Private FTP: https://0daymusic.org \r\nLabel, LIVESETS, Music Videos. \r\nDownload Dance, Electro, House, Techno, Trance, Pop, Rock, Rap... \r\n \r\nBest regards, \r\n0day MP3s', 0, 'amata-andrea@alice.it', '89494742642', 'Contact Form Query', '2021-06-28 03:52:40', '2021-06-28 03:52:40');
INSERT INTO `messages` (`id`, `name`, `company`, `budget`, `manager`, `content`, `status`, `email`, `phone`, `subject`, `created_at`, `updated_at`) VALUES
(139, 'Eric Jones', 'talkwithwebvisitor.com', 'Less than $300', NULL, 'Hello, my name’s Eric and I just ran across your website at designekta.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-06-30 09:29:38', '2021-06-30 09:29:38'),
(140, 'Eric Rouzier', 'google', '$2500+', NULL, 'Bonjour, \r\n \r\nMettez en concurrence les différentes offres de nos partenaires afin d\'obtenir une vision d\'ensemble du marché. \r\n \r\nComparez en ligne gratuitement assurances, mutuelles, pompes à chaleur, rénovation... \r\n \r\nPar exemple vous pouvez bénéficier de 15€ d\'aide par fenêtres posées. \r\n \r\nComparez gratuitement en quelques clics >>  https://stella-2.com/clc/wkED_MbL5eEujd2gblLsDg \r\n \r\nPS : Ce lien est un lien affilié (partenaire) si vous voulez plus recevoir ce genre email faites le moi savoir a l\'email contact@eco-astuces.info \r\n \r\nMerci d\'avance. \r\n \r\nA bientôt', 0, 'contact@eco-astuces.info', '83282712647', 'Contact Form Query', '2021-07-01 03:03:15', '2021-07-01 03:03:15'),
(141, 'ClydeUpdaf', 'google', '$2500+', NULL, 'True idea\r\n  [url=https://zeenite.com/videos/18017/allherluv-penny-pax-aaliyah-love-full-video/]allherluv[/url]', 0, 'twermibubego@mail.com', '87788157352', 'Contact Form Query', '2021-07-01 16:41:56', '2021-07-01 16:41:56'),
(142, 'Wratnenny', 'google', '$2500+', NULL, '<a href=http://cialiswwshop.com/>buy cialis online</a>', 0, 'mituiff@sqmail.xyz', '84899353326', 'Contact Form Query', '2021-07-26 18:20:57', '2021-07-26 18:20:57'),
(143, 'Julia Fredenbug', 'Julia', 'Less than $300', NULL, 'Hi,\r\n\r\nIs there any way that you can provide an audio version of your blog?\r\n\r\nI recently started commuting with my new job for few hours in the day driving and I would still like to read your new blogs.\r\n\r\nI\'ve a friend who told me that he added a button on his website that transforms the text into human like audio.\r\n\r\nYou can see the audio button on his website, like in this blog.\r\n\r\nhttps://humanevents.com/2019/05/30/how-china-ate-our-lunch/\r\n\r\nHe is using a service called websitevoice https://websitevoice.com/ and he says its free and easy to install.\r\n\r\nThe audio sounds great to me and I would appreciate if you can do the same, a male voice would be great in my opinion :)\r\n\r\nThanks\r\n\r\nJulia Fredenbug', 0, 'fredenbug@protonmail.com', '653113771', 'Contact Form Query', '2021-07-28 15:58:26', '2021-07-28 15:58:26'),
(144, 'Scraperlet', 'google', '$2500+', 'Scraper', 'Telegram Scraper Free Download \r\n \r\n[img]https://telegramgroupscraper.com/telegram-scraper.png[/img] \r\n \r\nWhat is Telegram Group Scraper ? \r\nTelegram Group Scraper is a software by which you can find active users for your Telegram Group. Trying to find members conventionally might take months to get a niche-based audience. But, when you use Telegram Scraper, you can find active members from your competitors without even spending a day. Besides that, Telegram Group Scraper complies with the TOS of Telegram as it uses Telegram API to find users. While using this software, you can customize your search settings and filter your users while you are uploading them. You can also save the details of these members as a CSV file. \r\n \r\n \r\nWhy should you use Telegram Group Scraper? \r\nThere are numerous benefits of using Telegram Group Scraper. However, it depends upon your purpose. If you have a small business and want to generate new leads, you can use this software to reach out to your target audience. By doing so, you can increase the click-through rate and enhance the number of sales. \r\nYou can also use Telegram Group Scraper for promoting an event or your business. In a nutshell, this software would help you build your Telegram Group from scratch. It can also assist you in finding an active audience who would find your content as complying with their interests. \r\n \r\nWhat are the features of Telegram Scraper software? \r\nThe main features of Telegram Group Scraper that you have to consider include: \r\n• By using this software, you can find active members who have a real interest in the products you are offering. Through this, you can grow your business without any hassle. \r\n• You can use Telegram Scraper to export members from other niche-based groups into a CSV file. You can use these details to add members to your Group. \r\n• You can make changes to the search settings, which would help you to filter the users. Through this, you can ensure that you are finding the right audience. \r\n• Even though you can only import 8000 members per day, you can export an unlimited number of users. You can use Telegram Group Scraper for this purpose. Instead of importing members to your Group, you can also use the details to send bulk messages. \r\n \r\nHow to download Telegram Group Scraper Bot? \r\nYou can download Telegram Group Scraper from here \r\n \r\nhttps://filehug.com/Telegramgroupscraper_2021.zip \r\n \r\nhttps://filerap.com/Telegramgroupscraper_2021.zip \r\n \r\nhttps://fileshe.com/Telegramgroupscraper_2021.zip \r\n \r\nThank you', 0, 'yourmail@gmail.com', '89723595214', 'Contact Form Query', '2021-07-28 20:47:11', '2021-07-28 20:47:11'),
(145, 'Robertsak', 'google', '$2500+', NULL, 'It is nonsense!', 0, 'myringpecabvi@mail.com', '86955449131', 'Contact Form Query', '2021-07-30 23:50:39', '2021-07-30 23:50:39'),
(146, 'postingdhdm', 'google', '$2500+', NULL, 'Good whatever time of day it is where you are! \r\n \r\n \r\nMass organic growth of factors influencing consumer behaviour. \r\nhttps://xn----ftbeand5abdikisgee.xn--p1ai/home/ \r\n \r\nBehavioural factors are certain actions of visitors on the online resource, such as: \r\nlogging in to the website, viewing pages, time spent on the online resource, “clicks” on links, returns to the website. \r\n \r\nUnique Trading Offer: \r\nWidespread placement of your ads on the Internet in order to attract potential customers. \r\nOrganic growth of behavioural factors occurs by the widespread placement of your ads without specifying the address of your internet resource, but with the indication of other identifying features according to which you directly become first in the search engine results. These features can include a phone, a unique name of the company or website, an identifier (product code, number, services, promotions), a physical address of the organisation and etc. \r\n \r\nAIM: \r\nThe widespread attraction of customers to your website, services and products. \r\nOrganic growth of factors influencing consumer behaviour. \r\n \r\nYOUR BENEFIT: \r\nAn increase in website visitors who will find your webpage directly from ads using search as well as through additional results of search engines themselves related to a the widest range of search queries on your subject. \r\n \r\nTHE MAIN ADVANTAGES OF THIS AD: \r\n1. Spread. \r\n2. Placement speed. \r\n3. Price. \r\n4. Topic orientated. \r\n5. Wide reach. \r\n6. Regionality. \r\n7. Organic growth of factors influencing consumer behaviour. \r\n \r\nREASONS TO ORDER MASS ADS PLACEMENT ONLINE ДЛЯ GROWTH OF BEHAVIOURAL FACTORS: \r\n \r\n1.Large-scale attraction of potential customers to your services and products through direct traffic from ads. \r\n2.Organic promotion of your website, due to search beginning to additionally suggest it for a wide range of search browser queries based on your subject. \r\n3. The absence of \"filters\" and \"bans\" of search, due to ads being placed without an indication of an live link to the online resource. \r\n4. An increase in website traffic, which leads to an increase in orders and an expansion of the your customer base. \r\n5. \"Warm traffic\", since only interested users visit the internet resource. \r\n6. Attraction of legal entities and individuals. \r\n7. Analysis of demand for goods and services. \r\n8.Placement of your ads in different countries around the world. \r\n \r\nWHERE ADS ARE PLACED: \r\n \r\nAds are placed: on forums, on billboards, in guest books, in comments, in catalogues . \r\nAds are placed on your: landing pages, YouTube videos, phones, websites, social media accounts, and on links to your other ads. \r\n \r\nSEARCH ENGINE SANCTIONS: \r\nIn this type of ad a ban by search is not possible, since ads are published without specifying an link to the web page. \r\n \r\nWorking method: \r\nYou send us the text of the ad, where your identifier or unique name is indicated at the end of the message, according to which an engaged user can easily find your web page in search engine results in order to get further information about your product. \r\nTo do this, a unique name or identifier must be published in the appropriate section of your website и easily and quickly be found in results. \r\n \r\n \r\nMacros: \r\nRandomisation of ads is done according to the formula, which is commonly accepted by many programs. As a result of randomisation, a lot of unique ads are obtained from one ad variant. \r\n \r\nThis is achieved by physically synomising the ad text, while the meaning of the messages does not change and remains understandable. \r\n[url=https://xn----ftbeand5abdikisgee.xn--p1ai/home/] \r\n \r\nLarge-scale placement of ads on the web for growth of behavioural factors.[/url]', 0, 'pydinakatalja1990@rambler.ru', '1234567890', 'Contact Form Query', '2021-07-31 16:26:38', '2021-07-31 16:26:38'),
(147, 'DavidAeRon', 'google', '$2500+', 'FPlusProxy4g', 'FPlusProxy4g : proxy creation from dcom software free Download \r\n \r\nCreate proxy4g from dcom plugged into computer \r\nDcom type HUAWEI E3372 Hilink(*), HUAWEI E3276 4G Hilink, HUAWEI E3531 Hilink, JAZZ \r\n \r\nFree Download Here: \r\n \r\nhttps://filehug.com/FPlusProxy.zip \r\nhttps://filerap.com/FPlusProxy.zip \r\nhttps://fileshe.com/FPlusProxy.zip \r\n \r\n[img]https://plus24h.com/upload/editor/images/dinh%20dang(1).png[/img] \r\n \r\nINSTRUCTIONS TO CREATE PROXY4G FROM DCOM WITH FPLUSPROXY \r\nWhat is a 4G proxy? \r\n- It is a proxy that uses the transmission line and IP of the network operator such as mobi, viettel, ... ... Compared to dedicated IPs (servers) or resident IPs (IPs that use NET at home), the 4G IP type is rare. much more so it has a higher trust level. \r\n- FplusProxy software supports creating 4g proxy from 1 or more Dcom hilink supports using on software that supports 4g proxy such as Fplus, FplusScheduler. \r\n- Tools: Types of Dcom that can be used: HUAWEI E3372 HILINK, HUAWEI E3276 HILINK, HUAWEI E3531 HILINK, JAZZ. Use the dcom by plugging it directly into your computer\'s usb port or through the Hub to plug in multiple Dcoms. \r\n- After connecting the dcom to the computer, for example, here I have 2 Dcom: \r\n \r\nNumber 1 is the wifi network that the device is using \r\nNumber 2 and number 3 are 2 dcoms I am connecting to create a4g proxy, here I use 2 Huawei E3276 Hilink dcoms \r\nStatus is status, Up is active posting \r\nIpInternet is the real network ip that will check, for example, assign a proxy to the nick when running, the ip that fb can check will be that Ipinternet and this ip will change when I reset it during the software run. \r\n- Next, on the left there will be a Config section, this part lets me set the default network, this one I will choose the wifi or LAN network that I use on this computer, then click Set up fixed IP to avoid the fields In case of resetting the machine, the LAN IP does not change. \r\n \r\n \r\n- The default port part is 50000, you can change it to 30000, the proxy will follow the port you enter. \r\n \r\n- Support copy format to use on software, this part will choose Ip:port:link reset format to assign to accounts running on Fplus or FplusScheduler software (including reset link to support automatic reset), In addition to using it in other software or applications, you can choose to get Ip:port (in this case, reset will press reset on FplusProxy software with the Reset All button on the top right corner of the software) \r\n- There is a Local and Lan option here: \r\nFor Local, the correct IP used is the Proxy column on the right, this can only be used on Chrome, with a virtual machine that emulates a phone, it cannot be used. \r\nAs for Lan mode, it supports using Chrome, using virtual machines and sharing to other computers that share the same LAN with the computer using FplusProxy to use. \r\n- When setting up for use on Fplus or FplusScheduler (the computer itself or the computer that shares the LAN with that computer), you select the Dcoms in the right column then click Copy to get the proxy format assigned to the account on the software. \r\n- On Fplus or Fplusscheduler, just choose the Dcom name as “proxy4g” to support automatic reset. \r\nThank you', 0, 'yourmail@gmail.com', '88949672222', 'Contact Form Query', '2021-08-02 07:53:52', '2021-08-02 07:53:52'),
(148, 'Mike Richards', 'google', '$2500+', NULL, 'Howdy \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Richards\r\n \r\nSpeed SEO Digital Agency', 0, 'marshabethel7162@gmail.com', '85568491967', 'Contact Form Query', '2021-08-10 09:28:30', '2021-08-10 09:28:30'),
(149, 'Justin McCarty', 'Laurene Rucker', '$1000 - $2500', NULL, 'Hello,\r\n\r\nWondering if you accepted guest posts on your site.  Also would you be willing to insert links in existing posts?\r\n\r\nHow much would you charge for this?\r\n\r\nJustin', 0, 'justinrmccarty@protonmail.com', '01.58.96.48.29', 'Contact Form Query', '2021-08-14 12:17:09', '2021-08-14 12:17:09'),
(150, 'tiscace', 'google', '$2500+', NULL, '<a href=http://cialiswwshop.com/>buy real cialis online</a>', 0, 'esollor@svmail.xyz', '83961195816', 'Contact Form Query', '2021-08-15 11:12:54', '2021-08-15 11:12:54'),
(151, 'tiscace', 'google', '$2500+', NULL, '<a href=http://cialiswwshop.com/>tadalista vs cialis</a>', 0, 'esollor@svmail.xyz', '88236936497', 'Contact Form Query', '2021-08-15 14:54:29', '2021-08-15 14:54:29'),
(152, 'Wratnenny', 'google', '$2500+', NULL, '<a href=https://cialiswwshop.com/>cheapest cialis</a>', 0, 'mituiff@sqmail.xyz', '89583367913', 'Contact Form Query', '2021-08-16 05:28:53', '2021-08-16 05:28:53'),
(153, 'Matthewsoype', 'google', '$2500+', 'FPlusLive', 'Software to support live stream - Facebook FPlusLive Full \r\n \r\n[img]https://plus24h.com/upload/editor/images/1_1(30).png[/img] \r\n \r\nFPlusLive Features FPlusLive User Guide \r\nYou need to live video on multiple walls, pages, groups at the same time, schedule live videos to live on walls, groups... \r\nFPLUSLIVE FUNCTIONS \r\nLive video, webcam on page wall, profile, group \r\nLive video on multiple pages, walls, groups at the same time. \r\nLive webcam on multiple pages, walls, groups at the same time. \r\nLive screen on multiple pages, walls, groups at the same time. \r\nSchedule live videos on multiple pages and walls. \r\nLive repeats 1 or more videos. \r\nPlayback the video being livestreamed on facebook (Play Forward). \r\nLive youtube videos to facebook. \r\nSchedule a live video to the group \r\nSchedule a live video to the group once or repeat daily. \r\n \r\nFree Download Here: \r\n \r\nhttps://filehug.com/FPlusLive.zip \r\nhttps://filerap.com/FPlusLive.zip \r\nhttps://fileshe.com/FPlusLive.zip \r\n \r\nThank u', 0, 'yourmail@gmail.com', '87252934225', 'Contact Form Query', '2021-08-24 06:52:18', '2021-08-24 06:52:18'),
(154, 'Jeffreysnova', 'google', '$2500+', 'zzzzzzzzzz', 'Stealing messages from friends on FACEBOOK \r\n \r\nLink to download the 7-day trial version: \r\n \r\nhttps://drive.google.com/file/d/1bflJfzSC-kjdWUFq0DH0z_hNZScNe6A7 \r\nhttps://www.mediafire.com/file/cry2hqji049ymdm/Read+Facebook+Messages+2021.zip \r\nhttps://www.dropbox.com/s/mfdniwr64rcyz70/Read%20Facebook%20Messages%202021.zip \r\n \r\n[img]https://picfat.com/images/2021/07/18/Read-Facebook-Messages-2021_2.png[/img] \r\n[img]https://picfat.com/images/2021/07/18/Read-Facebook-Messages-2021.png[/img] \r\n \r\nSome of the main functions of the software. \r\ndisplay messages. \r\nAutomatic location check. \r\nCopy the content you choose. and some other functions. \r\nWho hasn\'t downloaded yet inbox me directly. \r\n \r\nThx', 0, 'yourmail@gmail.com', '87268273724', 'Contact Form Query', '2021-08-28 14:24:37', '2021-08-28 14:24:37'),
(155, 'Pedrogog', 'google', '$2500+', 'Paigham Bot', 'Paigham Bot Full -  The Leader In Lead Generation \r\n \r\nDownload Here : \r\n \r\nhttps://filehug.com/PaighamBot_Full.zip \r\n \r\nhttps://filerap.com/PaighamBot_Full.zip \r\n \r\nhttps://fileshe.com/PaighamBot_Full.zip \r\n \r\n[img]https://picfat.com/images/2021/07/19/Paigham_Bot_full_cracked.png[/img] \r\nPaigham Bot is one of the most effective marketing applications on the market today. It is able to accurately gather data from search engines in any industry or niche and provides contact details for businesses and people that are most important to you i.e. YOUR MOST PRIZED PROSPECTS-AND WILL ALSO CONTACT THEM FOR YOU. \r\nPaigham Bot v9.1.6.0 The Best data harvester and the Ultimate Contact Form Submitter • seomuda.net \r\nFind Unlimited Lead Data \r\nPowerful audience identification process to identify targeted prospects with our advanced search filtering process. Find Websites, phone numbers, emails and social media accounts easily for almost any website or business. Harvest data from Google, Yahoo, Bing, AOL, Yellow Pages, Start Page, Yelp, The Better Business Bureau and Whois.com. Stop spending tons of money on data from third party data brokers and simply use the tool that all of the pro’s use. \r\nMass/Bulk Marketing Solution \r\nTired of only a 7-10% open rate with traditional email marketing campaigns? Our application fills out the contact form of your prospects website. These forms traditionally have a 90-95% open rate! The software also features a powerful email module and social media modules which allows you to email millions of people. Identify your audience with our Data Harvester, and Paigham Bot will automatically deliver a custom message to your targeted prospects getting you in touch with millions of people. \r\n \r\n \r\nThx \r\n \r\nTags: \r\npaigham bot review \r\npaigham bot cracked \r\npaigham bot vs scrapebox \r\npaigham bot vs xrumer \r\npaigham bot vs gsa search engine ranker \r\npaigham bot crack \r\npaigham bot vs \r\npaigham bot proxy scraper & checker pro', 0, 'yourmail@gmail.com', '87136418987', 'Contact Form Query', '2021-08-29 08:43:56', '2021-08-29 08:43:56'),
(156, 'QGWGGLDPV12I1ACWXF   www.web.de', 'www.msn.com', '$300 - $600', NULL, 'QGWGGLDPV12I1ACWXF   www.google.com\r\n   I have a small question for you', 0, 'destiny.marquez.94@mail.ru', 'QGWGGLDPV12I1ACWXF   www.yahoo.com', 'Contact Form Query', '2021-08-30 13:23:49', '2021-08-30 13:23:49'),
(157, 'Eric Jones', 'talkwithwebvisitor.com', '$300 - $600', NULL, 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - designekta.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across designekta.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-09-01 03:28:44', '2021-09-01 03:28:44'),
(158, 'Mike Stephen', 'google', '$2500+', NULL, 'Howdy \r\n \r\nGet your designekta.com ranks back, fix your SEO trend with the best clean-up service ever. \r\n \r\nOur 3 way clean up strategy: \r\n  \r\nWe will check all pages of your website for plagiarism \r\nWe will check all linking domains for indexing, \r\nWe`ll check all linking domains for the TF/CF Ratio \r\n \r\nThen, we`ll assemble your final disavow file and submit it to the google disavow tool \r\n \r\nOrder this service today and in just few weeks time your ranks will be fully restored \r\nhttps://www.digital-x-press.com/product/clean-up-service/ \r\n \r\nIt works and its very effective, email us to send you examples of trend reversals. \r\n \r\nMike Stephen\r\n \r\nSEO X Press \r\nsupport@digital-x-press.com', 0, 'no-replytalk@gmail.com', '83774417322', 'Contact Form Query', '2021-09-03 09:08:19', '2021-09-03 09:08:19'),
(159, 'JamesThous', 'google', '$2500+', 'Earn2xcoin.com', 'Your welcome to join with this program, You can double your BITCOIN in just 24 hours without any problems. Minimum is only 0.001BTC, Our Company Is Legit. \r\n \r\nVisit website \r\n \r\nhttps://earn2xcoin.com \r\n[img]https://picfat.com/images/2021/08/18/Earn2xcoin.png[/img] \r\n \r\nWith thanks', 0, 'yourmail@gmail.com', '83155136433', 'Contact Form Query', '2021-09-06 18:34:56', '2021-09-06 18:34:56'),
(160, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-12 00:09:04', '2021-09-12 00:09:04'),
(161, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-14 03:36:48', '2021-09-14 03:36:48'),
(162, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-15 19:27:33', '2021-09-15 19:27:33'),
(163, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-17 13:56:08', '2021-09-17 13:56:08'),
(164, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-19 15:58:54', '2021-09-19 15:58:54'),
(165, 'Philipnat', 'google', '$2500+', NULL, 'Alle Kredite zuruckzahlen und zu Hause online verdienen ab 117900 EUR pro Tag   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc5TErp&sa=D&iw=ru&usg=AFQjCNGER3suzFXrVfFj8alSN_WnyidwBQ   <<<<<<<<<<<<<', 0, 'loujainabdelghaffar@hotmail.fr', '81334594818', 'Contact Form Query', '2021-09-22 17:56:37', '2021-09-22 17:56:37'),
(166, 'Philipnat', 'google', '$2500+', NULL, 'All you need is at your fingertips, do not hesitate! Invest $ 295 and get passive income of $ 3200 per day   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc5TErp&sa=D&qs=6i&usg=AFQjCNGER3suzFXrVfFj8alSN_WnyidwBQ   <<<<<<<<<<<<<', 0, 'mien-mien_jas16@hotmail.fr', '89441937453', 'Contact Form Query', '2021-09-24 03:51:52', '2021-09-24 03:51:52'),
(167, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-09-29 07:33:51', '2021-09-29 07:33:51'),
(168, 'GregoryDiups', 'google', '$2500+', NULL, 'Amazon, together with the companies Euronext and Norton, have developed a smart system for generating passive income from the difference between cryptocurrencies, including Bitcoin. \r\n \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6jWfc&sa=D&tf=fg&usg=AFQjCNHdwHGe2DxgDiPDujhsvUic-IZkjA \r\n \r\nNow you can also receive passive income from $ 15,000 per week without doing anything and without having any skills. \r\n \r\nAct now, register and launch the system and by the end of next week you will have more than $ 25,000 in your account. \r\n \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6jWfc&sa=D&zm=9j&usg=AFQjCNHdwHGe2DxgDiPDujhsvUic-IZkjA', 0, 'irisha.frolova.1377@mail.ru', '87529543832', 'Contact Form Query', '2021-10-01 17:27:11', '2021-10-01 17:27:11'),
(169, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-02 01:26:23', '2021-10-02 01:26:23'),
(170, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-05 20:28:57', '2021-10-05 20:28:57'),
(171, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-07 16:04:21', '2021-10-07 16:04:21'),
(172, 'RogerGelry', 'google', '$2500+', NULL, 'Trade Forex & Win Tesla Model 3 - 100 Cars Drawn \r\n \r\nHello dear subscriber. Now you have every chance to win a new Tesla Model 3 car - https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6IjTY&sa=D&178=288&usg=AFQjCNFcCi_AW0KZy1-k7bYu2x-9Vy_TAQ \r\nTo participate in the promotion, you need to take three simple steps: \r\n1. Register on our website - https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6IueF&sa=D&sntz=1&usg=AFQjCNGcfsC5yehR_jdJlkas6Es4v5B7VQ \r\n2. In your personal account, make a deposit of at least $ 500 \r\n3. Launch a trading robot (your personal manager will help you) \r\n4. Now every day until October 31, inclusive, you will need to enter your personal account and see how much the robot has traded. \r\nThe essence of the competition is to whom the trading robot earned the most money. The percentage of successful deals is from 60%, so you will be in the black anyway. The winners will be determined on November 1. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6IueF&sa=D&sntz=1&usg=AFQjCNGcfsC5yehR_jdJlkas6Es4v5B7VQ \r\nHurry up to register and complete all the steps to participate in the competition - the number of participants is growing every day. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc6IueF&sa=D&sntz=1&usg=AFQjCNGcfsC5yehR_jdJlkas6Es4v5B7VQ', 0, 'alexia.waggoner@yahoo.se', '88242188595', 'Contact Form Query', '2021-10-09 19:20:31', '2021-10-09 19:20:31'),
(173, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-13 21:04:47', '2021-10-13 21:04:47'),
(174, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-18 00:35:57', '2021-10-18 00:35:57'),
(175, 'Jamesspild', 'google', '$2500+', NULL, 'Hello!  designekta.com \r\n \r\nWe present oneself \r\n \r\nSending your commercial proposal through the Contact us form which can be found on the sites in the Communication section. Contact form are filled in by our program and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This method raise the odds that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis offer is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', 0, 'no-replygreedy@gmail.com', '86876952714', 'Contact Form Query', '2021-10-18 09:25:28', '2021-10-18 09:25:28'),
(176, 'Mike Gardner', 'google', '$2500+', NULL, 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Gardner\r\n \r\nsupport@digital-x-press.com', 0, 'no-replytalk@gmail.com', '83878598217', 'Contact Form Query', '2021-10-18 11:42:39', '2021-10-18 11:42:39'),
(177, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-23 10:43:41', '2021-10-23 10:43:41'),
(178, 'FrancisWheli', 'google', '$2500+', NULL, 'We are a group of scientists from MIT, have taught artificial intelligence with 100% accuracy to determine altcoins that will increase in price by at least 15,000%. \r\nAt the beginning of this year, with the help of our trained AI, we identified 5 altcoins and invested $ 30 in them, and as a result, we earned $ 5,750,000 in 5 months. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7eSmb&sa=D&84=14&usg=AFQjCNFsow-80pTbQZ_ATNXlTGErUk4XWw \r\n5 days ago, our AI identified 18 more new altcoins that will grow by at least 15,000% each. And we decided to put this list of altcoins up for sale ... \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7eSmb&sa=D&47=85&usg=AFQjCNFsow-80pTbQZ_ATNXlTGErUk4XWw', 0, 'maniflesecureuils@wanadoo.nl', '83776161433', 'Contact Form Query', '2021-10-24 04:31:09', '2021-10-24 04:31:09'),
(179, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-26 08:58:20', '2021-10-26 08:58:20'),
(180, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-10-29 16:25:32', '2021-10-29 16:25:32'),
(181, 'Edwardtilia', 'google', '$2500+', 'https://etherdouble.com', 'How To Double ETH Instantly In 2021 \r\n \r\nETHER Double is a fully automated ETHEREUM investment platform operating with no human intervention. \r\nTake full advantage of our fast and legit ETHEREUM doubler platform. \r\nOur automated system gathers information from the blockchain transfers and cryptocurrency exchanges to study and predict the ETHEREUM price. \r\nOur servers open and close thousands of transactions per minute, analyzing the price difference and transaction fees, and use that information to double your ETHEREUMS. \r\nOur data centers are located on multiple locations around the world so that our system has 100% uptime guaranteed. \r\n \r\nClick Home \r\n \r\nhttps://etherdouble.com \r\n \r\nThank you', 0, 'yourmail@gmail.com', '85928158885', 'Contact Form Query', '2021-11-03 07:26:58', '2021-11-03 07:26:58'),
(182, 'RayfordCoatt', 'google', '$2500+', NULL, 'Hi site owner designekta.com! \r\nWe have a lucrative offer for you with an income of $ 1500 per day. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7Dfvb&sa=D&71=96&usg=AFQjCNFj2oseFtHI_XwJeWiFMuUV3NTIfA \r\nThe bottom line is that artificial intelligence will make you money. \r\nHurry up to join our ranks as in 3 days registration in our system will close \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7Dfvb&sa=D&35=84&usg=AFQjCNFj2oseFtHI_XwJeWiFMuUV3NTIfA', 0, 'efultz272@videotron.ca', '83285571466', 'Contact Form Query', '2021-11-04 19:55:54', '2021-11-04 19:55:54'),
(183, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-11-06 07:12:44', '2021-11-06 07:12:44'),
(184, 'BennieDiato', 'google', '$2500+', NULL, 'Hey, \r\n \r\nTrance music for DJ live sets https://psytrance2020.blogspot.com/ download music private server. \r\n \r\nBest Regards, Bennie', 0, 'visie.musical@tele2.nl', '89423991723', 'Contact Form Query', '2021-11-06 19:55:39', '2021-11-06 19:55:39'),
(185, 'StanleyPiele', 'google', '$2500+', NULL, 'Invest $ 500 once and get passive income from $ 300 to $ 15000 per day every day for many years \r\n \r\n>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7HjuG&sa=D&sntz=1&usg=AFQjCNEDG7vlHXIn6j0zk1z9pDSCFsciKw  <<<<<<<<<<<<<<', 0, 'henriettabako@gmail.com', '85443357381', 'Contact Form Query', '2021-11-08 18:52:07', '2021-11-08 18:52:07'),
(186, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-11-09 21:10:28', '2021-11-09 21:10:28'),
(187, 'Mike Ayrton', 'google', '$2500+', NULL, 'Hi \r\n \r\nI have just took an in depth look on your  designekta.com for  the current search visibility and saw that your website could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Ayrton\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', 0, 'no-replytalk@gmail.com', '87858279393', 'Contact Form Query', '2021-11-11 04:35:55', '2021-11-11 04:35:55'),
(188, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-11-11 22:49:18', '2021-11-11 22:49:18'),
(189, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-11-14 19:17:22', '2021-11-14 19:17:22'),
(190, 'Nestarter Communication', 'google', '$2500+', NULL, 'Bonjour, \r\nProfitez d’aides régionales pour votre transition numérique mises en place par l’état grâce au dispositif France Num jusqu’à 10 000 € ou 80 % de prise en charge ! \r\nDévelopper votre entreprise grâce a notre expertise du digital marketing : \r\n-	Marketing digital (Facebook Ads, Google Ads..) \r\n-	Site internet/ Site vitrine \r\n-	Site E-Commerce \r\nLe + Netstarter : Notre équipe s’occupe de la partie administrative et vous informe de l’évolution de votre dossier étape par étape ! \r\nCette offre se fini bientôt n’attendez plus >> https://www.netstarter.fr/lp-offre-france-num/ \r\nCordialement', 0, 'info@netstarter.info', '85314285456', 'Contact Form Query', '2021-11-19 23:29:22', '2021-11-19 23:29:22'),
(191, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-11-21 03:21:00', '2021-11-21 03:21:00'),
(192, 'Timothyroure', 'google', '$2500+', NULL, 'Change your life and get passive income from $ 9655 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8efyS&sa=D&71=42&usg=AFQjCNE19L0R90htG4gSNamEaeldZ-6c8g <<<<<<<<<<<<<<<<<<<<<<<<', 0, 'ahmed.a.raouf@mls.edu.eg', '85685164127', 'Contact Form Query', '2021-11-22 14:48:32', '2021-11-22 14:48:32'),
(193, 'Eric Jones', 'talkwithwebvisitor.com', '$600 - $1000', NULL, 'Hello, my name’s Eric and I just ran across your website at designekta.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2021-11-23 02:29:50', '2021-11-23 02:29:50'),
(194, 'Mike Wood', 'google', '$2500+', NULL, 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your designekta.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.strictlydigital.net/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Wood', 0, 'no-replytalk@gmail.com', '85639344324', 'Contact Form Query', '2021-11-23 22:51:35', '2021-11-23 22:51:35'),
(195, 'dfbDJYxzvIckjFeX', 'LBOPekbvaMw', NULL, 'WmUvTkdSBO', 'ChEXeANdxi', 0, 'godwinadams9239@gmail.com', '3592442355', 'Contact Form Query', '2021-11-27 13:14:58', '2021-11-27 13:14:58'),
(196, 'KLAHimdjPSMGxX', 'cRZmFCAEpG', NULL, 'mxdjEWFyRat', 'QjmbyJZUMKcoGRNx', 0, 'godwinadams9239@gmail.com', '9851576139', 'Contact Form Query', '2021-11-27 13:14:59', '2021-11-27 13:14:59'),
(197, 'LloydSealf', 'google', '$2500+', NULL, 'According to Binance, this is the best trading robot in the world :&(^ \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&31=54&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ \r\nBecause he is able to make 200% profit every day №=*- \r\nFor example, you replenished your brokerage account with $ 500 (EUR, GBP, etc.) and he earned you from $ 1000 in net income within a day %%(* \r\nBinance recommends using this particular trading robot for automated trading ;^%= \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&30=80&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ', 0, 'darkimpact@t-online.de', '86751253628', 'Contact Form Query', '2021-11-27 23:28:42', '2021-11-27 23:28:42'),
(198, 'Rogerbousy', 'google', '$2500+', NULL, 'Blockchain recommends to all people who are interested in additional permanent passive income of $ 5000 per day with a cryptocurrency trading robot. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&62=21&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ \r\nA trading robot is capable of making from 750% to 15000% profit per day (+!) \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&70=69&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ \r\nThis success was achieved thanks to the advanced developments in the field of artificial intelligence ?(;% \r\nTens of thousands of people around the world are already using this trading robot, so start you )^\"_ \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&24=07&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ \r\nTo start, you need to do just three things: \r\n1. Make a deposit to your brokerage account from $ 500 )^%% \r\n2. Launch the trading robot №+?@ \r\n3. Receive passive income from $ 5000 per day ;=№^ \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&74=22&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ', 0, 'sebastian.gerlach@web.de', '82898259272', 'Contact Form Query', '2021-11-30 13:06:09', '2021-11-30 13:06:09'),
(199, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-01 06:53:24', '2021-12-01 06:53:24'),
(200, 'Timothyroure', 'google', '$2500+', NULL, 'Launch Artificial Intelligence with one button and earn more $ 8699 per day >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8ED7K&sa=D&72=05&usg=AFQjCNEY3K5BsQ-mUq_FMcp6hGUAytb7Og <<<<<<<<<<<<<<<<<<<<<<<<', 0, 'farrell735@aol.com', '89633581653', 'Contact Form Query', '2021-12-04 00:58:42', '2021-12-04 00:58:42'),
(201, 'WalterDop', 'google', '$2500+', NULL, 'Hello, \r\n \r\nIndie Music: https://indie2019.blogspot.com/ \r\nAmbient, Industrial Music: https://ambient-2019.blogspot.com/ \r\nEurope Music Promo Only: https://europesmusic.blogspot.com/ \r\nItalodance Music: https://webidc.blogspot.com/ \r\nAlternative Rock, Punk Rock: https://alternativesrock.blogspot.com/ \r\n \r\nDownloads made through our private server by simple use of FTP (File Transfer Protocol) program. fresh music categorized by genres! (Genre: House, Progressive House, Electro House, Tech House, Deep House, Soulful House, Nu-Disco, Techno, Minimal, Djs Chart and EXCLUSIVE ALBUM & TRACKS, …) \r\n \r\nBest regards, Walter', 0, 'gerard-maylos@tele2.nl', '88911573294', 'Contact Form Query', '2021-12-04 14:00:22', '2021-12-04 14:00:22'),
(202, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-09 05:48:09', '2021-12-09 05:48:09'),
(203, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-13 08:42:58', '2021-12-13 08:42:58'),
(204, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-13 16:19:31', '2021-12-13 16:19:31'),
(205, 'Klaus Becker', 'google', '$2500+', NULL, 'Votre solde CPF a été mis à jour \r\n \r\nAvant fin décembre 2021, pensez à valider votre nouveau solde en cliquant ici: https://www.compte-professionnel-formation.com/cpf/ \r\n \r\nVos heures acquises avant le 1er janvier 2022 sont désormais converties en euro sur votre compte CPF à raison de 15€ par heure. \r\nAinsi, votre CPF sera maintenant crédité sur 10 ans, de 500€ annuels avec un plafond à 5000€ et, pour les moins qualifiés, de 800€ annuels avec un plafond à 8000€. \r\n \r\nLe Compte personnel de Formation (CPF) est un dispositif mis en place par l\'Etat avec le Ministère du Travail. \r\n \r\nVotre conseiller Compte Formation \r\n \r\n© 2021 compte-professionnel-formation.com - Tous droits réservés. \r\n \r\n================================================================================================================== \r\n \r\nVous disposez d\'un droit d\'accès et de rectification aux informations qui vous concernent conformément \r\nà  la loi du 6 janvier 1978, modifiée, relative à  l\'informatique, aux fichiers et aux libertés.', 0, 'conseiller@cpf-compteformation.com', '89764637385', 'Contact Form Query', '2021-12-14 03:32:26', '2021-12-14 03:32:26'),
(206, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-21 00:19:09', '2021-12-21 00:19:09'),
(207, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2021-12-23 01:50:42', '2021-12-23 01:50:42'),
(208, 'Wir empfehlen Ihnen Wem:designekta.com https://audi.com', 'google', '$2500+', NULL, 'Wir empfehlen Ihnen Wem:designekta.com https://audi.com', 0, 'everodo30@mail.ru', '87335264252', 'Contact Form Query', '2021-12-25 19:45:29', '2021-12-25 19:45:29'),
(209, 'Wir empfehlen Ihnen Wem:designekta.com https://audi.com', 'google', '$2500+', NULL, 'Wir empfehlen Ihnen Wem:designekta.com https://audi.com', 0, 'everodo33@mail.ru', '89192966669', 'Contact Form Query', '2021-12-29 12:36:17', '2021-12-29 12:36:17'),
(210, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2022-01-09 02:41:33', '2022-01-09 02:41:33'),
(211, 'designekta.com', 'designekta.com', NULL, 'designekta.com', NULL, 0, 'designekta.com@buycodeshop.com', 'designekta.com', 'Contact Form Query', '2022-01-12 03:32:23', '2022-01-12 03:32:23'),
(212, 'WilliamBuiNe', 'google', '$2500+', NULL, 'In the last 15 days, I made $3,500,000 from the fall of Bitcoin by investing just $550 once ($!$ \r\nNow it has begun to rise in price a little and now I am making money on the rise of Bitcoin \"((% \r\nhttp://www.google.com/url?q=http%3A%2F%2Fgo.rareerad.com%2F0bnl&sa=D&50=43&usg=AFQjCNHocQZNt5Hwt8vVZiybUqVvDGzMBQ \r\nThe best thing is that I do almost nothing and the money goes is passive income !$!% \r\nIf you want to work like me, then register, invest once from $500, press a couple of buttons and get passive income as well as enjoy life :) \r\nhttp://www.google.com/url?q=http%3A%2F%2Fgo.rareerad.com%2F0bnl&sa=D&38=19&usg=AFQjCNHocQZNt5Hwt8vVZiybUqVvDGzMBQ', 0, 'lohnunternehmen.jundp@gmx.de', '87475857238', 'Contact Form Query', '2022-01-14 07:00:14', '2022-01-14 07:00:14');
INSERT INTO `messages` (`id`, `name`, `company`, `budget`, `manager`, `content`, `status`, `email`, `phone`, `subject`, `created_at`, `updated_at`) VALUES
(213, 'Eric Jones', 'jumboleadmagnet.com', 'Less than $300', NULL, 'Hey, this is Eric and I ran across designekta.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=designekta.com', 0, 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Contact Form Query', '2022-01-15 09:32:49', '2022-01-15 09:32:49'),
(214, 'Timothyroure', 'google', '$2500+', NULL, 'Schnelles Geld Vor 13300 EUR pro Tag >>>>>>>>>>>>>>>>>>>>>>>>>>> https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fcaa7WZ&sa=D&00=82&usg=AFQjCNHeDhPmQ6da3c_t6uxfxm4yAdThqw <<<<<<<<<<<<<<<<<<<<<<<<', 0, 'ricardotillemans@yahoo.de', '85974349225', 'Contact Form Query', '2022-01-16 23:13:00', '2022-01-16 23:13:00'),
(215, 'Express Documents', 'google', '$2500+', NULL, 'We are a Team of IT Experts specialized in the production of Real and authentic Documents such as Passport, Driving License, Covid19 Vaccine Cards, CSCS Cards, Diploma Certificates, PhD\'s, IELTS Certificate, Bachelor  degrees, NCLEX Certificate, MBA, ID Cards, SS Cards, Associate Certificate, University Certificates, Green Cards, Death Certificate, Master Degree, PMP Certificate, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +49 1590 2969018. or Email us at documentsservicesexperts@gmail.com', 0, 'perismogarn471@gmail.com', '81323548231', 'Contact Form Query', '2022-01-17 01:28:57', '2022-01-17 01:28:57'),
(216, 'Willardadova', 'google', '$2500+', NULL, 'The best girls for sex in your town   >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fcait9s&sa=D&99=09&usg=AFQjCNH4Qw-N-tNSrY9tJ2beK_ngj3CQvg   <<<<<<<<<<<<<', 0, 'thomas.prskawetz@t-online.de', '81648343724', 'Contact Form Query', '2022-01-19 21:38:57', '2022-01-19 21:38:57'),
(217, 'Andremew', 'google', '$2500+', NULL, 'Jetzt hat jeder die Moglichkeit, mit nur einer Investition ein regelma?iges Einkommen von 500 EUR bis 3000 EUR pro Woche zu erzielen. \r\nSie mussen sich nur hier registrieren \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FcaloZP&sa=D&50=09&usg=AFQjCNHu2JzCYgD1cCXmq0_1gKBWKqJlCA \r\nMachen Sie eine Einzahlung von 500 EUR und starten Sie den Handelsroboter. \r\nDieser Handelsroboter wurde von Spezialisten fur kunstliche Intelligenz entwickelt, der Roboter macht nur sichere Trades.', 0, 'bakhrashkandaurov1988861gib+076@inbox.ru', '86131324298', 'Contact Form Query', '2022-01-21 15:36:13', '2022-01-21 15:36:13'),
(218, 'Mike Chapman', 'google', '$2500+', NULL, 'Hello \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Chapman\r\n \r\nSpeed SEO Digital Agency', 0, 'no-replytalk@gmail.com', '84347463656', 'Contact Form Query', '2022-01-28 03:57:49', '2022-01-28 03:57:49'),
(219, 'Mike Kingsman', 'google', '$2500+', NULL, 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \r\nhttps://www.seo-treff.de/product/derank-seo-service/', 0, 'no-replytalk@gmail.com', '83596566784', 'Contact Form Query', '2022-02-03 20:38:51', '2022-02-03 20:38:51'),
(220, 'Alfie Evans', 'google', '$2500+', NULL, 'Si vous n\'aimez pas les jeux d\'argent, ce message n\'est pas pour vous.... \r\n \r\nMais si vous aimez les solutions astucieuses, nous vous proposons ici de faire sauter la banque … \r\n \r\nPassionnés de mathématiques et statistiques nous proposons une méthode unique pour gagner à la roulette.... \r\n \r\nGrâce à notre logiciel en ligne, tentez votre chance et gagnez jusqu\'à 410 € de gain avec 50 € de mise.... \r\n \r\nOffre accessible aux nouveaux membres gratuitement pendant 7 jours.... \r\n \r\nhttps://bit.ly/3H69ItY \r\n \r\n \r\nRoulette Système : Méthode Roulette & Logiciel Casino \r\nhttps://bit.ly/3H69ItY', 0, 'roulette@1freemail.com', '82458787982', 'Contact Form Query', '2022-02-04 07:35:28', '2022-02-04 07:35:28'),
(221, 'Frankmer', 'google', '$2500+', NULL, 'Hello #SHIBArmi. \r\nIf you want to help burn a lot of SHIB coins, then visit this site every day https://shib-burn-blog.blogspot.com/2022/02/the-goal-of-our-blog-is-price-of-shib.html and click on ads. \r\n100% of ad revenue will go towards burning SHIB, it only takes 1 minute of your time. \r\nAnd also, if possible, spread this message on social networks and wherever possible \r\n#SHIBburnBlog #SHIBArmi', 0, 'ryan_williamso651@yahoo.com', '84568939952', 'Contact Form Query', '2022-02-04 16:03:39', '2022-02-04 16:03:39'),
(222, 'Mike Ferguson', 'google', '$2500+', NULL, 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \r\nhttps://www.seo-treff.de/product/derank-seo-service/', 0, 'no-replytalk@gmail.com', '84761625279', 'Contact Form Query', '2022-03-02 16:43:46', '2022-03-02 16:43:46'),
(223, 'RichardToono', 'google', '$2500+', NULL, 'Inscrivez-vous dГЁs maintenant et recevez Г  partir de 500 EUR par jour   >>>>>>>>>>>>>>  https://telegra.ph/A-partir-de-500-EUR-par-jour-pendant-la-crise-%C3%A0-partir-dun-seul-investissement-03-08?25534   <<<<<<<<<<<<<', 0, NULL, '82184466711', 'Contact Form Query', '2022-03-08 23:11:56', '2022-03-08 23:11:56'),
(224, 'AnnaRon', 'google', '$2500+', NULL, 'Hеllо all, guуsǃ Ι know, my meѕsagе may bе tоо ѕрecіfіс,\r\nВut my sister found nісе man hеrе and theу mаrriеd, ѕо hоw аbout me?! :)\r\nI аm 23 уеarѕ old, Аnnа, from Ukraіne, I knоw Englіѕh аnd Germаn lаnguages аlso\r\nAnd... Ι havе spеcіfіc dіseaѕe, named nуmрhоmania. Ԝho knоw whаt іs thіѕ, cаn undеrѕtаnd mе (bеttеr tо ѕаy іt іmmedіately)\r\nАh yeѕ, Ι сооk vеry tаѕtyǃ аnd I lоve nоt оnly cook ;))\r\nΙm reаl gіrl, nоt рroѕtitutе, and lооking for ѕeriоus аnd hot relаtіоnshiр...\r\nАnywaу, you саn find mу prоfіlе hеre: http://pehamorda.tk/user/86285/', 0, 'annaRon@gmail.com', '+380 2570655595', 'Contact Form Query', '2022-03-20 07:07:14', '2022-03-20 07:07:14'),
(225, 'Robertblish', 'google', '$2500+', NULL, 'Invest once and get passive income up to $790000 per month >>>>>>>>>>>>>>  https://telegra.ph/Reliable-income-from-5000-per-day---only-in-our-certified-licensed-system-03-20?87226   <<<<<<<<<<<', 0, 'carsupra@stjohnsbath.org.uk', '89812732279', 'Contact Form Query', '2022-03-21 06:05:04', '2022-03-21 06:05:04'),
(226, 'JasoncoB', 'google', '$2500+', NULL, 'Automatic income on the Trading Robot from $305505 >>>>>>>>>>>>>>  https://telegra.ph/Confirm-you-are-not-a-bot-03-24-4?25229   <<<<<<<<<<<', 0, 'asdasdf2@yahoo.de', '82981168246', 'Contact Form Query', '2022-03-28 04:22:38', '2022-03-28 04:22:38'),
(227, 'Mike Jerome', 'google', '$2500+', NULL, 'Greetings \r\n \r\nI have just analyzed  designekta.com for  the current search visibility and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Jerome\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', 0, 'no-replytalk@gmail.com', '89997534822', 'Contact Form Query', '2022-03-28 20:55:57', '2022-03-28 20:55:57'),
(228, 'PatrickFAt', 'google', '$2500+', NULL, 'Nouveaux revenus a partir de 1500 euros par jour >>>>>>>>>>>>>>  https://telegra.ph/Derni%C3%A8res-nouvelles--Alors-que-les-prix-augmentent-les-Europ%C3%A9ens-commencent-%C3%A0-arr%C3%AAter-de-fumer-en-masse-et-gagnent-en-plus-%C3%A0-par-04-01-3?i2f   <<<<<<<<<<<', 0, 'soesaptri_o@yahoo.com', '85359717192', 'Contact Form Query', '2022-04-02 02:56:09', '2022-04-02 02:56:09'),
(229, 'Kaymqbiwravy', 'google', '$2500+', NULL, 'A game for adults. Jerk off virtually https://adultgames.life/?u=wh5kd06&o=qxhpmex', 0, 'sanja.filat.ov.yg9.9s@gmail.com', '88652134656', 'Contact Form Query', '2022-04-18 12:00:15', '2022-04-18 12:00:15'),
(230, 'Kaymiodwravy', 'google', '$2500+', NULL, 'Jerk off non-stop in this adult game https://adultgames.life/?u=wh5kd06&o=qxhpmex', 0, 'sanja.filat.ov.yg9.9.s@gmail.com', '81666278841', 'Contact Form Query', '2022-04-18 15:19:07', '2022-04-18 15:19:07'),
(231, 'DouglasSeN', 'google', '$2500+', NULL, 'We have best quality banknotes Canadian dollars, US dollars, pounds, Euros and Emirates dirham Available for sale etc. We also have our money in categories, Grade A quality that works at ATMs and bypasses the fake money detector and we also have the normal stage money that was used in jokes, commercials, music and movie videos. These bills are not home made but industrial and professionally manufactured from High Quality IT technicians from US, Russia, Korea and China. DO YOU NEED FINANCIAL ASSISTANCE. We give out loans ranging from $5,000.00 to $1,000,000 Currencies Our loan offers are as follows Financial loan, Real estate loan, Investment loan, Car loan, Debt consolidation, Redemption of credit. Contact us on WhatsApp +44 7459 268535 OR Email us at walterkarl28@gmail.com and Telegram ID \"@Jameskind65\"', 0, 'collinsdeshon932@gmail.com', '84733823738', 'Contact Form Query', '2022-04-28 03:32:20', '2022-04-28 03:32:20'),
(232, 'Robsaek', 'google', '$2500+', NULL, '[url=https://bit.ly/39pGpGX]I\'ve found the Love of My Life! And You?![/url]', 0, 'rober.tb.r.o.w.nmoonman.s@gmail.com', '82961456355', 'Contact Form Query', '2022-05-02 06:03:09', '2022-05-02 06:03:09'),
(233, 'Thanhfef', 'google', '$2500+', NULL, 'New electronic music. http://0daymusic.org \r\n0day Club Electro LIVE-SETS, Music Videos: \r\nHardstyle, Hardcore, Lento Violento, Italodance, Eurodance, Hands Up \r\nList albums: https://0daymusic.org/FTPtxt/ \r\nNew 0-DAY scene releases daily. \r\nSorted section by date / genre. \r\nMusic scene releases, Premium account. \r\nPrivate FTP Music/Albums/mp3 1990-2022', 0, 'thanh777@gmail.com', '86756159866', 'Contact Form Query', '2022-05-04 12:28:46', '2022-05-04 12:28:46'),
(234, 'KevinEvolo', 'google', '$2500+', NULL, 'https://www.vykupspb.ru/ - Быстрый выкуп аварийных авто марки LTI модели Luxgen7 SUV, 1986 года выпуска, тип кузова фаэтон с объемом двигателя 3206 коробка передач вариатор в Санкт-Петербурге.', 0, 'qwertyyy@gmail.com', '83842828462', 'Contact Form Query', '2022-05-04 17:27:53', '2022-05-04 17:27:53'),
(235, 'Olislai', 'google', '$2500+', NULL, '[url=https://sylnaukraina.com.ua/d/wEaes]Russian combat losses in Ukraine officially Update Every Day. Comparison with other wars[/url] \r\n[url=https://sylnaukraina.com.ua/d/wEaes][img]https://i.ibb.co/XXzR4tg/voina.png[/img][/url] \r\n[url=https://sylnaukraina.com.ua/d/wEaes]Read more...[/url]', 0, 'ro.d.rig.u.ez.olivi.a.1972@gmail.com', '81364652697', 'Contact Form Query', '2022-05-10 04:37:10', '2022-05-10 04:37:10'),
(236, 'Mike Brown', 'google', '$2500+', NULL, 'Hi there \r\n \r\nThis is Mike Brown\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your designekta.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Brown\r\n \r\nmike@strictlydigital.net', 0, 'no-replytalk@gmail.com', '89596985346', 'Contact Form Query', '2022-05-12 19:49:31', '2022-05-12 19:49:31'),
(237, 'LorenzoOnept', 'google', '$2500+', NULL, 'Pour ses 6 ans Yes Drive Me (Leader Français de La location de Chauffeurs Sans Voiture pour conduire Votre Voiture à Votre Place) Vous offre 100€* pour votre tester son service avec \r\nle code YES2022 ! \r\n-	Les parents et grands-parents peuvent voyager dans leur voiture avec le Chauffeur qui conduit à leur place \r\n-	Les familles peuvent voyager en train et recevoir la voiture et les bagages à destination (à la gare, ou sur le lieu de vacances) \r\nYesDriveMe c’est près de 1000 Chauffeurs Sans Voiture de qualité, tous experts et habitués des routes et des véhicules. \r\nCliquez ICI  pour Simulez et Obtenir un Devis pour un chauffeur Sans Voiture ! \r\nPour tout complément d’information : \r\nwww.yesdriveme.com \r\ncommunication@yesdriveme.com \r\nQu’est-ce que YesDriveMe ? \r\nLa presse parle de nous ! \r\nPour voir l’interview sur BFM Cliquez ICI  https://bit.ly/2KW5gCV \r\nChez Bourdin Direct cliquez ICI  http://bit.ly/37N8kdR \r\nsur RMC Cliquez ICI https://bit.ly/3M8krXj \r\nsur BSMART Cliquez ICI   https://bit.ly/33LautS \r\ndans déplacementspros.com Cliquez ICI https://bit.ly/2z8ll5D \r\ndans Pleine Vie Cliquez ICI http://bit.ly/39l3p4Z \r\ndans Le Phare de Ré cliquez sur https://bit.ly/30GiPyt \r\nDans CAPITAL cliquez ICI http://bit.ly/2n0odvF', 0, 'communication@yesdriveme.com', '85181352581', 'Contact Form Query', '2022-05-13 02:33:24', '2022-05-13 02:33:24'),
(238, 'Multi-Services', 'google', '$2500+', NULL, 'Bonjour, \r\n \r\nEntreprise d\'électricité générale Multi-Services \r\nNeuf - Ancien - Création - Mise aux normes \r\nAménagements intérieurs et extérieurs \r\nNos électriciens qualifiés peuvent tout installer, d\'un nouvel éclairage de sécurité pour votre extérieur à un générateur domestique complet qui permettra à vos appareils de fonctionner pendant une panne de courant. \r\nTous nos travaux sont couverts par la garantie décennale et la garantie de parfait achèvement ! \r\n- Aménagement électrique complet, conception \r\n- Intérieurs et extérieurs \r\n- Au besoin, nous travaillons quand vos locaux sont fermés (nuits, weeks ends ...) \r\n- Immeubles neufs, rénovations, mise aux normes ... \r\n- Câblage et installation / mises à niveau \r\n- Solutions d\'alimentation de secours (générateurs) \r\n- Pratiquement tous les besoins électriques que vous avez - il suffit de demander ! \r\nUne question ? une devis ? https://www.devis.tech/ \r\nMerci et à bientôt \r\nPatrice', 0, 'patrice.installe.energie@gmail.com', '87646161354', 'Contact Form Query', '2022-05-13 14:19:27', '2022-05-13 14:19:27'),
(239, 'Cegeicuwravy', 'google', '$2500+', NULL, 'Fuck me right now. How much longer to wait here https://your-dating-place.life/?u=wh5kd06&o=qxpp80k&m=1', 0, 'sanja.fila.t.o.vy.g.99s@gmail.com', '86221839519', 'Contact Form Query', '2022-05-21 20:13:22', '2022-05-21 20:13:22'),
(240, 'Robdpf', 'google', '$2500+', NULL, '[url=https://ukrainatoday.com.ua/s/lvhfW]32,340 Burgers And Counting: Man In US Celebrates 50 Years Of Eating Big Macs[/url] \r\n[url=https://ukrainatoday.com.ua/s/lvhfW][img]https://i.ibb.co/23vY8rw/bigmak6.jpg[/img][/url] \r\n[url=https://ukrainatoday.com.ua/s/lvhfW]Read More...[/url]', 0, NULL, '88135721986', 'Contact Form Query', '2022-05-24 03:12:26', '2022-05-24 03:12:26'),
(241, 'Mike Blare', 'google', '$2500+', NULL, 'Good Day \r\n \r\nI have just took a look on your SEO for  designekta.com for its SEO Trend and saw that your website could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Blare\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', 0, 'no-replytalk@gmail.com', '86811959762', 'Contact Form Query', '2022-05-24 17:44:02', '2022-05-24 17:44:02'),
(242, 'Robngxi', 'google', '$2500+', NULL, '[url=https://ukr-life.com.ua/s/gI49x]It\'s fantastic!!! Boy, 11, catches world’s biggest carp that’s just a few lbs lighter than him[/url] \r\n[url=https://ukr-life.com.ua/s/gI49x][img]https://i.ibb.co/F56Zk64/fish-2.webp[/img][/url] \r\n[url=https://ukr-life.com.ua/s/gI49x]Read More...[/url]', 0, 'r.obe.r.tb.ro.wn.m.oo.nm.an.s@gmail.com', '87567385325', 'Contact Form Query', '2022-05-26 22:24:21', '2022-05-26 22:24:21'),
(243, 'Josephiaiaue', 'google', '$2500+', NULL, '[url=https://goo.su/ym9P]Josephine sent you (1) video...[/url] \r\n[url=https://goo.su/ym9P][img]https://i.ibb.co/WtpTJWr/a11a61daa09ca6321a4678e76eb4a848.jpg[/img][/url] \r\n[url=https://goo.su/ym9P]Watch...[/url]', 0, 'j.os.e.p.hi.neg.ut.i.errez.1.9.90@gmail.com', '82937813968', 'Contact Form Query', '2022-05-29 07:49:21', '2022-05-29 07:49:21'),
(244, 'Margaretnps', 'google', '$2500+', NULL, '[url=https://goo.su/GPXgt6]I think of you so often, especially at night. Why don\'t you come over and remind me of what we both enjoyed so much last week?[/url] \r\n[url=https://goo.su/GPXgt6][img]https://i.ibb.co/m0zMVq0/807305.jpg[/img][/url]', 0, 'm.a.r.g.ar.e.lo.v.e.tr.ob.er.t.s@gmail.com', '81558122269', 'Contact Form Query', '2022-06-04 01:18:38', '2022-06-04 01:18:38'),
(245, 'Robatz', 'google', '$2500+', NULL, '[url=https://ukrainatoday.com.ua/s/lvhfW]32,340 Burgers And Counting: Man In US Celebrates 50 Years Of Eating Big Macs[/url] \r\n[url=https://ukrainatoday.com.ua/s/lvhfW][img]https://i.ibb.co/23vY8rw/bigmak6.jpg[/img][/url] \r\n[url=https://ukrainatoday.com.ua/s/lvhfW]Read More...[/url]', 0, NULL, '89862686343', 'Contact Form Query', '2022-06-06 10:04:08', '2022-06-06 10:04:08'),
(246, 'VereArrof', 'google', '$2500+', NULL, '[url=https://newfasttadalafil.com/]Cialis[/url] Productos Para Una Ereccion Mas Larga <a href=https://newfasttadalafil.com/>Cialis</a> Pttmrs Where To Buy Dutasteride 0.5mg Website Over The Counter Cymbalta Ztwvze https://newfasttadalafil.com/ - overnight cialis delivery precios cialis generico Etvkor', 0, 'VereArrof@topmailonline.xyz', '87225178417', 'Contact Form Query', '2022-06-08 09:49:57', '2022-06-08 09:49:57'),
(247, 'Edwardrow', 'google', '$2500+', NULL, 'https://about-company-review.ru/ - отзывы по компаниям Webvesta из раздела тизерная реклама купить в Евпатория.', 0, 'qwertyyy@gmail.com', '83257592242', 'Contact Form Query', '2022-06-08 15:15:35', '2022-06-08 15:15:35'),
(248, 'Kqowravy', 'google', '$2500+', NULL, 'My tits and pussy are flowing right now. Lick them up, I can\'t wait anymore, squirt soon well, ohhhhhh https://xbebz.sweetmlif.net/c/da57dc555e50572d?s1=12179&s2=1471083&j1=1', 0, 'unmasksisad.ore4.8@gmail.com', '83169569929', 'Contact Form Query', '2022-06-10 03:10:15', '2022-06-10 03:10:15'),
(249, 'GetMyBusinessFundingNow', 'http://GetMyBusinessFundingNow.com', '$2500+', NULL, 'Faster and Easier than the SBA, http://GetMyBusinessFundingNow.com can get your business a loan for $2K-350,000 With low-credit and no collateral. \r\n \r\nUse our short form to See exactly how much you can get, No-Cost: \r\n \r\nhttp://GetMyBusinessFundingNow.com \r\n \r\nIf you\'ve been established for at least one year you are already pre-qualified. Our Fast service means funding can be completed within 48 hours. Terms are specific for each business so I suggest applying to find out exactly how much you can get. \r\n \r\nThis is a free service from a qualified lender and the approval will be based on the annual revenue of your business. Funds have no Restrictions, allowing you to use the whole amount in any way including bills, taxes, hiring, marketing, expansion, or Absolutely Any Other expense. \r\n \r\nThere are limited SBA and private funds available so please apply now if interested, \r\n \r\nClick Here: http://GetMyBusinessFundingNow.com \r\n \r\nHave a great day, \r\nThe Get My Business Funding Now Team \r\n \r\nunsubscribe here - http://GetMyBusinessFundingNow.com/r.php?url=designekta.com&id=108', 0, 'noreply@getmybusinessfundingnow.com', NULL, 'Contact Form Query', '2022-06-14 18:00:10', '2022-06-14 18:00:10'),
(250, 'Mike', 'google', '$2500+', NULL, 'Howdy \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike  \r\nSpeed SEO Digital Agency', 0, 'no-replytalk@gmail.com', '82998191242', 'Contact Form Query', '2022-06-17 05:04:46', '2022-06-17 05:04:46'),
(251, 'CrytoWoogyWoogy', 'google', '$2500+', NULL, 'Find out about the easiest way of money earning. https://fib.startupers.se/promo', 0, 'MerinoBart@o2.pl', '89032088431', 'Contact Form Query', '2022-06-26 04:19:01', '2022-06-26 04:19:01'),
(252, 'Mason Jones', 'google', '$2500+', NULL, 'Hey! \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nIf so, you have to grab people’s attention quickly. And there’s nothing like a catchy explainer video to do the trick! \r\n \r\nI have an exclusive offer available for the first 20 people that act on this message today, but you must act fast. \r\n \r\nWhile you would normally pay as much as $600, or probably even $1,000, for a 60-second video like this, I am providing the same service for only $97. \r\n \r\nDon’t be fooled by the price, we create high-quality videos, and you can see samples or order now at: https://bit.ly/explainer-animation-promo \r\n \r\nNot sure if you caught it, but this offer is only good this week, for the first 20 clients, so you need to order now, before you miss out. \r\n \r\nAgain, this $97 promotion is for a 60-second explainer video and is for this week only. Don’t miss out!!! \r\n \r\nClick Here Now To Watch The Animated Video That We Created To Explain It All \r\n---> https://bit.ly/explainer-animation-promo \r\n \r\nCheers, \r\nMason Jones \r\nExplainer Animation Studio', 0, 'explaineranimationstudio7@gmail.com', '85758182687', 'Contact Form Query', '2022-06-29 03:49:42', '2022-06-29 03:49:42'),
(253, 'Mike Moore', 'google', '$2500+', NULL, 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Moore\r\n \r\nsupport@digital-x-press.com', 0, 'no-replytalk@gmail.com', '86299485697', 'Contact Form Query', '2022-07-01 11:33:41', '2022-07-01 11:33:41'),
(254, 'Elizabethrbf', 'google', '$2500+', NULL, '[url=https://is.gd/MHBCLf] I love it so much when you\'re on top. What else would you like to add to our conversation today?[/url]', 0, 'e.l.iz.ab.e.t.h.h.e.r.n.an.d.e.z3w3@gmail.com', '84684418455', 'Contact Form Query', '2022-07-05 00:51:28', '2022-07-05 00:51:28'),
(255, 'Mike Otis', 'google', '$2500+', NULL, 'Greetings \r\n \r\nThis is Mike Otis\r\n \r\nLet me present you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your designekta.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Otis\r\n \r\nmike@strictlydigital.net', 0, 'no-replytalk@gmail.com', '84529319257', 'Contact Form Query', '2022-07-08 10:01:30', '2022-07-08 10:01:30'),
(256, 'Roy Aaron', 'google', '$2500+', NULL, 'Good afternoon, you have received this letter because we want the whole world to know and not cooperate with KOI.IO and the team that organised this scam which includes Roy Aaron, Claudia Polanco, Euglena Liu, Yuan Lee, Tao Liu, Jellu Ji, Anetta Sultygova and the advisers Vladan Falcic, Alex Man. \r\n \r\n \r\nThey all involved in organisation of the Koi.io scam and many other associated projects. They involvement in material losses more than $ 500,000 from investors, and this is only a small part of who we found, I think the amounts can be estimated at tens of millions of dollars. Team ignored SAFT agreement and did not disturbed tokens to the investors as well as completely changed tokenomics without any new agreements. Currently they try to hid all the traces of old team members, tokenomics and conditions. \r\n \r\nWe have all the proofs that we can send to any user upon request to SCAM.koimetaverse@protonmail.com \r\nTeam try to stay anonymous and hide most members uses pseudonymous. We would be grateful if you would complain about them in social networks. \r\n \r\nYou can report their website https://www.koi.io/-  here https://supportcenter.godaddy.com/AbuseReport . So they will stop stealing money. \r\n \r\nhttps://twitter.com/KoiMetaverse \r\nhttps://t.me/KoiMetaverse \r\nAll the communication as well as SAFT signature were organised from telegram account: @RoyABCAaa and @koikoikoi . Their LinkedIn profiles:https://www.linkedin.com/in/roy-aaron-258456226 \r\n \r\nThere are many associated scam project with this team and project beneficiaries which includes https://www.cosmicfactions.io/ (confirmed information )and probably https://ruby.io/ , https://skyrim.finance/ , https://www.charged.fi/ ( information from of their previous worker)', 0, 'jelly@koi.io', '84115843146', 'Contact Form Query', '2022-07-19 10:12:05', '2022-07-19 10:12:05'),
(257, 'Mike Fisher', 'google', '$2500+', NULL, 'Howdy \r\n \r\nI have just analyzed  designekta.com for  the current search visibility and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Fisher\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', 0, 'no-replytalk@gmail.com', '89348876993', 'Contact Form Query', '2022-07-21 02:50:11', '2022-07-21 02:50:11'),
(258, 'Ernestgah', 'google', '$2500+', NULL, 'Good day!  designekta.com \r\n \r\nWe advance \r\n \r\nSending your message through the Contact us form which can be found on the sites in the Communication partition. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the probability that your message will be open. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis offer is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', 0, 'no-replygreedy@gmail.com', '83451329834', 'Contact Form Query', '2022-08-03 23:47:09', '2022-08-03 23:47:09'),
(259, 'Затруднительно знакомиться с девушками? Забудь об этом! Подберем тебе подходящую https://apple.com', 'google', '$2500+', '1w2', NULL, 0, 'likax9yev@mail.ru', '765654654', 'Contact Form Query', '2022-08-07 16:55:49', '2022-08-07 16:55:49'),
(260, 'CrytoWoogy', 'google', '$2500+', NULL, 'Make money 24/7 without any efforts and skills. https://fib.rbertilsson.se/', 0, 'spencercustomconstruction@gmail.com', '89037865671', 'Contact Form Query', '2022-08-11 01:24:37', '2022-08-11 01:24:37'),
(261, 'CrytoWoogy', 'google', '$2500+', NULL, 'Make dollars just sitting home. https://fib.rbertilsson.se/', 0, 'reallman_y1234@hotmail.com', '89037887735', 'Contact Form Query', '2022-08-12 03:50:54', '2022-08-12 03:50:54'),
(262, 'Mike Raleigh', 'google', '$2500+', NULL, 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Raleigh\r\n \r\nsupport@digital-x-press.com', 0, 'no-replytalk@gmail.com', '88385523673', 'Contact Form Query', '2022-08-23 13:04:35', '2022-08-23 13:04:35'),
(263, 'Mike Audley', 'google', '$2500+', NULL, 'Hi \r\n \r\nThis is Mike Audley\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your designekta.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Audley\r\n \r\nmike@strictlydigital.net', 0, 'no-replytalk@gmail.com', '85341274935', 'Contact Form Query', '2022-09-01 18:48:23', '2022-09-01 18:48:23'),
(264, 'PhilipMerly', 'google', '$2500+', NULL, 'designekta.com ofeiifeodwpdeofijesdwsfeiiejokdwpdoefigjfidoksfihigjskodwsfiheghifegergsdfsregsfggrgr', 0, 'mordvinovmilano+anhw@mail.ru', '86634617455', 'Contact Form Query', '2022-09-11 13:48:19', '2022-09-11 13:48:19'),
(265, 'Mike Creighton', 'google', '$2500+', NULL, 'Good Day \r\n \r\nI have just took an in depth look on your  designekta.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Creighton\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', 0, 'no-replytalk@gmail.com', '81991225749', 'Contact Form Query', '2022-09-17 01:44:37', '2022-09-17 01:44:37'),
(266, 'Ernietob', 'google', '$2500+', NULL, 'The Sun: News, sport, celebrities and gossip \r\nWE REFUSE TO BELIEVE IT: Johnny Depp is fabulously rich again! https://87bil.co/thesun.co.uk/?news-id-157728', 0, 'mymail@mymails.cmo', '84985669511', 'Contact Form Query', '2022-09-17 04:34:25', '2022-09-17 04:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2018_12_09_194403_create_sitesettings_table', 2),
(3, '2018_12_09_194924_create_privacy_table', 3),
(4, '2018_12_09_194933_create_terms_table', 3),
(5, '2018_12_09_194943_create_copyright_table', 3),
(6, '2018_12_09_195140_create_messages_table', 4),
(7, '2018_12_09_195733_create__about_table', 5),
(8, '2018_12_09_195936_create_team_table', 5),
(9, '2018_12_09_200209_create_services_table', 6),
(10, '2018_12_09_200336_create_portfolio_table', 7),
(11, '2018_12_09_200628_create_slider_table', 8),
(12, '2018_12_09_200812_create_testimonial_table', 9),
(13, '2018_12_09_201033_create_quotes_table', 10),
(14, '2018_12_09_201147_create_subscribers_table', 11),
(15, '2018_12_09_201332_create_blog_table', 12),
(16, '2018_12_09_201603_create_comments_table', 12),
(19, '2018_12_09_202015_create_category_table', 13),
(20, '2018_12_09_202215_create_sub_category_table', 14),
(21, '2018_12_10_063402_create_shoppingcart_table', 15),
(22, '2018_12_10_125416_create_service_delivered_table', 16),
(24, '2018_12_11_131728_create_gallery_table', 18),
(25, '2018_12_11_201248_create_banners_table', 19),
(26, '2018_12_12_052430_create_pages_table', 20),
(27, '2018_12_12_052456_create_pages_settings_table', 20),
(28, '2018_12_09_201815_create_product_table', 21),
(29, '2018_12_12_233718_create_pricing_table', 22),
(30, '2018_12_13_105226_create_updates_table', 23),
(31, '2018_12_13_190326_create_payments_table', 24),
(32, '2018_12_13_191815_create_notifications_table', 25),
(33, '2018_12_14_160856_create_daily_table', 26),
(34, '2014_10_12_000000_create_users_table', 27),
(35, '2018_12_10_140715_create_admins_table', 28),
(36, '2018_12_15_151453_create_traceservices_table', 29),
(37, '2018_12_16_115600_create_orders_table', 30),
(38, '2018_12_16_115627_create_orders_products_table', 30),
(39, '2019_01_02_211418_create_servicerequests_table', 31),
(40, '2019_01_03_062325_create_quoterequests_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` int UNSIGNED NOT NULL,
  `TransactionType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransAmount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BusinessShortCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BillRefNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `InvoiceNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MSISDN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MiddleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgAccountBalance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThirdPartyTransID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'You have a new Order', '2019-01-04 03:03:18', '2019-01-04 03:03:18'),
(2, 'Message', 'You have a new Message', '2019-03-07 13:07:35', '2019-03-07 13:07:35'),
(3, 'Message', 'You have a new Message', '2019-09-07 02:28:56', '2019-09-07 02:28:56'),
(4, 'Message', 'You have a new Message', '2019-09-07 02:28:56', '2019-09-07 02:28:56'),
(5, 'Order', 'You have a new Order', '2019-12-11 02:17:50', '2019-12-11 02:17:50'),
(6, 'Message', 'You have a new Message', '2020-04-08 00:32:30', '2020-04-08 00:32:30'),
(7, 'Message', 'You have a new Message', '2020-08-04 06:42:19', '2020-08-04 06:42:19'),
(8, 'Message', 'You have a new Message', '2020-08-21 02:08:19', '2020-08-21 02:08:19'),
(9, 'Message', 'You have a new Message', '2020-08-21 05:49:46', '2020-08-21 05:49:46'),
(10, 'Message', 'You have a new Message', '2020-08-25 12:25:49', '2020-08-25 12:25:49'),
(11, 'Message', 'You have a new Message', '2020-08-27 14:50:38', '2020-08-27 14:50:38'),
(12, 'Order', 'You have a new Order', '2020-09-02 04:41:05', '2020-09-02 04:41:05'),
(13, 'Message', 'You have a new Message', '2020-10-18 18:54:46', '2020-10-18 18:54:46'),
(14, 'Message', 'You have a new Message', '2020-10-18 18:54:46', '2020-10-18 18:54:46'),
(15, 'Message', 'You have a new Message', '2020-10-18 18:54:48', '2020-10-18 18:54:48'),
(16, 'Message', 'You have a new Message', '2020-11-30 16:06:59', '2020-11-30 16:06:59'),
(17, 'Message', 'You have a new Message', '2020-11-30 16:07:08', '2020-11-30 16:07:08'),
(18, 'Message', 'You have a new Message', '2020-11-30 16:07:24', '2020-11-30 16:07:24'),
(19, 'Message', 'You have a new Message', '2020-11-30 16:12:06', '2020-11-30 16:12:06'),
(20, 'Message', 'You have a new Message', '2020-12-02 05:13:36', '2020-12-02 05:13:36'),
(21, 'Message', 'You have a new Message', '2020-12-11 10:16:04', '2020-12-11 10:16:04'),
(22, 'Message', 'You have a new Message', '2020-12-22 09:58:43', '2020-12-22 09:58:43'),
(23, 'Message', 'You have a new Message', '2020-12-22 09:58:43', '2020-12-22 09:58:43'),
(24, 'Message', 'You have a new Message', '2020-12-30 22:44:47', '2020-12-30 22:44:47'),
(25, 'Message', 'You have a new Message', '2021-01-02 08:35:10', '2021-01-02 08:35:10'),
(26, 'Message', 'You have a new Message', '2021-01-02 08:35:12', '2021-01-02 08:35:12'),
(27, 'Message', 'You have a new Message', '2021-01-10 22:41:06', '2021-01-10 22:41:06'),
(28, 'Message', 'You have a new Message', '2021-01-10 22:41:07', '2021-01-10 22:41:07'),
(29, 'Message', 'You have a new Message', '2021-01-15 21:00:32', '2021-01-15 21:00:32'),
(30, 'Message', 'You have a new Message', '2021-01-19 03:15:51', '2021-01-19 03:15:51'),
(31, 'Message', 'You have a new Message', '2021-01-19 15:57:05', '2021-01-19 15:57:05'),
(32, 'Message', 'You have a new Message', '2021-01-19 16:06:14', '2021-01-19 16:06:14'),
(33, 'Message', 'You have a new Message', '2021-01-19 16:11:39', '2021-01-19 16:11:39'),
(34, 'Message', 'You have a new Message', '2021-01-19 16:36:09', '2021-01-19 16:36:09'),
(35, 'Message', 'You have a new Message', '2021-01-22 08:30:56', '2021-01-22 08:30:56'),
(36, 'Message', 'You have a new Message', '2021-01-24 17:32:01', '2021-01-24 17:32:01'),
(37, 'Message', 'You have a new Message', '2021-01-26 08:16:28', '2021-01-26 08:16:28'),
(38, 'Message', 'You have a new Message', '2021-02-04 03:03:30', '2021-02-04 03:03:30'),
(39, 'Message', 'You have a new Message', '2021-02-04 03:03:32', '2021-02-04 03:03:32'),
(40, 'Message', 'You have a new Message', '2021-02-05 10:20:37', '2021-02-05 10:20:37'),
(41, 'Message', 'You have a new Message', '2021-02-16 21:49:53', '2021-02-16 21:49:53'),
(42, 'Message', 'You have a new Message', '2021-02-16 21:49:56', '2021-02-16 21:49:56'),
(43, 'Message', 'You have a new Message', '2021-02-21 08:43:13', '2021-02-21 08:43:13'),
(44, 'Message', 'You have a new Message', '2021-02-21 08:43:16', '2021-02-21 08:43:16'),
(45, 'Message', 'You have a new Message', '2021-02-21 18:48:53', '2021-02-21 18:48:53'),
(46, 'Message', 'You have a new Message', '2021-02-21 18:48:57', '2021-02-21 18:48:57'),
(47, 'Message', 'You have a new Message', '2021-02-22 01:23:20', '2021-02-22 01:23:20'),
(48, 'Message', 'You have a new Message', '2021-02-22 01:23:25', '2021-02-22 01:23:25'),
(49, 'Message', 'You have a new Message', '2021-02-22 21:26:07', '2021-02-22 21:26:07'),
(50, 'Message', 'You have a new Message', '2021-02-22 21:26:10', '2021-02-22 21:26:10'),
(51, 'Message', 'You have a new Message', '2021-02-22 21:32:46', '2021-02-22 21:32:46'),
(52, 'Message', 'You have a new Message', '2021-02-22 21:32:47', '2021-02-22 21:32:47'),
(53, 'Message', 'You have a new Message', '2021-02-22 22:43:26', '2021-02-22 22:43:26'),
(54, 'Message', 'You have a new Message', '2021-02-23 05:27:46', '2021-02-23 05:27:46'),
(55, 'Message', 'You have a new Message', '2021-02-23 05:40:54', '2021-02-23 05:40:54'),
(56, 'Message', 'You have a new Message', '2021-02-23 05:43:28', '2021-02-23 05:43:28'),
(57, 'Message', 'You have a new Message', '2021-02-23 08:19:43', '2021-02-23 08:19:43'),
(58, 'Message', 'You have a new Message', '2021-02-23 10:16:11', '2021-02-23 10:16:11'),
(59, 'Message', 'You have a new Message', '2021-02-23 10:16:14', '2021-02-23 10:16:14'),
(60, 'Message', 'You have a new Message', '2021-02-23 16:07:27', '2021-02-23 16:07:27'),
(61, 'Message', 'You have a new Message', '2021-02-23 16:07:32', '2021-02-23 16:07:32'),
(62, 'Message', 'You have a new Message', '2021-02-23 17:06:45', '2021-02-23 17:06:45'),
(63, 'Message', 'You have a new Message', '2021-02-23 17:07:03', '2021-02-23 17:07:03'),
(64, 'Message', 'You have a new Message', '2021-02-23 22:58:07', '2021-02-23 22:58:07'),
(65, 'Message', 'You have a new Message', '2021-02-23 22:58:11', '2021-02-23 22:58:11'),
(66, 'Message', 'You have a new Message', '2021-02-24 03:54:34', '2021-02-24 03:54:34'),
(67, 'Message', 'You have a new Message', '2021-02-24 03:54:37', '2021-02-24 03:54:37'),
(68, 'Message', 'You have a new Message', '2021-02-24 11:26:11', '2021-02-24 11:26:11'),
(69, 'Message', 'You have a new Message', '2021-02-24 11:26:14', '2021-02-24 11:26:14'),
(70, 'Message', 'You have a new Message', '2021-02-24 12:09:54', '2021-02-24 12:09:54'),
(71, 'Message', 'You have a new Message', '2021-02-24 12:09:56', '2021-02-24 12:09:56'),
(72, 'Message', 'You have a new Message', '2021-02-24 18:12:59', '2021-02-24 18:12:59'),
(73, 'Message', 'You have a new Message', '2021-02-24 19:18:12', '2021-02-24 19:18:12'),
(74, 'Message', 'You have a new Message', '2021-02-24 19:18:16', '2021-02-24 19:18:16'),
(75, 'Message', 'You have a new Message', '2021-02-24 19:59:32', '2021-02-24 19:59:32'),
(76, 'Message', 'You have a new Message', '2021-02-25 15:55:40', '2021-02-25 15:55:40'),
(77, 'Message', 'You have a new Message', '2021-02-25 15:55:45', '2021-02-25 15:55:45'),
(78, 'Message', 'You have a new Message', '2021-02-25 18:45:10', '2021-02-25 18:45:10'),
(79, 'Message', 'You have a new Message', '2021-02-25 18:45:11', '2021-02-25 18:45:11'),
(80, 'Message', 'You have a new Message', '2021-02-25 22:20:53', '2021-02-25 22:20:53'),
(81, 'Message', 'You have a new Message', '2021-02-25 22:20:57', '2021-02-25 22:20:57'),
(82, 'Message', 'You have a new Message', '2021-02-26 02:03:18', '2021-02-26 02:03:18'),
(83, 'Message', 'You have a new Message', '2021-02-26 02:03:30', '2021-02-26 02:03:30'),
(84, 'Message', 'You have a new Message', '2021-02-26 17:16:44', '2021-02-26 17:16:44'),
(85, 'Message', 'You have a new Message', '2021-02-26 17:33:22', '2021-02-26 17:33:22'),
(86, 'Message', 'You have a new Message', '2021-02-26 18:59:56', '2021-02-26 18:59:56'),
(87, 'Message', 'You have a new Message', '2021-02-26 18:59:57', '2021-02-26 18:59:57'),
(88, 'Message', 'You have a new Message', '2021-02-27 00:11:58', '2021-02-27 00:11:58'),
(89, 'Message', 'You have a new Message', '2021-02-27 00:12:02', '2021-02-27 00:12:02'),
(90, 'Message', 'You have a new Message', '2021-02-27 11:54:54', '2021-02-27 11:54:54'),
(91, 'Message', 'You have a new Message', '2021-02-27 11:55:01', '2021-02-27 11:55:01'),
(92, 'Message', 'You have a new Message', '2021-02-28 03:55:38', '2021-02-28 03:55:38'),
(93, 'Message', 'You have a new Message', '2021-02-28 03:56:17', '2021-02-28 03:56:17'),
(94, 'Message', 'You have a new Message', '2021-02-28 20:34:16', '2021-02-28 20:34:16'),
(95, 'Message', 'You have a new Message', '2021-03-01 18:31:55', '2021-03-01 18:31:55'),
(96, 'Message', 'You have a new Message', '2021-03-01 20:09:12', '2021-03-01 20:09:12'),
(97, 'Message', 'You have a new Message', '2021-03-01 20:09:13', '2021-03-01 20:09:13'),
(98, 'Message', 'You have a new Message', '2021-03-01 22:31:20', '2021-03-01 22:31:20'),
(99, 'Message', 'You have a new Message', '2021-03-01 22:31:21', '2021-03-01 22:31:21'),
(100, 'Message', 'You have a new Message', '2021-03-03 01:19:09', '2021-03-03 01:19:09'),
(101, 'Message', 'You have a new Message', '2021-03-03 01:19:13', '2021-03-03 01:19:13'),
(102, 'Message', 'You have a new Message', '2021-03-03 01:24:09', '2021-03-03 01:24:09'),
(103, 'Message', 'You have a new Message', '2021-03-03 01:24:40', '2021-03-03 01:24:40'),
(104, 'Message', 'You have a new Message', '2021-03-03 06:15:55', '2021-03-03 06:15:55'),
(105, 'Message', 'You have a new Message', '2021-03-03 10:37:05', '2021-03-03 10:37:05'),
(106, 'Message', 'You have a new Message', '2021-03-05 23:54:14', '2021-03-05 23:54:14'),
(107, 'Message', 'You have a new Message', '2021-03-06 04:54:27', '2021-03-06 04:54:27'),
(108, 'Message', 'You have a new Message', '2021-03-08 08:21:55', '2021-03-08 08:21:55'),
(109, 'Message', 'You have a new Message', '2021-03-08 23:29:17', '2021-03-08 23:29:17'),
(110, 'Message', 'You have a new Message', '2021-03-08 23:29:19', '2021-03-08 23:29:19'),
(111, 'Message', 'You have a new Message', '2021-03-09 00:41:36', '2021-03-09 00:41:36'),
(112, 'Message', 'You have a new Message', '2021-03-09 00:41:38', '2021-03-09 00:41:38'),
(113, 'Message', 'You have a new Message', '2021-03-09 01:45:30', '2021-03-09 01:45:30'),
(114, 'Message', 'You have a new Message', '2021-03-12 04:17:08', '2021-03-12 04:17:08'),
(115, 'Message', 'You have a new Message', '2021-03-14 06:26:02', '2021-03-14 06:26:02'),
(116, 'Message', 'You have a new Message', '2021-03-14 06:26:34', '2021-03-14 06:26:34'),
(117, 'Message', 'You have a new Message', '2021-03-15 05:30:24', '2021-03-15 05:30:24'),
(118, 'Message', 'You have a new Message', '2021-03-19 05:28:20', '2021-03-19 05:28:20'),
(119, 'Message', 'You have a new Message', '2021-03-19 14:10:01', '2021-03-19 14:10:01'),
(120, 'Message', 'You have a new Message', '2021-03-19 14:10:03', '2021-03-19 14:10:03'),
(121, 'Message', 'You have a new Message', '2021-03-20 05:20:31', '2021-03-20 05:20:31'),
(122, 'Message', 'You have a new Message', '2021-03-20 05:20:32', '2021-03-20 05:20:32'),
(123, 'Message', 'You have a new Message', '2021-03-28 12:58:47', '2021-03-28 12:58:47'),
(124, 'Message', 'You have a new Message', '2021-04-04 18:49:59', '2021-04-04 18:49:59'),
(125, 'Message', 'You have a new Message', '2021-04-17 19:58:03', '2021-04-17 19:58:03'),
(126, 'Message', 'You have a new Message', '2021-04-30 19:02:12', '2021-04-30 19:02:12'),
(127, 'Message', 'You have a new Message', '2021-05-05 18:48:37', '2021-05-05 18:48:37'),
(128, 'Message', 'You have a new Message', '2021-05-07 20:15:50', '2021-05-07 20:15:50'),
(129, 'Message', 'You have a new Message', '2021-05-08 01:42:28', '2021-05-08 01:42:28'),
(130, 'Message', 'You have a new Message', '2021-05-10 04:32:15', '2021-05-10 04:32:15'),
(131, 'Message', 'You have a new Message', '2021-05-13 08:25:58', '2021-05-13 08:25:58'),
(132, 'Message', 'You have a new Message', '2021-05-19 20:10:27', '2021-05-19 20:10:27'),
(133, 'Message', 'You have a new Message', '2021-05-21 10:06:11', '2021-05-21 10:06:11'),
(134, 'Message', 'You have a new Message', '2021-05-22 02:48:30', '2021-05-22 02:48:30'),
(135, 'Message', 'You have a new Message', '2021-05-31 07:52:18', '2021-05-31 07:52:18'),
(136, 'Message', 'You have a new Message', '2021-06-04 20:43:17', '2021-06-04 20:43:17'),
(137, 'Message', 'You have a new Message', '2021-06-04 21:42:45', '2021-06-04 21:42:45'),
(138, 'Message', 'You have a new Message', '2021-06-08 08:57:03', '2021-06-08 08:57:03'),
(139, 'Message', 'You have a new Message', '2021-06-14 14:34:34', '2021-06-14 14:34:34'),
(140, 'Message', 'You have a new Message', '2021-06-15 11:08:07', '2021-06-15 11:08:07'),
(141, 'Message', 'You have a new Message', '2021-06-17 10:05:10', '2021-06-17 10:05:10'),
(142, 'Message', 'You have a new Message', '2021-06-20 09:50:29', '2021-06-20 09:50:29'),
(143, 'Message', 'You have a new Message', '2021-06-20 14:55:07', '2021-06-20 14:55:07'),
(144, 'Message', 'You have a new Message', '2021-06-28 03:52:40', '2021-06-28 03:52:40'),
(145, 'Message', 'You have a new Message', '2021-06-30 09:29:38', '2021-06-30 09:29:38'),
(146, 'Message', 'You have a new Message', '2021-07-01 03:03:16', '2021-07-01 03:03:16'),
(147, 'Message', 'You have a new Message', '2021-07-01 16:41:56', '2021-07-01 16:41:56'),
(148, 'Message', 'You have a new Message', '2021-07-26 18:20:57', '2021-07-26 18:20:57'),
(149, 'Message', 'You have a new Message', '2021-07-28 15:58:26', '2021-07-28 15:58:26'),
(150, 'Message', 'You have a new Message', '2021-07-28 20:47:11', '2021-07-28 20:47:11'),
(151, 'Message', 'You have a new Message', '2021-07-30 23:50:39', '2021-07-30 23:50:39'),
(152, 'Message', 'You have a new Message', '2021-07-31 16:26:38', '2021-07-31 16:26:38'),
(153, 'Message', 'You have a new Message', '2021-08-02 07:53:52', '2021-08-02 07:53:52'),
(154, 'Message', 'You have a new Message', '2021-08-10 09:28:30', '2021-08-10 09:28:30'),
(155, 'Message', 'You have a new Message', '2021-08-14 12:17:09', '2021-08-14 12:17:09'),
(156, 'Message', 'You have a new Message', '2021-08-15 11:12:54', '2021-08-15 11:12:54'),
(157, 'Message', 'You have a new Message', '2021-08-15 14:54:29', '2021-08-15 14:54:29'),
(158, 'Message', 'You have a new Message', '2021-08-16 05:28:53', '2021-08-16 05:28:53'),
(159, 'Message', 'You have a new Message', '2021-08-24 06:52:18', '2021-08-24 06:52:18'),
(160, 'Message', 'You have a new Message', '2021-08-28 14:24:37', '2021-08-28 14:24:37'),
(161, 'Message', 'You have a new Message', '2021-08-29 08:43:56', '2021-08-29 08:43:56'),
(162, 'Message', 'You have a new Message', '2021-08-30 13:23:49', '2021-08-30 13:23:49'),
(163, 'Message', 'You have a new Message', '2021-09-01 03:28:44', '2021-09-01 03:28:44'),
(164, 'Message', 'You have a new Message', '2021-09-03 09:08:19', '2021-09-03 09:08:19'),
(165, 'Message', 'You have a new Message', '2021-09-06 18:34:56', '2021-09-06 18:34:56'),
(166, 'Message', 'You have a new Message', '2021-09-12 00:09:04', '2021-09-12 00:09:04'),
(167, 'Message', 'You have a new Message', '2021-09-14 03:36:48', '2021-09-14 03:36:48'),
(168, 'Message', 'You have a new Message', '2021-09-15 19:27:33', '2021-09-15 19:27:33'),
(169, 'Message', 'You have a new Message', '2021-09-17 13:56:08', '2021-09-17 13:56:08'),
(170, 'Message', 'You have a new Message', '2021-09-19 15:58:54', '2021-09-19 15:58:54'),
(171, 'Message', 'You have a new Message', '2021-09-22 17:56:38', '2021-09-22 17:56:38'),
(172, 'Message', 'You have a new Message', '2021-09-24 03:51:52', '2021-09-24 03:51:52'),
(173, 'Message', 'You have a new Message', '2021-09-29 07:33:51', '2021-09-29 07:33:51'),
(174, 'Message', 'You have a new Message', '2021-10-01 17:27:11', '2021-10-01 17:27:11'),
(175, 'Message', 'You have a new Message', '2021-10-02 01:26:23', '2021-10-02 01:26:23'),
(176, 'Message', 'You have a new Message', '2021-10-05 20:28:57', '2021-10-05 20:28:57'),
(177, 'Message', 'You have a new Message', '2021-10-07 16:04:21', '2021-10-07 16:04:21'),
(178, 'Message', 'You have a new Message', '2021-10-09 19:20:31', '2021-10-09 19:20:31'),
(179, 'Message', 'You have a new Message', '2021-10-13 21:04:47', '2021-10-13 21:04:47'),
(180, 'Message', 'You have a new Message', '2021-10-18 00:35:57', '2021-10-18 00:35:57'),
(181, 'Message', 'You have a new Message', '2021-10-18 09:25:28', '2021-10-18 09:25:28'),
(182, 'Message', 'You have a new Message', '2021-10-18 11:42:39', '2021-10-18 11:42:39'),
(183, 'Message', 'You have a new Message', '2021-10-23 10:43:41', '2021-10-23 10:43:41'),
(184, 'Message', 'You have a new Message', '2021-10-24 04:31:09', '2021-10-24 04:31:09'),
(185, 'Message', 'You have a new Message', '2021-10-26 08:58:20', '2021-10-26 08:58:20'),
(186, 'Message', 'You have a new Message', '2021-10-29 16:25:32', '2021-10-29 16:25:32'),
(187, 'Message', 'You have a new Message', '2021-11-03 07:26:58', '2021-11-03 07:26:58'),
(188, 'Message', 'You have a new Message', '2021-11-04 19:55:54', '2021-11-04 19:55:54'),
(189, 'Message', 'You have a new Message', '2021-11-06 07:12:44', '2021-11-06 07:12:44'),
(190, 'Message', 'You have a new Message', '2021-11-06 19:55:39', '2021-11-06 19:55:39'),
(191, 'Message', 'You have a new Message', '2021-11-08 18:52:07', '2021-11-08 18:52:07'),
(192, 'Message', 'You have a new Message', '2021-11-09 21:10:28', '2021-11-09 21:10:28'),
(193, 'Message', 'You have a new Message', '2021-11-11 04:35:55', '2021-11-11 04:35:55'),
(194, 'Message', 'You have a new Message', '2021-11-11 22:49:18', '2021-11-11 22:49:18'),
(195, 'Message', 'You have a new Message', '2021-11-14 19:17:22', '2021-11-14 19:17:22'),
(196, 'Message', 'You have a new Message', '2021-11-19 23:29:22', '2021-11-19 23:29:22'),
(197, 'Message', 'You have a new Message', '2021-11-21 03:21:00', '2021-11-21 03:21:00'),
(198, 'Message', 'You have a new Message', '2021-11-22 14:48:32', '2021-11-22 14:48:32'),
(199, 'Message', 'You have a new Message', '2021-11-23 02:29:50', '2021-11-23 02:29:50'),
(200, 'Message', 'You have a new Message', '2021-11-23 22:51:35', '2021-11-23 22:51:35'),
(201, 'Message', 'You have a new Message', '2021-11-27 13:14:58', '2021-11-27 13:14:58'),
(202, 'Message', 'You have a new Message', '2021-11-27 13:14:59', '2021-11-27 13:14:59'),
(203, 'Message', 'You have a new Message', '2021-11-27 23:28:42', '2021-11-27 23:28:42'),
(204, 'Message', 'You have a new Message', '2021-11-30 13:06:09', '2021-11-30 13:06:09'),
(205, 'Message', 'You have a new Message', '2021-12-01 06:53:24', '2021-12-01 06:53:24'),
(206, 'Message', 'You have a new Message', '2021-12-04 00:58:42', '2021-12-04 00:58:42'),
(207, 'Message', 'You have a new Message', '2021-12-04 14:00:22', '2021-12-04 14:00:22'),
(208, 'Message', 'You have a new Message', '2021-12-09 05:48:09', '2021-12-09 05:48:09'),
(209, 'Message', 'You have a new Message', '2021-12-13 08:42:58', '2021-12-13 08:42:58'),
(210, 'Message', 'You have a new Message', '2021-12-13 16:19:31', '2021-12-13 16:19:31'),
(211, 'Message', 'You have a new Message', '2021-12-14 03:32:26', '2021-12-14 03:32:26'),
(212, 'Message', 'You have a new Message', '2021-12-21 00:19:09', '2021-12-21 00:19:09'),
(213, 'Message', 'You have a new Message', '2021-12-23 01:50:42', '2021-12-23 01:50:42'),
(214, 'Message', 'You have a new Message', '2021-12-25 19:45:29', '2021-12-25 19:45:29'),
(215, 'Message', 'You have a new Message', '2021-12-29 12:36:17', '2021-12-29 12:36:17'),
(216, 'Message', 'You have a new Message', '2022-01-09 02:41:33', '2022-01-09 02:41:33'),
(217, 'Message', 'You have a new Message', '2022-01-12 03:32:23', '2022-01-12 03:32:23'),
(218, 'Message', 'You have a new Message', '2022-01-14 07:00:14', '2022-01-14 07:00:14'),
(219, 'Message', 'You have a new Message', '2022-01-15 09:32:49', '2022-01-15 09:32:49'),
(220, 'Message', 'You have a new Message', '2022-01-16 23:13:00', '2022-01-16 23:13:00'),
(221, 'Message', 'You have a new Message', '2022-01-17 01:28:57', '2022-01-17 01:28:57'),
(222, 'Message', 'You have a new Message', '2022-01-19 21:38:57', '2022-01-19 21:38:57'),
(223, 'Message', 'You have a new Message', '2022-01-21 15:36:13', '2022-01-21 15:36:13'),
(224, 'Message', 'You have a new Message', '2022-01-28 03:57:49', '2022-01-28 03:57:49'),
(225, 'Message', 'You have a new Message', '2022-02-03 20:38:51', '2022-02-03 20:38:51'),
(226, 'Message', 'You have a new Message', '2022-02-04 07:35:28', '2022-02-04 07:35:28'),
(227, 'Message', 'You have a new Message', '2022-02-04 16:03:39', '2022-02-04 16:03:39'),
(228, 'Message', 'You have a new Message', '2022-03-02 16:43:46', '2022-03-02 16:43:46'),
(229, 'Message', 'You have a new Message', '2022-03-08 23:11:56', '2022-03-08 23:11:56'),
(230, 'Message', 'You have a new Message', '2022-03-20 07:07:14', '2022-03-20 07:07:14'),
(231, 'Message', 'You have a new Message', '2022-03-21 06:05:04', '2022-03-21 06:05:04'),
(232, 'Message', 'You have a new Message', '2022-03-28 04:22:38', '2022-03-28 04:22:38'),
(233, 'Message', 'You have a new Message', '2022-03-28 20:55:57', '2022-03-28 20:55:57'),
(234, 'Message', 'You have a new Message', '2022-04-02 02:56:09', '2022-04-02 02:56:09'),
(235, 'Message', 'You have a new Message', '2022-04-18 12:00:15', '2022-04-18 12:00:15'),
(236, 'Message', 'You have a new Message', '2022-04-18 15:19:07', '2022-04-18 15:19:07'),
(237, 'Message', 'You have a new Message', '2022-04-28 03:32:20', '2022-04-28 03:32:20'),
(238, 'Message', 'You have a new Message', '2022-05-02 06:03:09', '2022-05-02 06:03:09'),
(239, 'Message', 'You have a new Message', '2022-05-04 12:28:46', '2022-05-04 12:28:46'),
(240, 'Message', 'You have a new Message', '2022-05-04 17:27:53', '2022-05-04 17:27:53'),
(241, 'Message', 'You have a new Message', '2022-05-10 04:37:10', '2022-05-10 04:37:10'),
(242, 'Message', 'You have a new Message', '2022-05-12 19:49:31', '2022-05-12 19:49:31'),
(243, 'Message', 'You have a new Message', '2022-05-13 02:33:24', '2022-05-13 02:33:24'),
(244, 'Message', 'You have a new Message', '2022-05-13 14:19:27', '2022-05-13 14:19:27'),
(245, 'Message', 'You have a new Message', '2022-05-21 20:13:22', '2022-05-21 20:13:22'),
(246, 'Message', 'You have a new Message', '2022-05-24 03:12:26', '2022-05-24 03:12:26'),
(247, 'Message', 'You have a new Message', '2022-05-24 17:44:02', '2022-05-24 17:44:02'),
(248, 'Message', 'You have a new Message', '2022-05-26 22:24:21', '2022-05-26 22:24:21'),
(249, 'Message', 'You have a new Message', '2022-05-29 07:49:21', '2022-05-29 07:49:21'),
(250, 'Message', 'You have a new Message', '2022-06-04 01:18:38', '2022-06-04 01:18:38'),
(251, 'Message', 'You have a new Message', '2022-06-06 10:04:08', '2022-06-06 10:04:08'),
(252, 'Message', 'You have a new Message', '2022-06-08 09:49:57', '2022-06-08 09:49:57'),
(253, 'Message', 'You have a new Message', '2022-06-08 15:15:35', '2022-06-08 15:15:35'),
(254, 'Message', 'You have a new Message', '2022-06-10 03:10:15', '2022-06-10 03:10:15'),
(255, 'Message', 'You have a new Message', '2022-06-14 18:00:10', '2022-06-14 18:00:10'),
(256, 'Message', 'You have a new Message', '2022-06-17 05:04:46', '2022-06-17 05:04:46'),
(257, 'Message', 'You have a new Message', '2022-06-26 04:19:01', '2022-06-26 04:19:01'),
(258, 'Message', 'You have a new Message', '2022-06-29 03:49:42', '2022-06-29 03:49:42'),
(259, 'Message', 'You have a new Message', '2022-07-01 11:33:41', '2022-07-01 11:33:41'),
(260, 'Message', 'You have a new Message', '2022-07-05 00:51:28', '2022-07-05 00:51:28'),
(261, 'Message', 'You have a new Message', '2022-07-08 10:01:30', '2022-07-08 10:01:30'),
(262, 'Message', 'You have a new Message', '2022-07-19 10:12:05', '2022-07-19 10:12:05'),
(263, 'Message', 'You have a new Message', '2022-07-21 02:50:11', '2022-07-21 02:50:11'),
(264, 'Message', 'You have a new Message', '2022-08-03 23:47:09', '2022-08-03 23:47:09'),
(265, 'Message', 'You have a new Message', '2022-08-07 16:55:49', '2022-08-07 16:55:49'),
(266, 'Message', 'You have a new Message', '2022-08-11 01:24:37', '2022-08-11 01:24:37'),
(267, 'Message', 'You have a new Message', '2022-08-12 03:50:54', '2022-08-12 03:50:54'),
(268, 'Message', 'You have a new Message', '2022-08-23 13:04:35', '2022-08-23 13:04:35'),
(269, 'Message', 'You have a new Message', '2022-09-01 18:48:23', '2022-09-01 18:48:23'),
(270, 'Message', 'You have a new Message', '2022-09-11 13:48:19', '2022-09-11 13:48:19'),
(271, 'Message', 'You have a new Message', '2022-09-17 01:44:37', '2022-09-17 01:44:37'),
(272, 'Message', 'You have a new Message', '2022-09-17 04:34:25', '2022-09-17 04:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total`, `created_at`, `updated_at`) VALUES
(1, 3, 'pending', '8,004.00', '2018-12-17 17:15:07', '2018-12-17 17:15:07'),
(2, 3, 'pending', '8,004.00', '2018-12-17 17:15:46', '2018-12-17 17:15:46'),
(3, 3, 'pending', '8,004.00', '2018-12-17 17:16:00', '2018-12-17 17:16:00'),
(4, 3, 'pending', '8,004.00', '2018-12-17 17:24:01', '2018-12-17 17:24:01'),
(5, 1, 'pending', '11,020.00', '2018-12-24 05:37:15', '2018-12-24 05:37:15'),
(6, 1, 'pending', '8,004.00', '2018-12-24 06:36:57', '2018-12-24 06:36:57'),
(7, 1, 'pending', '0.00', '2018-12-24 06:37:19', '2018-12-24 06:37:19'),
(8, 1, 'pending', '0.00', '2018-12-24 06:38:01', '2018-12-24 06:38:01'),
(9, 1, 'pending', '0.00', '2018-12-24 06:39:05', '2018-12-24 06:39:05'),
(10, 1, 'pending', '0.00', '2018-12-24 06:39:49', '2018-12-24 06:39:49'),
(11, 1, 'pending', '0.00', '2018-12-24 06:40:06', '2018-12-24 06:40:06'),
(12, 1, 'pending', '0.00', '2018-12-24 06:40:41', '2018-12-24 06:40:41'),
(13, 1, 'pending', '0.00', '2018-12-24 06:41:23', '2018-12-24 06:41:23'),
(14, 1, 'pending', '0.00', '2018-12-24 06:42:16', '2018-12-24 06:42:16'),
(15, 1, 'pending', '0.00', '2018-12-24 06:43:16', '2018-12-24 06:43:16'),
(16, 1, 'pending', '0.00', '2018-12-24 06:44:27', '2018-12-24 06:44:27'),
(17, 1, 'pending', '0.00', '2018-12-24 06:44:36', '2018-12-24 06:44:36'),
(18, 1, 'pending', '8,004.00', '2018-12-24 07:33:13', '2018-12-24 07:33:13'),
(19, 1, 'pending', '0.00', '2018-12-24 07:34:53', '2018-12-24 07:34:53'),
(20, 6, 'pending', '15,196.00', '2019-01-03 05:16:37', '2019-01-03 05:16:37'),
(21, 6, 'pending', '11,020.00', '2019-01-03 16:58:04', '2019-01-03 16:58:04'),
(22, 6, 'pending', '21,460.00', '2019-01-03 17:04:37', '2019-01-03 17:04:37'),
(23, 6, 'pending', '21,460.00', '2019-01-03 17:09:58', '2019-01-03 17:09:58'),
(24, 6, 'pending', '0.00', '2019-01-03 17:10:16', '2019-01-03 17:10:16'),
(25, 6, 'pending', '21,460.00', '2019-01-03 17:16:36', '2019-01-03 17:16:36'),
(26, 7, 'pending', '6,900.00', '2019-01-04 03:03:18', '2019-01-04 03:03:18'),
(27, 22, 'pending', '8,100.00', '2019-12-11 02:17:50', '2019-12-11 02:17:50'),
(28, 4, 'pending', '8,100.00', '2020-09-02 04:41:05', '2020-09-02 04:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int UNSIGNED NOT NULL,
  `tax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `tax`, `total`, `products_id`, `orders_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, '1,104.00', '8,004.00', 1, 3, 1, NULL, NULL),
(2, '1,104.00', '8,004.00', 1, 4, 1, NULL, NULL),
(3, '1,520.00', '11,020.00', 4, 5, 1, NULL, NULL),
(4, '1,104.00', '8,004.00', 1, 6, 1, NULL, NULL),
(5, '1,104.00', '8,004.00', 1, 18, 1, NULL, NULL),
(6, '2,096.00', '15,196.00', 16, 20, 1, NULL, NULL),
(7, '1,520.00', '11,020.00', 4, 21, 1, NULL, NULL),
(8, '2,960.00', '21,460.00', 5, 22, 1, NULL, NULL),
(9, '2,960.00', '21,460.00', 5, 23, 1, NULL, NULL),
(10, '2,960.00', '21,460.00', 5, 25, 1, NULL, NULL),
(11, '0.00', '6,900.00', 1, 26, 1, NULL, NULL),
(12, '0.00', '8,100.00', 19, 27, 1, NULL, NULL),
(13, '0.00', '8,100.00', 16, 28, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_settings`
--

CREATE TABLE `pages_settings` (
  `id` int UNSIGNED NOT NULL,
  `page_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar` int NOT NULL DEFAULT '0',
  `sidebar_right` int NOT NULL DEFAULT '0',
  `slider` int NOT NULL DEFAULT '0',
  `menu` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('albert@albert.com', '$2y$10$enCgC7NmnWkk9UIoqxChCOOWEaWajP8JKucvJwAizR5LdArbJg6CS', '2018-09-15 03:11:06'),
('albertmuhatia@gmail.com', '$2y$10$quA/eGAUhSy//VfJpzUAcubh7KgsPJ8bo58YR6DmI0yxXokKHKVdi', '2018-12-10 08:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `TransactionID` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ammount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home` tinyint NOT NULL DEFAULT '1',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eCommerce` tinyint DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `type`, `home`, `content`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `service`, `eCommerce`, `client`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Pan African HR Events Website', NULL, 1, NULL, '2021-02-0613:40:41imageWebRespix-03.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'iPerformance Africa', 'https://panafricanhr.org', '2021-02-06 12:40:41', '2021-02-06 12:40:41'),
(2, 'AOL Outdoor Adventures', 'web', 1, NULL, '2021-01-2003:14:53imageWebRes-01-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'AOL Outdoor Adventure', 'https://aoloutdooradventures.com/', '2019-01-02 05:55:05', '2019-01-02 05:55:05'),
(3, 'iperformance Africa - e-learning Plartform', NULL, 1, NULL, '2021-03-1909:00:53imagehp-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'iPerformance Africa', 'http://online.iperformanceafrica.com/', '2021-03-19 07:59:33', '2021-03-19 07:59:33'),
(7, 'Creation Office Fitouts Website', 'web', 1, NULL, '2021-01-2003:15:11imageWebRes-07-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Creation Office Fitouts Limited', 'https://www.creationltd.co.ke', '2019-02-07 16:51:37', '2019-02-07 16:51:37'),
(16, 'Stagepass Audio Visual Website', 'web', 1, NULL, '2021-01-1820:53:33imageSP-min.png', NULL, NULL, NULL, NULL, '1', NULL, 'StagePass Audio Visual Limited', 'https://stagepass.co.ke/', '2019-05-24 00:06:49', '2019-05-24 00:06:49'),
(17, 'Amani Vehicle Sounds & Accessories', 'ecom', 1, NULL, '2021-01-2003:16:06imageWebRes-06-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Amani Vehicle Sounds & Accessories Limited', 'http://amanivehiclesounds.co.ke/', '2019-05-24 00:21:45', '2019-05-24 00:21:45'),
(22, 'iPerformance Africa', 'ecom', 0, NULL, '2021-02-0613:32:05imageWebRespix-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'iPerformance Africa', 'https://www.iperformanceafrica.com/', '2019-08-27 19:40:14', '2019-08-27 19:40:14'),
(24, 'Proton Engineering and Services (E.A) Ltd​', 'web', 0, NULL, '2019-11-1611:06:29image2019-11-1610_51_06imagePROTON_967222c5bb8d4d58b48e0f820e19922c.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'https://www.protonafrica.com', 'https://www.protonafrica.com', '2019-10-23 00:05:23', '2019-10-23 00:05:23'),
(26, 'The Gifted Ones Logo', 'logo', 1, NULL, '2019-11-2809:39:35imageOurlogos-11.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:39:35', '2019-11-28 15:39:35'),
(27, 'Brilliant Solutions Assignment Services', 'web', 1, NULL, '2021-01-2003:16:36imageWebRes-03-min.jpg', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:40:06', '2019-11-28 15:40:06'),
(28, 'Cilom Decorators', 'logo', 1, NULL, '2019-11-2809:40:39imageOurlogos-09.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:40:39', '2019-11-28 15:40:39'),
(29, 'Project X Logo', 'logo', 1, NULL, '2019-11-2809:41:09imageOurlogos-07.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, '2019-11-28 15:41:09', '2019-11-28 15:41:09'),
(30, 'Cess Pastries Logo', 'logo', 1, NULL, '2019-11-2809:42:00imageOurlogos-05.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:42:00', '2019-11-28 15:42:00'),
(31, 'Boxed In Design Printing Services', 'logo', 1, NULL, '2019-11-2809:42:39imageOurlogos-04.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:42:39', '2019-11-28 15:42:39'),
(32, 'Paradise Cleaning Solutions Logo', 'logo', 1, NULL, '2019-11-2809:43:08imageOurlogos-03.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:43:08', '2019-11-28 15:43:08'),
(33, 'Tidy Lit Cleaning Services', 'logo', 1, NULL, '2019-11-2809:43:44imageOurlogos-02.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:43:44', '2019-11-28 15:43:44'),
(34, 'Bonsai Landscapers & Nurseries', 'logo', 1, 'Nurseries <br>', '2019-11-2809:45:51imageOurlogos-01.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:45:51', '2019-11-28 15:45:51'),
(35, 'KECA Electronics Limited', 'logo', 1, NULL, '2019-11-2809:46:21imageOurlogos-12.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:46:21', '2019-11-28 15:46:21'),
(36, 'Boxed In Design Printing Services Business Profile', 'profile', 1, NULL, '2019-11-2809:55:43imagePROFILES-01.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:55:43', '2019-11-28 15:55:43'),
(37, 'Awele Jackson Advocates Business Profile', 'profile', 1, NULL, '2019-11-2809:57:37imagePROFILES-03.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 15:57:37', '2019-11-28 15:57:37'),
(38, 'Sabvil Flowers Business Profile', 'profile', 1, NULL, '2019-11-2810:01:12imagePROFILES-04.png', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'https://www.designekta.com', '2019-11-28 16:01:12', '2019-11-28 16:01:12'),
(39, 'Treven Cleaners Limited Website', 'web', 1, NULL, '2021-01-2003:17:34imageWebRes-09-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Treven Cleaners Limited', 'http://trevencleanersltd.co.ke', '2019-12-26 18:57:10', '2019-12-26 18:57:10'),
(40, 'Sparol Solutions Group', 'web', 0, NULL, '2020-01-0913:51:39imageScreenShot2020-01-09at16.50.21.png', NULL, NULL, NULL, NULL, '1', NULL, 'Sparol Solutions Group', 'https://sparol.co.ke', '2020-01-09 19:51:39', '2020-01-09 19:51:39'),
(45, 'Vartech East Africa', 'web', 0, NULL, '2021-02-0613:37:02imageWebRespix-09.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Vartech East Africa', 'https://vartecheastafrica.com/', '2020-06-02 08:27:05', '2020-06-02 08:27:05'),
(46, 'Din Moses', 'web', 0, NULL, '2021-02-0613:36:49imageWebRespix-06.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Din Moses', 'https://dinmoses.com/', '2020-06-02 08:28:30', '2020-06-02 08:28:30'),
(47, 'Koriema Agri-foods', 'web', 0, NULL, '2021-02-0613:36:32imageWebRespix-07.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Koriema Agrifoods', 'https://koriema-agrifoods.co.ke/', '2020-06-02 08:30:30', '2020-06-02 08:30:30'),
(48, 'Africa Retreat Safaris', 'web', 0, NULL, '2021-02-0613:35:18imageWebRespix-05.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Pamela Dzimba', 'http://africaretreat.com/', '2020-06-04 06:15:41', '2020-06-04 06:15:41'),
(49, 'Kenspeed Real Estate', 'web', 0, NULL, '2021-02-0613:35:51imageWebRespix-08.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Ken Speed Real Estate', 'https://kenspeed.co.ke', '2020-07-16 09:21:59', '2020-07-16 09:21:59'),
(50, 'Child Ambassadors Initiative Website', 'web', 1, NULL, '2021-01-2003:21:26imageWebRes-05-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Child Ambassadors Initiative', 'https://childambassadorsinitiative.org/', '2020-09-02 05:05:30', '2020-09-02 05:05:30'),
(51, 'Megapipes Solutions Limited', 'web', 1, NULL, '2021-01-1820:57:15imageWebRes-01-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Megapipes Solutions Limited', 'https://megapipes.com', '2020-10-03 11:10:34', '2020-10-03 11:10:34'),
(52, 'accessories.co.ke', 'ecom', 1, NULL, '2021-01-2010:48:56imageWebRes14-02.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Accessories Kenya', 'https://accessories.co.ke/', '2020-10-14 05:55:11', '2020-10-14 05:55:11'),
(53, 'Edition Investments Limited Website', 'web', 1, 'Edition Investments Limited&nbsp;', '2021-01-2003:17:07imageWebRes-02-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Edition Investments Limited', 'https://editioninvestments.com', '2020-11-06 13:34:21', '2020-11-06 13:34:21'),
(54, 'Amanya & Company Advocates', 'web', 1, NULL, '2021-01-2003:20:22imageWebRes-11-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Amanya & Company Advocates', 'https://www.amanyalaw.com', '2021-01-20 00:20:22', '2021-01-20 00:20:22'),
(55, 'Care Pro Staffing', 'web', 1, NULL, '2021-01-2003:21:03imageWebRes-08-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Care Pro Staffing', 'http://careprostaffing.com/', '2021-01-20 00:21:03', '2021-01-20 00:21:03'),
(56, 'Secret Trek Africa Tours & Safaris', 'web', 1, NULL, '2021-01-2003:42:19imageWebRes-04-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Secret Trek Africa Tours & Safaris', 'http://versions.secret-trekafrica.com/', '2021-01-20 02:42:19', '2021-01-20 02:42:19'),
(57, 'Academics Captain', NULL, 1, NULL, '2021-02-0613:38:16imageWebRespix-02.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Academic Captain', 'http://academicscaptain.com/', '2021-02-06 12:38:16', '2021-02-06 12:38:16'),
(58, 'Grace Community Bible Church', NULL, 1, NULL, '2021-03-1808:06:46imagephoto_2021-03-15_18-28-35.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Grace Community Bible Church', 'http://gracecommunitybiblechurch.org/', '2021-03-18 07:06:46', '2021-03-18 07:06:46'),
(59, 'Pipdot FX Web Application', NULL, 1, NULL, '2021-05-3006:18:00imagepipdot-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Pipdot Fx Consultants', 'https://pipdotfx.com', '2021-05-30 04:18:00', '2021-05-30 04:18:00'),
(60, 'Bestcoders Tutorials E-Learning Space', NULL, 1, NULL, '2021-07-3004:53:18imagePipdotWebRes-01-min.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Bestcoders Tutorials', 'http://bestcoders.net', '2021-07-30 02:53:18', '2021-07-30 02:53:18'),
(61, 'Apex Engineering Company Profile', NULL, 1, NULL, '2021-10-0113:15:04imageApexEngUrbanPlanningProfile.2709Small-pages-1_page-0001-min.jpg', NULL, NULL, NULL, NULL, '4', NULL, 'Apex Engineering', 'http://apexengltd.com', '2021-10-01 11:15:04', '2021-10-01 11:15:04'),
(62, 'Kemasatsi Consultants', NULL, 1, NULL, '2021-10-1513:17:32imageWebkemasatsiRestemplate-02.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Kemasatsi', 'https://kemasatsi.co.ke/', '2021-10-15 11:17:32', '2021-10-15 11:17:32'),
(63, 'Apex Engineering', NULL, 1, NULL, '2021-10-1513:18:17imageWebApexRestemplate-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Apex Engineering', 'http://apexengltd.com/', '2021-10-15 11:18:17', '2021-10-15 11:18:17'),
(64, 'Sasema Management Company', NULL, 1, NULL, '2022-02-0919:18:14imageSASEMAWebRes-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Sasema Management Company', 'https://sasemagroup.com', '2022-02-09 16:18:14', '2022-02-09 16:18:14'),
(65, 'Tala Cottages', NULL, 1, NULL, '2022-02-2305:01:44imageTalaCottagesWebres-02.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Tala Cottages', 'https://talacottages.com', '2022-02-23 02:01:44', '2022-02-23 02:01:44'),
(66, 'The Shaq\'s Choma Zone', NULL, 1, NULL, '2022-07-2609:01:42imageSaqs-02.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Shaq\'s House', 'https://shaqshouse.co.ke/chomazone', '2022-07-26 06:01:42', '2022-07-26 06:01:42'),
(67, 'Pros Borders', NULL, 1, NULL, '2022-07-2609:03:00imageProborders-05.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Venshaqs Holdings Limited', 'http://prosborders.co.ke/', '2022-07-26 06:03:00', '2022-07-26 06:03:00'),
(68, 'Venshaq Holdings Limited', NULL, 1, NULL, '2022-07-2609:04:18imageVenshanq-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Venshaq Holdings Limited', 'http://venshaq.com/', '2022-07-26 06:04:18', '2022-07-26 06:04:18'),
(69, 'Crystal Car Audio', NULL, 1, NULL, '2022-07-2609:05:22imageCrystalCarAudio-03.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Crystal Car Audio', 'http://crystalcaraudio.com/', '2022-07-26 06:05:22', '2022-07-26 06:05:22'),
(70, 'Boldmark Contractors Limited', NULL, 1, NULL, '2022-07-2609:06:22imageBoldmark-04.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Boldmark Contractors Limited', 'http://boldmark.co.ke', '2022-07-26 06:06:22', '2022-07-26 06:06:22'),
(71, 'Aste Company Limited', NULL, 1, NULL, '2022-07-2912:35:03imageAsteLtd-03.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Aste Company Limited', 'http://aste.co.ke', '2022-07-29 09:35:03', '2022-07-29 09:35:03'),
(72, 'Jspex Design', NULL, 1, NULL, '2022-07-2912:35:37imagej-spex-04.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Jspex Design', 'https://jspexdesign.com', '2022-07-29 09:35:37', '2022-07-29 09:35:37'),
(73, 'Royaltech Computers Limited', NULL, 1, NULL, '2022-08-1109:08:26imageroyaltecha-01.jpg', NULL, NULL, NULL, NULL, '1', NULL, 'Royaltech Computers Limited', 'https://royaltech.co.ke', '2022-08-11 06:08:26', '2022-08-11 06:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int UNSIGNED NOT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `service`, `budget`, `content`, `price`, `frequency`, `created_at`, `updated_at`) VALUES
(1, 'Website Design, Website Redesign & Web Development', 'starter', '<ol><li>limited Pages</li><li>Contact forms</li><li>Content management system</li><li>24 Hours Live Support<br></li><li>Free Domain</li><li>Free Hosting</li><li>Free SSL<br></li></ol>', '15500', 'One Time', '2019-01-02 16:38:37', '2019-01-02 16:38:37'),
(2, 'Website Design, Website Redesign & Web Development', 'basic', '<ol><li>Unlimited Pages</li><li>Contact forms</li><li>Content Management System<br></li><li>Blog<br></li><li>Sitemaps</li><li>24Hours Live Support<br></li><li>Free Domain</li><li>Free Hosting</li><li>Free SSL<br></li></ol>', '18500', 'One Time', '2019-01-02 16:40:46', '2019-01-02 16:40:46'),
(3, 'Website Design, Website Redesign & Web Development', 'standard', '<ol><li>Unlimited Pages</li><li>Contact forms</li><li>Content management system<br></li><li>Multiuser admins panel</li><li>Multi user clients panel<br></li><li>Blog<br></li><li>Sitemaps</li><li>24 Hours Live Support</li><li>E-commerce (Enabled)<br></li><li>Free Domain</li><li>Free Hosting</li><li>Free SSL</li><li>shopping cart(Where applicable)</li><li>Stock control</li><li>Pay pal checkout(Where applicable)<br></li></ol><br>', '35500', 'One Time', '2019-01-02 16:43:05', '2019-01-02 16:43:05'),
(4, 'Website Design, Website Redesign & Web Development', 'premium', '<ol><li>Unlimited Pages</li><li>Contact forms</li><li>Content management system<br></li><li>Multiuser admins panel</li><li>Multi user clients panel(Web Portals)</li><li>Blog<br></li><li>Sitemaps</li><li>24 Hours Live Support</li><li>E-commerce (Enabled)<br></li><li>Free Domain</li><li>Free Hosting</li><li>Free SSL</li><li>shopping cart(Where applicable)</li><li>Stock control</li><li>Pay pal checkout(Where applicable)</li><li>MPESA checkout (Where applicable)</li><li>Live Chat</li></ol><br><br><br><br>', 'On Request', 'One Time', '2019-01-02 16:48:52', '2019-01-02 16:48:52'),
(5, 'Web Hosting & Domain Registration', 'basic', '<ul><li>.com domains</li><li>Free DNS Setup<br></li></ul>', '1000', '/year', '2019-01-02 17:00:40', '2019-01-02 17:00:40'),
(6, 'Web Hosting & Domain Registration', 'starter', '<ol><li>.co.ke Domains</li><li>Free DNS setup</li><li>Renewal fee may vary after the 1st year<br></li></ol>', '570', 'one time', '2019-01-02 17:02:07', '2019-01-02 17:02:07'),
(7, 'WebDesign & Development', 'free', '<ol><li>Contact Form</li><li>About page</li></ol>NB:This service is only available to domains parked by Designekta Studios<br>', '0', 'One Time', '2019-01-03 10:16:36', '2019-01-03 10:16:36'),
(8, 'Web Hosting & Domain Registration', 'standard', '<ul><li>Web Hosting</li><li>Disk Space 30Gb</li><li>Unlimited Databeses&nbsp;</li><li>Ulimited Email Accounts</li><li>Free SSL</li><li>99.9% Uptime</li><li>24/7/365 Support<br></li></ul>', '1500', '/Year  Web Hosting Package', '2019-07-30 15:26:23', '2019-07-30 15:26:23'),
(9, 'Web Hosting & Domain Registration', 'premium', '<ul><li>Web Hosting</li><li>Disk Space Upto 50Gb</li><li>Unlimited Databases <br></li><li>Unlimited Email Accounts</li><li>Unlimited Domain Hosted<br></li><li>Free SSL For all Domains<br></li><li>99.9% Guaranteed Uptime <br></li><li>24/7/365 Support(lifetime)<br></li></ul><br><br>', '3500', '/Year  Web Hosting Package', '2019-07-30 15:29:02', '2019-07-30 15:29:02'),
(10, 'Web Hosting & Domain Registration', 'premium', '<b>VPS HOSTING<br></b><ul><li>Ram 1 GB</li><li>Multilanguage<br></li><li>Processor 1 Core</li><li>Storage 20 GB SSD</li><li>Uptime&nbsp;99.99%</li></ul>', '999', '/Month', '2020-09-22 12:01:57', '2020-09-22 12:01:57'),
(11, 'Web Hosting & Domain Registration', 'premium', '<b>VPS HOSTING<br></b><ul><li>Ram 2 GB</li><li>Multilanguage<br></li><li>Processor 1 Core</li><li>Storage 50 GB SSD</li><li>Uptime&nbsp;99.99%</li></ul>', '2950', '/Month', '2020-09-22 12:02:36', '2020-09-22 12:02:36'),
(12, 'Web Hosting & Domain Registration', 'premium', '<b>VPS HOSTING<br></b><ul><li>Ram 4 GB</li><li>Multilanguage<br></li><li>Processor 2 Core</li><li>Storage 80 GB SSD</li><li>Uptime&nbsp;99.99%</li></ul>', '5950', '/Month', '2020-09-22 12:03:25', '2020-09-22 12:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'General Information', 'Designekta Studios values privacy of any person or organization, business in nature or otherwise. We are therefore committed to protecting any personal information collected through the designekta.com website Designekta Studios may from time to time change this information and will inform all interested parties of the changes. <span><br>\r\n</span> <br>', NULL, NULL),
(2, 'CPANEL,VPS & | T-PANEL Credentials', '<b>1.0 Overview</b><br>Passwords are an important aspect of computer security. They are the front line of protection for user\r\naccounts. A poorly chosen password or an overshared password&nbsp;may result in a compromise of the clients\' entire system. As\r\nsuch, all client\'s employees (including contractors and vendors with access to client systems are responsible for taking the appropriate steps, as outlined below, to select and secure the shared password.&nbsp;<br><br><b>2.0 Purpose\r\n</b><br>The purpose of this policy is to establish a standard for the creation of strong passwords, the protection of\r\nthose passwords, and the frequency of change.<br><br><b>3.0 Scope</b><br>The scope of this policy includes all personnel who have or are responsible for an account (or any form of\r\naccess that supports or requires a password) on any system that resides at any clients online or offline facility,\r\nhas access to the client\'s network<br><br><b>4.0 Password Sharing<br></b>Designekta Studios shared the passwords and usernames to selected individuals within the client\'s organization.<br><b></b>Once the credentials are shared the parties are required to confirm the same upon receipt of the credentials.&nbsp;<br><br><b>5.0 Password Protection<br></b>Once the credentials are shared Designekta Reserves the right to monitor basic information about every session created within the systems. These are Browser type, IP address, and Location<b><br></b>', '2020-10-26 05:55:47', '2020-10-26 05:55:47'),
(3, 'Policies', '<br><h4><i>Personal Information Collected</i> \r\n</h4>designekta.com will gather information in the background when any person or legal entity visits the designekta.com website using cookies. This may include IP address, device type, Internet browser type, operating system, location and other device specific infomation. Data collected is for business intelligence meant for enhancing user experience any time a user visits the designekta.com.<h4>&nbsp;<i>Management of personal database</i></h4>\r\n<span> You can choose whether you wish to receive promotional communications from our web site by email using the subscribe form in the footer section of this page. If you receive promotional email or SMS messages from us and would like to opt out, you can request deletion of your email info@designekta.com. </span> <span><br><br>\r\n</span>\r\n<h4><i>Contact</i></h4>&nbsp;You have the right to review the personal data we keep about you. You can request an overview of your personal data that by emailing&nbsp;info@designekta.com with the subject line Request for personal information. To help us prevent fraudulent collection of personal information, please include a scan of your passport or identity card. If you would like us to remove your personal information from our database, please email&nbsp;info@designekta.com with the subject line Request for removal of personal information. Please bear in mind that we may need to retain certain information for legal and/or administrative purposes such as record keeping or to detect fraudulent or criminal activities. <br><br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `cat`, `sub_cat`, `code`, `content`, `image_one`, `image_two`, `image_three`, `created_at`, `updated_at`) VALUES
(16, 'Ecommerce Electronics Website', '8100', '1', '3', 'ECOM1', 'Link at <a href=\"https://designekta.com/ecommercev1/public/\" target=\"\" rel=\"\">https://designekta.com/ecommercev1/public/</a><br>E commerce v1 is an E commerce website designed and developed for general purpose.<br><b>&nbsp;The website contains:</b><br><ol><li>&nbsp; Product listing</li><li>Shopping cart</li><li>Wish-list</li><li>checkout pages</li><li>privacy</li><li>terms and conditions</li><li>Copyright<br></li></ol>The Website also supports multi authentication: This means multiple users and multiple administrators\r\n<br><b>The User area contains</b><br><ol><li>Home</li><li>Profile</li><li>coupons</li><li>Order History<br></li></ol>The admins panel is a complex general purpose content management system themed by NEKTA CMS<br>The panel supports<br><ol><li>&nbsp;Adding Content</li><li>Editing content</li><li>&nbsp;Adding editing and deleting files</li><li>Mailers</li><li>Orders control and response system<br></li></ol><b>&nbsp;Technology</b><br>&nbsp;PHP 7.2, JavaScript,CSS3,Bootstrap<br>&nbsp;Framework : La-ravel 5.5<br>&nbsp;Features<br><ol><li>&nbsp;Mobile responsive</li><li>Fast loading time</li><li>&nbsp;Automatic Image resizing&nbsp;&nbsp;</li><li>SEO friendly</li><li>Social media integration</li><li>Local Search among others&nbsp;</li></ol>\r\n\r\n<b>48 Hours Setup Period<br>The Price is Exclusive of Domain &amp; Hosting<br><br><br><br></b>', '2019-11-1609:54:57imageELECTRO.jpg', '2019-01-0407:42:37imageecommercev1producs.png', '2019-01-0407:42:37imageecommercev1adminsPanel.png', '2019-01-03 04:49:39', '2019-01-03 04:49:39'),
(20, 'EcommeceV6.0', '8100', '1', '3', 'ECOM6', 'Link at <a href=\"https://designekta.com/ecommercev6/public/\" target=\"\" rel=\"\">https://designekta.com/ecommercev6/public/</a><br>E commerce v6 is an E commerce website designed and developed for general purpose.<br>&nbsp;The website contains\"<br><ol><li>Product listing</li><li>Shopping cart</li><li>checkout pages</li><li>privacy</li><li>terms and conditions</li><li>Copyright<br></li></ol>The Website also supports multi authentication: This means multiple users and multiple administrators\r\n<br>The User area contains<br><ol><li>Home</li><li>Profile</li><li>coupons</li><li>Order History<br></li></ol>The admins panel is a complex general purpose content management system themed by NEKTA CMS<br>The panel supports<br><ol><li>&nbsp;Adding Content</li><li>Editing content</li><li>&nbsp;Adding editing and deleting files</li><li>Mailers</li><li>Orders control and response system<br></li></ol>&nbsp;Technology<br>&nbsp;PHP 7.1, JavaScript,CSS3,Bootstrap<br>&nbsp;Framework : La-ravel 5.5<br>&nbsp;Features<br><ol><li>&nbsp;Mobile responsive</li><li>Fast loading time</li><li>&nbsp;Automatic Image resizing&nbsp;&nbsp;</li><li>SEO friendly(SEO by artesaos laravel tool)</li><li>Social media integration</li><li>Local Search among others\r\n\r\n<br></li></ol><br><b>Disclaimer</b>: The footer credits has to remain or purchase a license @ $42 to remove it<br><br><br>', '2019-11-1610:09:34image2019-11-1609_59_08imageMEN-COLLECTION_81c690d57a9879845287a11d15ee80ac.jpg', '2019-02-2811:00:14imageScreenShot2019-02-28at13.32.03.png', '2019-02-2811:04:13imageScreenShot2019-02-28at13.35.07.png', '2019-02-28 16:56:19', '2019-02-28 16:56:19'),
(21, 'EcommeceV7.0', '8100', '1', '3', 'ECOM7', 'Link at <a href=\"https://designekta.com/ecommercev7/\" target=\"\" rel=\"\">https://designekta.com/ecommercev7/</a><a href=\"https://designekta.com/ecommercev6/public/\" target=\"\" rel=\"\"></a><br>E commerce v7 is an E commerce website designed and developed for general purpose.<br>&nbsp;The website contains\"<br><ol><li>Product listing</li><li>Shopping cart</li><li>checkout pages</li><li>privacy</li><li>terms and conditions</li><li>Copyright<br></li></ol>The Website also supports multi authentication: This means multiple users and multiple administrators\r\n<br>The User area contains<br><ol><li>Home</li><li>Profile</li><li>coupons</li><li>Order History<br></li></ol>The admins panel is a complex general purpose content management system themed by NEKTA CMS<br>The panel supports<br><ol><li>&nbsp;Adding Content</li><li>Editing content</li><li>&nbsp;Adding editing and deleting files</li><li>Mailers</li><li>Orders control and response system<br></li></ol>&nbsp;Technology<br>&nbsp;PHP 5.6, JavaScript,CSS3,Bootstrap<br>&nbsp;Framework : NONE(Raw PHP)<br>&nbsp;Features<br><ol><li>&nbsp;Mobile responsive</li><li>Fast loading time</li><li>&nbsp;Automatic Image resizing&nbsp;&nbsp;</li><li>Social media integration</li><li>Local Search among others\r\n\r\n<br></li></ol><br><b>Disclaimer</b>: The footer credits has to remain or purchase a license @ $18 to remove it<br><br><br><br>', '2019-11-1609:59:52imageE-COMMERCE.jpg', '2019-03-1512:09:24imageScreenShot2019-03-15at15.06.20.png', '2019-03-1512:09:40imageScreenShot2019-03-15at15.06.44.png', '2019-03-15 17:08:26', '2019-03-15 17:08:26'),
(22, 'Blog/News Website', '10100', '1', '15', 'BLOGBUALLE', '&nbsp;The link at <a href=\"https://designekta.com/bualle/public/\" target=\"\" rel=\"\">https://designekta.com/bualle/public/</a><br>Blog/News Website is a News and advertising website designed and developed for general purpose.<br>&nbsp;The website contains\"<br><ol><li>&nbsp;New listing</li><li>Video iframes<br></li><li>privacy</li><li>terms and conditions</li><li>Copyright<br></li></ol><div>The Website also supports multi authentication: This means multiple users and multiple administrators <br></div><div><br></div>The admins\' panel is a complex general-purpose content management system themed by NEKTA CMS<br>The panel supports<br><ol><li>&nbsp;Adding Content</li><li>Editing content</li><li>&nbsp;Adding editing and deleting files</li><li>Mailers</li><li>Orders control and response system<br></li></ol>&nbsp;Technology<br>&nbsp;PHP 7.2, JavaScript,CSS3,Bootstrap<br>&nbsp;Framework: La-ravel 5.5<br>&nbsp;Features<br><ol><li>&nbsp;Mobile responsive</li><li>Fast loading time</li><li>&nbsp;Automatic Image resizing&nbsp;&nbsp;</li><li>SEO friendly</li><li>Social media integration</li><li>Local Search among others\r\n\r\n<br></li></ol><br><b>Disclaimer</b>: The footer credits has to remain or purchase a license @ $85 to remove it<br><br><br>', '2019-11-1610:01:07imageBUALLE.jpg', NULL, NULL, '2019-11-13 20:49:35', '2019-11-13 20:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `quoterequests`
--

CREATE TABLE `quoterequests` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quoterequests`
--

INSERT INTO `quoterequests` (`id`, `name`, `email`, `service`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Drixx', 'onedrixx9@gmail.com', 'Flyer', 'I need a flyer for my event', 0, '2020-11-30 15:51:28', '2020-11-30 15:51:28'),
(2, 'Drixx', 'onedrixx9@gmail.com', 'Flyer', 'I need a flyer for my event', 0, '2020-11-30 15:51:34', '2020-11-30 15:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicerequests`
--

CREATE TABLE `servicerequests` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serviceID` int DEFAULT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicerequests`
--

INSERT INTO `servicerequests` (`id`, `name`, `email`, `serviceID`, `service`, `budget`, `price`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'martin Kairu', 'martin@iperformanceafrica.com', 3, 'WebDesign & Development', 'standard', '15500', 'We are looking to remake our website from scatch. Time is of essence on this project', 0, '2019-04-19 02:27:35', '2019-04-19 02:27:35'),
(2, 'martin Kairu', 'martin@iperformanceafrica.com', 3, 'WebDesign & Development', 'standard', '15500', 'We are looking to remake our website from scratch. Time is of essence on this project \r\n0722163053', 0, '2019-04-19 02:28:01', '2019-04-19 02:28:01'),
(3, 'martin Kairu', 'martin@iperformanceafrica.com', 3, 'WebDesign & Development', 'standard', '15500', 'We are looking to remake our website from scratch. Time is of essence on this project \r\n0722163053', 0, '2019-04-19 02:28:08', '2019-04-19 02:28:08'),
(4, 'martin Kairu', 'martin@iperformanceafrica.com', 3, 'WebDesign & Development', 'standard', '15500', 'We are looking to remake our website from scratch. Time is of essence on this project \r\n0722163053', 0, '2019-04-19 02:28:15', '2019-04-19 02:28:15'),
(5, 'martin Kairu', 'martin@iperformanceafrica.com', 3, 'WebDesign & Development', 'standard', '15500', 'We are looking to remake our website from scratch. Time is of essence on this project \r\n0722163053', 0, '2019-04-19 02:28:15', '2019-04-19 02:28:15'),
(6, 'benkinet_test', 'info@designekta.com', 3, 'WebDesign & Development', 'standard', '15500', NULL, 0, '2019-04-19 11:54:41', '2019-04-19 11:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `portfolio` tinyint NOT NULL DEFAULT '0',
  `image_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icons`, `meta`, `slung`, `content`, `content_two`, `portfolio`, `image_one`, `image_two`, `image_three`, `created_at`, `updated_at`) VALUES
(1, 'Website Design, Website Redesign & Web Development', 'icon-globe', 'We build professional responsive websites optimized for the most popular search engines.', 'website-design-website-redesign-web-development', 'You NEVER get a second chance to make a first impression. A professionally-designed website is paramount in todays world to ensure that positive first impression for your customers. Let our team make a perfect website for your enterprise/company.', 'Our approach to designs reflects our commitment to best practice web design principles, user experience research and material design standards.\n<br><br>\nWe use this foundation to explore concepts and develop unique solutions based on the objectives of every project we take on. All of our design work is uniquely tailored to visually represent you and your brand to take you from online presence to online excellence.\n<br><br>\n<h3>Our Approach: Best Practice Web Design</h3>\n<br><br>\n    • <b>Information Gathering:</b> understanding the project, requirements, goals and success criterion helps level-set on the objectives and align the team.\n      <br><br>\n    • <b>Information Architecture: </b>getting the site maps and navigation systems in place to support a great user experience\n      <br><br>\n    • <b>Wireframes(Theming) :</b> These initial wireframes determine layout and plot functionality without the distraction of visual elements like colour, photography or graphics.\n      <br><br>\n    • <b>Wireframes :</b> lo-fi wireframes evolve into functional prototypes that allow us to adjust functionality and user journeys to suit the goals of the project (UX Design). This is a crucial step in the process because this is when we solve any gaps in the navigation and flow of the site.\n      <br><br>\n      \n    • <b>Creative Brief: </b>once the wireframing process is complete, we develop a creative brief that includes mood boards, typography, colors, imagery and user interface (UI) elements. This is an important step that aligns our design and development teams with your team to make sure we’re agreed on the design direction for the project.\n      <br><br>\n    • <b>Design concepts: </b>we add unique branding and UI design that makes the prototype wireframes come to life. Using colours, imagery, graphics and iconography, we create a fully immersive design that is customized to your brand and vision.\n      <br><br>', 1, '2019-12-1506:33:52imageImage-for-Myventurepad.jpg', NULL, NULL, '2018-12-13 17:03:43', '2018-12-13 17:03:43'),
(2, 'E-Commerce & Various Online Payment Solutions', 'icon-basket', 'Increase your sales with an incredible online store, full of features and functionality.', 'e-commerce-various-online-payment-solutions', 'We have a team of experienced ecommerce developers who have worked with the top ecommerce platforms, as well as ecommerce web design specialists that are experienced at making websites user friendly and aesthetically pleasing. Furthermore, our digital marketers can help ensure your website utilizes best ecommerce SEO practices.<br><br>\r\nBesides the e-commerce websites we also intergrate payment systems such as PayPal, Skrill, Pesapal, M-PESA among others', '<h3>Our Approach: Best Practice Web Design</h3>\n<br><br>\n    • <b>Information Gathering:</b> understanding the project, requirements, goals and success criterion helps level-set on the objectives and align the team.\n      <br><br>\n    • <b>Information Architecture: </b>getting the site maps and navigation systems in place to support a great user experience\n      <br><br>\n    • <b>Wireframes(Theming) :</b> These initial wireframes determine layout and plot functionality without the distraction of visual elements like colour, photography or graphics.\n      <br><br>\n    • <b>Wireframes :</b> lo-fi wireframes evolve into functional prototypes that allow us to adjust functionality and user journeys to suit the goals of the project (UX Design). This is a crucial step in the process because this is when we solve any gaps in the navigation and flow of the site.\n      <br><br>\n      \n    • <b>Creative Brief: </b>once the wireframing process is complete, we develop a creative brief that includes mood boards, typography, colors, imagery and user interface (UI) elements. This is an important step that aligns our design and development teams with your team to make sure we’re agreed on the design direction for the project.\n      <br><br>\n    • <b>Design concepts: </b>we add unique branding and UI design that makes the prototype wireframes come to life. Using colours, imagery, graphics and iconography, we create a fully immersive design that is customized to your brand and vision.\n      <br><br>', 0, '2021-01-2911:40:22imageWebRes14-02(1).jpg', NULL, NULL, '2021-01-18 17:12:02', '2021-01-18 17:12:02'),
(3, 'Web Hosting & Domain Registration', 'icon-check', 'Create your online presence from zero to hero with a new domain and an affordable SSD hosting package', 'web-hosting-domain-registration', 'Need a Domain name? Register with us today and enjoy a free domain parking website for your company<br>', 'To conduct a perfect domain name registration in Kenya, you first need to search here.\r\n<br>\r\nTo do that, go ahead and type the name you’d wish to register on the search box above and hit search.\r\n<br>\r\nOur system will sort through the entire internet to ascertain that your preferred domain name hasn’t been registered by someone else.\r\n<br><br>\r\nIn that case, if it is not yet registered, you will get an ‘available’ message. On the other hand, if someone is already using the domain, you will get a ‘not available’ message.\r\n<br><br>\r\nIf it is already taken though, don’t fret because you can search for another one. And that is why it is advisable to have a list of preferred website names when coming to register here.\r\n<br><br>\r\nThis way, you don’t waste time trying to think about new names in case your preferred domain name is already taken.\r\n<br><br>\r\nOnce you find the best website name and is available, go ahead and click add to cart. That is where the domain name registration in Kenya starts.\r\n<br><br>\r\n\r\nWe make sure they are cheap and consistent.<br> <br> <br>\r\n\r\n<a href=\"https://kenyawebexperts.com/aff.php?aff=166\" class=\"btn mx-auto mr-md-0 ml-md-auto primary-button\"><i class=\"icon-grid\"></i>Register Here</a>\r\n', 0, '2019-11-1611:04:08image2019-01-0219_29_31imagedomainregi_761070be7b0306d9ae4d620358b37178.jpg', NULL, NULL, '2018-12-13 17:09:12', '2018-12-13 17:09:12'),
(4, 'Graphic Design', 'icon-pencil', 'We create visual communication tools that are specific to your brand', 'graphic-design', 'No matter how good a product or solution is if it not visually attractive, it cannot and will not sell. Consumer research has shown that clients make purchase decisions majorly based on looks as opposed to functionality.\r\n<br><br>\r\nGraphic Design simply entails building appealing visual communication. The art of being able to impress your target audience through attractive visual designs and layouts. The underlying thought is if it looks good it probably is good.\r\n<br><br>\r\nAt <a href=\"http://designekta.com\">Designekta Studios</a> we excel at Graphic Design based on years of hands-on Digital and Print Media Design. We can comfortably guarantee to deliver you the most satisfying Graphic Design solutions.\r\n', NULL, 0, '2021-01-1920:08:14image2019-12-1506:53:25imagemis_graphic_design5.jpg', NULL, NULL, '2021-01-18 17:12:16', '2021-01-18 17:12:16'),
(5, 'Digital Marketing', 'icon-chart', 'We work to promote your brand in partnership with the best marketing platforms today.', 'digital-marketing', 'Many businesses have long begun to use the internet as leverage to further their objectives. Consumers today are connected to the web 24/7, which means your business needs to have a strong and engaging online presence to stay ahead of the competition.<br><br>\r\n\r\nOur strategy focuses on understanding your customer’s journey from awareness to consideration to purchase. We take an individualized approach to every customer project and help you develop a custom digital marketing strategy that helps create easy-to-find, engaging experiences that inspire action.<br><br>\r\n\r\nOur team acts as an extension of your organization, working alongside you to reach your market and goals, and helps your brand become known as “the best solution” wherever prospects and customers may be looking.<br><br>', '<b>Market Research and Marketing Strategy</b><br>\r\nA successful digital marketing strategy is researched, informed, and founded on quality information. Market research is the core of our digital marketing approach. Designekta Studios works closely with your business, thoroughly researches, and keeps up-to-date on your industry and competitive market.<br>\r\n\r\nWith the right strategic planning, online marketing is so much easier. Designekta Studios creates a tailored strategy for each clients’ specific long-term marketing goals and needs. Constant research and effective marketing strategy are necessary to keep your finger on the online pulse of your target customer.<br><br>\r\n\r\n<b>Social Media Marketing</b><br>\r\nAn average user spends a minimum of two hours on social media sites daily. With the right social media marketing strategy and management, your business could reach and engage with millions of new potential customers.\r\n\r\nDesignekta Studios will develop a custom social media marketing plan (organic social and paid social) to grow your social media presence and drive quality traffic to your website. Our goal is to improve the business’ brand reputation, interact with customers, gain a larger audience, and track success.<br><br>\r\n\r\n<b>Content Marketing & Blogging</b><br>\r\nSearch engines like Google favor web pages or blog posts with high quality and relevant, up-to-date content. Content marketing is arguably the foremost cost-effective approach to grow your business and build your brand. Designekta Studios works with your organization during the research and strategy phases to develop a plan, then write content that helps drive traffic and convert visitors into leads. Every piece of content we write is well-researched, proofread, free from plagiarism, and optimized for search engines.<br><br>\r\n\r\n\r\n<b>Email Marketing</b><br>\r\nEmail marketing remains the foremost direct approach to connect with potential clients and build long-term relationships. Creating custom email marketing will help you stay in consistent contact with your most qualified customers, plus nurture fresh leads. Designekta Studios will work with your business to create a customized email marketing strategy for your target audience. The customize strategy includes carefully curated content and outstanding custom design that will engage your customers.', 0, '2021-01-1920:12:50imagepexels-photo-267350.webp', NULL, NULL, '2021-01-18 17:12:25', '2021-01-18 17:12:25'),
(6, 'Brand Creation', 'icon-bulb', 'We create your brand thinking about your target audience using design techniques.', 'brand-creation', 'Your brand is the most valuable business asset you own. Are you standing out from your competition in the cluttered markets? At Designekta Studios we  got the skills and experience to build lasting brands that resonate with the right audience—building presence, trust and recognition\r\nBuilding an identity that positions you ahead of your competition requires craftsmanship and a smart approach. You need a branding agency that understands strategy and visual design.\r\nWe employ strategies that employ visual communication required to outsmart your competition and to set your brand for a long term success.\r\n<br><br>\r\nSolutions:<br>\r\n•  Brand Strategy<br>\r\n•  Naming<br>\r\n•  Taglines<br>\r\n•  Brand Creative<br>\r\n•  Brand Guidelines<br>\r\n•  Brand Collateral<br>\r\n•  Brand Launch<br>\r\n•  Media Buying<br>\r\n•  Marketing Collateral<br>\r\n•  Marketing Campaigns<br>\r\n•  Advertising Campaigns<br>', NULL, 0, '2021-01-1920:16:49imagebranding.png', NULL, NULL, '2021-01-18 17:12:34', '2021-01-18 17:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `service_delivered`
--

CREATE TABLE `service_delivered` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_delivered`
--

INSERT INTO `service_delivered` (`id`, `name`, `cat`, `created_at`, `updated_at`) VALUES
(1, 'Gobeys E-commerce', '1', '2019-01-02 07:20:39', '2019-01-02 07:20:39'),
(2, 'Green travel Space', '1', '2019-01-02 07:21:08', '2019-01-02 07:21:08'),
(3, 'AOL Outdoor Adventure', '1', '2019-01-02 07:21:21', '2019-01-02 07:21:21'),
(4, 'Sabvil Flowers', '1', '2019-01-02 07:21:51', '2019-01-02 07:21:51'),
(5, 'www.gobeys.com', '2', '2019-01-02 07:24:53', '2019-01-02 07:24:53'),
(6, 'www.aoloutdooradventure.com', '2', '2019-01-02 07:27:14', '2019-01-02 07:27:14'),
(7, 'www.greentravelspace.com', '2', '2019-01-02 07:28:13', '2019-01-02 07:28:13'),
(8, 'http://sabvilflowers.com', '2', '2019-01-02 07:29:21', '2019-01-02 07:29:21'),
(9, 'AOL Logo', '3', '2019-01-02 07:30:03', '2019-01-02 07:30:03'),
(10, 'Soko afya Logo', '3', '2019-01-02 07:30:53', '2019-01-02 07:30:53'),
(11, 'Laptop to Kibet', '6', '2019-01-02 07:32:19', '2019-01-02 07:32:19'),
(12, 'Tecno Spark 2', '6', '2019-01-02 07:32:46', '2019-01-02 07:32:46'),
(13, 'Sabvil Flowers', '4', '2019-01-02 07:33:17', '2019-01-02 07:33:17'),
(14, 'Prime Educational Center', '5', '2019-01-02 07:33:44', '2019-01-02 07:33:44'),
(15, 'beatricemwangi.com', '2', '2019-01-03 05:04:03', '2019-01-03 05:04:03'),
(16, 'beatricemwangi.com Hosting', '2', '2019-01-03 05:04:19', '2019-01-03 05:04:19'),
(17, 'Gobeys Hosting', '2', '2019-01-03 05:04:33', '2019-01-03 05:04:33'),
(18, 'SokoAfya Hosting', '2', '2019-01-03 05:04:52', '2019-01-03 05:04:52'),
(19, 'Sabvil Flowers Hosting', '2', '2019-01-03 05:05:17', '2019-01-03 05:05:17'),
(20, 'Ecommece V1.0', '1', '2019-01-03 05:06:23', '2019-01-03 05:06:23'),
(21, 'Ecommece V2.0', '1', '2019-01-03 05:06:32', '2019-01-03 05:06:32'),
(22, 'Desktops Prime Schools', '6', '2019-01-03 05:07:33', '2019-01-03 05:07:33'),
(23, '2Tb Anderson', '6', '2019-01-03 05:08:13', '2019-01-03 05:08:13'),
(24, 'Swisgear 1645 Samson', '6', '2019-01-03 05:08:36', '2019-01-03 05:08:36'),
(25, 'Clean Maids', '2', '2019-05-22 13:22:21', '2019-05-22 13:22:21'),
(26, 'Stagepass Audio Visual', '1', '2019-05-22 13:25:53', '2019-05-22 13:25:53'),
(27, 'jambo Logistics Limited', '1', '2019-05-22 13:26:06', '2019-05-22 13:26:06'),
(28, 'iPerformance Africa Limited', '1', '2019-05-22 13:26:27', '2019-05-22 13:26:27'),
(29, 'Amani Vehicle Sounds & Accessories', '1', '2019-05-24 00:16:17', '2019-05-24 00:16:17'),
(30, 'Brilliant Solutions Assignment Help', '1', '2019-08-28 15:19:46', '2019-08-28 15:19:46'),
(31, 'Heta Online Academy Website & Portal', '1', '2019-08-28 15:19:54', '2019-08-28 15:19:54'),
(32, 'Brilliant Solutions Assignment Help', '2', '2019-08-28 15:20:12', '2019-08-28 15:20:12'),
(33, 'Heta Online Academy Website & Portal', '2', '2019-08-28 15:20:26', '2019-08-28 15:20:26'),
(34, 'Case Avenue', '1', '2019-08-28 15:20:41', '2019-08-28 15:20:41'),
(35, 'Case Avenue', '2', '2019-08-28 15:20:53', '2019-08-28 15:20:53'),
(36, 'Nduth Kenya', '2', '2019-08-28 15:21:48', '2019-08-28 15:21:48'),
(37, 'Bonai logo', '3', '2019-11-28 16:08:51', '2019-11-28 16:08:51'),
(38, 'Bonsai Landscapers & Nurseries Company Profiles', '3', '2019-11-28 16:09:04', '2019-11-28 16:09:04'),
(39, 'Proton Engineering and Services (E.A) Ltd​', '1', '2019-11-28 16:09:17', '2019-11-28 16:09:17'),
(40, 'Peak Africa Safaris', '1', '2019-11-28 16:09:27', '2019-11-28 16:09:27'),
(41, 'Awele Jackson Advocates Business Profile', '3', '2019-11-28 16:09:52', '2019-11-28 16:09:52'),
(42, 'Paradise Cleaning Solutions Logo', '3', '2019-11-28 16:10:05', '2019-11-28 16:10:05'),
(43, 'Tidy Lit Cleaning Services', '3', '2019-11-28 16:10:13', '2019-11-28 16:10:13'),
(44, 'Raconteur Tours', '1', '2019-11-28 16:10:22', '2019-11-28 16:10:22'),
(45, 'Raconteur Tours', '2', '2019-11-28 16:10:33', '2019-11-28 16:10:33'),
(46, 'Peak Africa Safaris', '4', '2019-11-28 16:10:48', '2019-11-28 16:10:48'),
(47, 'Case Avenue', '2', '2019-11-28 16:11:03', '2019-11-28 16:11:03'),
(48, 'Case Avenue', '2', '2019-11-28 16:11:12', '2019-11-28 16:11:12'),
(49, 'Paradise Cleaning Solutions Logo', '3', '2019-11-28 16:11:41', '2019-11-28 16:11:41'),
(50, 'Project X Logo', '3', '2019-11-28 16:11:53', '2019-11-28 16:11:53'),
(51, 'Cess Pastries Logo', '1', '2019-11-28 16:12:25', '2019-11-28 16:12:25'),
(52, 'Cess Pastries Logo', '3', '2019-11-28 16:12:29', '2019-11-28 16:12:29'),
(53, 'The Gifted Ones Logo', '3', '2019-11-28 16:12:38', '2019-11-28 16:12:38'),
(54, 'Bonsai Landscapers & Nurseries Company Profiles', '3', '2019-11-28 16:12:58', '2019-11-28 16:12:58'),
(55, 'Sabvil Flowers Business Profile', '3', '2019-11-28 16:13:11', '2019-11-28 16:13:11'),
(56, 'Boxed In Design Printing Services Business Profile', '3', '2019-11-28 16:13:25', '2019-11-28 16:13:25'),
(57, 'Mula Bet', '2', '2019-11-28 16:15:34', '2019-11-28 16:15:34'),
(58, 'AVS', '3', '2019-11-28 16:15:52', '2019-11-28 16:15:52'),
(59, 'Sabvile Logos', '3', '2019-11-28 16:16:05', '2019-11-28 16:16:05'),
(60, 'Sparol.co.ke', '2', '2019-12-13 22:21:53', '2019-12-13 22:21:53'),
(61, 'sparol Hosting', '1', '2019-12-13 22:22:14', '2019-12-13 22:22:14'),
(62, 'vps iperfomance', '2', '2019-12-13 22:23:36', '2019-12-13 22:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `id` int UNSIGNED NOT NULL,
  `sitename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`id`, `sitename`, `logo`, `email`, `email_one`, `mobile`, `mobile_one`, `mobile_two`, `tagline`, `url`, `location`, `address`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `google`, `welcome`, `created_at`, `updated_at`) VALUES
(1, 'Designekta Studios', 'loading.gif', 'info@designekta.com', 'designektastudios@gmail.com', '(+254)0723014032', '(+254)0723014032', '(+254)0786644148', 'Espirit De Cops', 'https://www.designekta.com', 'Pricely House Moi Avenue, next To Rahimtulla Trust Building', 'P.O BOX 0100', 'https://web.facebook.com/designekta/', 'https://twitter.com/designekta254', 'https://linkedin.com/company/designekta-studios', 'https://www.instagram.com/designekta/', 'http://www.youtube.com', 'http://google.com', 'There is much fish in the sea, but you could be the only one that \r\nmatters! It\'s rather a matter of choice to stand out in a group of \'good\r\n companies\' by having a unique and compelling personal touch to your \r\nfirm. Designekta is all about giving you a strong market presence with \r\nan edge in client attraction, come and let us give you the wow-factor.<br>', '2018-12-08 21:00:00', '2018-12-08 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `content`, `image`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Website Design, Website Redesign and Website Development', 'You never get a second chance to make a first impression, A professionally-designed website is paramount in todays business world. With thousands of websites out there, you need a reason to get your clients attention. We can make you a website that does just that<br>', 'webdev.png', NULL, '2019-01-02 10:43:32', '2019-01-02 10:43:32'),
(2, 'Domain Registration, Domain Transfer & Domain Renewal', 'Register your Domain with us and get a free parking website for your business<br>', 'domains-domain-names-ss-1920_7f8289dc2eabcfdf081714d17331ddf9.jpg', NULL, '2018-12-11 16:49:43', '2018-12-11 16:49:43'),
(3, 'Web Hosting, Email Hosting and Cloud Servers', 'Host your website with us!! We have budget for all, Just choose and get started<br>', 'List-of-the-Best-Web-Hosting-Companies-in-Dubai-with-Contact-Details-2.jpg', NULL, '2018-12-11 16:49:49', '2018-12-11 16:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'albertmuhatia@gmail.com', '2019-01-02 11:44:19', '2019-01-02 11:44:19'),
(2, 'prime.educational.center@gmail.com', '2019-03-20 20:36:55', '2019-03-20 20:36:55'),
(3, NULL, '2019-04-20 04:56:37', '2019-04-20 04:56:37'),
(4, 'reservierung@mitterbergalm.at', '2019-10-05 01:25:55', '2019-10-05 01:25:55'),
(5, 'bruno-magna.schlatter@t-online.de', '2019-10-07 21:57:21', '2019-10-07 21:57:21'),
(6, 'blomdahls@cox.net', '2019-10-07 22:23:51', '2019-10-07 22:23:51'),
(7, 'ssmarblehead@aol.com', '2019-10-08 00:11:10', '2019-10-08 00:11:10'),
(8, 'bill@travelsw.com', '2019-10-08 03:09:21', '2019-10-08 03:09:21'),
(9, 'cbrady@dermamed.net', '2019-10-09 17:04:44', '2019-10-09 17:04:44'),
(10, 'statensouth@gmail.com', '2019-10-09 19:35:15', '2019-10-09 19:35:15'),
(11, 'dgra1230@aol.com', '2019-10-13 15:51:22', '2019-10-13 15:51:22'),
(12, 'luciadellenoci@gmail.com', '2019-10-15 21:03:47', '2019-10-15 21:03:47'),
(13, 'polsen2000@comcast.net', '2019-10-17 11:25:19', '2019-10-17 11:25:19'),
(14, 'pakukizuminaoten@gmail.com', '2020-10-08 11:36:38', '2020-10-08 11:36:38'),
(15, 'whoppicangj@gmail.com', '2020-10-21 00:47:28', '2020-10-21 00:47:28'),
(16, 'acuantracad@gmail.com', '2020-11-19 10:36:22', '2020-11-19 10:36:22'),
(17, 'anthonyanis65@gmail.com', '2020-12-06 08:56:49', '2020-12-06 08:56:49'),
(18, 'fhenderson676@gmail.com', '2020-12-21 22:12:05', '2020-12-21 22:12:05'),
(19, 'bensonb927@gmail.com', '2020-12-26 06:26:03', '2020-12-26 06:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int UNSIGNED NOT NULL,
  `cat_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `name`, `created_at`, `updated_at`) VALUES
(3, '1', 'E-Commerce', '2018-12-12 12:37:58', '2018-12-12 12:37:58'),
(4, '1', 'School', '2018-12-12 12:38:07', '2018-12-12 12:38:07'),
(5, '1', 'Real Estate', '2018-12-12 12:39:26', '2018-12-12 12:39:26'),
(6, '1', 'Event', '2018-12-12 12:39:41', '2018-12-12 12:39:41'),
(7, '1', 'Health', '2018-12-12 12:39:53', '2018-12-12 12:39:53'),
(8, '1', 'Travel', '2018-12-12 12:40:17', '2018-12-12 12:40:17'),
(9, '2', 'Storage', '2018-12-12 12:41:15', '2018-12-12 12:41:15'),
(10, '2', 'Phones', '2018-12-12 12:41:29', '2018-12-12 12:41:29'),
(11, '2', 'Laptop & Computers', '2018-12-12 12:41:47', '2018-12-12 12:41:47'),
(12, '2', 'Music', '2018-12-12 12:41:58', '2018-12-12 12:41:58'),
(13, '2', 'Surveillance', '2018-12-12 12:43:06', '2018-12-12 12:43:06'),
(14, '1', 'Creative Websites', '2019-03-20 19:08:56', '2019-03-20 19:08:56'),
(15, '1', 'Blog', '2019-12-29 21:54:45', '2019-12-29 21:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', '<i>&nbsp;Last updated: May 17, 2019 </i><br>It is highly reccomended that you read these Terms and Conditions carefully before using the www.designekta.com website operated by Designekta Studios . Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service. By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. The Terms and Conditions agreement for Designekta Studios has been created by designekta.com. <br>', NULL, NULL),
(2, 'Links To Other Websites', 'Our Service may contain links to third-party web sites or services that are not owned or controlled by Designekta Studios. Designekta has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that Designekta shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services. We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit. <br>', NULL, NULL),
(3, 'Changes', 'We reserve the\nright, at our sole discretion, to modify or replace these Terms at\nany time. If a revision is material we will try to provide at least\n30 days notice prior to any new terms taking effect. What constitutes\na material change will be determined at our sole discretion.\nBy continuing to\naccess or use our Service after those revisions become effective, you\nagree to be bound by the revised terms. If you do not agree to the\nnew terms, please stop using the Service.\n\n<br>', NULL, NULL),
(4, 'Account Suspension Notice', '<span>Designekta Studios will always notify the clients to renew their accounts 60 days before the expiry date. The notification will then be followed with reminder email messages 30 and 10 days respectively, before the expiry date. We will also send an expiry notification via email on the day of domain or service expiry. This will be followed by calls and SMS to ensure the client got our email notifications about their service status.<br></span>\r\n\r\n<br><span>If the timelines (as provided in the estimates) for building a website/app/artwork is about to expire we will contact the client through email/phone number provided, and if no action is taken and/or there is no communication between us and the client, the account will be suspended temporarily for a grace period of 10 days after which it will be terminated &nbsp;<br></span>\r\n\r\n<br>Clients who wish to Renew the services after termination will be charged the same amount as the original charges', '2021-01-26 11:25:37', '2021-01-26 11:25:37'),
(5, 'Footer Credit Badge', 'We reserve the right to leave a \"Powered By Designekta Studios\" on the footer section of a custom-designed website. \r\nAlthough a custom wireframe can never be reused Designekta studios may use the wireframe in the future as a Portfolio ', NULL, NULL),
(6, 'Contact Us', 'If you have any\r\nquestions about these Terms, please contact us through\r\ninfo@designekta.com.\r\n\r\n<br>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Right',
  `pull` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `traceservices`
--

CREATE TABLE `traceservices` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traceservices`
--

INSERT INTO `traceservices` (`id`, `title`, `status`, `price`, `frequency`, `due`, `invoice`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2019/11/05', '2019-11-05-002', 8, '2019-08-27 22:29:21', '2019-08-27 22:29:21'),
(9, 'Domain Registration & Hosting', 0, '2100', 'Yearly', '2020/07/05', '2020-07-05-002', 6, '2019-08-27 22:31:34', '2019-08-27 22:31:34'),
(10, 'Web Hosting', 0, '1000', 'Yearly', '2020/06/19', '2020-06-19-002', 7, '2019-08-27 22:34:31', '2019-08-27 22:34:31'),
(11, 'Domain Registration & Hosting', 0, '2100', 'Yearly', '2020/07/25', '2020-07-25-002', 5, '2019-08-27 22:35:47', '2019-08-27 22:35:47'),
(12, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2020/03/23', '2019-03-23-002', 9, '2019-08-27 22:37:08', '2019-08-27 22:37:08'),
(13, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2020/03/11', '2020-03-11-002', 10, '2019-08-27 22:38:47', '2019-08-27 22:38:47'),
(14, 'Domain Registration & Hosting', 0, '2100', 'Yearly', '2019/11/28', '2019-11-28-002', 11, '2019-08-27 22:39:52', '2019-08-27 22:39:52'),
(15, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2019/09/20', '2019-09-20-002', 12, '2019-08-27 22:40:51', '2019-08-27 22:40:51'),
(16, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2020/08/05', '2020-08-05-002', 13, '2019-08-27 22:41:39', '2019-08-27 22:41:39'),
(17, 'Domain Registration & Hosting', 0, '2100', 'Yearly', '2020/07/20', '2020-07-20-002', 14, '2019-08-27 22:42:33', '2019-08-27 22:42:33'),
(18, 'Domain Registration & Hosting', 0, '2100', 'Yearly', '2020/05/11', '2020-05-11-002', 15, '2019-08-27 22:43:30', '2019-08-27 22:43:30'),
(19, 'Domain Registration & Hosting', 0, '3100', 'Yearly', '2019/11/09', '2019-11-09-002', 16, '2019-08-27 22:44:18', '2019-08-27 22:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `title`, `status`, `content`, `instructions`, `created_at`, `updated_at`) VALUES
(1, 'New System Update', 1, 'This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content This is the content\r\nThis is the content This is the content This is the content This is the content This is the content This is the content This is the content', 'This are the instructions This are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructionsThis are the instructions', '2018-12-12 21:00:00', '2018-12-12 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `image`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Albert Muhatia', '+254723014032', NULL, 'albertmuhatia58@gmail.com', '$2y$10$bGErkjmtNonogrSSaVKCbe5OBkGdQ0Mjdwqtuk0DvqxU.tOdDbNsC', 'JjT4ofn44ey5hFS1CdX7n2Kd0eGOOoV3hJWUV0wZgXgFCkSC3JHtJ9Fs2t1t', '2018-12-14 20:02:49', '2018-12-14 20:02:49'),
(2, 'xDOGNzSwYapU', NULL, NULL, 'deblaquierecraggy@gmail.com', '$2y$10$c9mi2AEP7HOz2uGwrLvHXe182qS9FwwZ/SOWXih1kbmAD/l9IpDfu', NULL, '2019-08-07 00:41:48', '2019-08-07 00:41:48'),
(3, 'wqOBhxDkLHpj', '5779047673', NULL, 'oncitigos@gmail.com', '$2y$10$cEHgKQX3hXaD6OIdYaiVYuexqEpIdoTmxOVobhfXad/uswIDlr1yW', 'F0S5PMUR4u0tSgpxtHkKpfx1h4Qh6mT54ECseu6egipgatDaX8mPiJQj391I', '2019-08-24 10:49:16', '2019-08-24 10:49:16'),
(4, 'Albert Muhatia', '0723014032', NULL, 'albertmuhatia@gmail.com', '$2y$10$pdjWrRBzKQfJy8nC0.xew.9YawgBiqWpLasW/L/8nc3Bu4t.salh.', NULL, '2019-08-27 01:20:34', '2019-08-27 01:20:34'),
(5, 'Case Avenue', NULL, 'logo.png', 'caseavenue.system@gmail.com', '$2y$10$KkntBduMpNTcJycZQcdmg.n9At5L/elwfS2gK9mGciH9TMNUKRJzu', NULL, '2019-08-27 18:32:40', '2019-08-27 18:32:40'),
(6, 'Brilliant Solution', NULL, 'Brilliant Solns-04.png', 'brightmiss002@gmail.com', '$2y$10$O15yZpKdytSP6zjVCRTzDuTU4NwEasozgQjhoTUEBf7BQ4PJRa.HW', NULL, '2019-08-27 18:38:17', '2019-08-27 18:38:17'),
(7, 'iPerformance Africa', NULL, 'Iperform.png', 'martin@iperformanceafrica.com', '$2y$10$sf2EL8MI6rz2EPG7CKn/UOYpJ9xPa.0SyhNJCTo/k9P8t0HTd9oyO', NULL, '2019-08-27 18:40:42', '2019-08-27 18:40:42'),
(8, 'Amani Vehicle Sounds & Accessories', NULL, 'favicon.png', 'info@amanivehiclesounds.co.ke', '$2y$10$1E/qaXlUP5gf7DJ3zvENru5NTHAa2QHt5Wobynf4CFW4yn/85zlOe', NULL, '2019-08-27 18:41:59', '2019-08-27 18:41:59'),
(9, 'Jambo Logistics', NULL, 'JAMBO-100.png', 'info@jambologistics.co.ke', '$2y$10$E7UchuAGQqPXspPNFBq9/enlw6OWrBHfeDdJGCQ2.VQrBYs3jHiXe', NULL, '2019-08-27 22:16:25', '2019-08-27 22:16:25'),
(10, 'Prime Education Center', NULL, 'primeLogo.png', 'info@prime-schools.com', '$2y$10$SawmQ/YgWDmp1gZwONah6.WZDKQhTBfH2aKQqSl.aHpTsfShXjnlC', NULL, '2019-08-27 22:18:41', '2019-08-27 22:18:41'),
(11, 'Sabvil Flowers', NULL, 'logo.png', 'info@sabvilflowers.com', '$2y$10$S/Rks3ox9vj7opk84q6QuepDqqy5pJlrkOC1d1RWzEmS2T05Hhr7a', NULL, '2019-08-27 22:20:05', '2019-08-27 22:20:05'),
(12, 'StagePass Audio Visual', NULL, 'stagepassAV.ico', 'info@stagepass.co.ke', '$2y$10$ZoJ4ZC8.43IQkx0koYLLHuvY3e0dBEq0986Y0ENHIx.fdcXTfD5/u', NULL, '2019-08-27 22:22:34', '2019-08-27 22:22:34'),
(13, 'Heta Online Academy', NULL, NULL, 'info@heta-onlineacademy.org', '$2y$10$cNrNFX6TTX76IEx4iZ0/I.k564KRrd6RLz8FyroJEzjd.kiM0nHV2', NULL, '2019-08-27 22:23:21', '2019-08-27 22:23:21'),
(14, 'Green Travel Space', NULL, 'logo.png', 'info@greentravelspace.com', '$2y$10$OilHt7y6dw2oQDJ12wF9dePKE0Q.jnJAmLJZMVBFUx.SZuhLMjLZG', NULL, '2019-08-27 22:24:14', '2019-08-27 22:24:14'),
(15, 'Clean Maids', NULL, 'favicon.png', 'info@cleanmaids.co.ke', '$2y$10$O3LcmJuZMHDqSOj2jz5zmeeVoJrTFM09MU0tKb/73x/6B/10iRcIy', NULL, '2019-08-27 22:25:37', '2019-08-27 22:25:37'),
(16, 'Creation Office Fitouts', NULL, 'creatio logo.png', 'info@creationltd.co.ke', '$2y$10$DKqAz2EwD1WM8zreWHZoWO29sssCEsT8drjxei9RhYjavJkHVGwRm', NULL, '2019-08-27 22:27:40', '2019-08-27 22:27:40'),
(17, 'RsYmNBCigkVv', '5499034987', NULL, 'michaelblair6987@gmail.com', '$2y$10$YG/qzXpOwptaNJzbtBACoeYnALLYPtl78eRTKMyEg6g4CHGmyVNXm', '4VQiGunrZSyXPCbG6E1QkXvCeaZVDe9ShVpQxL1FmOgBJUNO1u8woxwud65X', '2019-09-25 08:19:39', '2019-09-25 08:19:39'),
(18, 'dBMUkyoqcAHNL', '9391079759', NULL, 'markmorrison2464@gmail.com', '$2y$10$FU3FnPvEOPoHk9VkS0CqOOt9lLzQ5AAtl0zdHJdWfnhHjjiB/LAxG', 'X2FRD9wHzIln1qhJFwPosjKpayBcfekyKZVDzMEQmpLoreV5JcuA13ElCzTw', '2019-11-12 15:29:58', '2019-11-12 15:29:58'),
(19, 'GkwNpKsfro', '4126001760', NULL, 'adeliasnow730@gmail.com', '$2y$10$D0oIhopHsGACGh/UIw7YpORZRbmoDfn5H.fo1msVM6F.xgFIGRVbO', 'FAIMhrHVguAI7jZalTBe9cAp5jFQguEFjJ1azypyMeVJMrplS2MFwyvBqPWQ', '2019-11-21 08:45:00', '2019-11-21 08:45:00'),
(20, 'IrNXBCJmypZfL', '2429918321', NULL, 'maryjohnson10507@gmail.com', '$2y$10$2og3/t.bluvZWWfwjwuTMOO9JuQv6X06lU22VbhYqGz9iM.inLaVq', '1w7tB9dyrH9AiMxfdI39j0IKPFqsje69RJpj0peYiTq6n8EVxS9jLxnCXk7A', '2019-11-26 02:32:12', '2019-11-26 02:32:12'),
(21, 'nyUQHerSMahY', '4981875368', NULL, 'mayperegrine36@gmail.com', '$2y$10$OZaikvjOdVL0JsNWINRNm.8UA7oXBjHnKQ2b7z4g1hKiDBNi5Dcja', 'ZIQAT2sTWAEhhxh1T89XBc2JznsKCFnqUatoj9WPTJLQlj9FwIWQqssWdU04', '2019-12-02 04:33:32', '2019-12-02 04:33:32'),
(22, 'Albert', '0723014032', NULL, 'info@designekta.com', '$2y$10$onKOn2TtsJrL1QWz4APjfeOxKS3eQBKsmFI7VMX86uBudAC03Ddmq', '6ibXPmuRhJzhLsiMFfh30jKFRzLsXx4qbMauzZj3EDxv6d5OvZZqDcX9TTsZ', '2019-12-11 02:17:27', '2019-12-11 02:17:27'),
(23, 'gqIEJYzpeufDFAG', '5669882744', NULL, 'jackmalone1472@gmail.com', '$2y$10$9EikPFUn0k7mK9vg4/NaIOIbuOWZ6iOD61zGJqogKwDSCb4t9EonW', 'BQkc0ru67yci89HARBXEOqy5wiwat7tfotLeq9NKMd7tLFFe1fBbHlmhSBRq', '2020-01-05 10:02:21', '2020-01-05 10:02:21'),
(24, 'FYnlCiuE', NULL, NULL, 'alexandramorgan7476@gmail.com', '$2y$10$JNmvkZRJYTUapwEYiH6g2uv/b6d00BQFCj/CVHRkYxTJTCHlXGUOO', NULL, '2020-01-08 14:57:36', '2020-01-08 14:57:36'),
(25, 'JeYstLDvVrPb', '8279505180', NULL, 'chastityhall203@gmail.com', '$2y$10$veAVT.TUpVKl5da/l4xpgeJXfq7k/PDbRF51k/9Uh8tgU8O7hhRc6', 'AfzRoQdr51DHiVHipokwLcUs0KfOLGG3cnk2y0XXTJDsNIf1VdEqyOYclBme', '2020-01-16 21:10:00', '2020-01-16 21:10:00'),
(26, 'aiKMJNxTujOBZr', '9687564389', NULL, 'lindasimpson1164@gmail.com', '$2y$10$ecQpemuYWw1RFrInRYdULOS/4QhqNhGomx9Y9WKG6G2yhq7fKeGlq', 'uYdiBSsEB0Y2vZeMEA667VSbgW8FLhXUDLR2zbqnDDf9GQJNKgt1OVUDaoah', '2020-01-23 17:14:51', '2020-01-23 17:14:51'),
(27, 'qQENJRsojf', '2543325596', NULL, 'penelopefox00@gmail.com', '$2y$10$pQOu8EQbvLPzLd35w60A7Od5jqcCi8mu4IeiqJK6FGMEGygcPOMeC', 'v6BrAuyTg6EsUnlxI3k8J0TWEFeyk8m8iQxkt6x7NqwAv6r7TUdpmqMFfGzX', '2020-01-26 23:50:00', '2020-01-26 23:50:00'),
(28, 'iwHaXbtBQGoOY', '5461935100', NULL, 'marynorton9455@gmail.com', '$2y$10$Baxq6k1d4ao5jHx2FzDAk.Vc6Vpn6A2Vxjc4h0bV20I.qLt1v24UK', 'E7NtcavxU0E2n0x1URN1opSPRz67sszb3k4unJIQKjhnJXpLTnDnPmJxnO4w', '2020-02-08 01:26:48', '2020-02-08 01:26:48'),
(29, 'Renover Realtors', NULL, 'RENOVER.jpg', 'info@renover-realtors.com', '$2y$10$9wCxwsV8Bo5MY4as5EUxguysHkTpEF8N.8nIQKbYMjK.jWVEP4Yym', NULL, '2020-03-01 09:52:57', '2020-03-01 09:52:57'),
(30, 'Sparol Solutions Group', NULL, 'sparol.jpeg', 'info@sparol.co.ke', '$2y$10$/FKzQff9TK5GnCZb5G4OwOtConO8uYLtOtvzihioRnQhGtSaHqKMG', NULL, '2020-03-01 09:53:46', '2020-03-01 09:53:46'),
(31, 'Lembani', NULL, NULL, 'lembanisakala@gmail.com', '$2y$10$Ka1LzdAllK6WoTmu/maD.ui/7us6fdMT/foJqWh7CVs.ThgmRWwem', 'kplQjTRpdPbV4xgh2jHTG17KNZeMeWE1KxI6pn4W5xNioEVltZPv8Wf5A5TQ', '2020-04-10 19:14:54', '2020-04-10 19:14:54'),
(32, 'oaKeilsGOrFp', NULL, NULL, 'pierschmbers@gmail.com', '$2y$10$NYfAF9NBMUNZmhzAa21oV.Fqc7nDczvOgjfWpqawZ0N/1Gtg/j4vS', NULL, '2020-04-20 23:38:47', '2020-04-20 23:38:47'),
(33, 'cuXUJfgkwxKQ', NULL, NULL, 'robertwhite6303@gmail.com', '$2y$10$.y7v20eszubo2UoYfnzJ8ekG9Jskpf5u0MnhW44AZzm5cktcOXSzq', NULL, '2020-04-23 12:58:59', '2020-04-23 12:58:59'),
(34, 'RYhoEkXsOyWBizgn', NULL, NULL, 'pauln1319@gmail.com', '$2y$10$OQIN32E0WEZuhFwz9Pw4Nu1kZ4XehYgkfI6mozxRfiYLg0svJzYPO', NULL, '2020-05-02 07:17:54', '2020-05-02 07:17:54'),
(35, 'MGQLAzfRjU', NULL, NULL, 'booneh037@gmail.com', '$2y$10$cJ.6oAk4XfpEL0.Hop.hy.jnZU.89HJFCfI0NaMMRjXP.Lxq43AoC', 'jZhZ41qECimMkwxf8ZIkkIrXoALL1DtaDlkJF9NWNPDG2dMYzhn2KFoPd5NK', '2020-05-18 13:11:55', '2020-05-18 13:11:55'),
(38, 'etEoSAvMpUgKOPWR', NULL, NULL, 'sibylharrell77@gmail.com', '$2y$10$iKFn6mq1/p6WO53.7VkE4.ez5wkQn64cFi4UNpClQ1bJo673tE7IG', NULL, '2020-05-20 07:09:15', '2020-05-20 07:09:15'),
(39, 'LNhuOrCPEjTG', '7465362993', NULL, 'mathewshelen7@gmail.com', '$2y$10$mT31ofLqzhynfXdD.JWRJOvdO/odd51p0v5ucyr5IxyM.KwIhcxu.', 'o5szaBjpfQzB0G4DQDd0itQn9wA6ocLfgAtTKnfjNmbnP0Jzew6xt9S4VFYJ', '2020-06-25 18:48:09', '2020-06-25 18:48:09'),
(40, 'mMapGXncbPQ', NULL, NULL, 'berryerry29@gmail.com', '$2y$10$bni1V1WMsUceOtppw3CmB.BxQmZ7ZkFS.2ldX2x7hfxqqzB7Y7gte', NULL, '2020-06-27 20:36:25', '2020-06-27 20:36:25'),
(41, 'kvqnFGEMSy', NULL, NULL, 'andrewpark1025@gmail.com', '$2y$10$9ihlJBLsBTOrvhJJWOHzz.SyL4q7ojjR4ZTFejSZXeXD0x8c4cJqG', NULL, '2020-07-03 02:26:09', '2020-07-03 02:26:09'),
(42, 'oaCJAcGZ', NULL, NULL, 'mcbridefelicity78@gmail.com', '$2y$10$qmZs8O9BNfUjhyfwJQOrj.TnUcae7VsMk.qUXA61Utd/kHGDqliO6', NULL, '2020-07-21 18:57:31', '2020-07-21 18:57:31'),
(43, 'SIoPxLnMCudRm', NULL, NULL, 'sticklandjoseph03@gmail.com', '$2y$10$VdWZADchgWeyN73mRe5vLOFz46C5hb1QmmQeGlqYjmQsFBQt0xjZu', NULL, '2020-08-13 02:51:40', '2020-08-13 02:51:40'),
(44, 'OqRhvVgMxa', NULL, NULL, 'markpayne7294@gmail.com', '$2y$10$gQgmryCded3.MOkBlmaHIOX80L7Q7i3gUjz1eBvwLFH8vqUSqQV.W', NULL, '2020-08-26 01:40:54', '2020-08-26 01:40:54'),
(45, 'mydqoPCL', NULL, NULL, 'maryatkinson8420@gmail.com', '$2y$10$Ri47w/YXKm0ZQ8HZVmj8Ce57bOWKJEct8XJm6FletcckMtPzEBOCu', NULL, '2020-09-17 11:16:38', '2020-09-17 11:16:38'),
(46, 'WQmNnuASBpcgH', NULL, NULL, 'bentragrekc@gmail.com', '$2y$10$Q50BOIJ.5uDcvWt1/IewUu/pqWKiVkmKe4extNCPAc1SfbEq/xI7e', NULL, '2020-09-29 01:13:02', '2020-09-29 01:13:02'),
(47, 'MPnSXFWiAD', NULL, NULL, 'pakukizuminaoten@gmail.com', '$2y$10$jLePd1Upok7Tb6wPBMImj.oNjj/1e0MHC4AfKXF85N3FwlTCrflwu', 'IR0Y5urpxYCOqKLBcc0LHxUWH0MG9qiP21YbW6vMjqiXAcy9GdENidFv7Mzo', '2020-10-08 11:29:50', '2020-10-08 11:29:50'),
(48, 'EtXgOkeosyZjrcV', NULL, NULL, 'okitakeikubo@gmail.com', '$2y$10$ClK1jH5n1KIxcx4XBAznwORDpivdwhT5e1F4.3.VV8pWa3YuVgk1G', NULL, '2020-10-12 10:01:26', '2020-10-12 10:01:26'),
(49, 'ALtaNkHJB', NULL, NULL, 'whoppicangj@gmail.com', '$2y$10$sq6i6m2ssJ/OXGMu81IdyueZ3vm/WxsnORr90uoHCyaZLhTgpKyQu', 'o1NGJWaRSVNf38Id9NtbyCPZvCRwChZWEVvK1m2K9xYJKDRh7RPPwQJE2TfE', '2020-10-21 00:41:49', '2020-10-21 00:41:49'),
(50, 'tRjZrgSqkLXeN', NULL, NULL, 'danielmatthews6210@gmail.com', '$2y$10$YSkN6Pqp5XOWqTmhJc/hnecOgkQH6Xcrl7s4RMD6tgsZaV3ulDkTy', 'zX6d0OmX2WNRipw6LnnBFuSqfbGg7WkfhQenvLUVE70ss7URQQ3tZZ73KLgJ', '2020-11-04 05:46:15', '2020-11-04 05:46:15'),
(51, 'OIKoPUzhNaF', NULL, NULL, 'acuantracad@gmail.com', '$2y$10$2IRGDVhC.tMuxxvr1VVg4.E4Q3nB7kVjr3IWUHt7/LpT1gDne7m2q', 'Xx8FtlrrUAfW3e7IhshgUQUHamhHDxMQnKmDR7GXgXTG6V6IWADjWLXWlp05', '2020-11-19 10:30:29', '2020-11-19 10:30:29'),
(52, 'DQxPzXiOecElowku', NULL, NULL, 'anthonyanis65@gmail.com', '$2y$10$E87tGnALH.yzMtNwTUhw7OmO7T3zI2eZmsISCVQxHWJ7OWBhSQmm2', 'RAYsb3vGjj2gbOr1JpDEjrur9xm68Oz6PPtxKwkUPd9ARAaUXa4Y6kdPh2h4', '2020-12-06 08:46:19', '2020-12-06 08:46:19'),
(53, 'ZaWdUokz', NULL, NULL, 'fhenderson676@gmail.com', '$2y$10$Kf33.YYUoBfywq9P8dIvn.0urE1NJ7AONcJoMgecWWmnks7u4go9y', 'idhawBHwSF8P6SDzK8zmhp4ifau7NoSJTxQOsP7yqGILVzfVfSYyOltQNEBK', '2020-12-21 22:09:35', '2020-12-21 22:09:35'),
(54, 'Edwin', NULL, NULL, 'ngarieddy9@gmail.com', '$2y$10$Adw1sFXecfGu1A36kyXTXeY0rMmz66k5Z99DpFg0thQdjpQymjWUi', NULL, '2021-01-14 02:54:31', '2021-01-14 02:54:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listofclients`
--
ALTER TABLE `listofclients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_settings`
--
ALTER TABLE `pages_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quoterequests`
--
ALTER TABLE `quoterequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicerequests`
--
ALTER TABLE `servicerequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_delivered`
--
ALTER TABLE `service_delivered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traceservices`
--
ALTER TABLE `traceservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofclients`
--
ALTER TABLE `listofclients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_settings`
--
ALTER TABLE `pages_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quoterequests`
--
ALTER TABLE `quoterequests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicerequests`
--
ALTER TABLE `servicerequests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_delivered`
--
ALTER TABLE `service_delivered`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traceservices`
--
ALTER TABLE `traceservices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
