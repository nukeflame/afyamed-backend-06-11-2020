-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 29, 2020 at 04:11 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AfyaMed`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role` int(11) UNSIGNED NOT NULL,
  `reg_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `surname`, `other_names`, `email`, `id_type`, `id_no`, `phone`, `user_id`, `role`, `reg_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ken', 'Peters', 'ken@gmail.com', 11, '35281222', '0700412127', 1, 1, 1, NULL, NULL, '2020-02-22 11:19:33'),
(2, 'John', 'Doe', 'johndoe@gmail.com', 3523838, '3523838', '0700412127', 2, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_settings`
--

CREATE TABLE `customize_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divider` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customize_settings`
--

INSERT INTO `customize_settings` (`id`, `name`, `slug`, `divider`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 0, NULL, NULL),
(2, 'History', 'history', 0, NULL, NULL),
(3, 'Timeline', 'timeline', 0, NULL, NULL),
(4, 'Triage', 'triage', 0, NULL, NULL),
(5, 'Nurses Notes', 'nurseNotes', 0, NULL, NULL),
(6, 'Consultations', 'consultations', 1, NULL, NULL),
(7, 'Documents', 'documents', 0, NULL, NULL),
(8, 'Images', 'images', 0, NULL, NULL),
(9, 'Forms', 'Forms', 1, NULL, NULL),
(10, 'Prescriptions', 'prescriptions', 0, NULL, NULL),
(11, 'Treatment Plan', 'treatment_plan', 1, NULL, NULL),
(12, 'Billing', 'billing', 1, NULL, NULL),
(13, 'Pharmacy', 'pharmacy', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administration', 1, NULL, NULL),
(2, 'Reception', 1, NULL, NULL),
(3, 'Triage', 1, NULL, NULL),
(4, 'Consultation 1', 1, NULL, NULL),
(5, 'Laboratory', 1, NULL, NULL),
(6, 'Radiology', 1, NULL, NULL),
(7, 'Pharmacy', 1, NULL, NULL),
(8, 'Cash Office', 1, NULL, NULL),
(9, 'Billing Office', 1, NULL, NULL),
(10, 'Theatre', 1, NULL, NULL),
(11, 'Nursing Station', 1, NULL, NULL),
(12, 'Matron', 1, NULL, NULL),
(13, 'Oncology', 1, NULL, NULL),
(14, 'Cardiology', 1, NULL, NULL),
(15, 'Morgue Reception', 1, NULL, NULL),
(16, 'Dental Room', 1, NULL, NULL),
(17, 'Special Clinics', 1, NULL, NULL),
(18, 'Nutrition', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'redis', 'default', '{\"type\":\"notification\",\"timeout\":null,\"tags\":{},\"id\":\"2243\",\"data\":{\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\Patient\\\\AdmittedNotification\\\":9:{s:7:\\\"patient\\\";N;s:2:\\\"id\\\";s:36:\\\"313bf55b-7cc2-445a-b807-6049ea878ee8\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\",\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\"},\"displayName\":\"App\\\\Notifications\\\\Patient\\\\AdmittedNotification\",\"timeoutAt\":null,\"pushedAt\":\"1568494068.9829\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"attempts\":2}', 'ErrorException: Undefined variable: patient in /var/www/html/react/jochamAfyaMed/backend/app/Notifications/Patient/AdmittedNotification.php:61\nStack trace:\n#0 /var/www/html/react/jochamAfyaMed/backend/app/Notifications/Patient/AdmittedNotification.php(61): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 61, Array)\n#1 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(41): App\\Notifications\\Patient\\AdmittedNotification->toArray(Object(App\\User))\n#2 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(59): Illuminate\\Notifications\\Channels\\DatabaseChannel->getData(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#3 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(20): Illuminate\\Notifications\\Channels\\DatabaseChannel->buildPayload(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#4 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(144): Illuminate\\Notifications\\Channels\\DatabaseChannel->send(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#5 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(103): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\User), \'3229bd57-46b1-4...\', Object(App\\Notifications\\Patient\\AdmittedNotification), \'database\')\n#6 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#7 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\Patient\\AdmittedNotification), Array)\n#9 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(73): Illuminate\\Notifications\\ChannelManager->sendNow(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification), Array)\n#10 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#11 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#12 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(576): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#17 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#18 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#20 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#21 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(337): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(283): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(102): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(86): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#26 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#28 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#29 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(576): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(183): Illuminate\\Container\\Container->call(Array)\n#33 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(915): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(90): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(133): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /var/www/html/react/jochamAfyaMed/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 {main}', '2019-09-14 20:47:49'),
(2, 'redis', 'default', '{\"type\":\"notification\",\"timeout\":null,\"tags\":{},\"id\":\"2244\",\"data\":{\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\Patient\\\\AdmittedNotification\\\":9:{s:7:\\\"patient\\\";N;s:2:\\\"id\\\";s:36:\\\"6d341c6b-b6eb-4069-86fc-c9b16a8f36bf\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\",\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\"},\"displayName\":\"App\\\\Notifications\\\\Patient\\\\AdmittedNotification\",\"timeoutAt\":null,\"pushedAt\":\"1568494068.9913\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"attempts\":2}', 'ErrorException: Undefined variable: patient in /var/www/html/react/jochamAfyaMed/backend/app/Notifications/Patient/AdmittedNotification.php:61\nStack trace:\n#0 /var/www/html/react/jochamAfyaMed/backend/app/Notifications/Patient/AdmittedNotification.php(61): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/html/r...\', 61, Array)\n#1 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(41): App\\Notifications\\Patient\\AdmittedNotification->toArray(Object(App\\User))\n#2 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(59): Illuminate\\Notifications\\Channels\\DatabaseChannel->getData(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#3 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/Channels/DatabaseChannel.php(20): Illuminate\\Notifications\\Channels\\DatabaseChannel->buildPayload(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#4 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(144): Illuminate\\Notifications\\Channels\\DatabaseChannel->send(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification))\n#5 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(103): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(App\\User), \'8675ec3a-e1a6-4...\', Object(App\\Notifications\\Patient\\AdmittedNotification), \'database\')\n#6 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#7 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#8 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Object(Illuminate\\Database\\Eloquent\\Collection), Object(App\\Notifications\\Patient\\AdmittedNotification), Array)\n#9 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(73): Illuminate\\Notifications\\ChannelManager->sendNow(Object(App\\User), Object(App\\Notifications\\Patient\\AdmittedNotification), Array)\n#10 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#11 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#12 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(576): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#17 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#18 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#20 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#21 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(337): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(283): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(102): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(86): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#26 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/horizon/src/Console/WorkCommand.php(46): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 [internal function]: Laravel\\Horizon\\Console\\WorkCommand->handle()\n#28 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#29 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#30 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Container/Container.php(576): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(183): Illuminate\\Container\\Container->call(Array)\n#33 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(915): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Laravel\\Horizon\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 /var/www/html/react/jochamAfyaMed/backend/vendor/symfony/console/Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Console/Application.php(90): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /var/www/html/react/jochamAfyaMed/backend/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(133): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /var/www/html/react/jochamAfyaMed/backend/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 {main}', '2019-09-14 20:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_code` varchar(255) NOT NULL,
  `hospital_id` varchar(255) NOT NULL,
  `hospital_url` varchar(255) NOT NULL DEFAULT 'N/A',
  `address` varchar(100) NOT NULL DEFAULT 'N/A',
  `telephone` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL DEFAULT 'N/A',
  `email` varchar(100) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `profile_logo` varchar(100) NOT NULL DEFAULT 'N/A',
  `hashed` varchar(255) NOT NULL,
  `completion_status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital_name`, `hospital_code`, `hospital_id`, `hospital_url`, `address`, `telephone`, `location`, `email`, `client_id`, `is_active`, `profile_logo`, `hashed`, `completion_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Demo  Hospital', 'demo', '1', 'N/A', 'N/A', '0700412127', 'N/A', NULL, 1, 2, 'N/A', '22', 0, NULL, '2019-11-03 12:28:00', '2019-11-03 12:28:00'),
(2, 'Machakos Level B', 'demo2', 'KDIE4', 'N/A', 'N/A', '', 'N/A', 'info@machaleveb.com', 2, 1, 'N/A', '11', 0, NULL, '2019-12-14 22:06:17', '2019-12-14 22:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_branches`
--

CREATE TABLE `hospital_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_telephone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_is_active` tinyint(1) NOT NULL,
  `hospital_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_branches`
--

INSERT INTO `hospital_branches` (`id`, `branch_name`, `branch_url`, `branch_address`, `branch_location`, `branch_email`, `branch_telephone`, `branch_is_active`, `hospital_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Main Branch', '---', '---', '---', '---', '---', 0, '0', NULL, NULL, NULL),
(2, 'Mkuyuni Demo Hospital ', 'mkuyuni.demohospital.com', '', 'Lamu', 'mkuyuni.hospital@demo.com', '+254721456129', 0, '1', NULL, NULL, NULL),
(3, 'Refferal Machakos', '2', '2', '2', 'refferal@gmail.com', NULL, 1, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_roles`
--

CREATE TABLE `hospital_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `hospital_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_roles`
--

INSERT INTO `hospital_roles` (`id`, `hospital_id`, `role_id`, `is_active`, `hospital_branch_id`, `created_at`, `updated_at`) VALUES
(7, 2, 17, 0, NULL, NULL, NULL),
(8, 2, 18, 0, NULL, NULL, NULL),
(9, 2, 4, 0, NULL, NULL, NULL),
(10, 2, 5, 0, NULL, NULL, NULL),
(11, 2, 8, 1, NULL, NULL, NULL),
(12, 2, 3, 1, NULL, NULL, NULL),
(13, 1, 19, 1, NULL, NULL, NULL),
(14, 1, 20, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `identifications`
--

CREATE TABLE `identifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identifications`
--

INSERT INTO `identifications` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'National Identity Card', 'nation_id', NULL, NULL),
(2, 'Alien\'s Card', 'alien_card', NULL, NULL),
(3, 'Passport', 'passport', NULL, NULL),
(5, 'Military Id', 'military_id', NULL, NULL),
(6, 'Birth Certificate Id', 'birth_id', NULL, NULL),
(7, 'Driving License', 'driving_license', NULL, NULL),
(8, 'Student Id', 'student_id', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ipd_details`
--

CREATE TABLE `ipd_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `height` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `ipd_no` varchar(200) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `bed_group_id` varchar(10) DEFAULT NULL,
  `case_type` varchar(100) NOT NULL,
  `casualty` varchar(100) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `refference` varchar(200) NOT NULL,
  `cons_doctor` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_09_04_085635_create_users_table', 2),
(9, '2019_09_04_102634_create_notifications_table', 3),
(10, '2019_09_04_104346_create_roles_table', 4),
(11, '2019_09_04_104440_create_roles_permission_table', 4),
(12, '2019_09_04_135519_create_user_roles_table', 5),
(13, '2019_09_12_003838_create_failed_jobs_table', 6),
(14, '2019_09_14_122551_create_patients_table', 7),
(15, '2019_09_14_124031_create_patient_details_table', 8),
(16, '2019_10_01_170328_create_hospital_branches_table', 9),
(17, '2019_10_02_135714_create_permissions_table', 10),
(18, '2019_10_06_153604_create_clients_table', 11),
(19, '2019_10_13_215824_create_queues_table', 12),
(20, '2019_10_13_221013_create_departments_table', 13),
(21, '2019_10_15_001003_create_towns_table', 14),
(22, '2019_10_15_001219_create_countries_table', 15),
(23, '2019_10_22_012204_create_permission_groups_table', 16),
(24, '2019_10_22_012230_create_permission_categories_table', 16),
(27, '2019_10_22_013340_create_roles_permissions_table', 17),
(28, '2019_10_25_194052_create_modules_table', 17),
(29, '2019_10_27_012231_create_positions_table', 18),
(30, '2019_10_27_012305_create_identifications_table', 18),
(31, '2020_01_07_233425_create_room_status_table', 19),
(33, '2020_02_27_174909_create_customize_settings_table', 20),
(34, '2020_02_28_171207_create_user_customizes_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Medical Records', 'medical_records', NULL, NULL),
(2, 'Laboratory', 'laboratory', NULL, NULL),
(3, 'Accounts', 'accounts', NULL, NULL),
(4, 'Financial', 'financial', NULL, NULL),
(5, 'Imaging', 'imaging', NULL, NULL),
(6, 'Human Resource', 'human_resource', NULL, NULL),
(7, 'Maternity', 'maternity', NULL, NULL),
(8, 'Operation Theatre', 'operation_theatre', NULL, NULL),
(9, 'Morgue', 'morgue', NULL, NULL),
(10, 'Procurement', 'procurement', NULL, NULL),
(11, 'Inventory', 'inventory', NULL, NULL),
(12, 'Reports', 'reports', NULL, NULL),
(13, 'Client', 'client_module', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_permission`
--

CREATE TABLE `modules_permission` (
  `id` int(11) NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules_permission`
--

INSERT INTO `modules_permission` (`id`, `module_id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(3, 1, 1, '2020-02-22 10:46:02', '2020-02-22 10:46:02'),
(23, 13, 1, '2020-02-23 09:08:07', '2020-02-23 09:08:07'),
(24, 13, 1, '2020-02-23 09:10:21', '2020-02-23 09:10:21'),
(25, 13, 1, '2020-02-23 09:22:50', '2020-02-23 09:22:50'),
(26, 13, 1, '2020-02-23 09:25:34', '2020-02-23 09:25:34'),
(27, 13, 1, '2020-02-23 10:15:28', '2020-02-23 10:15:28'),
(28, 13, 1, '2020-02-23 10:16:55', '2020-02-23 10:16:55'),
(29, 13, 1, '2020-02-23 10:18:22', '2020-02-23 10:18:22'),
(30, 13, 1, '2020-02-23 10:18:28', '2020-02-23 10:18:28'),
(31, 13, 1, '2020-02-23 10:23:25', '2020-02-23 10:23:25'),
(32, 13, 1, '2020-02-23 10:26:10', '2020-02-23 10:26:10'),
(33, 13, 1, '2020-02-23 10:29:41', '2020-02-23 10:29:41'),
(34, 13, 1, '2020-02-23 10:32:39', '2020-02-23 10:32:39'),
(35, 13, 1, '2020-02-23 10:33:11', '2020-02-23 10:33:11'),
(36, 13, 1, '2020-02-23 10:33:59', '2020-02-23 10:33:59'),
(37, 13, 1, '2020-02-23 10:34:55', '2020-02-23 10:34:55'),
(38, 13, 1, '2020-02-23 10:37:55', '2020-02-23 10:37:55'),
(39, 13, 1, '2020-02-23 10:38:55', '2020-02-23 10:38:55'),
(40, 13, 1, '2020-02-23 10:39:03', '2020-02-23 10:39:03'),
(41, 13, 1, '2020-02-23 10:41:52', '2020-02-23 10:41:52'),
(42, 13, 1, '2020-02-23 10:44:19', '2020-02-23 10:44:19'),
(43, 13, 1, '2020-02-23 10:45:30', '2020-02-23 10:45:30'),
(44, 13, 1, '2020-02-23 10:51:45', '2020-02-23 10:51:45'),
(45, 13, 1, '2020-02-23 10:53:04', '2020-02-23 10:53:04'),
(46, 13, 1, '2020-02-23 10:56:35', '2020-02-23 10:56:35'),
(47, 13, 1, '2020-02-23 10:59:02', '2020-02-23 10:59:02'),
(48, 13, 1, '2020-02-23 11:44:49', '2020-02-23 11:44:49'),
(49, 13, 1, '2020-02-23 11:45:22', '2020-02-23 11:45:22'),
(50, 13, 1, '2020-02-23 11:46:01', '2020-02-23 11:46:01'),
(51, 13, 1, '2020-02-23 11:46:12', '2020-02-23 11:46:12'),
(52, 13, 1, '2020-02-23 11:49:17', '2020-02-23 11:49:17'),
(53, 13, 1, '2020-02-23 11:49:56', '2020-02-23 11:49:56'),
(54, 13, 1, '2020-02-23 11:50:46', '2020-02-23 11:50:46'),
(55, 13, 1, '2020-02-23 11:51:09', '2020-02-23 11:51:09'),
(56, 13, 1, '2020-02-23 11:52:08', '2020-02-23 11:52:08'),
(57, 13, 1, '2020-02-23 11:52:34', '2020-02-23 11:52:34'),
(58, 13, 1, '2020-02-23 11:53:09', '2020-02-23 11:53:09'),
(59, 13, 1, '2020-02-23 11:54:05', '2020-02-23 11:54:05'),
(60, 13, 1, '2020-02-23 11:54:51', '2020-02-23 11:54:51'),
(61, 13, 1, '2020-02-23 11:55:19', '2020-02-23 11:55:19'),
(62, 13, 1, '2020-02-23 11:55:25', '2020-02-23 11:55:25'),
(63, 13, 1, '2020-02-23 11:55:53', '2020-02-23 11:55:53'),
(64, 13, 1, '2020-02-23 11:59:16', '2020-02-23 11:59:16'),
(65, 13, 1, '2020-02-23 12:01:01', '2020-02-23 12:01:01'),
(66, 13, 1, '2020-02-23 12:01:41', '2020-02-23 12:01:41'),
(67, 13, 1, '2020-02-23 12:06:49', '2020-02-23 12:06:49'),
(68, 13, 1, '2020-02-23 12:07:40', '2020-02-23 12:07:40'),
(69, 13, 1, '2020-02-23 12:09:11', '2020-02-23 12:09:11'),
(70, 13, 1, '2020-02-23 12:09:19', '2020-02-23 12:09:19'),
(71, 13, 1, '2020-02-23 12:12:17', '2020-02-23 12:12:17'),
(72, 13, 1, '2020-02-23 12:14:58', '2020-02-23 12:14:58'),
(73, 13, 1, '2020-02-23 12:18:03', '2020-02-23 12:18:03'),
(74, 13, 1, '2020-02-23 12:19:00', '2020-02-23 12:19:00'),
(75, 13, 1, '2020-02-23 12:21:38', '2020-02-23 12:21:38'),
(76, 13, 1, '2020-02-23 12:23:16', '2020-02-23 12:23:16'),
(77, 13, 1, '2020-02-23 12:25:20', '2020-02-23 12:25:20'),
(78, 13, 1, '2020-02-23 12:27:54', '2020-02-23 12:27:54'),
(79, 13, 1, '2020-02-23 12:29:56', '2020-02-23 12:29:56'),
(80, 13, 1, '2020-02-23 12:36:55', '2020-02-23 12:36:55'),
(81, 13, 1, '2020-02-23 12:37:32', '2020-02-23 12:37:32'),
(82, 13, 1, '2020-02-23 12:52:32', '2020-02-23 12:52:32'),
(83, 13, 1, '2020-02-23 13:12:07', '2020-02-23 13:12:07'),
(84, 13, 1, '2020-02-23 13:13:53', '2020-02-23 13:13:53'),
(85, 13, 1, '2020-02-23 13:15:41', '2020-02-23 13:15:41'),
(86, 13, 1, '2020-02-23 13:17:14', '2020-02-23 13:17:14'),
(87, 13, 1, '2020-02-23 13:20:45', '2020-02-23 13:20:45'),
(88, 13, 1, '2020-02-23 13:23:21', '2020-02-23 13:23:21'),
(89, 13, 1, '2020-02-23 13:32:27', '2020-02-23 13:32:27'),
(90, 13, 1, '2020-02-23 13:34:08', '2020-02-23 13:34:08'),
(91, 13, 1, '2020-02-23 13:34:37', '2020-02-23 13:34:37'),
(92, 13, 1, '2020-02-23 20:54:09', '2020-02-23 20:54:09'),
(93, 13, 1, '2020-02-23 22:00:47', '2020-02-23 22:00:47'),
(94, 13, 1, '2020-02-23 22:00:54', '2020-02-23 22:00:54'),
(95, 13, 1, '2020-02-23 22:00:58', '2020-02-23 22:00:58'),
(96, 13, 1, '2020-02-23 22:02:08', '2020-02-23 22:02:08'),
(97, 13, 1, '2020-02-23 22:14:47', '2020-02-23 22:14:47'),
(98, 13, 1, '2020-02-23 22:19:52', '2020-02-23 22:19:52'),
(99, 13, 1, '2020-02-24 09:47:42', '2020-02-24 09:47:42'),
(100, 13, 1, '2020-02-24 10:27:15', '2020-02-24 10:27:15'),
(101, 13, 1, '2020-02-24 11:23:56', '2020-02-24 11:23:56'),
(102, 13, 1, '2020-02-24 11:30:52', '2020-02-24 11:30:52'),
(103, 13, 1, '2020-02-24 11:32:45', '2020-02-24 11:32:45'),
(104, 13, 1, '2020-02-24 11:35:45', '2020-02-24 11:35:45'),
(105, 13, 1, '2020-02-24 11:42:07', '2020-02-24 11:42:07'),
(106, 13, 1, '2020-02-24 11:44:29', '2020-02-24 11:44:29'),
(107, 13, 1, '2020-02-24 11:45:49', '2020-02-24 11:45:49'),
(108, 13, 1, '2020-02-24 11:46:20', '2020-02-24 11:46:20'),
(109, 13, 1, '2020-02-24 11:47:16', '2020-02-24 11:47:16'),
(110, 13, 1, '2020-02-24 11:48:18', '2020-02-24 11:48:18'),
(111, 13, 1, '2020-02-24 11:49:39', '2020-02-24 11:49:39'),
(112, 13, 1, '2020-02-24 11:52:16', '2020-02-24 11:52:16'),
(113, 13, 1, '2020-02-24 11:53:52', '2020-02-24 11:53:52'),
(114, 13, 1, '2020-02-24 11:55:34', '2020-02-24 11:55:34'),
(115, 13, 1, '2020-02-24 11:56:09', '2020-02-24 11:56:09'),
(116, 13, 1, '2020-02-24 11:57:39', '2020-02-24 11:57:39'),
(117, 13, 1, '2020-02-24 11:59:22', '2020-02-24 11:59:22'),
(118, 13, 1, '2020-02-24 12:00:21', '2020-02-24 12:00:21'),
(119, 13, 1, '2020-02-24 12:01:32', '2020-02-24 12:01:32'),
(120, 13, 1, '2020-02-24 12:04:38', '2020-02-24 12:04:38'),
(121, 13, 1, '2020-02-24 12:05:11', '2020-02-24 12:05:11'),
(122, 13, 1, '2020-02-24 12:05:30', '2020-02-24 12:05:30'),
(123, 13, 1, '2020-02-24 12:06:13', '2020-02-24 12:06:13'),
(124, 13, 1, '2020-02-24 12:06:50', '2020-02-24 12:06:50'),
(125, 13, 1, '2020-02-24 12:07:55', '2020-02-24 12:07:55'),
(126, 13, 1, '2020-02-24 12:09:34', '2020-02-24 12:09:34'),
(127, 13, 1, '2020-02-24 12:11:23', '2020-02-24 12:11:23'),
(128, 13, 1, '2020-02-24 12:13:09', '2020-02-24 12:13:09'),
(129, 13, 1, '2020-02-24 12:16:12', '2020-02-24 12:16:12'),
(130, 13, 1, '2020-02-24 12:25:04', '2020-02-24 12:25:04'),
(131, 13, 1, '2020-02-24 12:29:36', '2020-02-24 12:29:36'),
(132, 13, 1, '2020-02-24 12:30:20', '2020-02-24 12:30:20'),
(133, 13, 1, '2020-02-24 12:31:38', '2020-02-24 12:31:38'),
(134, 13, 1, '2020-02-24 12:32:08', '2020-02-24 12:32:08'),
(135, 13, 1, '2020-02-24 12:32:54', '2020-02-24 12:32:54'),
(136, 13, 1, '2020-02-24 12:33:48', '2020-02-24 12:33:48'),
(137, 13, 1, '2020-02-24 12:34:08', '2020-02-24 12:34:08'),
(138, 13, 1, '2020-02-24 12:34:33', '2020-02-24 12:34:33'),
(139, 13, 1, '2020-02-24 12:35:00', '2020-02-24 12:35:00'),
(140, 13, 1, '2020-02-24 12:36:01', '2020-02-24 12:36:01'),
(141, 13, 1, '2020-02-24 12:38:46', '2020-02-24 12:38:46'),
(142, 13, 1, '2020-02-24 12:38:59', '2020-02-24 12:38:59'),
(143, 13, 1, '2020-02-24 12:41:12', '2020-02-24 12:41:12'),
(144, 13, 1, '2020-02-24 12:44:29', '2020-02-24 12:44:29'),
(145, 13, 1, '2020-02-24 12:49:01', '2020-02-24 12:49:01'),
(146, 13, 1, '2020-02-24 13:01:18', '2020-02-24 13:01:18'),
(147, 13, 1, '2020-02-24 13:06:24', '2020-02-24 13:06:24'),
(148, 13, 1, '2020-02-24 13:06:30', '2020-02-24 13:06:30'),
(149, 13, 1, '2020-02-24 13:08:38', '2020-02-24 13:08:38'),
(150, 13, 1, '2020-02-24 13:11:41', '2020-02-24 13:11:41'),
(151, 13, 1, '2020-02-24 13:11:42', '2020-02-24 13:11:42'),
(152, 13, 1, '2020-02-24 13:13:06', '2020-02-24 13:13:06'),
(153, 13, 1, '2020-02-24 13:18:11', '2020-02-24 13:18:11'),
(154, 13, 1, '2020-02-24 20:04:56', '2020-02-24 20:04:56'),
(155, 13, 1, '2020-02-25 09:41:11', '2020-02-25 09:41:11'),
(156, 13, 1, '2020-02-25 09:43:12', '2020-02-25 09:43:12'),
(157, 13, 1, '2020-02-25 09:43:41', '2020-02-25 09:43:41'),
(158, 13, 1, '2020-02-25 09:45:59', '2020-02-25 09:45:59'),
(159, 13, 1, '2020-02-25 09:46:08', '2020-02-25 09:46:08'),
(160, 13, 1, '2020-02-25 09:46:11', '2020-02-25 09:46:11'),
(161, 13, 1, '2020-02-25 09:46:29', '2020-02-25 09:46:29'),
(162, 13, 1, '2020-02-25 09:47:17', '2020-02-25 09:47:17'),
(163, 13, 1, '2020-02-25 09:47:20', '2020-02-25 09:47:20'),
(164, 13, 1, '2020-02-25 09:48:46', '2020-02-25 09:48:46'),
(165, 13, 1, '2020-02-25 09:48:49', '2020-02-25 09:48:49'),
(166, 13, 1, '2020-02-25 10:03:43', '2020-02-25 10:03:43'),
(167, 13, 1, '2020-02-25 10:05:23', '2020-02-25 10:05:23'),
(168, 13, 1, '2020-02-25 10:05:51', '2020-02-25 10:05:51'),
(169, 13, 1, '2020-02-25 10:06:02', '2020-02-25 10:06:02'),
(170, 13, 1, '2020-02-25 10:07:43', '2020-02-25 10:07:43'),
(171, 13, 1, '2020-02-25 10:14:22', '2020-02-25 10:14:22'),
(172, 13, 1, '2020-02-25 10:24:56', '2020-02-25 10:24:56'),
(173, 13, 1, '2020-02-25 10:26:04', '2020-02-25 10:26:04'),
(174, 13, 1, '2020-02-25 10:31:45', '2020-02-25 10:31:45'),
(175, 13, 1, '2020-02-25 10:31:47', '2020-02-25 10:31:47'),
(176, 13, 1, '2020-02-25 10:33:13', '2020-02-25 10:33:13'),
(177, 13, 1, '2020-02-25 10:33:33', '2020-02-25 10:33:33'),
(178, 13, 1, '2020-02-25 10:35:30', '2020-02-25 10:35:30'),
(179, 13, 1, '2020-02-25 10:36:02', '2020-02-25 10:36:02'),
(180, 13, 1, '2020-02-25 10:38:34', '2020-02-25 10:38:34'),
(181, 13, 1, '2020-02-25 10:44:10', '2020-02-25 10:44:10'),
(182, 13, 1, '2020-02-25 10:45:32', '2020-02-25 10:45:32'),
(183, 13, 1, '2020-02-25 10:50:42', '2020-02-25 10:50:42'),
(184, 13, 1, '2020-02-25 10:50:48', '2020-02-25 10:50:48'),
(185, 13, 1, '2020-02-25 10:53:48', '2020-02-25 10:53:48'),
(186, 13, 1, '2020-02-25 10:55:09', '2020-02-25 10:55:09'),
(187, 13, 1, '2020-02-25 10:55:17', '2020-02-25 10:55:17'),
(188, 13, 1, '2020-02-25 10:58:00', '2020-02-25 10:58:00'),
(189, 13, 1, '2020-02-25 11:01:21', '2020-02-25 11:01:21'),
(190, 13, 1, '2020-02-25 11:01:42', '2020-02-25 11:01:42'),
(191, 13, 1, '2020-02-25 11:03:23', '2020-02-25 11:03:23'),
(192, 13, 1, '2020-02-25 11:04:20', '2020-02-25 11:04:20'),
(193, 13, 1, '2020-02-25 11:05:57', '2020-02-25 11:05:57'),
(194, 13, 1, '2020-02-25 11:06:08', '2020-02-25 11:06:08'),
(195, 13, 1, '2020-02-25 11:08:05', '2020-02-25 11:08:05'),
(196, 13, 1, '2020-02-25 11:08:14', '2020-02-25 11:08:14'),
(197, 13, 1, '2020-02-25 11:10:03', '2020-02-25 11:10:03'),
(198, 13, 1, '2020-02-25 11:13:18', '2020-02-25 11:13:18'),
(199, 13, 1, '2020-02-25 11:15:01', '2020-02-25 11:15:01'),
(200, 13, 1, '2020-02-25 11:15:34', '2020-02-25 11:15:34'),
(201, 13, 1, '2020-02-25 11:18:17', '2020-02-25 11:18:17'),
(202, 13, 1, '2020-02-25 11:19:10', '2020-02-25 11:19:10'),
(203, 13, 1, '2020-02-25 11:21:29', '2020-02-25 11:21:29'),
(204, 13, 1, '2020-02-25 11:24:06', '2020-02-25 11:24:06'),
(205, 13, 1, '2020-02-25 11:24:12', '2020-02-25 11:24:12'),
(206, 13, 1, '2020-02-25 11:25:21', '2020-02-25 11:25:21'),
(207, 13, 1, '2020-02-25 11:25:48', '2020-02-25 11:25:48'),
(208, 13, 1, '2020-02-25 11:26:06', '2020-02-25 11:26:06'),
(209, 13, 1, '2020-02-25 11:27:13', '2020-02-25 11:27:13'),
(210, 13, 1, '2020-02-25 11:27:53', '2020-02-25 11:27:53'),
(211, 13, 1, '2020-02-25 11:30:14', '2020-02-25 11:30:14'),
(212, 13, 1, '2020-02-25 11:32:20', '2020-02-25 11:32:20'),
(213, 13, 1, '2020-02-25 11:33:07', '2020-02-25 11:33:07'),
(214, 13, 1, '2020-02-25 11:34:10', '2020-02-25 11:34:10'),
(215, 13, 1, '2020-02-25 11:35:26', '2020-02-25 11:35:26'),
(216, 13, 1, '2020-02-25 12:05:46', '2020-02-25 12:05:46'),
(217, 13, 1, '2020-02-25 12:05:53', '2020-02-25 12:05:53'),
(218, 13, 1, '2020-02-25 12:08:35', '2020-02-25 12:08:35'),
(219, 13, 1, '2020-02-25 12:09:42', '2020-02-25 12:09:42'),
(220, 13, 1, '2020-02-25 15:17:42', '2020-02-25 15:17:42'),
(221, 13, 1, '2020-02-25 15:19:31', '2020-02-25 15:19:31'),
(222, 13, 1, '2020-02-25 17:10:11', '2020-02-25 17:10:11'),
(223, 13, 1, '2020-02-25 17:16:47', '2020-02-25 17:16:47'),
(224, 13, 1, '2020-02-25 17:24:34', '2020-02-25 17:24:34'),
(225, 13, 1, '2020-02-25 17:26:41', '2020-02-25 17:26:41'),
(226, 13, 1, '2020-02-25 17:41:01', '2020-02-25 17:41:01'),
(227, 13, 1, '2020-02-25 17:43:15', '2020-02-25 17:43:15'),
(228, 13, 1, '2020-02-25 17:46:01', '2020-02-25 17:46:01'),
(229, 13, 1, '2020-02-25 17:46:53', '2020-02-25 17:46:53'),
(230, 13, 1, '2020-02-25 17:51:02', '2020-02-25 17:51:02'),
(231, 13, 1, '2020-02-25 17:51:21', '2020-02-25 17:51:21'),
(232, 13, 1, '2020-02-25 17:52:08', '2020-02-25 17:52:08'),
(233, 13, 1, '2020-02-25 17:52:26', '2020-02-25 17:52:26'),
(234, 13, 1, '2020-02-25 17:54:17', '2020-02-25 17:54:17'),
(235, 13, 1, '2020-02-25 17:55:26', '2020-02-25 17:55:26'),
(236, 13, 1, '2020-02-25 17:55:43', '2020-02-25 17:55:43'),
(237, 13, 1, '2020-02-25 17:56:11', '2020-02-25 17:56:11'),
(238, 13, 1, '2020-02-25 17:57:36', '2020-02-25 17:57:36'),
(239, 13, 1, '2020-02-25 17:58:54', '2020-02-25 17:58:54'),
(240, 13, 1, '2020-02-25 17:59:08', '2020-02-25 17:59:08'),
(241, 13, 1, '2020-02-25 18:01:28', '2020-02-25 18:01:28'),
(242, 13, 1, '2020-02-25 18:01:59', '2020-02-25 18:01:59'),
(243, 13, 1, '2020-02-25 18:02:06', '2020-02-25 18:02:06'),
(244, 13, 1, '2020-02-25 20:28:08', '2020-02-25 20:28:08'),
(245, 13, 1, '2020-02-25 20:31:30', '2020-02-25 20:31:30'),
(246, 13, 1, '2020-02-25 20:37:09', '2020-02-25 20:37:09'),
(247, 13, 1, '2020-02-25 20:37:12', '2020-02-25 20:37:12'),
(248, 13, 1, '2020-02-25 20:37:33', '2020-02-25 20:37:33'),
(249, 13, 1, '2020-02-25 20:42:27', '2020-02-25 20:42:27'),
(250, 13, 1, '2020-02-25 20:55:42', '2020-02-25 20:55:42'),
(251, 13, 1, '2020-02-25 20:56:05', '2020-02-25 20:56:05'),
(252, 13, 1, '2020-02-25 21:02:18', '2020-02-25 21:02:18'),
(253, 13, 1, '2020-02-25 21:05:26', '2020-02-25 21:05:26'),
(254, 13, 1, '2020-02-25 21:06:14', '2020-02-25 21:06:14'),
(255, 13, 1, '2020-02-25 21:07:17', '2020-02-25 21:07:17'),
(256, 13, 1, '2020-02-25 21:07:24', '2020-02-25 21:07:24'),
(257, 13, 1, '2020-02-25 21:09:53', '2020-02-25 21:09:53'),
(258, 13, 1, '2020-02-25 21:10:16', '2020-02-25 21:10:16'),
(259, 13, 1, '2020-02-25 21:14:11', '2020-02-25 21:14:11'),
(260, 13, 1, '2020-02-25 21:15:43', '2020-02-25 21:15:43'),
(261, 13, 1, '2020-02-25 21:17:33', '2020-02-25 21:17:33'),
(262, 13, 1, '2020-02-25 21:18:07', '2020-02-25 21:18:07'),
(263, 13, 1, '2020-02-25 21:19:53', '2020-02-25 21:19:53'),
(264, 13, 1, '2020-02-25 21:21:21', '2020-02-25 21:21:21'),
(265, 13, 1, '2020-02-25 21:21:34', '2020-02-25 21:21:34'),
(266, 13, 1, '2020-02-25 21:21:51', '2020-02-25 21:21:51'),
(267, 13, 1, '2020-02-25 21:22:31', '2020-02-25 21:22:31'),
(268, 13, 1, '2020-02-25 21:23:04', '2020-02-25 21:23:04'),
(269, 13, 1, '2020-02-25 21:24:36', '2020-02-25 21:24:36'),
(270, 13, 1, '2020-02-25 21:25:17', '2020-02-25 21:25:17'),
(271, 13, 1, '2020-02-25 21:27:18', '2020-02-25 21:27:18'),
(272, 13, 1, '2020-02-25 21:29:42', '2020-02-25 21:29:42'),
(273, 13, 1, '2020-02-25 21:34:21', '2020-02-25 21:34:21'),
(274, 13, 1, '2020-02-25 21:35:14', '2020-02-25 21:35:14'),
(275, 13, 1, '2020-02-25 21:35:46', '2020-02-25 21:35:46'),
(276, 13, 1, '2020-02-25 21:36:01', '2020-02-25 21:36:01'),
(277, 13, 1, '2020-02-25 21:36:45', '2020-02-25 21:36:45'),
(278, 13, 1, '2020-02-25 21:37:16', '2020-02-25 21:37:16'),
(279, 13, 1, '2020-02-25 21:37:38', '2020-02-25 21:37:38'),
(280, 13, 1, '2020-02-25 21:51:12', '2020-02-25 21:51:12'),
(281, 13, 1, '2020-02-25 21:56:36', '2020-02-25 21:56:36'),
(282, 13, 1, '2020-02-25 21:59:12', '2020-02-25 21:59:12'),
(283, 13, 1, '2020-02-25 22:03:47', '2020-02-25 22:03:47'),
(284, 13, 1, '2020-02-25 22:05:25', '2020-02-25 22:05:25'),
(285, 13, 1, '2020-02-25 22:05:39', '2020-02-25 22:05:39'),
(286, 13, 1, '2020-02-25 22:08:05', '2020-02-25 22:08:05'),
(287, 13, 1, '2020-02-25 22:08:19', '2020-02-25 22:08:19'),
(288, 13, 1, '2020-02-25 22:16:15', '2020-02-25 22:16:15'),
(289, 13, 1, '2020-02-25 22:16:57', '2020-02-25 22:16:57'),
(290, 13, 1, '2020-02-25 22:17:40', '2020-02-25 22:17:40'),
(291, 13, 1, '2020-02-25 22:18:04', '2020-02-25 22:18:04'),
(292, 13, 1, '2020-02-25 22:18:49', '2020-02-25 22:18:49'),
(293, 13, 1, '2020-02-25 22:19:25', '2020-02-25 22:19:25'),
(294, 13, 1, '2020-02-25 22:20:11', '2020-02-25 22:20:11'),
(295, 13, 1, '2020-02-25 22:29:16', '2020-02-25 22:29:16'),
(296, 13, 1, '2020-02-25 22:31:23', '2020-02-25 22:31:23'),
(297, 13, 1, '2020-02-25 22:40:02', '2020-02-25 22:40:02'),
(298, 13, 1, '2020-02-25 22:42:05', '2020-02-25 22:42:05'),
(299, 13, 1, '2020-02-25 22:48:54', '2020-02-25 22:48:54'),
(300, 13, 1, '2020-02-25 22:50:15', '2020-02-25 22:50:15'),
(301, 13, 1, '2020-02-25 23:07:46', '2020-02-25 23:07:46'),
(302, 13, 1, '2020-02-26 09:20:33', '2020-02-26 09:20:33'),
(303, 13, 1, '2020-02-26 14:27:24', '2020-02-26 14:27:24'),
(304, 13, 1, '2020-02-26 14:37:23', '2020-02-26 14:37:23'),
(305, 13, 1, '2020-02-26 14:45:48', '2020-02-26 14:45:48'),
(306, 13, 1, '2020-02-26 14:49:40', '2020-02-26 14:49:40'),
(307, 13, 1, '2020-02-26 15:08:16', '2020-02-26 15:08:16'),
(308, 13, 1, '2020-02-26 15:12:04', '2020-02-26 15:12:04'),
(309, 13, 1, '2020-02-26 16:07:24', '2020-02-26 16:07:24'),
(310, 13, 1, '2020-02-26 16:08:02', '2020-02-26 16:08:02'),
(311, 13, 1, '2020-02-26 16:20:45', '2020-02-26 16:20:45'),
(312, 13, 1, '2020-02-26 16:25:41', '2020-02-26 16:25:41'),
(313, 13, 1, '2020-02-26 19:41:51', '2020-02-26 19:41:51'),
(314, 13, 1, '2020-02-26 19:42:56', '2020-02-26 19:42:56'),
(315, 13, 1, '2020-02-26 19:50:45', '2020-02-26 19:50:45'),
(316, 13, 1, '2020-02-26 19:52:49', '2020-02-26 19:52:49'),
(317, 13, 1, '2020-02-26 20:03:26', '2020-02-26 20:03:26'),
(318, 13, 1, '2020-02-26 20:04:44', '2020-02-26 20:04:44'),
(319, 13, 1, '2020-02-26 20:09:21', '2020-02-26 20:09:21'),
(320, 13, 1, '2020-02-26 20:11:17', '2020-02-26 20:11:17'),
(321, 13, 1, '2020-02-26 20:13:54', '2020-02-26 20:13:54'),
(322, 13, 1, '2020-02-26 20:14:20', '2020-02-26 20:14:20'),
(323, 13, 1, '2020-02-26 20:14:38', '2020-02-26 20:14:38'),
(324, 13, 1, '2020-02-26 20:18:23', '2020-02-26 20:18:23'),
(325, 13, 1, '2020-02-26 20:19:16', '2020-02-26 20:19:16'),
(326, 13, 1, '2020-02-26 20:28:43', '2020-02-26 20:28:43'),
(327, 13, 1, '2020-02-26 20:29:34', '2020-02-26 20:29:34'),
(328, 13, 1, '2020-02-26 20:29:45', '2020-02-26 20:29:45'),
(329, 13, 1, '2020-02-26 20:31:40', '2020-02-26 20:31:40'),
(330, 13, 1, '2020-02-26 20:31:54', '2020-02-26 20:31:54'),
(331, 13, 1, '2020-02-26 20:34:25', '2020-02-26 20:34:25'),
(332, 13, 1, '2020-02-26 20:34:47', '2020-02-26 20:34:47'),
(333, 13, 1, '2020-02-26 20:35:16', '2020-02-26 20:35:16'),
(334, 13, 1, '2020-02-26 20:35:50', '2020-02-26 20:35:50'),
(335, 13, 1, '2020-02-26 20:36:37', '2020-02-26 20:36:37'),
(336, 13, 1, '2020-02-26 20:36:43', '2020-02-26 20:36:43'),
(337, 13, 1, '2020-02-26 20:38:29', '2020-02-26 20:38:29'),
(338, 13, 1, '2020-02-26 20:41:11', '2020-02-26 20:41:11'),
(339, 13, 1, '2020-02-26 20:42:01', '2020-02-26 20:42:01'),
(340, 13, 1, '2020-02-26 20:42:58', '2020-02-26 20:42:58'),
(341, 13, 1, '2020-02-26 20:43:39', '2020-02-26 20:43:39'),
(342, 13, 1, '2020-02-26 20:44:06', '2020-02-26 20:44:06'),
(343, 13, 1, '2020-02-26 20:46:48', '2020-02-26 20:46:48'),
(344, 13, 1, '2020-02-26 20:47:26', '2020-02-26 20:47:26'),
(345, 13, 1, '2020-02-26 20:49:04', '2020-02-26 20:49:04'),
(346, 13, 1, '2020-02-26 20:54:31', '2020-02-26 20:54:31'),
(347, 13, 1, '2020-02-26 20:54:57', '2020-02-26 20:54:57'),
(348, 13, 1, '2020-02-26 20:55:28', '2020-02-26 20:55:28'),
(349, 13, 1, '2020-02-26 21:02:56', '2020-02-26 21:02:56'),
(350, 13, 1, '2020-02-26 21:03:11', '2020-02-26 21:03:11'),
(351, 13, 1, '2020-02-26 21:04:12', '2020-02-26 21:04:12'),
(352, 13, 1, '2020-02-26 21:06:49', '2020-02-26 21:06:49'),
(353, 13, 1, '2020-02-26 21:07:28', '2020-02-26 21:07:28'),
(354, 13, 1, '2020-02-26 21:11:59', '2020-02-26 21:11:59'),
(355, 13, 1, '2020-02-26 21:13:22', '2020-02-26 21:13:22'),
(356, 13, 1, '2020-02-26 21:14:12', '2020-02-26 21:14:12'),
(357, 13, 1, '2020-02-26 21:17:25', '2020-02-26 21:17:25'),
(358, 13, 1, '2020-02-26 21:18:19', '2020-02-26 21:18:19'),
(359, 13, 1, '2020-02-26 21:21:00', '2020-02-26 21:21:00'),
(360, 13, 1, '2020-02-26 21:24:17', '2020-02-26 21:24:17'),
(361, 13, 1, '2020-02-26 21:25:04', '2020-02-26 21:25:04'),
(362, 13, 1, '2020-02-26 21:32:01', '2020-02-26 21:32:01'),
(363, 13, 1, '2020-02-26 21:34:20', '2020-02-26 21:34:20'),
(364, 13, 1, '2020-02-26 21:35:56', '2020-02-26 21:35:56'),
(365, 13, 1, '2020-02-26 21:37:01', '2020-02-26 21:37:01'),
(366, 13, 1, '2020-02-26 21:37:44', '2020-02-26 21:37:44'),
(367, 13, 1, '2020-02-26 21:43:11', '2020-02-26 21:43:11'),
(368, 13, 1, '2020-02-26 21:45:18', '2020-02-26 21:45:18'),
(369, 13, 1, '2020-02-27 07:27:35', '2020-02-27 07:27:35'),
(370, 13, 1, '2020-02-27 08:08:09', '2020-02-27 08:08:09'),
(371, 13, 1, '2020-02-27 08:12:14', '2020-02-27 08:12:14'),
(372, 13, 1, '2020-02-27 08:13:20', '2020-02-27 08:13:20'),
(373, 13, 1, '2020-02-27 08:13:46', '2020-02-27 08:13:46'),
(374, 13, 1, '2020-02-27 08:15:16', '2020-02-27 08:15:16'),
(375, 13, 1, '2020-02-27 08:15:28', '2020-02-27 08:15:28'),
(376, 13, 1, '2020-02-27 08:17:53', '2020-02-27 08:17:53'),
(377, 13, 1, '2020-02-27 08:19:13', '2020-02-27 08:19:13'),
(378, 13, 1, '2020-02-27 08:19:26', '2020-02-27 08:19:26'),
(379, 13, 1, '2020-02-27 08:21:06', '2020-02-27 08:21:06'),
(380, 13, 1, '2020-02-27 08:22:23', '2020-02-27 08:22:23'),
(381, 13, 1, '2020-02-27 08:22:47', '2020-02-27 08:22:47'),
(382, 13, 1, '2020-02-27 08:25:39', '2020-02-27 08:25:39'),
(383, 13, 1, '2020-02-27 08:27:15', '2020-02-27 08:27:15'),
(384, 13, 1, '2020-02-27 08:28:47', '2020-02-27 08:28:47'),
(385, 13, 1, '2020-02-27 08:29:34', '2020-02-27 08:29:34'),
(386, 13, 1, '2020-02-27 08:35:44', '2020-02-27 08:35:44'),
(387, 13, 1, '2020-02-27 08:38:47', '2020-02-27 08:38:47'),
(388, 13, 1, '2020-02-27 08:39:07', '2020-02-27 08:39:07'),
(389, 13, 1, '2020-02-27 08:42:16', '2020-02-27 08:42:16'),
(390, 13, 1, '2020-02-27 08:42:33', '2020-02-27 08:42:33'),
(391, 13, 1, '2020-02-27 08:42:42', '2020-02-27 08:42:42'),
(392, 13, 1, '2020-02-27 08:43:39', '2020-02-27 08:43:39'),
(393, 13, 1, '2020-02-27 08:44:22', '2020-02-27 08:44:22'),
(394, 13, 1, '2020-02-27 08:44:41', '2020-02-27 08:44:41'),
(395, 13, 1, '2020-02-27 08:45:21', '2020-02-27 08:45:21'),
(396, 13, 1, '2020-02-27 08:46:15', '2020-02-27 08:46:15'),
(397, 13, 1, '2020-02-27 08:47:13', '2020-02-27 08:47:13'),
(398, 13, 1, '2020-02-27 08:49:08', '2020-02-27 08:49:08'),
(399, 13, 1, '2020-02-27 08:50:14', '2020-02-27 08:50:14'),
(400, 13, 1, '2020-02-27 08:50:49', '2020-02-27 08:50:49'),
(401, 13, 1, '2020-02-27 08:51:03', '2020-02-27 08:51:03'),
(402, 13, 1, '2020-02-27 08:51:20', '2020-02-27 08:51:20'),
(403, 13, 1, '2020-02-27 08:51:50', '2020-02-27 08:51:50'),
(404, 13, 1, '2020-02-27 08:52:34', '2020-02-27 08:52:34'),
(405, 13, 1, '2020-02-27 08:52:55', '2020-02-27 08:52:55'),
(406, 13, 1, '2020-02-27 08:54:02', '2020-02-27 08:54:02'),
(407, 13, 1, '2020-02-27 08:54:30', '2020-02-27 08:54:30'),
(408, 13, 1, '2020-02-27 08:59:39', '2020-02-27 08:59:39'),
(409, 13, 1, '2020-02-27 09:02:36', '2020-02-27 09:02:36'),
(410, 13, 1, '2020-02-27 09:03:24', '2020-02-27 09:03:24'),
(411, 13, 1, '2020-02-27 09:03:33', '2020-02-27 09:03:33'),
(412, 13, 1, '2020-02-27 09:08:08', '2020-02-27 09:08:08'),
(413, 13, 1, '2020-02-27 09:08:28', '2020-02-27 09:08:28'),
(414, 13, 1, '2020-02-27 09:13:27', '2020-02-27 09:13:27'),
(415, 13, 1, '2020-02-27 09:14:34', '2020-02-27 09:14:34'),
(416, 13, 1, '2020-02-27 09:14:40', '2020-02-27 09:14:40'),
(417, 13, 1, '2020-02-27 09:15:41', '2020-02-27 09:15:41'),
(418, 13, 1, '2020-02-27 09:15:44', '2020-02-27 09:15:44'),
(419, 13, 1, '2020-02-27 09:18:06', '2020-02-27 09:18:06'),
(420, 13, 1, '2020-02-27 09:19:00', '2020-02-27 09:19:00'),
(421, 13, 1, '2020-02-27 09:20:17', '2020-02-27 09:20:17'),
(422, 13, 1, '2020-02-27 09:49:00', '2020-02-27 09:49:00'),
(423, 13, 1, '2020-02-27 09:51:00', '2020-02-27 09:51:00'),
(424, 13, 1, '2020-02-27 09:51:31', '2020-02-27 09:51:31'),
(425, 13, 1, '2020-02-27 09:51:40', '2020-02-27 09:51:40'),
(426, 13, 1, '2020-02-27 09:51:46', '2020-02-27 09:51:46'),
(427, 13, 1, '2020-02-27 09:52:05', '2020-02-27 09:52:05'),
(428, 13, 1, '2020-02-27 09:52:30', '2020-02-27 09:52:30'),
(429, 13, 1, '2020-02-27 09:53:01', '2020-02-27 09:53:01'),
(430, 13, 1, '2020-02-27 09:53:22', '2020-02-27 09:53:22'),
(431, 13, 1, '2020-02-27 09:54:35', '2020-02-27 09:54:35'),
(432, 13, 1, '2020-02-27 09:54:53', '2020-02-27 09:54:53'),
(433, 13, 1, '2020-02-27 09:55:10', '2020-02-27 09:55:10'),
(434, 13, 1, '2020-02-27 09:55:27', '2020-02-27 09:55:27'),
(435, 13, 1, '2020-02-27 09:55:46', '2020-02-27 09:55:46'),
(436, 13, 1, '2020-02-27 09:56:30', '2020-02-27 09:56:30'),
(437, 13, 1, '2020-02-27 09:57:04', '2020-02-27 09:57:04'),
(438, 13, 1, '2020-02-27 09:57:53', '2020-02-27 09:57:53'),
(439, 13, 1, '2020-02-27 11:48:50', '2020-02-27 11:48:50'),
(440, 13, 1, '2020-02-27 11:50:37', '2020-02-27 11:50:37'),
(441, 13, 1, '2020-02-27 11:51:59', '2020-02-27 11:51:59'),
(442, 13, 1, '2020-02-27 11:52:28', '2020-02-27 11:52:28'),
(443, 13, 1, '2020-02-27 11:53:42', '2020-02-27 11:53:42'),
(444, 13, 1, '2020-02-27 11:54:41', '2020-02-27 11:54:41'),
(445, 13, 1, '2020-02-27 11:55:03', '2020-02-27 11:55:03'),
(446, 13, 1, '2020-02-27 11:56:11', '2020-02-27 11:56:11'),
(447, 13, 1, '2020-02-27 11:58:59', '2020-02-27 11:58:59'),
(448, 13, 1, '2020-02-27 12:00:40', '2020-02-27 12:00:40'),
(449, 13, 1, '2020-02-27 12:01:24', '2020-02-27 12:01:24'),
(450, 13, 1, '2020-02-27 12:01:54', '2020-02-27 12:01:54'),
(451, 13, 1, '2020-02-27 12:02:19', '2020-02-27 12:02:19'),
(452, 13, 1, '2020-02-27 12:45:03', '2020-02-27 12:45:03'),
(453, 13, 1, '2020-02-27 12:45:48', '2020-02-27 12:45:48'),
(454, 13, 2, '2020-02-28 12:46:04', '2020-02-28 12:46:04'),
(455, 13, 2, '2020-02-28 12:46:27', '2020-02-28 12:46:27'),
(456, 13, 2, '2020-02-28 12:46:58', '2020-02-28 12:46:58'),
(457, 13, 2, '2020-02-28 13:00:43', '2020-02-28 13:00:43'),
(458, 13, 2, '2020-02-28 13:02:24', '2020-02-28 13:02:24'),
(459, 13, 2, '2020-02-28 13:05:09', '2020-02-28 13:05:09'),
(460, 13, 2, '2020-02-28 13:05:31', '2020-02-28 13:05:31'),
(461, 13, 2, '2020-02-28 13:07:35', '2020-02-28 13:07:35'),
(462, 13, 2, '2020-02-28 13:23:15', '2020-02-28 13:23:15'),
(463, 13, 2, '2020-02-28 13:24:21', '2020-02-28 13:24:21'),
(464, 13, 2, '2020-02-28 13:24:51', '2020-02-28 13:24:51'),
(465, 13, 2, '2020-02-28 13:25:18', '2020-02-28 13:25:18'),
(466, 13, 2, '2020-02-28 13:31:41', '2020-02-28 13:31:41'),
(467, 13, 2, '2020-02-28 13:32:35', '2020-02-28 13:32:35'),
(468, 13, 2, '2020-02-28 13:33:47', '2020-02-28 13:33:47'),
(469, 13, 2, '2020-02-28 13:45:10', '2020-02-28 13:45:10'),
(470, 13, 2, '2020-02-28 13:51:16', '2020-02-28 13:51:16'),
(471, 13, 2, '2020-02-28 14:00:57', '2020-02-28 14:00:57'),
(472, 13, 2, '2020-02-28 14:01:07', '2020-02-28 14:01:07'),
(473, 13, 2, '2020-02-28 14:02:20', '2020-02-28 14:02:20'),
(474, 13, 2, '2020-02-28 14:07:17', '2020-02-28 14:07:17'),
(475, 13, 2, '2020-02-28 14:09:59', '2020-02-28 14:09:59'),
(476, 13, 2, '2020-02-28 14:21:05', '2020-02-28 14:21:05'),
(477, 13, 2, '2020-02-28 14:21:57', '2020-02-28 14:21:57'),
(478, 13, 2, '2020-02-28 14:26:08', '2020-02-28 14:26:08'),
(479, 13, 2, '2020-02-28 14:26:34', '2020-02-28 14:26:34'),
(480, 13, 2, '2020-02-28 14:31:36', '2020-02-28 14:31:36'),
(481, 13, 2, '2020-02-28 19:22:23', '2020-02-28 19:22:23'),
(482, 13, 2, '2020-02-28 19:27:55', '2020-02-28 19:27:55'),
(483, 13, 2, '2020-02-28 19:33:15', '2020-02-28 19:33:15'),
(484, 13, 2, '2020-02-28 19:34:26', '2020-02-28 19:34:26'),
(485, 13, 2, '2020-02-28 19:38:25', '2020-02-28 19:38:25'),
(486, 13, 2, '2020-02-28 19:43:36', '2020-02-28 19:43:36'),
(487, 13, 2, '2020-02-28 19:50:45', '2020-02-28 19:50:45'),
(488, 13, 2, '2020-02-28 19:54:14', '2020-02-28 19:54:14'),
(489, 13, 2, '2020-02-28 20:00:25', '2020-02-28 20:00:25'),
(490, 13, 2, '2020-02-28 20:02:10', '2020-02-28 20:02:10'),
(491, 13, 1, '2020-02-28 20:03:25', '2020-02-28 20:03:25'),
(492, 13, 1, '2020-02-28 20:04:59', '2020-02-28 20:04:59'),
(493, 13, 1, '2020-02-28 20:07:03', '2020-02-28 20:07:03'),
(494, 13, 1, '2020-02-28 20:08:46', '2020-02-28 20:08:46'),
(495, 13, 1, '2020-02-28 20:11:37', '2020-02-28 20:11:37'),
(496, 13, 1, '2020-02-28 20:17:31', '2020-02-28 20:17:31'),
(497, 13, 1, '2020-02-28 20:18:48', '2020-02-28 20:18:48'),
(498, 13, 1, '2020-02-28 20:19:42', '2020-02-28 20:19:42'),
(499, 13, 1, '2020-02-28 20:26:04', '2020-02-28 20:26:04'),
(500, 13, 1, '2020-02-28 20:26:26', '2020-02-28 20:26:26'),
(501, 13, 1, '2020-02-28 20:27:31', '2020-02-28 20:27:31'),
(502, 13, 1, '2020-02-28 20:30:56', '2020-02-28 20:30:56'),
(503, 13, 1, '2020-02-28 20:39:27', '2020-02-28 20:39:27'),
(504, 13, 1, '2020-02-28 20:43:50', '2020-02-28 20:43:50'),
(505, 13, 1, '2020-02-28 20:44:32', '2020-02-28 20:44:32'),
(506, 13, 1, '2020-02-28 20:46:07', '2020-02-28 20:46:07'),
(507, 13, 1, '2020-02-28 20:48:13', '2020-02-28 20:48:13'),
(508, 13, 1, '2020-02-28 20:52:58', '2020-02-28 20:52:58'),
(509, 13, 1, '2020-02-28 21:00:58', '2020-02-28 21:00:58'),
(510, 13, 1, '2020-02-28 21:04:46', '2020-02-28 21:04:46'),
(511, 13, 1, '2020-02-28 21:07:07', '2020-02-28 21:07:07'),
(512, 13, 1, '2020-02-28 21:08:47', '2020-02-28 21:08:47'),
(513, 13, 1, '2020-02-28 21:09:21', '2020-02-28 21:09:21'),
(514, 13, 1, '2020-02-28 21:10:28', '2020-02-28 21:10:28'),
(515, 13, 1, '2020-02-28 21:11:34', '2020-02-28 21:11:34'),
(516, 13, 1, '2020-02-28 21:11:51', '2020-02-28 21:11:51'),
(517, 13, 1, '2020-02-28 21:13:16', '2020-02-28 21:13:16'),
(518, 13, 1, '2020-02-28 21:13:43', '2020-02-28 21:13:43'),
(519, 13, 1, '2020-02-28 21:16:30', '2020-02-28 21:16:30'),
(520, 13, 1, '2020-02-28 21:16:57', '2020-02-28 21:16:57'),
(521, 13, 1, '2020-02-28 21:18:15', '2020-02-28 21:18:15'),
(522, 13, 1, '2020-02-28 21:18:33', '2020-02-28 21:18:33'),
(523, 13, 1, '2020-02-28 21:19:33', '2020-02-28 21:19:33'),
(524, 13, 1, '2020-02-28 21:28:28', '2020-02-28 21:28:28'),
(525, 13, 1, '2020-02-28 21:29:25', '2020-02-28 21:29:25'),
(526, 13, 1, '2020-02-28 21:30:38', '2020-02-28 21:30:38'),
(527, 13, 1, '2020-02-28 21:31:37', '2020-02-28 21:31:37'),
(528, 13, 1, '2020-02-28 21:32:22', '2020-02-28 21:32:22'),
(529, 13, 1, '2020-02-28 21:34:04', '2020-02-28 21:34:04'),
(530, 13, 1, '2020-02-28 21:34:43', '2020-02-28 21:34:43'),
(531, 13, 1, '2020-02-28 21:39:28', '2020-02-28 21:39:28'),
(532, 13, 1, '2020-02-28 21:40:21', '2020-02-28 21:40:21'),
(533, 13, 1, '2020-02-28 21:42:44', '2020-02-28 21:42:44'),
(534, 13, 1, '2020-02-28 21:43:51', '2020-02-28 21:43:51'),
(535, 13, 1, '2020-02-28 21:44:02', '2020-02-28 21:44:02'),
(536, 13, 1, '2020-02-28 21:46:40', '2020-02-28 21:46:40'),
(537, 13, 1, '2020-02-28 21:55:20', '2020-02-28 21:55:20'),
(538, 13, 1, '2020-02-28 21:58:00', '2020-02-28 21:58:00'),
(539, 13, 1, '2020-02-28 21:58:45', '2020-02-28 21:58:45'),
(540, 13, 1, '2020-02-28 22:00:11', '2020-02-28 22:00:11'),
(541, 13, 1, '2020-02-28 22:01:25', '2020-02-28 22:01:25'),
(542, 13, 1, '2020-02-28 22:02:44', '2020-02-28 22:02:44'),
(543, 13, 1, '2020-02-28 22:04:08', '2020-02-28 22:04:08'),
(544, 13, 1, '2020-02-28 22:07:08', '2020-02-28 22:07:08'),
(545, 13, 1, '2020-02-28 22:07:57', '2020-02-28 22:07:57'),
(546, 13, 1, '2020-02-28 22:08:20', '2020-02-28 22:08:20'),
(547, 13, 1, '2020-02-28 22:10:15', '2020-02-28 22:10:15'),
(548, 13, 1, '2020-02-28 22:11:08', '2020-02-28 22:11:08'),
(549, 13, 1, '2020-02-28 22:11:48', '2020-02-28 22:11:48'),
(550, 13, 1, '2020-02-28 22:12:15', '2020-02-28 22:12:15'),
(551, 13, 1, '2020-02-28 22:12:43', '2020-02-28 22:12:43'),
(552, 13, 1, '2020-02-28 22:14:42', '2020-02-28 22:14:42'),
(553, 13, 1, '2020-02-28 22:17:26', '2020-02-28 22:17:26'),
(554, 13, 1, '2020-02-28 22:22:32', '2020-02-28 22:22:32'),
(555, 13, 1, '2020-02-28 22:23:46', '2020-02-28 22:23:46'),
(556, 13, 1, '2020-02-28 22:25:16', '2020-02-28 22:25:16'),
(557, 13, 1, '2020-02-28 22:26:19', '2020-02-28 22:26:19'),
(558, 13, 1, '2020-02-28 22:27:14', '2020-02-28 22:27:14'),
(559, 13, 1, '2020-02-28 22:27:46', '2020-02-28 22:27:46'),
(560, 13, 1, '2020-02-28 22:28:13', '2020-02-28 22:28:13'),
(561, 13, 1, '2020-02-28 22:28:35', '2020-02-28 22:28:35'),
(562, 13, 1, '2020-02-28 22:30:03', '2020-02-28 22:30:03'),
(563, 13, 1, '2020-02-28 22:31:45', '2020-02-28 22:31:45'),
(564, 13, 1, '2020-02-28 22:32:11', '2020-02-28 22:32:11'),
(565, 13, 1, '2020-02-28 22:32:50', '2020-02-28 22:32:50'),
(566, 13, 1, '2020-02-28 22:33:11', '2020-02-28 22:33:11'),
(567, 13, 1, '2020-02-28 22:36:29', '2020-02-28 22:36:29'),
(568, 13, 1, '2020-02-28 22:36:53', '2020-02-28 22:36:53'),
(569, 13, 1, '2020-02-28 22:37:48', '2020-02-28 22:37:48'),
(570, 13, 1, '2020-02-28 22:38:15', '2020-02-28 22:38:15'),
(571, 13, 1, '2020-02-28 22:38:32', '2020-02-28 22:38:32'),
(572, 13, 1, '2020-02-28 22:39:41', '2020-02-28 22:39:41'),
(573, 13, 1, '2020-02-28 22:39:59', '2020-02-28 22:39:59'),
(574, 13, 1, '2020-02-28 22:40:14', '2020-02-28 22:40:14'),
(575, 13, 1, '2020-02-28 22:41:01', '2020-02-28 22:41:01'),
(576, 13, 1, '2020-02-28 22:43:21', '2020-02-28 22:43:21'),
(577, 13, 1, '2020-02-28 22:43:39', '2020-02-28 22:43:39'),
(578, 13, 1, '2020-02-28 22:44:02', '2020-02-28 22:44:02'),
(579, 13, 1, '2020-02-28 22:44:22', '2020-02-28 22:44:22'),
(580, 13, 1, '2020-02-28 22:45:32', '2020-02-28 22:45:32'),
(581, 13, 1, '2020-02-28 22:46:57', '2020-02-28 22:46:57'),
(582, 13, 1, '2020-02-28 22:49:02', '2020-02-28 22:49:02'),
(583, 13, 1, '2020-02-28 22:49:37', '2020-02-28 22:49:37'),
(584, 13, 1, '2020-02-28 22:49:57', '2020-02-28 22:49:57'),
(585, 13, 1, '2020-02-28 22:50:15', '2020-02-28 22:50:15'),
(586, 13, 1, '2020-02-28 22:50:53', '2020-02-28 22:50:53'),
(587, 13, 1, '2020-02-28 22:51:22', '2020-02-28 22:51:22'),
(588, 13, 1, '2020-02-28 22:52:17', '2020-02-28 22:52:17'),
(589, 13, 1, '2020-02-28 22:52:35', '2020-02-28 22:52:35'),
(590, 13, 1, '2020-02-29 00:36:52', '2020-02-29 00:36:52'),
(591, 13, 1, '2020-02-29 00:37:56', '2020-02-29 00:37:56'),
(592, 13, 1, '2020-02-29 00:40:05', '2020-02-29 00:40:05'),
(593, 13, 1, '2020-02-29 00:43:00', '2020-02-29 00:43:00'),
(594, 13, 1, '2020-02-29 00:48:19', '2020-02-29 00:48:19'),
(595, 13, 1, '2020-02-29 00:52:24', '2020-02-29 00:52:24'),
(596, 13, 1, '2020-02-29 00:54:34', '2020-02-29 00:54:34'),
(597, 13, 1, '2020-02-29 01:00:43', '2020-02-29 01:00:43'),
(598, 13, 1, '2020-02-29 01:01:22', '2020-02-29 01:01:22'),
(599, 13, 1, '2020-02-29 01:02:14', '2020-02-29 01:02:14'),
(600, 13, 1, '2020-02-29 01:03:28', '2020-02-29 01:03:28'),
(601, 13, 1, '2020-02-29 01:04:04', '2020-02-29 01:04:04'),
(602, 13, 1, '2020-02-29 01:05:08', '2020-02-29 01:05:08'),
(603, 13, 1, '2020-02-29 01:05:37', '2020-02-29 01:05:37'),
(604, 13, 1, '2020-02-29 01:07:06', '2020-02-29 01:07:06'),
(605, 13, 1, '2020-02-29 01:07:37', '2020-02-29 01:07:37'),
(606, 13, 1, '2020-02-29 01:08:30', '2020-02-29 01:08:30'),
(607, 13, 1, '2020-02-29 01:08:47', '2020-02-29 01:08:47'),
(608, 13, 1, '2020-02-29 01:09:26', '2020-02-29 01:09:26'),
(609, 13, 1, '2020-02-29 01:10:45', '2020-02-29 01:10:45'),
(610, 13, 1, '2020-02-29 01:13:22', '2020-02-29 01:13:22'),
(611, 13, 1, '2020-02-29 01:17:47', '2020-02-29 01:17:47'),
(612, 13, 1, '2020-02-29 01:18:34', '2020-02-29 01:18:34'),
(613, 13, 1, '2020-02-29 01:20:37', '2020-02-29 01:20:37'),
(614, 13, 1, '2020-02-29 01:23:50', '2020-02-29 01:23:50'),
(615, 13, 1, '2020-02-29 01:32:34', '2020-02-29 01:32:34'),
(616, 13, 1, '2020-02-29 01:34:59', '2020-02-29 01:34:59'),
(617, 13, 1, '2020-02-29 01:35:59', '2020-02-29 01:35:59'),
(618, 13, 1, '2020-02-29 01:39:36', '2020-02-29 01:39:36'),
(619, 13, 1, '2020-02-29 01:42:23', '2020-02-29 01:42:23'),
(620, 13, 1, '2020-02-29 01:42:55', '2020-02-29 01:42:55'),
(621, 13, 1, '2020-02-29 01:43:09', '2020-02-29 01:43:09'),
(622, 13, 1, '2020-02-29 01:43:23', '2020-02-29 01:43:23'),
(623, 13, 1, '2020-02-29 01:45:31', '2020-02-29 01:45:31'),
(624, 13, 1, '2020-02-29 01:57:13', '2020-02-29 01:57:13'),
(625, 13, 1, '2020-02-29 02:01:00', '2020-02-29 02:01:00'),
(626, 13, 1, '2020-02-29 02:04:57', '2020-02-29 02:04:57'),
(627, 13, 1, '2020-02-29 02:11:09', '2020-02-29 02:11:09'),
(628, 13, 1, '2020-02-29 02:13:22', '2020-02-29 02:13:22'),
(629, 13, 1, '2020-02-29 02:17:30', '2020-02-29 02:17:30'),
(630, 13, 1, '2020-02-29 02:18:23', '2020-02-29 02:18:23'),
(631, 13, 1, '2020-02-29 02:20:51', '2020-02-29 02:20:51'),
(632, 13, 1, '2020-02-29 02:22:22', '2020-02-29 02:22:22'),
(633, 13, 1, '2020-02-29 02:23:43', '2020-02-29 02:23:43'),
(634, 13, 1, '2020-02-29 02:25:10', '2020-02-29 02:25:10'),
(635, 13, 1, '2020-02-29 02:29:02', '2020-02-29 02:29:02'),
(636, 13, 1, '2020-02-29 02:30:58', '2020-02-29 02:30:58'),
(637, 13, 1, '2020-02-29 02:32:25', '2020-02-29 02:32:25'),
(638, 13, 1, '2020-02-29 02:36:51', '2020-02-29 02:36:51'),
(639, 13, 1, '2020-02-29 02:36:52', '2020-02-29 02:36:52'),
(640, 13, 1, '2020-02-29 02:40:11', '2020-02-29 02:40:11'),
(641, 13, 1, '2020-02-29 02:40:12', '2020-02-29 02:40:12'),
(642, 13, 1, '2020-02-29 02:40:57', '2020-02-29 02:40:57'),
(643, 13, 1, '2020-02-29 02:42:02', '2020-02-29 02:42:02'),
(644, 13, 1, '2020-02-29 02:46:04', '2020-02-29 02:46:04'),
(645, 13, 1, '2020-02-29 02:51:53', '2020-02-29 02:51:53'),
(646, 13, 1, '2020-02-29 02:59:57', '2020-02-29 02:59:57'),
(647, 13, 1, '2020-02-29 03:02:48', '2020-02-29 03:02:48'),
(648, 13, 1, '2020-02-29 03:02:51', '2020-02-29 03:02:51'),
(649, 13, 1, '2020-02-29 03:03:58', '2020-02-29 03:03:58'),
(650, 13, 1, '2020-02-29 03:11:53', '2020-02-29 03:11:53'),
(651, 13, 1, '2020-02-29 03:14:37', '2020-02-29 03:14:37'),
(652, 13, 1, '2020-02-29 03:16:40', '2020-02-29 03:16:40'),
(653, 13, 1, '2020-02-29 03:19:11', '2020-02-29 03:19:11'),
(654, 13, 1, '2020-02-29 03:20:51', '2020-02-29 03:20:51'),
(655, 13, 1, '2020-02-29 03:22:31', '2020-02-29 03:22:31'),
(656, 13, 1, '2020-02-29 03:25:33', '2020-02-29 03:25:33'),
(657, 13, 1, '2020-02-29 03:28:53', '2020-02-29 03:28:53'),
(658, 13, 1, '2020-02-29 03:32:54', '2020-02-29 03:32:54'),
(659, 13, 1, '2020-02-29 03:33:18', '2020-02-29 03:33:18'),
(660, 13, 1, '2020-02-29 03:36:04', '2020-02-29 03:36:04'),
(661, 13, 1, '2020-02-29 03:40:34', '2020-02-29 03:40:34'),
(662, 13, 1, '2020-02-29 03:42:23', '2020-02-29 03:42:23'),
(663, 13, 1, '2020-02-29 03:47:35', '2020-02-29 03:47:35'),
(664, 13, 1, '2020-02-29 03:49:31', '2020-02-29 03:49:31'),
(665, 13, 1, '2020-02-29 04:00:20', '2020-02-29 04:00:20'),
(666, 13, 1, '2020-02-29 04:08:35', '2020-02-29 04:08:35'),
(667, 13, 1, '2020-02-29 04:13:44', '2020-02-29 04:13:44'),
(668, 13, 1, '2020-02-29 04:13:46', '2020-02-29 04:13:46'),
(669, 13, 1, '2020-02-29 04:15:28', '2020-02-29 04:15:28'),
(670, 13, 1, '2020-02-29 04:16:54', '2020-02-29 04:16:54'),
(671, 13, 1, '2020-02-29 04:17:56', '2020-02-29 04:17:56'),
(672, 13, 1, '2020-02-29 04:26:20', '2020-02-29 04:26:20'),
(673, 13, 1, '2020-02-29 04:27:28', '2020-02-29 04:27:28'),
(674, 13, 1, '2020-02-29 04:28:20', '2020-02-29 04:28:20'),
(675, 13, 1, '2020-02-29 04:30:52', '2020-02-29 04:30:52'),
(676, 13, 1, '2020-02-29 04:34:10', '2020-02-29 04:34:10'),
(677, 13, 1, '2020-02-29 04:34:47', '2020-02-29 04:34:47'),
(678, 13, 1, '2020-02-29 04:35:37', '2020-02-29 04:35:37'),
(679, 13, 1, '2020-02-29 04:37:55', '2020-02-29 04:37:55'),
(680, 13, 1, '2020-02-29 04:38:54', '2020-02-29 04:38:54'),
(681, 13, 1, '2020-02-29 04:41:21', '2020-02-29 04:41:21'),
(682, 13, 1, '2020-02-29 11:24:52', '2020-02-29 11:24:52'),
(683, 13, 1, '2020-02-29 11:34:12', '2020-02-29 11:34:12'),
(684, 13, 1, '2020-02-29 12:34:22', '2020-02-29 12:34:22'),
(685, 13, 1, '2020-02-29 12:40:17', '2020-02-29 12:40:17'),
(686, 13, 1, '2020-02-29 12:41:44', '2020-02-29 12:41:44'),
(687, 13, 1, '2020-02-29 12:56:21', '2020-02-29 12:56:21'),
(688, 13, 1, '2020-02-29 13:01:19', '2020-02-29 13:01:19'),
(689, 13, 1, '2020-02-29 13:02:11', '2020-02-29 13:02:11'),
(690, 13, 1, '2020-02-29 13:02:48', '2020-02-29 13:02:48'),
(691, 13, 1, '2020-02-29 13:05:03', '2020-02-29 13:05:03'),
(692, 13, 1, '2020-02-29 13:05:32', '2020-02-29 13:05:32'),
(693, 13, 1, '2020-02-29 13:07:23', '2020-02-29 13:07:23'),
(694, 13, 1, '2020-02-29 13:08:53', '2020-02-29 13:08:53'),
(695, 13, 1, '2020-02-29 13:08:59', '2020-02-29 13:08:59'),
(696, 13, 1, '2020-02-29 13:15:11', '2020-02-29 13:15:11'),
(697, 13, 1, '2020-02-29 13:16:01', '2020-02-29 13:16:01'),
(698, 13, 1, '2020-02-29 13:16:27', '2020-02-29 13:16:27'),
(699, 13, 1, '2020-02-29 13:16:56', '2020-02-29 13:16:56'),
(700, 13, 1, '2020-02-29 13:18:33', '2020-02-29 13:18:33'),
(701, 13, 1, '2020-02-29 13:19:03', '2020-02-29 13:19:03'),
(702, 13, 1, '2020-02-29 13:19:46', '2020-02-29 13:19:46'),
(703, 13, 1, '2020-02-29 13:20:23', '2020-02-29 13:20:23'),
(704, 13, 1, '2020-02-29 13:20:52', '2020-02-29 13:20:52'),
(705, 13, 1, '2020-02-29 13:21:19', '2020-02-29 13:21:19'),
(706, 13, 1, '2020-02-29 13:21:50', '2020-02-29 13:21:50'),
(707, 13, 1, '2020-02-29 13:22:18', '2020-02-29 13:22:18'),
(708, 13, 1, '2020-02-29 13:22:37', '2020-02-29 13:22:37'),
(709, 13, 1, '2020-02-29 13:23:28', '2020-02-29 13:23:28'),
(710, 13, 1, '2020-02-29 13:27:25', '2020-02-29 13:27:25'),
(711, 13, 1, '2020-02-29 13:29:32', '2020-02-29 13:29:32'),
(712, 13, 1, '2020-02-29 13:30:48', '2020-02-29 13:30:48'),
(713, 13, 1, '2020-02-29 13:32:35', '2020-02-29 13:32:35'),
(714, 13, 1, '2020-02-29 13:33:06', '2020-02-29 13:33:06'),
(715, 13, 1, '2020-02-29 13:34:48', '2020-02-29 13:34:48'),
(716, 13, 1, '2020-02-29 13:44:30', '2020-02-29 13:44:30'),
(717, 13, 1, '2020-02-29 13:44:31', '2020-02-29 13:44:31'),
(718, 13, 1, '2020-02-29 13:49:09', '2020-02-29 13:49:09'),
(719, 13, 1, '2020-02-29 13:54:40', '2020-02-29 13:54:40'),
(720, 13, 1, '2020-02-29 13:58:30', '2020-02-29 13:58:30'),
(721, 13, 1, '2020-02-29 13:59:18', '2020-02-29 13:59:18'),
(722, 13, 1, '2020-02-29 14:00:09', '2020-02-29 14:00:09'),
(723, 13, 1, '2020-02-29 14:01:16', '2020-02-29 14:01:16'),
(724, 13, 1, '2020-02-29 14:02:01', '2020-02-29 14:02:01'),
(725, 13, 1, '2020-02-29 14:02:49', '2020-02-29 14:02:49'),
(726, 13, 1, '2020-02-29 14:04:03', '2020-02-29 14:04:03'),
(727, 13, 1, '2020-02-29 14:04:43', '2020-02-29 14:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1992e29f-866e-4c31-81bb-03d47400867e', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 1, '{\"patient\":{\"id\":9,\"firstname\":\"Kennedy\",\"surname\":\"Peters\",\"middlename\":null,\"patientNo\":\"000009\",\"avatar\":\"IMG_1568498569.jpg\",\"gender\":\"Male\",\"phone\":700412127,\"lastVisit\":\"15-09-2019 1:02:49 am\",\"createdAt\":\"2019-09-14T22:02:49.000000Z\",\"updatedAt\":\"2019-09-14T22:02:49.000000Z\"}}', NULL, '2019-09-14 22:02:53', '2019-09-14 22:02:53'),
('1b564ca8-85d3-46e8-ac56-85cf4349398c', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 2, '{\"patient\":{\"id\":11,\"firstname\":\"Kile\",\"surname\":\"Baerr\",\"middlename\":null,\"patientNo\":\"000011\",\"avatar\":null,\"gender\":\"Female\",\"phone\":90920202,\"lastVisit\":\"15-09-2019 1:18:15 am\",\"createdAt\":\"2019-09-14T22:18:15.000000Z\",\"updatedAt\":\"2019-09-14T22:18:15.000000Z\"}}', NULL, '2019-09-14 22:18:16', '2019-09-14 22:18:16'),
('1bee2763-a999-47ca-8437-217e1e3a7fea', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 3, '{\"patient\":{\"id\":10,\"firstname\":\"Doe\",\"surname\":\"Jane\",\"middlename\":null,\"patientNo\":\"000010\",\"avatar\":\"IMG_1568499213.jpg\",\"gender\":\"Female\",\"phone\":702413242,\"lastVisit\":\"15-09-2019 1:13:33 am\",\"createdAt\":\"2019-09-14T22:13:33.000000Z\",\"updatedAt\":\"2019-09-14T22:13:33.000000Z\"}}', NULL, '2019-09-14 22:13:36', '2019-09-14 22:13:36'),
('21d1e088-1580-4a3b-8d9b-7877c93bf835', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 2, '{\"patient\":{\"id\":9,\"firstname\":\"Kennedy\",\"surname\":\"Peters\",\"middlename\":null,\"patientNo\":\"000009\",\"avatar\":\"IMG_1568498569.jpg\",\"gender\":\"Male\",\"phone\":700412127,\"lastVisit\":\"15-09-2019 1:02:49 am\",\"createdAt\":\"2019-09-14T22:02:49.000000Z\",\"updatedAt\":\"2019-09-14T22:02:49.000000Z\"}}', NULL, '2019-09-14 22:02:53', '2019-09-14 22:02:53'),
('2591bb7c-658b-4ae8-8784-0677231c7d85', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 1, '{\"patient\":{\"id\":11,\"firstname\":\"Kile\",\"surname\":\"Baerr\",\"middlename\":null,\"patientNo\":\"000011\",\"avatar\":null,\"gender\":\"Female\",\"phone\":90920202,\"lastVisit\":\"15-09-2019 1:18:15 am\",\"createdAt\":\"2019-09-14T22:18:15.000000Z\",\"updatedAt\":\"2019-09-14T22:18:15.000000Z\"}}', NULL, '2019-09-14 22:18:16', '2019-09-14 22:18:16'),
('313bf55b-7cc2-445a-b807-6049ea878ee8', 'App\\Notifications\\Patient\\AdmittedNotification', 'App\\User', 2, '{\"patient\":null}', NULL, '2019-09-14 20:51:01', '2019-09-14 20:51:01'),
('378d4951-2c2e-4526-b1cc-08f40f755b01', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 3, '{\"patient\":{\"id\":11,\"firstname\":\"Kile\",\"surname\":\"Baerr\",\"middlename\":null,\"patientNo\":\"000011\",\"avatar\":null,\"gender\":\"Female\",\"phone\":90920202,\"lastVisit\":\"15-09-2019 1:18:15 am\",\"createdAt\":\"2019-09-14T22:18:15.000000Z\",\"updatedAt\":\"2019-09-14T22:18:15.000000Z\"}}', NULL, '2019-09-14 22:18:16', '2019-09-14 22:18:16'),
('48428cea-89ff-4917-8351-e6033e1d4b6a', 'App\\Notifications\\Patient\\AdmittedNotification', 'App\\User', 2, '{\"patient\":{\"id\":8,\"firstname\":\"Kennedy\",\"surname\":\"Peters\",\"middlename\":null,\"patientNo\":\"000008\",\"avatar\":\"IMG_1568494558.jpg\",\"gender\":\"Male\",\"phone\":700412127,\"lastVisit\":\"14-09-2019 11:55:58 pm\",\"createdAt\":\"2019-09-14T20:55:58.000000Z\",\"updatedAt\":\"2019-09-14T20:55:58.000000Z\"}}', NULL, '2019-09-14 20:55:59', '2019-09-14 20:55:59'),
('66c9b5f1-e9fc-43ba-b0ef-e2434e03afd5', 'App\\Notifications\\Patient\\AdmittedNotification', 'App\\User', 1, '{\"patient\":{\"id\":8,\"firstname\":\"Kennedy\",\"surname\":\"Peters\",\"middlename\":null,\"patientNo\":\"000008\",\"avatar\":\"IMG_1568494558.jpg\",\"gender\":\"Male\",\"phone\":700412127,\"lastVisit\":\"14-09-2019 11:55:58 pm\",\"createdAt\":\"2019-09-14T20:55:58.000000Z\",\"updatedAt\":\"2019-09-14T20:55:58.000000Z\"}}', NULL, '2019-09-14 20:55:59', '2019-09-14 20:55:59'),
('7c72d88e-28d2-4d52-9dc9-3ab84dacb33b', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 1, '{\"patient\":{\"id\":10,\"firstname\":\"Doe\",\"surname\":\"Jane\",\"middlename\":null,\"patientNo\":\"000010\",\"avatar\":\"IMG_1568499213.jpg\",\"gender\":\"Female\",\"phone\":702413242,\"lastVisit\":\"15-09-2019 1:13:33 am\",\"createdAt\":\"2019-09-14T22:13:33.000000Z\",\"updatedAt\":\"2019-09-14T22:13:33.000000Z\"}}', NULL, '2019-09-14 22:13:36', '2019-09-14 22:13:36'),
('7f082919-fd0f-4f0f-9d3c-044ab7973aed', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 2, '{\"patient\":{\"id\":10,\"firstname\":\"Doe\",\"surname\":\"Jane\",\"middlename\":null,\"patientNo\":\"000010\",\"avatar\":\"IMG_1568499213.jpg\",\"gender\":\"Female\",\"phone\":702413242,\"lastVisit\":\"15-09-2019 1:13:33 am\",\"createdAt\":\"2019-09-14T22:13:33.000000Z\",\"updatedAt\":\"2019-09-14T22:13:33.000000Z\"}}', NULL, '2019-09-14 22:13:36', '2019-09-14 22:13:36'),
('a88e0c93-546c-4632-b7f8-eed6eb3b744f', 'App\\Notifications\\Patient\\AdmittedNotification', 'App\\User', 2, '{\"patient\":{\"id\":7,\"patient_unique_id\":\"000007\",\"admission_date\":\"14-09-2019 11:51:49 pm\",\"firstname\":\"Kennedy\",\"middlename\":null,\"surname\":\"Peters\",\"id_no\":35281226,\"date\":null,\"month\":null,\"year\":null,\"dob\":null,\"avatar\":\"IMG_1568494309.jpg\",\"phone\":700412127,\"email\":null,\"gender\":\"Male\",\"marital_status\":null,\"blood_group\":null,\"address\":null,\"is_active\":null,\"patient_type\":null,\"credit_limit\":null,\"insurer\":null,\"old_patient\":null,\"proccessed_by\":1,\"user_id\":null,\"disable_at\":null,\"deleted_at\":null,\"created_at\":\"2019-09-14 23:51:49\",\"updated_at\":\"2019-09-14 23:51:49\",\"note\":null}}', NULL, '2019-09-14 20:51:50', '2019-09-14 20:51:50'),
('df1c44e6-57a2-4cc9-b8b4-02bfd11d2c7a', 'App\\Notifications\\Patient\\AdmittedNotification', 'App\\User', 1, '{\"patient\":{\"id\":7,\"patient_unique_id\":\"000007\",\"admission_date\":\"14-09-2019 11:51:49 pm\",\"firstname\":\"Kennedy\",\"middlename\":null,\"surname\":\"Peters\",\"id_no\":35281226,\"date\":null,\"month\":null,\"year\":null,\"dob\":null,\"avatar\":\"IMG_1568494309.jpg\",\"phone\":700412127,\"email\":null,\"gender\":\"Male\",\"marital_status\":null,\"blood_group\":null,\"address\":null,\"is_active\":null,\"patient_type\":null,\"credit_limit\":null,\"insurer\":null,\"old_patient\":null,\"proccessed_by\":1,\"user_id\":null,\"disable_at\":null,\"deleted_at\":null,\"created_at\":\"2019-09-14 23:51:49\",\"updated_at\":\"2019-09-14 23:51:49\",\"note\":null}}', NULL, '2019-09-14 20:51:50', '2019-09-14 20:51:50'),
('e7159bf4-2a74-4570-8e21-c3fe430aa5d5', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 2, '{\"patient\":{\"id\":11,\"firstname\":\"Kile\",\"surname\":\"Baerr\",\"middlename\":null,\"patientNo\":\"000011\",\"avatar\":null,\"gender\":\"Female\",\"phone\":90920202,\"lastVisit\":\"15-09-2019 1:18:15 am\",\"createdAt\":\"2019-09-14T22:18:15.000000Z\",\"updatedAt\":\"2019-09-14T22:18:15.000000Z\"}}', NULL, '2019-09-14 22:18:16', '2019-09-14 22:18:16'),
('f989a062-fdc9-45cd-983b-767de2ab1a0e', 'App\\Notifications\\Patient\\AdmittedPatient', 'App\\User', 2, '{\"patient\":{\"id\":10,\"firstname\":\"Doe\",\"surname\":\"Jane\",\"middlename\":null,\"patientNo\":\"000010\",\"avatar\":\"IMG_1568499213.jpg\",\"gender\":\"Female\",\"phone\":702413242,\"lastVisit\":\"15-09-2019 1:13:33 am\",\"createdAt\":\"2019-09-14T22:13:33.000000Z\",\"updatedAt\":\"2019-09-14T22:13:33.000000Z\"}}', NULL, '2019-09-14 22:13:36', '2019-09-14 22:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01493accb79388f31c16b0bd5adac7119475c8f8a2a8df594ca27141170026b97e7d8f48ef475a89', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:44:08', '2020-02-22 10:44:08', '2021-02-22 13:44:08'),
('06286160f8154d9617810517407a555b6125e813b7f4c0992c82d04f78e6b78d285d967edc30891b', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:14:07', '2019-12-18 15:14:07', '2020-12-18 18:14:07'),
('069fe19a2d349e18a1e5777ba5f4fd159e8bebdae3eff6fc1bea11237700b2a601feb37f17084130', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-05 21:33:50', '2019-11-05 21:33:50', '2020-11-06 00:33:50'),
('06cd9a14c01ce2628fc161453bbb2fabc3f58a0e8290033b4709bbc043a2a7ebdfae77eb254eafa3', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:09:27', '2020-02-22 11:09:27', '2021-02-22 14:09:27'),
('0960d4ed57d459720513341a834c0cbd56abef9bed258745cdb1baa155f2ffaf61fb96d8d9e5e426', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 20:21:06', '2019-11-03 20:21:06', '2020-11-03 23:21:06'),
('0c3c4d6aa029d37e659b2349fcc9c27276d8200b141f5f30b48d8a1d5e8c83ee10bd7d7ab1b4f87f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-28 12:46:03', '2020-02-28 12:46:03', '2021-02-28 15:46:03'),
('0c53794266ff1776f8c7bcd80351864e53e6328c5e6282a1ca009663e848c38dfb476c8e6f457e4e', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 12:48:28', '2020-02-27 12:48:28', '2021-02-27 15:48:28'),
('0caaca5f4f32ab8346b14e12b9f0148102432e7d91ad430fc5a9accc9eb4c83a1164100df9854ba0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 20:28:06', '2020-02-25 20:28:06', '2021-02-25 23:28:06'),
('109c79f735db2614d2116ca6aca71eb5ce65d546bbfb0c615faaf50b7ba7c46d492dae09c726d5b7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 12:29:45', '2019-11-03 12:29:45', '2020-11-03 15:29:45'),
('10af96a321d2d32f5d571bba9e1e0a72b0271ab6f4b5bb5ae5c7ff022018b26ca477347e06b91eeb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:13:22', '2019-11-04 02:13:22', '2020-11-04 05:13:22'),
('10f41e168c629675f0f11f2883482bdbc1e53b2fdc4e47769f20e581df019230a8300449b2ceefa7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 11:48:48', '2020-02-27 11:48:48', '2021-02-27 14:48:48'),
('11d74839e5e99cf1fff155a80428015a19b135d342223af74b16f3aa6fb1361dd8b0a3d38b838eb4', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-22 22:57:21', '2019-12-22 22:57:21', '2020-12-23 01:57:21'),
('12317a12e09d90aa30eb80a843e3d419f7a79cf3c46e6b3afb583873694079b9c41140123c107b3c', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:05:52', '2019-10-31 11:05:52', '2019-10-31 14:08:51'),
('126c37da27232b46e22db131d3b307784dec16e3c818a07e7546f54bb50745f3dcba6ccfb4f2182b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:28:47', '2019-11-01 16:28:47', '2019-11-01 19:31:46'),
('1387581fee1a021cdefa7afdcbf2ac1371f7f21ea69d0dc8a8a27422c0dea19811efe06b7d04465f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-21 04:26:57', '2019-12-21 04:26:57', '2020-12-21 07:26:57'),
('140fe7a0f2a615a45eb4df73ec5197989f1c1ba816264228beef3a127fe3889ae5128a6c3438d984', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:14', '2019-11-01 23:41:14', '2019-11-02 03:11:14'),
('15e90670059e505c8f434d5ef677c19feeb2c26455e4ef80742b5e3b06fd794c9b6bbac7f106be63', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-19 10:19:59', '2020-02-19 10:19:59', '2021-02-19 13:19:59'),
('1604f45842e3e5f117bfee3b6eb016506222fa0c3f68f6d793d236ead5e2abeb6560e94e54bcd971', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 22:28:30', '2020-01-07 22:28:30', '2021-01-08 01:28:30'),
('163b28cb9149c59efad0579a594dffeeded6dbcc86640f2cfeecb1faf146d5a4b445b10c1d04a292', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 11:18:39', '2019-11-06 11:18:39', '2020-11-06 14:18:39'),
('16f38f1b99f4010324349eb1ab84bebf6751e7a0569281672e52752e0bb071b0d6dc2fce2d6073a4', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:45:14', '2020-02-22 10:45:14', '2021-02-22 13:45:14'),
('18e94c56a89b9c5b5071aa456902e99083de0c2e2875541a3435ff4ffb6c7e878c28f623d359ce41', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:13:08', '2019-12-18 14:13:08', '2020-12-18 17:13:08'),
('1b19647b5fdc336a86f09aa58fb51ab71dd27a9e7afd28d6cb1a60100581a735287b8bba6b7dca9f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:05:38', '2020-02-25 22:05:38', '2021-02-26 01:05:38'),
('1b954fa5b8b436f9b1a76f158a66d20568ffd0e427ed76473b0779cf0010f6dd5de6c71c3ddac93b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:15:33', '2019-12-14 22:15:33', '2020-12-15 01:15:33'),
('1bc3fe1f2a8efc7cb80ce6d9c8f8a25cf2666a8ba9634ea3485b4573bd3ffd46b10f590808cc3cf3', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:57:18', '2020-02-22 10:57:18', '2021-02-22 13:57:18'),
('1c4e164b281538956954b62aca270663422a4a4d4f311bba01c6e0795233d9d0ed74e0b2451fc4c5', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 23:12:41', '2020-01-07 23:12:41', '2021-01-08 02:12:41'),
('1f72460b1406c80d0bc5ef965747a543dd8117ca877d10bd12673ed94b934aa9093affbf7d597fd3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:19:24', '2020-02-25 22:19:24', '2021-02-26 01:19:24'),
('20de220f0e3d6af59dce7d41a394a06995e018ffdff11d2ddf36e18b6960f2a39ceb971d1ec235d8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:14:45', '2019-11-04 02:14:45', '2020-11-04 05:14:45'),
('21a57cf1ed9dd2e4c5acf378903101c84f54d76cd0d616c7ae27e5afd4f77d976494d3065fd47b52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:31:01', '2019-10-31 12:31:01', '2019-10-31 15:34:01'),
('260c0ba09c3688a644cb6076c8bf6e9519f8407a5e26c47ed8fe34de78194c712b83899a071a797a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 13:05:53', '2019-11-01 13:05:53', '2019-11-01 16:08:51'),
('26bfc9d8c787ca026d8603d6c137e4f74d6e520d928650e85794a28e7aa802747215112d52e67b22', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 13:06:24', '2020-02-06 13:06:24', '2021-02-06 16:06:24'),
('279a8f8c0647d6fc1bd2d8f19d2195f46eccb525f95ec5a5e993f175e4f41094d36b53c26771437c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-05 21:41:30', '2019-11-05 21:41:30', '2020-11-06 00:41:30'),
('2924f74d84009d72f5538c6adb5b48a589106d80e61d18c394b5a641ee03af2583ac019d5df7e622', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:28:36', '2020-02-22 11:28:36', '2021-02-22 14:28:36'),
('295819934fca76fffb52a2c5e6b3987bd70db14421f3dc3bc63fe124fa6352f0cd54b89be8ba2a7a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 13:39:22', '2020-02-06 13:39:22', '2021-02-06 16:39:22'),
('299013c70b47ab808cf8c65d18ef620071f3ef7b6dd7f218964541065535545ddbf5e79f63910484', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 19:31:47', '2019-10-22 19:31:47', '2020-10-22 22:31:47'),
('2a8216192d60e759e00942b4fdd26893c09a175372c1adccc9288182b7049230837c3daa4233d90c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 14:28:24', '2020-01-07 14:28:24', '2021-01-07 17:28:24'),
('2a860ca95598d22c385b3d1b5c793f601c333bdf275a40486710705ef3e9f774b48e7776a33d4302', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:07:43', '2020-02-22 11:07:43', '2021-02-22 14:07:43'),
('2b57bbb74d3c200c920dde6e658166fccbfb7ad340a1a072a83a21195ab3c5b067892bddc5c3f321', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:08:18', '2020-02-25 22:08:18', '2021-02-26 01:08:18'),
('2d596f1d386763608b0342cd3c2bc4b114d0c7255c64ad90f58b1563abb19c7361c890288121aefa', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:58:47', '2020-02-27 09:58:47', '2021-02-27 12:58:47'),
('2f50e7fc4423bd7f855f0189dc7ce28943de38e7e8bcb5b39a476bc5c00054e2bf46b071a35cc263', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 13:08:20', '2019-11-06 13:08:20', '2020-11-06 16:08:20'),
('2f681427c1a04e7f90338d44d2d0656d4857ed00e40efebe1fe3fd1fccbb4d7930fb1ea93d44f8df', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:16:14', '2020-02-25 22:16:14', '2021-02-26 01:16:14'),
('31269befddc548761198daa03f7d7b903ed7bc91f29a4814b85ceff957b7e845ff8843744a86272c', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 11:57:41', '2019-11-03 11:57:41', '2020-11-03 14:57:41'),
('312c3a2e47726f9f3f197761e4a872f14f359e9754b9c6f176f3644269139b042fdc5fce34062953', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:50:15', '2020-02-25 22:50:15', '2021-02-26 01:50:15'),
('31ea564221a3807556074c17a8796624f8721ecabc32e0675884cf97ba9aa3ee9d2cc39744bf81f2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 19:06:21', '2019-11-04 19:06:21', '2020-11-04 22:06:21'),
('32c7bb79ee856b9a31cc019d93160cd76f225a3f2d2da54797aa78872e236c0d040757d8618f1402', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-09 15:11:58', '2019-12-09 15:11:58', '2020-12-09 18:11:58'),
('332e2234441246298bce22f6a8e600ace8a7631b88bd05271cb0ba6a7a663cda89bfc5f792a3a0cc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:14:03', '2019-11-02 09:14:03', '2019-11-02 12:44:03'),
('33b3d80f44aec83cdf70d3b2c8ae1252682712327ff5977651c33e4f5b993e85e635ac19d7673b86', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:57:52', '2020-02-27 09:57:52', '2021-02-27 12:57:52'),
('37e028130aac0fbcc60bb5db35d9c6dcb00c04dd4bc39bb630876d3c9fb9a855d9e5e87d46912d1b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:42:04', '2020-02-25 22:42:04', '2021-02-26 01:42:04'),
('3ab071d12b640a2cd0c0d34cf1a90f01fdc60494c1a7041170c1aa33b126cfa5f0a5924df0c62a18', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 19:31:32', '2020-02-06 19:31:32', '2021-02-06 22:31:32'),
('3b0486fd2c59d45ecfa313e0fbed2073a7322c8ddf380c1404bc0381588ac7d032d2321096976d52', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 19:20:42', '2020-01-04 19:20:42', '2021-01-04 22:20:42'),
('3c8e0f05cdbdb53d208ea3c6a542af29ab1504c22e495d16611b2ef9efe3a85a53462160b25292fe', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:14:13', '2020-02-22 11:14:13', '2021-02-22 14:14:13'),
('3d8dc672b08fa1b34e0da9a5c7768c3f53977bfdfced490aad04eec17460dacda33939266d86f9e4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 21:58:22', '2019-12-14 21:58:22', '2020-12-15 00:58:22'),
('408b5399af225d7388963a61a48d46a6c376c3bad01a71e439d21e14fa094a454ce639d42ec3c609', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-25 16:57:25', '2020-01-25 16:57:25', '2021-01-25 19:57:25'),
('40989f30ef64d78846c145789274deb01a63d077a0aa9f7105af7530c47e8fa64ff9eeeb4a5903bf', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 19:19:13', '2019-11-06 19:19:13', '2020-11-06 22:19:13'),
('40d858e3617c318e11d11a45474ff6fbed0f75a9f151c4a7d6a5186aeca2875a8e90d9909906f597', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:33:58', '2019-11-02 00:33:58', '2019-11-02 04:03:58'),
('4299321b95f335d90161ca420fbf442f8de5a12d01647bffe10312a4c35541a1a9f3bc4138d7a60c', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 16:15:09', '2019-12-18 16:15:09', '2020-12-18 19:15:09'),
('431390f4fd386f7f29679f91d3b7ed2a448d8a1697fb140d4e9469fdfd4aabc6b76b8eb953c2e8fa', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:37:52', '2020-02-27 09:37:52', '2021-02-27 12:37:52'),
('43ecc6eb8f27f72b2589f6da1347d85b47d8535a06c498e6b65935e2ee8408f2c683be1f31c2bca0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 23:07:43', '2020-02-25 23:07:43', '2021-02-26 02:07:43'),
('475d76d875fd5bb5f777d5bfc2173dd8b97fbd6de12fa40dcc726c0b5abc408ca982fbd7f5b92c0a', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:39:43', '2019-12-18 14:39:43', '2020-12-18 17:39:43'),
('484adc5e7ed28a241a3ed9d2422cc72ef620069f057648d923bc261ebffce3cfd928ed060f9f133d', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 12:10:08', '2020-02-25 12:10:08', '2021-02-25 15:10:08'),
('49b6d70d6e2dc90e7fecbda817080575ee8b4e67447b3cc60566ef45aaadb9cf206b8d2e53737d96', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:56:28', '2019-10-31 10:56:28', '2019-10-31 13:59:28'),
('4a06a2ba2529d675fbc8db71af3c460fe3315fe7109a6c232b0baa6de06f222710a37d8c9bc4d201', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 21:19:14', '2019-11-02 21:19:14', '2020-11-03 00:19:14'),
('4b877c1293d72c1261ce027bc21588ae1c06684d2dd3bde1b76c6009e8e3a416ad990aded531eb19', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:38:30', '2019-11-01 23:38:30', '2019-11-02 03:08:29'),
('4c2f29e0cc193d641102b1021cdbfe75b378d2cf53cffaa7597533fae020f424fc9bff4cd37bc793', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 13:40:11', '2020-02-06 13:40:11', '2021-02-06 16:40:11'),
('4d52b78c871c1302a35b816dd0317d42910865bcaca75b2f652ebe9c98396cf274c4cfe562db71b6', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:23:30', '2019-11-01 19:23:30', '2019-11-01 22:53:30'),
('4ee76e6cf2657376e550e9b7fe055667294984c026a001dbff4a5da2d6770ae95a066937e7dc7722', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:25:06', '2019-11-01 19:25:06', '2019-11-01 22:55:06'),
('5155b9e2333dba4ebc35d075fac4b833c99b28ac4cf2f609b289f6fdeb4477eec505389009eedda5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:32:00', '2019-11-01 23:32:00', '2019-11-02 03:02:00'),
('51d007e15d3e0a1d893f984a0737d84017703aa0117f7abe47b4af0925c9edc2e33ef160114d9948', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 23:01:38', '2019-11-02 23:01:38', '2020-11-03 02:01:38'),
('5235d7ff0c3340bae035c15a8c604d9af43f105ae5086a28d91f5b004c96d8339099e8893d597142', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:59:59', '2019-10-31 10:59:59', '2019-10-31 14:02:59'),
('538f30ef6a66edb7907f981ef7615be6f7562996efd411267a9ab89af7d50293849744cd0607c609', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:20:52', '2019-12-15 22:20:52', '2020-12-16 01:20:52'),
('53fac1e3acbe2abc9f9892e05afd9c77c1c9d421499725155833ef10586584c711016e0e9b4a800b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 00:52:55', '2019-11-06 00:52:55', '2020-11-06 03:52:55'),
('5494ac8fe8bcf071a38f950c9291fd06e780e02e82012349fc332abe7a316552b647fb676db84015', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:56:01', '2019-12-18 14:56:01', '2020-12-18 17:56:01'),
('54fef41f33916b8d28d1c86dba97f8341129fdc07cab6144a76e541aae8416a2699139e32f1811d1', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:33:45', '2019-12-15 22:33:45', '2020-12-16 01:33:45'),
('57c145d8067f1d71b46c9fe5bfb077de4a9b433db4d066710f64be25c1db5713167d285be34b4536', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:32:08', '2019-11-01 23:32:08', '2019-11-02 03:02:08'),
('595d4705ea976fbea962fafd68a82fac19bd496faed3d2ce9d9b0e4dc70e25fdf0e293619eacb4e6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 20:19:25', '2019-11-03 20:19:25', '2020-11-03 23:19:25'),
('5dfd028d5bf53fff29c51e504715ea019a2884844d94eaa5b5b2d1cee27528cb6274aa1506e2717c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:11:15', '2020-02-22 11:11:15', '2021-02-22 14:11:15'),
('6003bff3552a14a4d8fb5f58897bf9bd11d55d0463567bbd7b476a722b911a03d5e05bc7b9e031df', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:35:39', '2019-10-31 11:35:39', '2019-10-31 14:38:38'),
('63a5f75ccbf5ebde97006f36ca1df4faa918773ef36d6fe52e0ea24e35a351500300ca57e781d3d3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:48:10', '2019-12-15 22:48:10', '2020-12-16 01:48:10'),
('63aa626c5edaafc14bf6696bf0eded8e81321aab34e27158697ed881edb2caeff28a297e049da317', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 11:21:18', '2019-11-02 11:21:18', '2019-11-02 14:51:16'),
('64289a7143f707a69b4b9aa851eeb4ca4ecae04ec5f679e2cad43606076d05133b875db5dc24107f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:52:13', '2019-12-23 23:52:13', '2020-12-24 02:52:13'),
('669ca45e16ba03ae2eeb24a0a42b7932f3da2d067509b35b18c63231dc10e9c9ab4b07499106073f', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:40', '2019-10-31 11:00:40', '2019-10-31 14:03:40'),
('6aa30eb8c32cb574d51ffd1cf42eb0b760ec8232fce29c61ac65a61c7f8ea2fbe9ef1312b5ac5519', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-19 09:24:49', '2020-02-19 09:24:49', '2021-02-19 12:24:49'),
('6e8bd870d265e83cb8d6dcaf603859e69bc6470a4f797da54fb8d2b85c60a33467e7e12982eaf8ad', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:16:33', '2020-02-22 11:16:33', '2021-02-22 14:16:33'),
('6f5f43663ae55f6ad0495308d09a4cd126ca773d2f2d21d341a77d624b82bea8a4684bce37f6251a', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:46:32', '2020-02-22 10:46:32', '2021-02-22 13:46:32'),
('70cbf4c908c3a6705acd192bd3c5b522e748b8624729f8d942c7fe90f3dee1299382307eb40031d1', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-23 09:06:55', '2020-02-23 09:06:55', '2021-02-23 12:06:55'),
('726aa7707d3b621e03811ea6c9f6e5db2540adeaa154efa9ae7129bc608088e050f7f7c05697f285', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:39:28', '2020-02-27 09:39:28', '2021-02-27 12:39:28'),
('72ac2109c3a8e2711ad3a800755bb7519177c9e48870cae884a4206c436ac37f33e5c49381c74b07', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:35:50', '2019-11-04 02:35:50', '2020-11-04 05:35:50'),
('76faa4e73f3d482d3b39443566aa474ea525f3c8479feb71a77cb530155ff8a3dd3a1cef479b6559', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-28 20:03:25', '2020-02-28 20:03:25', '2021-02-28 23:03:25'),
('76fdd7f1d23e2a62f1ff651c14c06bbf2f8cc7fe423e1ab307b99e5838729568867830a48de5ce06', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:02:01', '2019-10-31 12:02:01', '2019-10-31 15:05:01'),
('78563a165480f7c4a98f223be0f64def2ba639209a547d71b58b12a8b0fa15dfa75732732be55db9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:11:14', '2019-10-31 11:11:14', '2019-10-31 14:14:14'),
('7c5ee386b1df18e1e33cd5f7e1e57f09fab45d9d5fb15e9772c9589cd3e4a1c03df64a273b6ccdf4', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-28 09:27:58', '2019-12-28 09:27:58', '2020-12-28 12:27:58'),
('7d04058ecdcf0b3d477d6d1f40cbfeb41b2eee599fb9d2e6f56efe7f21a25cf57c7aafab5f58f0b8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:15:52', '2019-11-04 02:15:52', '2020-11-04 05:15:52'),
('7d53ba55d4323d8e4c575b9cff27c22364578df11a754ccbfb3fd4d03fb5ac99da55cc9bfe0d5a8a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 00:58:53', '2019-11-06 00:58:53', '2020-11-06 03:58:53'),
('7d814d8b1e9439ee2405bd31c5af4a46c65091b2be38146159f2cbc69ec69eeebd8cc016dac67487', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:21:32', '2020-02-27 09:21:32', '2021-02-27 12:21:32'),
('7ec3e5fdc0f9247cf4366f0a569c3862c9b8d621f3f177bb7620f210a0d595ab27af6ba62c7a3d65', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 19:21:50', '2020-01-07 19:21:50', '2021-01-07 22:21:50'),
('7f17980d476dd0ce022587021dd5e1bfb4a13123bc81ba95835ea315f80488cf5fed244ccdb8d517', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-26 09:20:28', '2020-02-26 09:20:28', '2021-02-26 12:20:28'),
('8009271834517bb7724eb9f16e503b8d1edeb3f27b894b463f7668677cb04373f4a5a95709227c63', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 12:07:44', '2019-11-03 12:07:44', '2020-11-03 15:07:44'),
('80b64111f06de3f2b39b9f5db899ec412b02533519fa2343b894fde0d7cad559afb1362d7794c98b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:29:16', '2020-02-25 22:29:16', '2021-02-26 01:29:16'),
('828b9bc9b1bbacd1e8bb14f0d2fa1d9d87447aa9134d92790025888f62ef36c5248ec31271099d93', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-21 18:54:12', '2020-02-21 18:54:12', '2021-02-21 21:54:12'),
('8631cc8a5cddbd8b98c1a0b07396b76ef750b86547913e10d6db48f628347f5e51224f2d8198946f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:28:38', '2019-12-23 20:28:38', '2020-12-23 23:28:38'),
('8834085cbb716e989a457138ed3960caec6bbe85115d8adf267189eb5072e0f1375489b93bbbae73', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:07:28', '2019-12-18 15:07:28', '2020-12-18 18:07:28'),
('89f6dfdb7e917d4094b5575b10ca0d722587e40d262799dfadbbe57bc78fd6870f05f0e7de36764a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:05:24', '2020-02-22 11:05:24', '2021-02-22 14:05:24'),
('8a4beb44f6a888dba79e3f04e184a9143afa248eb03a64492d4c4ba51a0c3e47ff6107772633ff00', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:56:26', '2020-02-25 22:56:26', '2021-02-26 01:56:26'),
('8b31b24411bddd823cfa86f053a90c083b0cacd65b737532575e2e8b8a7f8a716f70b51922106f56', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 17:58:53', '2020-02-25 17:58:53', '2021-02-25 20:58:53'),
('8b9a77fdde404e1ac567acf4b0ecbdcc34c70416df03e61b53d5384163b826cd0913376cd344a0e6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:26:02', '2019-11-01 19:26:02', '2019-11-01 22:56:02'),
('8e21dcac71c7f07b147b39ba714434ddd5c3faa55c4cf49b7e295eaf7cb28b10f9763fbc4cdd3488', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 09:29:35', '2020-01-07 09:29:35', '2021-01-07 12:29:35'),
('8edc81275311ea44aeddc1003b25745c18efaecac50ecdf1e13f1098abc6c79e756de60b836771cb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-21 23:06:12', '2020-02-21 23:06:12', '2021-02-22 02:06:12'),
('906a80d554aaedd12c2b67a4f297e849a4cdbf1cc4488fd79b0f9560966eb91eb7f87cd729cd8eaa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:41', '2019-11-01 23:40:41', '2019-11-02 03:10:41'),
('9169e3f84411aa41c920d439ae0a02351f96ac49f4d3c0836be07274ef09248006d7e516aee1d7ea', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-08 08:24:40', '2020-01-08 08:24:40', '2021-01-08 11:24:40'),
('91844687a95e66d8b104cb47de54603fb353128bc67c6a0ee8a2c560a0981c4d6bd5c701f0821306', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:26:12', '2019-12-23 00:26:12', '2020-12-23 03:26:12'),
('923c4c978217a2d0d8191151ce51664091447283168c9365c8c7c70b6f840102454fa6856fbf42f5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:49:49', '2019-11-01 16:49:49', '2019-11-01 19:52:49'),
('9281a442821bdb883307fea715cd3eb17556549d7a4b5b7b452c5d99e77d159265706353d28b9ca3', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:20:30', '2019-12-23 00:20:30', '2020-12-23 03:20:30'),
('935489528112d1d11bc702cceb985c879a7555cc527272b5067aeba14134ca1af69e2fb01728bd14', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 13:46:12', '2020-01-07 13:46:12', '2021-01-07 16:46:12'),
('949208c9285b0c9fb4c4db1a4e21410131ed97bca29ff3d877ae3a2c4c99c780d43760a398313a63', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:37:49', '2019-12-23 23:37:49', '2020-12-24 02:37:49'),
('95814b2a827570e1568897dcac2c3a445f531f4b0bc2c743a92c12e0ecf943565e7c709496c439fa', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:34:08', '2020-02-27 09:34:08', '2021-02-27 12:34:08'),
('961d81639fea4762c89a6746b947d5b68bf1a8b31f0b02a507cc300a55075bfdc6ffef30523d1186', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:24:46', '2019-12-23 00:24:46', '2020-12-23 03:24:46'),
('964be09e6520dd2bad6b93f90119d183e500dc4f74c6727329fbfbecbf923783c7cb3489d0069e52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:04:17', '2019-11-01 17:04:17', '2019-11-01 20:34:17'),
('965c9cb85f3f62a82ff07230b00a226f5e9009395d83ecc9671070a718d19486cb04cb654d23a677', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 10:04:16', '2020-02-27 10:04:16', '2021-02-27 13:04:16'),
('9669c2e6623ba2005c1c9f825d8ecc2e5f55c7062c4bc45700892ef6ad95b18e13365abdcfa1f325', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:53:08', '2019-12-23 23:53:08', '2020-12-24 02:53:08'),
('966a45dbee68b79c56d3d2edc8a5a23f8be630e3349b42d5f4b3f07ad99ba4dbf6ac7d5b70490482', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:17:54', '2019-10-31 12:17:54', '2019-10-31 15:20:54'),
('9b55034e8a855618c63d26a3b0f111bf3844cd92a906ba4194cf89a9eef3db4abe92875a6c4ce9db', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:17:21', '2019-11-04 01:17:21', '2020-11-04 04:17:21'),
('9b6328ba5edb70ba05ba6551e9a14774a6da652e98f7a4c24e3ede24a3cf8aff03cb1a70f030d54e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:05:50', '2020-02-22 11:05:50', '2021-02-22 14:05:50'),
('9b7c52642ed814aeb2cf20fde4ac7093d2709271a5cc7b9135605b1de431e3366eb5fb439811d37b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 13:09:15', '2019-11-02 13:09:15', '2019-11-02 16:39:14'),
('9c4a65ba6272d2c647b007dd7a753087d705ce3d567047d05718daa9e7875f4f7e05dfed285de781', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:08:40', '2019-10-31 12:08:40', '2019-10-31 15:11:39'),
('9c79250ebf1d3153d7fd88a0f8a3693dadd52caf969b10ff6fb47420992ae85d79a03a231f3ff195', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-28 09:34:44', '2019-12-28 09:34:44', '2020-12-28 12:34:44'),
('a180835780d6bd0a9408d81d0b842d12ce4975448ffe7f209ba6bca77fb3485455c397891c71f1c5', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:02:28', '2020-02-22 11:02:28', '2021-02-22 14:02:28'),
('a2652c10070c1be0c874c2a543ca8098269ea86742e5b5df72666e2cfbf6da8ac3ab5342c34de2e9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:52', '2019-10-31 11:00:52', '2019-10-31 14:03:52'),
('a2cfccc10a03e2956bfb63f8e11fcacf6201a800e6d77f5c92ae22c0e648d25f98326174ddee5b24', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-16 22:35:58', '2019-12-16 22:35:58', '2020-12-17 01:35:58'),
('a36bc96f16d58e0a2801e7f53662e13b6a926de92a71bb82bf80d7d0bcf19bf3fd46c347802c4446', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 08:15:15', '2020-02-27 08:15:15', '2021-02-27 11:15:15'),
('a9634d36760b7187cf4eb251618b09c595fa6736d4f3422bc3d1d7b3f0bd83c184df049dfe0bd579', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:22:56', '2020-01-04 20:22:56', '2021-01-04 23:22:56'),
('aa293a1d65adb86742534f83f75f15139164e0f2ac4700d29030ae1dcf8f5c492e21159849e77df3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-25 16:51:17', '2020-01-25 16:51:17', '2021-01-25 19:51:17'),
('abcf93c0963772bd4c51a0564a880b172a63fefbe411dd7463f4f7c14068e53f4595a6aa40e89548', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-21 23:11:51', '2020-02-21 23:11:51', '2021-02-22 02:11:51'),
('ac3924b05c07034659c479e7269049407a3e4796d37a57ae63410d34b774541c6a27066fd130132a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 08:19:25', '2020-02-27 08:19:25', '2021-02-27 11:19:25'),
('ac9e3b16e5c6f25f9448261d1bddcf7334ea59eb068f458387eecdc77e2809b5978bf1c11f71b4ee', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:00:28', '2019-10-31 12:00:28', '2019-10-31 15:03:28'),
('ad6ff4f765498c9a3add0f6ccc56feb0979953fd554f16e6a1a1b5b88d89d14f06402349cebb18a5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 10:28:27', '2019-11-02 10:28:27', '2019-11-02 13:58:26'),
('b0c154bb58033ef4489d4dc424664b89f204a4b64fa45691533c74119c6658c0999279c92ebdf107', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 09:27:39', '2020-01-07 09:27:39', '2021-01-07 12:27:39'),
('b11d21635cd75ce5e3e9aaff8055bcb8d8f86a3a0154473d6c25ec8bdd5e83079a2558d964a23f40', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:20:33', '2019-12-14 22:20:33', '2020-12-15 01:20:33'),
('b21d948df1fe946ccea419fdcd63eeac61b28da24168491c53140cf786d1e3a510be75b9f49f9f85', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:31:22', '2020-02-25 22:31:22', '2021-02-26 01:31:22'),
('b231527a046eeb77e5e097335f9b3c3e50488913991fb6f0d45b2824ba90c6877910e60017c06ab3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 20:10:02', '2020-01-07 20:10:02', '2021-01-07 23:10:02'),
('b27b42772ff5f36e203d9240e8c29f0ec93c099f365c1f80aa28a7e13fc852766d5393ba761fe0e3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-09 15:16:45', '2019-12-09 15:16:45', '2020-12-09 18:16:45'),
('b49814288ce3795e2d64dafb3cb5375ab2ced3dbce3f25c4c231f1176faa671475ff42aca4cf4dcf', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:11:01', '2019-12-14 22:11:01', '2020-12-15 01:11:01'),
('b57536b28b0dfdba55107d0a7d69f9fc9588102f10e4a8bb112ec4b7c70e14e05fb33ad980dd3517', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:37:56', '2019-12-15 22:37:56', '2020-12-16 01:37:56'),
('b5af405103efcf2ccf60e4862a796b55cf771e267941170342aa8923cc031513300118ca088b8aea', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:36:15', '2020-02-27 09:36:15', '2021-02-27 12:36:15'),
('b5cda49348e6889f724a655b726608ff85e6079a826b1fce8c0f8486b58a51f60f33c50b454c22ef', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:09:12', '2020-02-22 11:09:12', '2021-02-22 14:09:12'),
('b87cfc478dd9eb9f285be41dd282664813499ef5af9c9ea77ba619265abc308a4fc1f266b1bf5b7d', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:25:18', '2020-02-22 10:25:18', '2021-02-22 13:25:18'),
('b9bd145feeb6db4afe7d3e9b5124c39c42a1734bf76f8f94e2512b4c3c574a90253e7a07da8b89a2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 10:06:09', '2019-11-06 10:06:09', '2020-11-06 13:06:09'),
('bcbb9992f6f449619da23a56b7bb7fd6f9e89131f52d7650cc0922b401a1b3b673fd8e84c12d892d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 21:56:35', '2020-02-25 21:56:35', '2021-02-26 00:56:35'),
('becf571018ed9404ec84b909d5dbe337994d19d38335d9c73f0d68de81e8749ab54a3691299d7a6c', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:50:15', '2019-12-18 15:50:15', '2020-12-18 18:50:15'),
('bfb5f3cbf9e98c996c168b1c14215db0a590630fb6892a81bd5e7bc399643c02bc79a7ab48eac575', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 13:14:29', '2020-02-06 13:14:29', '2021-02-06 16:14:29'),
('c120661c00a45c81803c9216cce7d5b3a76e10ef2c262522776bae4cdc3b009e5faa6583925a9bf8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-24 12:38:58', '2020-02-24 12:38:58', '2021-02-24 15:38:58'),
('c1ae1562821437b0d5e9dca59bbe6b9bc4f47f1615893ee705cf442b294b7735a199768bba36d3da', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:57:26', '2019-11-01 23:57:26', '2019-11-02 03:27:26'),
('c294b874fb3bbbfb6c26ad9271e7f3134dd980f5a131142143621134758e0090df6273d11c9f73ee', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 19:20:59', '2020-01-07 19:20:59', '2021-01-07 22:20:59'),
('c46f8613a7cf36af7c8cb40aaf9322488645cd4b69a5de81900935448a5158bfaaa572eee0b08718', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:54:31', '2020-02-25 22:54:31', '2021-02-26 01:54:31'),
('c4832fc760334475377ee1fd8564a7ebe9fc55adc555d8c2d58b85b5c8737b0d8e0861fbe8640326', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 00:41:32', '2019-11-06 00:41:32', '2020-11-06 03:41:32'),
('c65ebf494de836247ca06503e1f9f68918660b8435497428dd215fc5b3d006da5f9ef4fb16181b31', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:14:19', '2019-11-04 01:14:19', '2020-11-04 04:14:19'),
('c7e18a67d53a6881ac2044fd041730b36afd252236c604cee32288d340a6e5b02c357cb7ae05bdfb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:17:11', '2019-11-04 02:17:11', '2020-11-04 05:17:11'),
('cae71522040f20afc994f9fa74f192f64d92e6ed2db08bf4b1b44534222870a37691eba39285bdb1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:12:25', '2019-11-02 09:12:25', '2019-11-02 12:42:24'),
('cbeb7d73a94e9d5cde13d87c6c4e5613293a4c394a08080eed520774bca3a3d7bf56cf31f2b8d043', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:56:18', '2019-12-23 23:56:18', '2020-12-24 02:56:18'),
('cf7e62d94229b0724b5e167e9397f1eec72b15c7e6383c7f26487bcfdcd74effc38695c31d91bcec', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:03:57', '2020-01-04 20:03:57', '2021-01-04 23:03:57'),
('cf9f80ab9e3c96945882f81008c75badd670795465bd03436c0074dcac415dcb2bba28762baaf999', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-26 20:31:52', '2020-02-26 20:31:52', '2021-02-26 23:31:52'),
('d0ece6b5bbd672135cbdb9397b1894480f9e20a7d40444de48ae68d8a591fbd30062dfd5aff873d9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:34:23', '2019-11-01 23:34:23', '2019-11-02 03:04:23'),
('d1dd24f4eb331c5783213fa6d647e7ba0bbeac68096842ce5720244ea59cb7f48277fff6e06913a7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:57:53', '2019-10-31 11:57:53', '2019-10-31 15:00:52'),
('d2ac61ada3883b02f251a2d5fa85ba98cbf72bb1508fcc570895342fe70bbae6f74ffd7e1e6fa693', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:50:00', '2019-12-18 14:50:00', '2020-12-18 17:50:00'),
('d2e9d8af0a2b67180b06caab309ce763f173a4393e3a490037998dfd2d35c0ee303d60547c26b2dc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:26:33', '2019-12-14 22:26:33', '2020-12-15 01:26:33'),
('d37321dd0b40a01fc5576825f5a82bb7fc9d92ffdf268d6594088e56b7e838683d85bcdee6257202', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:07:48', '2019-12-23 20:07:48', '2020-12-23 23:07:48'),
('d3c5f0d4d8ec6326aa3d92578cd9b8253437bc459bb679fef1873bd38cffc5ac6862bc8717bef95a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:36:53', '2019-11-01 23:36:53', '2019-11-02 03:06:53'),
('d4b27da43a8407307a28f8520405e7306d4e46d62d0a48036ee83d3fb78e28e3281ee1bb0b7de96c', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:50:32', '2020-02-22 10:50:32', '2021-02-22 13:50:32'),
('d4ed50d8a34ec9eb9acf557a5bd0b9da3e059349bb2083b1f4dcb7e895d7a2f6f995b1e8f3889133', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:01:49', '2020-02-22 11:01:49', '2021-02-22 14:01:49'),
('d7184173a0b80a9f7754d9e4b46cdf8b7713b22740dce3328e077c17d9cf19ba481cbc505d3122b3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 21:58:39', '2019-12-14 21:58:39', '2020-12-15 00:58:39'),
('d72313ef3457b3bef13738873a1c1c91db3a0c35cee85040364cce3efed4c5a140c8dc8e6226ac7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:33:29', '2019-11-01 23:33:29', '2019-11-02 03:03:29'),
('d94ca5ea92c0559de39795be48c2b70c4d962df73f5a10d883c42cc3209ae23d230a38861a562fab', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-22 04:55:22', '2019-12-22 04:55:22', '2020-12-22 07:55:22'),
('d94d412380c01ac8fb77993399a255aa16b0c85ce0e9f26d2a8e78e5778b04af47cfc87e0847cc24', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:11:44', '2019-11-01 17:11:44', '2019-11-01 20:41:44'),
('da51c9d1dd3fd926809fc9320ebb00a8bc7789fed874d72a71a5a33420f8b7d44ce8edb6c193986b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 09:48:59', '2020-02-27 09:48:59', '2021-02-27 12:48:59'),
('db46342930851195f459ddfb4de8a5cfad86a8c8c8e709229eac093fa6d5aea302d8c63f406ad1f9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:52:12', '2019-11-01 23:52:12', '2019-11-02 03:22:12'),
('dcc39109ab886ae379a5c362f2fc2eea8b085e77dd09fdc125e4f7fef19451008fcba65306bdbcb7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:18:04', '2020-02-25 22:18:04', '2021-02-26 01:18:04'),
('dd5f9d9179818193b43bd1f93fc498827626b0fd6432cc44b6edbb4ce3f109493ac8417cdf6dd08f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 20:04:26', '2020-02-06 20:04:26', '2021-02-06 23:04:26'),
('ddcecdf165d5cc8109cfdda4d3c432e67131e03f7f55f7e12f50b70ceb377013dbcf1b102ab1196c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:38:38', '2019-11-04 02:38:38', '2020-11-04 05:38:38'),
('dec306f75c224aea230b6ca4b6268e9bd67c18e11bbc1aa0508bba09d78133da215f73ad50214959', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 09:01:43', '2019-12-18 09:01:43', '2020-12-18 12:01:43'),
('df0c0760b239ea93338c6c6389b31d7feeaf3294442fa71f20bd8bfa3d955a125d85ae5f3494e577', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 10:13:50', '2020-02-22 10:13:50', '2021-02-22 13:13:50'),
('e0960a8b579ec03341be8eea7dccc034b1c22379d04b5ad3fd55119d44b92029fddc1c5600a9efa9', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 19:13:07', '2020-01-04 19:13:07', '2021-01-04 22:13:07'),
('e0f6740e92639d7c5057b4491b159ed1d33e7c4b62517893a53ac0078d598dc58f5922f54f9100dc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:43:53', '2019-11-01 16:43:53', '2019-11-01 19:46:52'),
('e1653f6b2591e45c76b2965c291cbaf588f66eab46e838022568941cee9b3fa64a4db432d59c52b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:39:23', '2019-10-31 11:39:23', '2019-10-31 14:42:22'),
('e1b5633c8ce37883a4cfa557afd769e0d0c55a6d2d8c52fccb0b56a1e2cc3bafeb92b32ed1dc88b6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:20:10', '2020-02-25 22:20:10', '2021-02-26 01:20:10'),
('e399a8149618d7cfe822ea516eda541b0e1cd315ea967ccae321bb42d7b29f91e419e8ee6ed3d9df', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 11:35:41', '2020-02-27 11:35:41', '2021-02-27 14:35:41'),
('e44d06deac72c30bc67ccd61319299cf15d4d768dc16d6f9f8f7cad255a3aeff1634c780575a77be', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-06 19:55:29', '2020-02-06 19:55:29', '2021-02-06 22:55:29'),
('e50d95733e3b6d1e6cac68eb5a234408a5a02f4d382c8e1b89e8661b2d6c88df10b6c37e6d547940', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-21 04:26:26', '2019-12-21 04:26:26', '2020-12-21 07:26:26'),
('e5625981e195a0e3fc29bcc065c9a9a4b7c3fcb975153dceca330be53885819a19f06e994de8b44a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:16:57', '2020-02-25 22:16:57', '2021-02-26 01:16:57'),
('e5a03ed1ca9559683c04dea23ad7e7dea752ca0e41c9d4e8c7f9c41819b81dec763c22f18f52c693', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:27:23', '2019-12-23 00:27:23', '2020-12-23 03:27:23'),
('e5a2f57fd431e9a136d09ef1e193a344dfbfd7e3cc14471119f5f2010a486a946040be952666b1dd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:44', '2019-11-01 23:40:44', '2019-11-02 03:10:44'),
('e6767e58c12fa888c7967457879c48ecb453c12ba5b021c8e1bdfc259280a4ccdea5d0d4d1f6cb56', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:01:18', '2019-11-02 00:01:18', '2019-11-02 03:31:18'),
('e6bc0030b52ddb41b0b75ded14515719a9b229503777006eeb0e93288b604e29272828488cfa97b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:28', '2019-11-01 23:41:28', '2019-11-02 03:11:28'),
('e6e20a75e3ff68971ff03125fa68786cfb1288189504687e7a7dcf315eebaac26e592ab5a68e1b68', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-22 11:11:04', '2020-02-22 11:11:04', '2021-02-22 14:11:04'),
('e7a8fbf3254c95bfc4799bf086955cb25c4fc3a887e9cf9803e67f7f51d5cf97b0bfe7fed61707d0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 20:07:06', '2020-01-07 20:07:06', '2021-01-07 23:07:06'),
('e86064982731512425143044ad5bed58ef22857c449fce030e7391fc745195f08fc69803cb8f2d9c', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 22:16:58', '2019-11-02 22:16:58', '2020-11-03 01:16:58'),
('e8aefb3630ed13e8e6c4600ff6862c6ebbc034522f577d9c3896adec05a8b7e94e1b3503354e8e81', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:18:48', '2020-02-25 22:18:48', '2021-02-26 01:18:48'),
('e8c36187fbab76e4a7ea6ee04d41c78263c5e3081e80c7d84202781dc35fbe3aec6d66941c756924', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:01:24', '2020-01-04 20:01:24', '2021-01-04 23:01:24'),
('e95cda4318e009c7b95773f26fe9698801674d42c1d5f499fce1c394b86478ce3df7ed1047d5676d', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:39:39', '2019-10-31 10:39:39', '2020-10-31 13:39:39'),
('e9ae4cfc17a1fe5d33b0c677fcba375243bf726741fc55f518051e1fd2d8279385583071a835e5be', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-27 08:28:46', '2020-02-27 08:28:46', '2021-02-27 11:28:46'),
('e9b66501fe86eaf12f3839e7f3d784226fc1d3540d2845d82804743b15315bfaa290224809d68abb', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:45:05', '2019-10-31 10:45:05', '2019-11-01 13:45:05'),
('eb5d280644ffaf20c520da5dd38bd5e3e69b91146c13e36c70b7e7eeb4d4a6d14e3d8f99e1f19746', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:40:01', '2020-02-25 22:40:01', '2021-02-26 01:40:01'),
('eb717644d23aad17889fe3ffe0e7315e1f377c32effaf149f3a779a1a98efe12e38653cde345acee', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:07:55', '2019-10-31 11:07:55', '2019-10-31 14:10:55'),
('eeca7193655c2a02a71ee181640f2bff5fede1f94d22f601f149ca3b91485f380a3a67c02cd360e7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:37:35', '2019-11-04 01:37:35', '2020-11-04 04:37:35'),
('eeeff59bbb2b4d3e52bd747a1d1ebe10b5ee89c9d7feae89d38b030e559c59a58223b619a074553e', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:08:31', '2019-12-23 20:08:31', '2020-12-23 23:08:31'),
('f093e65d5e4b44be67a54e1b4265483d47292e1c60068206a16f8c352d85f56e1526665df2499dd9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:01:09', '2019-11-01 19:01:09', '2019-11-01 22:31:09'),
('f4e4e191809bde7183fe697715deb69891bf5aff4847e14483e0cff50bf288e66901646fa38d5645', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-23 09:08:07', '2020-02-23 09:08:07', '2021-02-23 12:08:07'),
('f60d5238cb3d74b47649baca275821090fee94d5602d920571cc6b42e4e5697bf9e5c0a8fad7a88b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:13:57', '2019-11-04 02:13:57', '2020-11-04 05:13:57'),
('f6eeea0be8636c1b128c7103bdf203ac763c52b1b0e8e4eaf5a842a5657528a5f69922df5bbdbe92', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:41:58', '2019-10-31 10:41:58', '2020-10-31 13:41:58'),
('f75f24649b9a6777990b611b4867166e1012a0194113db46bcf790fece607f12f4639d530f470e77', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-26 21:34:19', '2020-02-26 21:34:19', '2021-02-27 00:34:19'),
('f8e0f4d2f300ab8f215cef3a6146382d09a2771aa0199c14560464caff231a7a32ace87656e15396', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 20:44:23', '2019-11-02 20:44:23', '2019-11-03 00:14:23'),
('fb615c4ab7eb7a14b11a67d889b1e0f13efdda6a4c1676220a3e6e40767771bd0049d53bc36e73dd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-25 22:17:39', '2020-02-25 22:17:39', '2021-02-26 01:17:39'),
('fcfd23c592c7cf7459e377ac96a6a7c0f8762ba2a4209981c2ed225494295fd00ccb3b520e78b6d5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 18:01:33', '2019-11-02 18:01:33', '2019-11-02 21:31:32'),
('fd7409afc7a4cc05f9f1d4ece0072a01ace204fdf5eac48c7295b19abb2c04e7079ca63f7851d845', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-02-20 11:27:55', '2020-02-20 11:27:55', '2021-02-20 14:27:55'),
('fdd45e82de7066995f423d695f3e96bf8825f43ca1d954b964d9c6ef1fc4e62f1f361392ffd9a8bb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:43:25', '2019-11-01 17:43:25', '2019-11-01 21:13:25'),
('fe416b07f27f7992dd09b9feb5de9072f76b18070cd46d962f2e7da3456427dc15d56529030893c2', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:48:17', '2019-12-18 14:48:17', '2020-12-18 17:48:17'),
('ff30e67bc8e790a595f1e88477eb8fe612f34a8488f2c43feb00975020f46b676cf99ea5239f1319', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 19:30:19', '2020-01-07 19:30:19', '2021-01-07 22:30:19'),
('ff6e3cfcd037b28c7062e7345fa985bf2fc8e5868915f7f031d0807a76d959a1be0b0f7cd9c51c06', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:00:36', '2019-12-14 22:00:36', '2020-12-15 01:00:36'),
('ffb62cb6fb8fe4e14b004b0e34e60aa5de46a03a3be5475e864a741fd067a493f304d393a6a6d568', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:13', '2019-11-01 23:40:13', '2019-11-02 03:10:13'),
('ffea6d552ddb0e2ac1ebef10ec3d696f31a25ec07105cac9c0393991416008b89faf463041dd3bba', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:04:04', '2019-11-01 19:04:04', '2019-11-01 22:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ptKkM3nXWTL6EmJNqa82khHSBqSrnqe66eS8ovDg', 'http://localhost', 1, 0, 0, '2019-09-04 04:02:53', '2019-09-04 04:02:53'),
(2, NULL, 'Laravel Password Grant Client', 'Kuc2e6LP4GTLihZwIgq95IcclzbbPRXfk33xTv0R', 'http://localhost', 0, 1, 0, '2019-09-04 04:02:53', '2019-09-04 04:02:53'),
(3, 1, 'myAcess', 'IWKnyfmXcxWEu0yfKp4o6MOVDBCd7Q8ME5Asn74K', 'http://localhost/api/auth/callback', 0, 0, 0, '2019-09-04 04:11:55', '2019-09-04 04:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-04 04:02:53', '2019-09-04 04:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opd_details`
--

CREATE TABLE `opd_details` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `opd_no` varchar(100) NOT NULL,
  `appointment_date` varchar(255) DEFAULT NULL,
  `casualty` varchar(200) DEFAULT NULL,
  `symptoms` varchar(200) DEFAULT NULL,
  `bp` varchar(200) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `known_allergies` varchar(200) DEFAULT NULL,
  `note_remark` varchar(225) DEFAULT NULL,
  `refference_no` varchar(100) DEFAULT NULL,
  `consulting_doc` int(11) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `tax` varchar(200) DEFAULT NULL,
  `payment_mode` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opd_details`
--

INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference_no`, `consulting_doc`, `amount`, `tax`, `payment_mode`, `updated_at`, `created_at`) VALUES
(1, 4, '0001', '29/02/2020 12:26:35 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464562', NULL, NULL, NULL, NULL, '2020-02-28 21:26:35', '2020-02-28 21:26:35');

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uniq_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adm_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othernames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_no` int(11) DEFAULT NULL,
  `id_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emerg_relationship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emerg_contacts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emerg_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `nationality` int(11) NOT NULL,
  `residence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town_id` int(11) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` int(11) NOT NULL,
  `postal_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_by` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `disable_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `uniq_id`, `adm_date`, `othernames`, `surname`, `id_no`, `id_type`, `dob`, `month`, `age`, `avatar`, `phone`, `telephone`, `email`, `sex`, `blood_group`, `emerg_relationship`, `emerg_contacts`, `emerg_name`, `credit_limit`, `organization`, `is_active`, `nationality`, `residence`, `town_id`, `location`, `street_road`, `occupation`, `postal_address`, `reg_by`, `user_id`, `disable_at`, `deleted_at`, `created_at`, `updated_at`, `note`) VALUES
(1, '000001', '29/02/2020 12:22:22 am', 'Samuel A.', 'Mwangi', 35238383, 'National Identity Card', '2/5/2018', 5, 2, NULL, '0700412127', '0700412127', 'peters@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2020-02-28 21:22:22', '2020-02-28 21:22:22', NULL),
(4, '000002', '29/02/2020 12:26:35 am', 'Kennedy Peters', 'Mwanzi', 35238381, 'National Identity Card', '2/5/2018', 5, 2, NULL, '0700412121', '0700412127', 'peters@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2020-02-28 21:26:35', '2020-02-28 21:26:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_categories`
--

CREATE TABLE `permission_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perm_group_id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_categories`
--

INSERT INTO `permission_categories` (`id`, `name`, `perm_group_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Patients', 1, 'patients', NULL, '2019-10-23 21:13:09'),
(2, 'Medical Records\r\n', 2, 'medical_records', NULL, '2019-10-23 16:42:12'),
(3, 'Materials', 18, 'materials', NULL, '2019-10-23 16:15:08'),
(4, 'Laboratory Module', 13, 'lab_module', NULL, '2019-10-23 16:15:11'),
(5, 'Imaging Module', 11, 'imaging', NULL, '2019-10-23 16:15:13'),
(6, 'Billing Module', 3, 'bill_module', NULL, '2019-10-23 21:34:50'),
(7, 'Nurse Notes Module', 2, 'nurse_notes', NULL, '2019-10-23 16:13:51'),
(8, 'Procurement Module', 14, 'procurement_module', NULL, NULL),
(9, 'Account Module', 9, 'account_module', NULL, NULL),
(10, 'Morgue Module', 12, 'morgue_module', NULL, NULL),
(15, 'Queues', 1, 'queue_module', NULL, NULL),
(16, 'Pharmacy Module', 2, 'pharmacy_module', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `slug`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'General', 'general', 1, 1, NULL, NULL),
(2, 'Medical Records', 'medical_records', 1, 1, NULL, NULL),
(3, 'Financial', 'financial', 1, 1, NULL, NULL),
(9, 'Accounts', 'accounts', 1, 1, NULL, NULL),
(10, 'Human Resource', 'hr', 1, 1, NULL, NULL),
(11, 'Imaging', 'imaging', 1, 1, NULL, NULL),
(12, 'Morgue', 'morgue', 1, 1, NULL, NULL),
(13, 'Laboratory', 'lab', 1, 1, NULL, NULL),
(14, 'Procurement', 'procurement', 1, 1, NULL, NULL),
(15, 'Maternity', 'maternity', 1, 1, NULL, NULL),
(18, 'Inventory', 'inventory', 1, 1, NULL, NULL),
(19, 'Reports', 'reports', 1, 1, NULL, NULL),
(20, 'Operation Theatre', 'op', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'C.E.O', 'ceo', NULL, NULL),
(2, 'Manager', 'manager', NULL, NULL),
(3, 'Administrator', 'administrator', NULL, NULL),
(4, 'IT Assistant', 'it_assistant', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue_no` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int(11) UNSIGNED NOT NULL,
  `timestamp_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `duration` int(11) DEFAULT NULL,
  `is_emergency` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'superadmin', 1, NULL, NULL),
(3, 'Secretary', 'secretary', 1, '2019-11-02 10:38:39', '2019-11-05 21:22:03'),
(4, 'Doctor', 'doctor', 0, '2019-11-02 11:27:49', '2019-11-02 11:27:49'),
(5, 'Reception', 'reception', 1, '2019-11-02 11:28:48', '2019-11-05 09:25:11'),
(6, 'Laboratorist', 'lab', 1, '2019-11-02 13:10:58', '2019-11-02 13:10:58'),
(7, 'Consultant', 'cons', 1, '2019-11-02 22:57:29', '2019-11-02 22:57:29'),
(8, 'Dental', 'dental', 1, '2019-11-02 22:59:55', '2019-11-02 22:59:55'),
(9, 'Cashier', 'cashier', 0, '2019-11-02 23:29:11', '2019-12-09 15:15:07'),
(10, 'Pedetriacs', 'pedter', 1, '2019-11-02 23:30:27', '2019-11-02 23:30:27'),
(11, 'Theater', 'theatre', 0, '2019-11-02 23:32:07', '2019-11-02 23:32:07'),
(12, 'Maternity', 'maternity', 1, '2019-11-02 23:33:01', '2019-11-02 23:33:01'),
(13, 'Triage', 'triage', 1, NULL, NULL),
(16, 'Credit Controller', 'credit_controller', 1, '2020-02-21 21:48:43', '2020-02-21 21:48:43'),
(17, 'Super Admin', 'super_admin', 1, '2020-02-21 22:24:10', '2020-02-21 22:24:10'),
(18, 'Admin', 'admin', 1, '2020-02-21 22:25:14', '2020-02-21 22:25:14'),
(19, 'Manager', 'manager', 1, '2020-02-21 22:25:47', '2020-02-21 22:25:47'),
(20, 'Front Desk', 'front_desk', 0, '2020-02-24 12:58:56', '2020-02-24 12:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `perm_category_id` int(10) UNSIGNED NOT NULL,
  `hosp_branch_id` int(11) NOT NULL DEFAULT '0',
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_category_id`, `hosp_branch_id`, `can_view`, `can_create`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 0, 0, 0, 0, 0, '2020-02-21 23:51:20', '2020-02-21 23:51:20'),
(2, 4, 1, 1, 1, 0, 0, 0, '2020-02-21 23:53:42', '2020-02-21 23:53:42'),
(3, 4, 1, 1, 0, 1, 0, 0, '2020-02-21 23:53:45', '2020-02-21 23:53:45'),
(4, 4, 1, 1, 0, 0, 1, 0, '2020-02-21 23:53:48', '2020-02-21 23:53:48'),
(5, 4, 1, 1, 0, 0, 0, 1, '2020-02-21 23:53:50', '2020-02-21 23:53:50'),
(6, 4, 2, 1, 1, 0, 0, 0, '2020-02-22 00:01:29', '2020-02-22 00:01:29'),
(7, 4, 7, 1, 0, 1, 0, 0, '2020-02-22 00:01:31', '2020-02-22 00:01:31'),
(8, 8, 1, 1, 1, 0, 0, 0, '2020-02-22 00:05:07', '2020-02-22 00:05:07'),
(9, 8, 1, 1, 0, 1, 0, 0, '2020-02-22 00:05:09', '2020-02-22 00:05:09'),
(10, 8, 1, 1, 0, 0, 1, 0, '2020-02-22 00:05:10', '2020-02-22 00:05:10'),
(11, 8, 1, 1, 0, 0, 0, 1, '2020-02-22 00:05:12', '2020-02-22 00:05:12'),
(12, 8, 2, 1, 1, 0, 0, 0, '2020-02-22 00:05:14', '2020-02-22 00:05:14'),
(13, 8, 7, 1, 0, 1, 0, 0, '2020-02-22 00:05:15', '2020-02-22 00:05:15'),
(14, 8, 7, 1, 1, 0, 0, 0, '2020-02-22 00:05:19', '2020-02-22 00:05:19'),
(15, 17, 1, 1, 1, 0, 0, 0, '2020-02-22 00:05:25', '2020-02-22 00:05:25'),
(16, 17, 2, 1, 1, 0, 0, 0, '2020-02-22 00:05:26', '2020-02-22 00:05:26'),
(17, 17, 7, 1, 1, 0, 0, 0, '2020-02-22 00:05:27', '2020-02-22 00:05:27'),
(19, 18, 2, 1, 1, 0, 0, 0, '2020-02-22 00:06:10', '2020-02-22 00:06:10'),
(20, 18, 7, 1, 1, 0, 0, 0, '2020-02-22 00:06:11', '2020-02-22 00:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `room_status`
--

CREATE TABLE `room_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL COMMENT '2- available 1-busy 0-stepped out ',
  `ip_adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_in_at` timestamp NULL DEFAULT NULL,
  `sign_out_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_status`
--

INSERT INTO `room_status` (`id`, `user_id`, `room_id`, `branch_id`, `status_id`, `ip_adress`, `user_agent`, `sign_in_at`, `sign_out_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, NULL, NULL, '2020-02-27 11:53:04', NULL, '2020-02-27 09:57:53', '2020-02-27 11:53:04'),
(2, 5, 1, 1, 2, NULL, NULL, '2020-02-27 09:58:48', NULL, '2020-02-27 09:58:48', '2020-02-27 09:58:48'),
(3, 1, 1, 3, 2, NULL, NULL, '2020-02-27 12:43:51', NULL, '2020-02-27 10:04:17', '2020-02-27 12:43:51'),
(4, 5, 1, 1, 2, NULL, NULL, '2020-02-27 11:35:42', NULL, '2020-02-27 11:35:42', '2020-02-27 11:35:42'),
(5, 1, 1, 1, 2, NULL, NULL, '2020-02-27 11:48:50', NULL, '2020-02-27 11:48:50', '2020-02-27 11:48:50'),
(6, 5, 1, 1, 2, NULL, NULL, '2020-02-27 12:48:29', NULL, '2020-02-27 12:48:29', '2020-02-27 12:48:29'),
(7, 5, 1, 1, 2, NULL, NULL, '2020-02-28 12:46:05', NULL, '2020-02-28 12:46:05', '2020-02-28 12:46:05'),
(8, 1, 1, 1, 2, NULL, NULL, '2020-02-28 20:03:26', NULL, '2020-02-28 20:03:26', '2020-02-28 20:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `othernames` varchar(200) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `employee_id` varchar(200) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `father_name` varchar(200) DEFAULT NULL,
  `mother_name` varchar(200) DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `emergency_contact_no` varchar(200) DEFAULT NULL,
  `marital_status` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `work_exp` varchar(200) DEFAULT NULL,
  `specialization` varchar(200) DEFAULT NULL,
  `date_of_joining` timestamp NULL DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `local_address` varchar(300) DEFAULT NULL,
  `permanent_address` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `account_title` varchar(200) DEFAULT NULL,
  `bank_account_no` varchar(200) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `bank_branch` varchar(32) DEFAULT NULL,
  `ifsc_code` varchar(200) DEFAULT NULL,
  `payscale` varchar(200) DEFAULT NULL,
  `basic_salary` varchar(200) DEFAULT NULL,
  `epf_no` varchar(200) DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT NULL,
  `shift` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `resume` varchar(200) DEFAULT NULL,
  `joining_letter` varchar(200) DEFAULT NULL,
  `resignation_letter` varchar(200) DEFAULT NULL,
  `other_document_name` varchar(200) DEFAULT NULL,
  `other_document_file` varchar(200) DEFAULT NULL,
  `main_branch` tinyint(1) DEFAULT '0',
  `verification_code` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `othernames`, `surname`, `employee_id`, `department_id`, `client_id`, `is_active`, `hospital_id`, `user_id`, `branch_id`, `email`, `dob`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `marital_status`, `designation`, `qualification`, `work_exp`, `specialization`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `bank_branch`, `ifsc_code`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `main_branch`, `verification_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ken Peters', 'peters', '23', 1, 1, 2, 1, 1, 1, 'peters@gmail.com', '2019-10-16', 'peters', 'mum', '0700412127', 'ff', 'mar', '22', '22', '22', '22', '2019-09-30 21:00:00', '2019-10-03', 'msa', 'msa', 'mas', 'ass', 'male', 'a', 'a', 'a', '', NULL, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '3', '3', '3', '3', '3', '3', 0, 'a', NULL, NULL, '2020-02-27 11:53:04'),
(2, 'ds', 'ddd', 'qeqe', 2, 1, 1, 2, 4, 2, 'ad', '2019-11-13', 'ad', 'ad', '089', 'dad', 'da', 'dsd', 'dd', 'ds', 'ds', '2019-11-19 21:00:00', '2019-11-28', 'ad', 'ad', 'ad', 'ad', 'ad', 'adda', 'ad', 'ad', 'ad', NULL, 'ad', 'ad', 'ada', 'ad', 'add', 'ad', 'ad', 'ad', 'ad', 'ad', 'S', 'S', 'S', 'S', 'S', 'S', 0, '1', NULL, NULL, NULL),
(4, 'Joel Mershals', 'Joel', '25', 1, 2, 1, 2, 5, 1, 'joell@gmail.com', '2019-10-16', 'ds', 'sf', 'zdc', 'zadz', 'dfgd', 'zd', 'af', 'azf', 'zaf', '2019-11-19 21:00:00', '2019-11-04', 'sds', 'ds', 'sds', 'sds', 'sd', 'sd', 'ds', 'sd', 'sd', NULL, 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sff', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 1, '1', NULL, NULL, '2020-02-27 11:46:52'),
(5, 'berry1', 'berry1', 'EPS/000008', 1, 1, 1, 1, 10, 2, 'berry1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 13:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-02-23 13:19:41', '2020-02-23 13:19:41'),
(6, 'pop', 'pop', 'EPS/000009', 1, 1, 1, 1, 12, 2, 'pop@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 13:21:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-02-23 13:21:24', '2020-02-23 13:21:24'),
(7, 'wuhan', 'wuhan', 'EPS/000010', 1, 1, 1, 1, 13, 2, 'wuhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 13:28:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-02-23 13:28:32', '2020-02-23 13:28:32'),
(8, 'brian', 'brian', 'EPS/000011', 1, 1, 1, 1, 15, 2, 'brian@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 13:33:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-02-23 13:33:05', '2020-02-23 13:33:05'),
(9, 'demo', 'demo', 'EPS/000012', 1, 1, 1, 1, 16, 2, 'ddddd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 13:35:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-02-23 13:35:16', '2020-02-23 13:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Mombasa', '1', NULL, NULL),
(2, 'Nairobi', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniqId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logins` int(10) UNSIGNED DEFAULT NULL,
  `online_status` tinyint(1) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `acc_level` int(11) DEFAULT NULL,
  `is_super` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `uniqId`, `email`, `id_no`, `avatar`, `logins`, `online_status`, `email_verified_at`, `remember_token`, `password`, `is_active`, `acc_level`, `is_super`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ken', 'dddd', 'ken@gmail.com', '35281222', 'a6vRhx56Jc.jpg', 16, 1, NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, 1, NULL, NULL, '2020-02-28 20:03:26'),
(4, 'Wale', 'jlo', 'wale@gmail.com', '35281221', '8u1GNkRCDh.jpg', 0, 0, NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 1, 0, NULL, NULL, '2020-02-22 10:25:57'),
(5, 'Joel', 'EPSO21', 'joell@gmail.com', '35271828', '68M82YYr7n.jpg', 12, 1, '2019-11-21 21:00:00', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, 1, NULL, NULL, '2020-02-28 12:46:05'),
(6, 'johny', 'ss', 'johny@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$P0avM1ihFU8mOj8r2qSj7eaOJia4B94Yl0ojpLhAOTmH3fivCcPli', 0, 2, 0, NULL, '2020-02-06 21:25:22', '2020-02-06 21:25:22'),
(7, 'john', 'EPS/000005', 'peters@example.com', '1234567890', NULL, 0, 0, NULL, NULL, '$2y$10$I/ZImNs8Dlwx/NGl4Xo3D.ge4Lm4cS8fAF59kG1VvVGMbSJxGEwrG', 1, 1, 0, NULL, '2020-02-23 12:35:53', '2020-02-23 12:35:53'),
(8, 'mary', 'EPS/000006', 'mary@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$U2oFlitqIq5QHWGb6azQS.OxLdhWql3rDOA7qF7tGNv5hKSFvTTUi', 1, 1, 0, NULL, '2020-02-23 13:10:37', '2020-02-23 13:10:37'),
(9, 'mary1', 'EPS/000007', 'mary1@example.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$hBgUr.XPgUswKDZa7jf65Oigh5pchBdHgPm/yZtv.23SBxJupQysa', 1, 1, 0, NULL, '2020-02-23 13:12:54', '2020-02-23 13:12:54'),
(10, 'berry1', 'EPS/000008', 'berry1@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$XDvaA.zw0i.5POLMl5rAMO.3CwzywsqokBnrF.LkK/pOIEmLA5hFu', 1, 1, 0, NULL, '2020-02-23 13:19:41', '2020-02-23 13:19:41'),
(12, 'pop', 'EPS/000009', 'pop@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$yc0OZlxx5Zpv.JmowBBUnu9I4t3BR2YpFkEw3bdcPN96ieJbxTINu', 1, 1, 0, NULL, '2020-02-23 13:21:24', '2020-02-23 13:21:24'),
(13, 'wuhan', 'EPS/000010', 'wuhan@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$JsaQ0Jln974KL2B3mRQvD.fQ9NSrWwMlQg5a0735v23kwX96rFtLO', 1, 1, 0, NULL, '2020-02-23 13:28:32', '2020-02-23 13:28:32'),
(15, 'brian', 'EPS/000011', 'brian@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$RxfJu2f3aMdcoc3An3gV6uYu1AEK3gNCn9MzTYo0DfgaxmY4xoxM2', 1, 1, 0, NULL, '2020-02-23 13:33:05', '2020-02-23 13:33:05'),
(16, 'demo', 'EPS/000012', 'ddddd@gmail.com', '35238383', NULL, 0, 0, NULL, NULL, '$2y$10$rnKMw4vK.PtIKxuK1wd8l.i4QhCJE4KCgGubwV2eq5ND84gFRmQBS', 2, 2, 0, NULL, '2020-02-23 13:35:16', '2020-02-23 21:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_customizes`
--

CREATE TABLE `user_customizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customize_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_customizes`
--

INSERT INTO `user_customizes` (`id`, `user_id`, `customize_id`, `created_at`, `updated_at`) VALUES
(4, 5, 4, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 5, 13, NULL, NULL),
(7, 5, 3, NULL, NULL),
(8, 5, 11, NULL, NULL),
(26, 1, 2, NULL, NULL),
(32, 1, 3, NULL, NULL),
(38, 1, 1, NULL, NULL),
(40, 1, 6, NULL, NULL),
(45, 1, 5, NULL, NULL),
(46, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 6, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize_settings`
--
ALTER TABLE `customize_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_branches`
--
ALTER TABLE `hospital_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_roles`
--
ALTER TABLE `hospital_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identifications`
--
ALTER TABLE `identifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipd_details`
--
ALTER TABLE `ipd_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_permission`
--
ALTER TABLE `modules_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `opd_details`
--
ALTER TABLE `opd_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refference_no` (`refference_no`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `permission_categories`
--
ALTER TABLE `permission_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_categories_slug_unique` (`slug`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_slug_unique` (`slug`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_status`
--
ALTER TABLE `room_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uniqid_unique` (`uniqId`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_customizes`
--
ALTER TABLE `user_customizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customize_settings`
--
ALTER TABLE `customize_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospital_branches`
--
ALTER TABLE `hospital_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hospital_roles`
--
ALTER TABLE `hospital_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `identifications`
--
ALTER TABLE `identifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `modules_permission`
--
ALTER TABLE `modules_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `opd_details`
--
ALTER TABLE `opd_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permission_categories`
--
ALTER TABLE `permission_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `room_status`
--
ALTER TABLE `room_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_customizes`
--
ALTER TABLE `user_customizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
