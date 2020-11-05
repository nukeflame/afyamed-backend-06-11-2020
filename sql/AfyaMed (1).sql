-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2019 at 11:49 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

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
(1, 'Mwanzi', 'Ken', 'kill@gmail.com', 1, '35238383', '0700412127', 27, 1, 1, NULL, '2019-10-26 21:26:03', '2019-10-28 20:44:47'),
(2, 'Kombo', 'Msanifu', 'msanifui@gmail.com', 1, '35273883', '0700412127', 28, 2, 1, NULL, '2019-10-26 21:38:56', '2019-10-28 20:44:39'),
(3, 'Mwikali', 'Njero', 'njerii@gmail.com', 1, '34261228', '0700412127', 29, 3, 1, NULL, '2019-10-26 22:00:13', '2019-10-28 20:44:33'),
(4, 'John', 'Mathew', 'mathew@gmail.com', 2, '35238320', '0700412127', 30, 2, 1, NULL, '2019-10-26 22:17:03', '2019-10-28 20:44:39'),
(5, 'Mboya', 'Thomas', 'killoui@gmail.com', 1, '35238390', '070041210', 31, 2, 1, NULL, '2019-10-27 18:30:12', '2019-10-29 13:08:23'),
(6, 'Mwanamisi', 'Zawadi', 'cashier@gmail.com', 2, '35238328', '0700412127', 32, 3, 1, NULL, '2019-10-27 18:32:25', '2019-10-28 20:46:23'),
(7, 'Mwangi', 'Joeldd', 'joell@gmail.com', 1, '35271828', '0700412127', 33, 3, 1, NULL, '2019-10-27 23:40:53', '2019-10-28 20:43:42'),
(8, 'Ondiek', 'Spencer', 'spencer@gmail.com', 1, '352819292', '0700412127', 34, 2, 1, NULL, '2019-10-28 10:53:55', '2019-10-29 19:32:11');

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
  `email` varchar(100) NOT NULL DEFAULT 'N/A',
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
(1, 'Demo Hospital', 'demo', 'AFM/0001', 'N/A', 'chaani', '0700412127', 'chaani', 'info@hart.com', 1, 1, 'N/A', '', 0, NULL, '2019-10-26 21:26:04', '2019-10-29 19:31:46'),
(2, 'Kombo Medical', 'ZCTXBC83', 'AFM/0002', 'N/A', 'chaani', '0700412127', 'chaani', 'info@kombo.com', 2, 1, 'N/A', '', 0, NULL, '2019-10-26 21:38:57', '2019-10-29 19:31:28'),
(3, 'Njeri Hospital', '5KZMNSJS', 'AFM/0003', 'N/A', 'chaani', '0700412127', 'chaani', 'info@njeri', 3, 1, 'N/A', '', 0, NULL, '2019-10-26 22:00:14', '2019-10-29 19:02:32'),
(4, 'Hosana Hospital', 'XA1DNY09', 'AFM/0004', 'N/A', 'chaani', '0700412127', 'chaani', 'info@hosana.com', 4, 1, 'N/A', '', 0, NULL, '2019-10-26 22:17:05', '2019-10-29 19:23:01'),
(5, 'Kwa Tom', 'XA1DNY0I', 'AFM/0005', 'N/A', 'chaani', '0700412127', 'chaani', 'info@tom.com', 5, 1, 'N/A', '', 0, '2019-10-29 13:08:25', '2019-10-27 18:30:12', '2019-10-29 13:08:25'),
(6, 'Bomu Medical', '5K1QH7LE', 'AFM/0006', 'N/A', 'chaani', '0700412127', 'chaani', 'info@bomu.com', 6, 1, 'N/A', '', 0, NULL, '2019-10-27 18:32:25', '2019-10-28 20:50:29'),
(7, 'Coast General Referal', 'M60Y3J49', 'AFM/0009', 'N/A', 'chaani', '0700412127', 'chaani', 'info@coast.com', 7, 0, 'N/A', '', 0, NULL, '2019-10-27 23:40:54', '2019-10-29 19:32:00'),
(8, 'Spencer Medical', 'EUJI38IG', 'AFM/0008', 'N/A', 'chaani', '0700412127', 'chaani', 'imfo@spencermedical.com', 8, 1, 'N/A', '', 0, NULL, '2019-10-28 10:53:55', '2019-10-29 19:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_branches`
--

CREATE TABLE `hospital_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_branches`
--

INSERT INTO `hospital_branches` (`id`, `hospital_id`, `branch_name`, `branch_code`, `branch_url`, `branch_address`, `branch_location`, `branch_email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hossana Sub Branch Mombasa', 'sdhaodad', '', '', '', '', NULL, NULL, NULL),
(2, '1', 'Eliud Hosana Mkuyuni Hospital', 'djldjld', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_roles`
--

CREATE TABLE `hospital_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hospital_branch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(30, '2019_10_27_012305_create_identifications_table', 18);

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
(1, 'Patients', 'patients', NULL, NULL),
(2, 'Laboratory', 'laboratory', NULL, NULL),
(3, 'Accounts', 'accounts', NULL, NULL),
(4, 'Billing', 'billing', NULL, NULL),
(5, 'Imaging', 'imaging', NULL, NULL),
(6, 'Human Resource', 'human_resource', NULL, NULL),
(7, 'Maternity', 'maternity', NULL, NULL),
(8, 'Operation Theatre', 'operation_theatre', NULL, NULL),
(9, 'Morgue', 'morgue', NULL, NULL),
(10, 'Procurement', 'procurement', NULL, NULL),
(11, 'Inventory', 'inventory', NULL, NULL),
(12, 'Reports', 'reports', NULL, NULL);

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
(1, 1, 1, '2019-10-26 21:26:03', '2019-10-26 21:26:03'),
(2, 5, 1, '2019-10-26 21:26:03', '2019-10-26 21:26:03'),
(3, 9, 1, '2019-10-26 21:26:03', '2019-10-26 21:26:03'),
(4, 1, 2, '2019-10-26 21:38:56', '2019-10-26 21:38:56'),
(5, 2, 2, '2019-10-26 21:38:57', '2019-10-26 21:38:57'),
(6, 3, 2, '2019-10-26 21:38:57', '2019-10-26 21:38:57'),
(7, 4, 2, '2019-10-26 21:38:57', '2019-10-26 21:38:57'),
(8, 1, 3, '2019-10-26 22:00:13', '2019-10-26 22:00:13'),
(9, 6, 3, '2019-10-26 22:00:13', '2019-10-26 22:00:13'),
(10, 11, 3, '2019-10-26 22:00:13', '2019-10-26 22:00:13'),
(11, 12, 3, '2019-10-26 22:00:13', '2019-10-26 22:00:13'),
(12, 1, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(13, 5, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(14, 9, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(15, 2, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(16, 6, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(17, 10, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(20, 11, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(21, 4, 4, '2019-10-26 22:17:04', '2019-10-26 22:17:04'),
(24, 1, 5, '2019-10-27 18:30:12', '2019-10-27 18:30:12'),
(25, 9, 5, '2019-10-27 18:30:12', '2019-10-27 18:30:12'),
(26, 10, 5, '2019-10-27 18:30:12', '2019-10-27 18:30:12'),
(27, 2, 6, '2019-10-27 18:32:25', '2019-10-27 18:32:25'),
(28, 3, 6, '2019-10-27 18:32:25', '2019-10-27 18:32:25'),
(29, 1, 7, '2019-10-27 23:40:53', '2019-10-27 23:40:53'),
(34, 1, 8, '2019-10-28 10:53:55', '2019-10-28 10:53:55'),
(35, 9, 8, '2019-10-28 10:53:55', '2019-10-28 10:53:55'),
(36, 2, 7, '2019-10-28 13:09:04', '2019-10-28 13:09:04'),
(37, 6, 7, '2019-10-28 13:09:04', '2019-10-28 13:09:04'),
(39, 5, 7, '2019-10-28 13:20:02', '2019-10-28 13:20:02'),
(40, 9, 7, '2019-10-28 13:20:02', '2019-10-28 13:20:02'),
(41, 4, 7, '2019-10-28 13:30:02', '2019-10-28 13:30:02'),
(42, 4, 6, '2019-10-28 13:33:34', '2019-10-28 13:33:34'),
(43, 2, 5, '2019-10-28 20:13:07', '2019-10-28 20:13:07'),
(44, 6, 2, '2019-10-29 19:31:28', '2019-10-29 19:31:28'),
(45, 8, 7, '2019-10-29 19:32:00', '2019-10-29 19:32:00');

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
('12317a12e09d90aa30eb80a843e3d419f7a79cf3c46e6b3afb583873694079b9c41140123c107b3c', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:05:52', '2019-10-31 11:05:52', '2019-10-31 14:08:51'),
('126c37da27232b46e22db131d3b307784dec16e3c818a07e7546f54bb50745f3dcba6ccfb4f2182b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:28:47', '2019-11-01 16:28:47', '2019-11-01 19:31:46'),
('140fe7a0f2a615a45eb4df73ec5197989f1c1ba816264228beef3a127fe3889ae5128a6c3438d984', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:14', '2019-11-01 23:41:14', '2019-11-02 03:11:14'),
('21a57cf1ed9dd2e4c5acf378903101c84f54d76cd0d616c7ae27e5afd4f77d976494d3065fd47b52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:31:01', '2019-10-31 12:31:01', '2019-10-31 15:34:01'),
('260c0ba09c3688a644cb6076c8bf6e9519f8407a5e26c47ed8fe34de78194c712b83899a071a797a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 13:05:53', '2019-11-01 13:05:53', '2019-11-01 16:08:51'),
('299013c70b47ab808cf8c65d18ef620071f3ef7b6dd7f218964541065535545ddbf5e79f63910484', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 19:31:47', '2019-10-22 19:31:47', '2020-10-22 22:31:47'),
('332e2234441246298bce22f6a8e600ace8a7631b88bd05271cb0ba6a7a663cda89bfc5f792a3a0cc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:14:03', '2019-11-02 09:14:03', '2019-11-02 12:44:03'),
('40d858e3617c318e11d11a45474ff6fbed0f75a9f151c4a7d6a5186aeca2875a8e90d9909906f597', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:33:58', '2019-11-02 00:33:58', '2019-11-02 04:03:58'),
('49b6d70d6e2dc90e7fecbda817080575ee8b4e67447b3cc60566ef45aaadb9cf206b8d2e53737d96', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:56:28', '2019-10-31 10:56:28', '2019-10-31 13:59:28'),
('4a06a2ba2529d675fbc8db71af3c460fe3315fe7109a6c232b0baa6de06f222710a37d8c9bc4d201', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 21:19:14', '2019-11-02 21:19:14', '2020-11-03 00:19:14'),
('4b877c1293d72c1261ce027bc21588ae1c06684d2dd3bde1b76c6009e8e3a416ad990aded531eb19', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:38:30', '2019-11-01 23:38:30', '2019-11-02 03:08:29'),
('4d52b78c871c1302a35b816dd0317d42910865bcaca75b2f652ebe9c98396cf274c4cfe562db71b6', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:23:30', '2019-11-01 19:23:30', '2019-11-01 22:53:30'),
('4ee76e6cf2657376e550e9b7fe055667294984c026a001dbff4a5da2d6770ae95a066937e7dc7722', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:25:06', '2019-11-01 19:25:06', '2019-11-01 22:55:06'),
('5155b9e2333dba4ebc35d075fac4b833c99b28ac4cf2f609b289f6fdeb4477eec505389009eedda5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:32:00', '2019-11-01 23:32:00', '2019-11-02 03:02:00'),
('5235d7ff0c3340bae035c15a8c604d9af43f105ae5086a28d91f5b004c96d8339099e8893d597142', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:59:59', '2019-10-31 10:59:59', '2019-10-31 14:02:59'),
('57c145d8067f1d71b46c9fe5bfb077de4a9b433db4d066710f64be25c1db5713167d285be34b4536', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:32:08', '2019-11-01 23:32:08', '2019-11-02 03:02:08'),
('6003bff3552a14a4d8fb5f58897bf9bd11d55d0463567bbd7b476a722b911a03d5e05bc7b9e031df', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:35:39', '2019-10-31 11:35:39', '2019-10-31 14:38:38'),
('63aa626c5edaafc14bf6696bf0eded8e81321aab34e27158697ed881edb2caeff28a297e049da317', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 11:21:18', '2019-11-02 11:21:18', '2019-11-02 14:51:16'),
('669ca45e16ba03ae2eeb24a0a42b7932f3da2d067509b35b18c63231dc10e9c9ab4b07499106073f', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:40', '2019-10-31 11:00:40', '2019-10-31 14:03:40'),
('76fdd7f1d23e2a62f1ff651c14c06bbf2f8cc7fe423e1ab307b99e5838729568867830a48de5ce06', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:02:01', '2019-10-31 12:02:01', '2019-10-31 15:05:01'),
('78563a165480f7c4a98f223be0f64def2ba639209a547d71b58b12a8b0fa15dfa75732732be55db9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:11:14', '2019-10-31 11:11:14', '2019-10-31 14:14:14'),
('8b9a77fdde404e1ac567acf4b0ecbdcc34c70416df03e61b53d5384163b826cd0913376cd344a0e6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:26:02', '2019-11-01 19:26:02', '2019-11-01 22:56:02'),
('906a80d554aaedd12c2b67a4f297e849a4cdbf1cc4488fd79b0f9560966eb91eb7f87cd729cd8eaa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:41', '2019-11-01 23:40:41', '2019-11-02 03:10:41'),
('923c4c978217a2d0d8191151ce51664091447283168c9365c8c7c70b6f840102454fa6856fbf42f5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:49:49', '2019-11-01 16:49:49', '2019-11-01 19:52:49'),
('964be09e6520dd2bad6b93f90119d183e500dc4f74c6727329fbfbecbf923783c7cb3489d0069e52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:04:17', '2019-11-01 17:04:17', '2019-11-01 20:34:17'),
('966a45dbee68b79c56d3d2edc8a5a23f8be630e3349b42d5f4b3f07ad99ba4dbf6ac7d5b70490482', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:17:54', '2019-10-31 12:17:54', '2019-10-31 15:20:54'),
('9b7c52642ed814aeb2cf20fde4ac7093d2709271a5cc7b9135605b1de431e3366eb5fb439811d37b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 13:09:15', '2019-11-02 13:09:15', '2019-11-02 16:39:14'),
('9c4a65ba6272d2c647b007dd7a753087d705ce3d567047d05718daa9e7875f4f7e05dfed285de781', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:08:40', '2019-10-31 12:08:40', '2019-10-31 15:11:39'),
('a2652c10070c1be0c874c2a543ca8098269ea86742e5b5df72666e2cfbf6da8ac3ab5342c34de2e9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:52', '2019-10-31 11:00:52', '2019-10-31 14:03:52'),
('ac9e3b16e5c6f25f9448261d1bddcf7334ea59eb068f458387eecdc77e2809b5978bf1c11f71b4ee', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:00:28', '2019-10-31 12:00:28', '2019-10-31 15:03:28'),
('ad6ff4f765498c9a3add0f6ccc56feb0979953fd554f16e6a1a1b5b88d89d14f06402349cebb18a5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 10:28:27', '2019-11-02 10:28:27', '2019-11-02 13:58:26'),
('c1ae1562821437b0d5e9dca59bbe6b9bc4f47f1615893ee705cf442b294b7735a199768bba36d3da', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:57:26', '2019-11-01 23:57:26', '2019-11-02 03:27:26'),
('cae71522040f20afc994f9fa74f192f64d92e6ed2db08bf4b1b44534222870a37691eba39285bdb1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:12:25', '2019-11-02 09:12:25', '2019-11-02 12:42:24'),
('d0ece6b5bbd672135cbdb9397b1894480f9e20a7d40444de48ae68d8a591fbd30062dfd5aff873d9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:34:23', '2019-11-01 23:34:23', '2019-11-02 03:04:23'),
('d1dd24f4eb331c5783213fa6d647e7ba0bbeac68096842ce5720244ea59cb7f48277fff6e06913a7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:57:53', '2019-10-31 11:57:53', '2019-10-31 15:00:52'),
('d3c5f0d4d8ec6326aa3d92578cd9b8253437bc459bb679fef1873bd38cffc5ac6862bc8717bef95a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:36:53', '2019-11-01 23:36:53', '2019-11-02 03:06:53'),
('d72313ef3457b3bef13738873a1c1c91db3a0c35cee85040364cce3efed4c5a140c8dc8e6226ac7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:33:29', '2019-11-01 23:33:29', '2019-11-02 03:03:29'),
('d94d412380c01ac8fb77993399a255aa16b0c85ce0e9f26d2a8e78e5778b04af47cfc87e0847cc24', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:11:44', '2019-11-01 17:11:44', '2019-11-01 20:41:44'),
('db46342930851195f459ddfb4de8a5cfad86a8c8c8e709229eac093fa6d5aea302d8c63f406ad1f9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:52:12', '2019-11-01 23:52:12', '2019-11-02 03:22:12'),
('e0f6740e92639d7c5057b4491b159ed1d33e7c4b62517893a53ac0078d598dc58f5922f54f9100dc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:43:53', '2019-11-01 16:43:53', '2019-11-01 19:46:52'),
('e1653f6b2591e45c76b2965c291cbaf588f66eab46e838022568941cee9b3fa64a4db432d59c52b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:39:23', '2019-10-31 11:39:23', '2019-10-31 14:42:22'),
('e5a2f57fd431e9a136d09ef1e193a344dfbfd7e3cc14471119f5f2010a486a946040be952666b1dd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:44', '2019-11-01 23:40:44', '2019-11-02 03:10:44'),
('e6767e58c12fa888c7967457879c48ecb453c12ba5b021c8e1bdfc259280a4ccdea5d0d4d1f6cb56', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:01:18', '2019-11-02 00:01:18', '2019-11-02 03:31:18'),
('e6bc0030b52ddb41b0b75ded14515719a9b229503777006eeb0e93288b604e29272828488cfa97b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:28', '2019-11-01 23:41:28', '2019-11-02 03:11:28'),
('e95cda4318e009c7b95773f26fe9698801674d42c1d5f499fce1c394b86478ce3df7ed1047d5676d', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:39:39', '2019-10-31 10:39:39', '2020-10-31 13:39:39'),
('e9b66501fe86eaf12f3839e7f3d784226fc1d3540d2845d82804743b15315bfaa290224809d68abb', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:45:05', '2019-10-31 10:45:05', '2019-11-01 13:45:05'),
('eb717644d23aad17889fe3ffe0e7315e1f377c32effaf149f3a779a1a98efe12e38653cde345acee', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:07:55', '2019-10-31 11:07:55', '2019-10-31 14:10:55'),
('f093e65d5e4b44be67a54e1b4265483d47292e1c60068206a16f8c352d85f56e1526665df2499dd9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:01:09', '2019-11-01 19:01:09', '2019-11-01 22:31:09'),
('f6eeea0be8636c1b128c7103bdf203ac763c52b1b0e8e4eaf5a842a5657528a5f69922df5bbdbe92', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:41:58', '2019-10-31 10:41:58', '2020-10-31 13:41:58'),
('f8e0f4d2f300ab8f215cef3a6146382d09a2771aa0199c14560464caff231a7a32ace87656e15396', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 20:44:23', '2019-11-02 20:44:23', '2019-11-03 00:14:23'),
('fcfd23c592c7cf7459e377ac96a6a7c0f8762ba2a4209981c2ed225494295fd00ccb3b520e78b6d5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 18:01:33', '2019-11-02 18:01:33', '2019-11-02 21:31:32'),
('fdd45e82de7066995f423d695f3e96bf8825f43ca1d954b964d9c6ef1fc4e62f1f361392ffd9a8bb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:43:25', '2019-11-01 17:43:25', '2019-11-01 21:13:25'),
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
(1, 1, '2424', '2019-10-25 11:25:14', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 1, 'a', 'a', 'a', NULL, NULL),
(2, 1, '900', '16/10/2019 12:35:12 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464', NULL, NULL, NULL, NULL, '2019-10-15 21:35:12', '2019-10-15 21:35:12'),
(3, 1, '900', '16/10/2019 12:38:07 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6890', NULL, NULL, NULL, NULL, '2019-10-15 21:38:07', '2019-10-15 21:38:07'),
(4, 16, '0004', '16/10/2019 12:41:46 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8334794', NULL, NULL, NULL, NULL, '2019-10-15 21:41:46', '2019-10-15 21:41:46'),
(5, 17, '0005', '16/10/2019 12:50:22 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 21:50:22', '2019-10-15 21:50:22'),
(7, 19, '0006', '16/10/2019 1:18:01 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464344', NULL, NULL, NULL, NULL, '2019-10-15 22:18:01', '2019-10-15 22:18:01'),
(8, 20, '0007', '17/10/2019 1:46:48 pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4785', NULL, NULL, NULL, NULL, '2019-10-17 10:46:48', '2019-10-17 10:46:48'),
(9, 21, '0008', '18/10/2019 10:30:03 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36784', NULL, NULL, NULL, NULL, '2019-10-18 07:30:03', '2019-10-18 07:30:03');

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
(1, '000001', '15/10/2019 12:53:03 am', 'Kennedy', 'Mwanzi', 35238383, 'Alien\'s Card', '3/5/1997', 5, 22, NULL, '0700432127', NULL, NULL, 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, NULL, 1, NULL, 1, 6, NULL, NULL, '2019-10-14 21:53:03', '2019-10-14 21:53:03', NULL),
(3, '000002', '15/10/2019 1:09:54 am', 'Margret Maghanga', 'Lewa', 35238382, 'National Identity Card', '8/6/2011', 6, 8, NULL, '0700412127', NULL, NULL, 'Female', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, NULL, 2, NULL, 1, 9, NULL, NULL, '2019-10-14 22:09:54', '2019-10-14 22:09:54', NULL),
(4, '000003', '15/10/2019 1:21:05 am', 'Juma Musa', 'Omar', 36738383, 'Alien\'s Card', '0//0', NULL, 2019, '68M82YYr7n.jpg', '0770412190', NULL, NULL, 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, NULL, 0, NULL, 1, 11, NULL, NULL, '2019-10-14 22:21:05', '2019-10-14 22:21:05', NULL),
(9, '000004', '15/10/2019 1:49:43 am', 'Clemence Benta', 'Akinyi', 35238342, 'National Identity Card', '7/6/2009', 6, 10, '6mj3KWmA4x.jpg', '0736412127', '0700412127', 'cleme@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 2, 'chaaani', 1, NULL, NULL, NULL, '2019-10-14 22:49:43', '2019-10-14 22:49:43', NULL),
(11, '000005', '15/10/2019 2:17:46 am', 'Mary Ikilo', 'Mwikali', 96289091, 'National Identity Card', '4/5/2016', 5, 3, NULL, '0716064557', '0700412127', 'mary@example.com', 'Female', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 2, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2019-10-14 23:17:46', '2019-10-14 23:17:46', NULL),
(13, '000006', '15/10/2019 2:23:25 am', 'Omwami Meri', 'Wachira', 9040404, 'Alien\'s Card', '0/2/1961', 2, 58, 'fQZo6UCimz.jpg', '0740429603', '0700412127', 'wachira@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 2, NULL, 'chaani', 0, 'chaaani', 1, NULL, NULL, NULL, '2019-10-14 23:23:25', '2019-10-14 23:23:25', NULL),
(15, '000007', '16/10/2019 12:06:43 am', 'Angeline Mwakesi', 'Otieno', 372893933, 'National Identity Card', '7/6/2014', 6, 5, NULL, '0716039993', '0700412127', 'angie@gmail.com', 'Female', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 3, 'chaaani', 1, NULL, NULL, NULL, '2019-10-15 21:06:43', '2019-10-15 21:06:43', NULL),
(16, '000008', '16/10/2019 12:41:46 am', 'Emmanuel Mwanthi', 'Kinaka', 389203394, 'Passport', '4/3/2017', 3, 2, NULL, '0700612190', '0700412127', 'ema@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 2, 'Chaani', 2, NULL, 'chaani', 2, 'chaaani', 1, NULL, NULL, NULL, '2019-10-15 21:41:46', '2019-10-15 21:41:46', NULL),
(17, '000009', '16/10/2019 12:50:22 am', 'John', 'Wambua', NULL, NULL, '4/4/2016', 4, 3, '8u1GNkRCDh.jpg', '0708084111', '0700412127', 'john@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, '', 1, NULL, 'chaani', 2, 'chaaani', 1, NULL, NULL, NULL, '2019-10-15 21:50:22', '2019-10-15 21:50:22', NULL),
(18, '000010', '16/10/2019 1:14:25 am', 'Moha Galito', 'Fahim', 273920202, 'Alien\'s Card', '7/6/2016', 6, 3, NULL, '0734419127', '0700412127', 'moha@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2019-10-15 22:14:25', '2019-10-15 22:14:25', NULL),
(19, '000011', '16/10/2019 1:18:01 am', 'Mwanzi', 'Bena', 2738490, 'National Identity Card', '5/4/2014', 4, 5, NULL, '0790399393', '0700412127', 'beavs@example.com', 'Female', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 2, 'Chaani', 1, NULL, 'chaani', 3, 'chaaani', 1, NULL, NULL, NULL, '2019-10-15 22:18:01', '2019-10-15 22:18:01', NULL),
(20, '000012', '17/10/2019 1:46:47 pm', 'Jery Ali', 'Yunus', 90637894, 'National Identity Card', '12/7/2014', 7, 5, NULL, '0700413027', '0700412127', 'jery@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 2, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2019-10-17 10:46:47', '2019-10-17 10:46:47', NULL),
(21, '000013', '18/10/2019 10:30:03 am', 'Bill Mahn', 'Gates', 25238381, 'Alien\'s Card', '6/6/2014', 6, 5, NULL, '0700412104', '0700412127', 'bill@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2019-10-18 07:30:03', '2019-10-18 07:30:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_categories`
--

CREATE TABLE `permission_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perm_group_id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_view` tinyint(1) NOT NULL,
  `enable_add` tinyint(1) NOT NULL,
  `enable_edit` tinyint(1) NOT NULL,
  `enable_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_categories`
--

INSERT INTO `permission_categories` (`id`, `name`, `perm_group_id`, `slug`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`, `updated_at`) VALUES
(1, 'Patients', 1, 'patients', 1, 1, 1, 1, NULL, '2019-10-23 21:13:09'),
(2, 'Medical Records\r\n', 2, 'medical_records', 1, 1, 1, 1, NULL, '2019-10-23 16:42:12'),
(3, 'Materials', 2, 'materials', 1, 1, 1, 1, NULL, '2019-10-23 16:15:08'),
(4, 'Laboratory Module', 2, 'lab_module', 1, 1, 1, 1, NULL, '2019-10-23 16:15:11'),
(5, 'Imaging Module', 2, 'imaging_module', 1, 1, 1, 1, NULL, '2019-10-23 16:15:13'),
(6, 'Billing Module', 3, 'bill_module', 1, 1, 1, 1, NULL, '2019-10-23 21:34:50'),
(7, 'Nurse Notes Module', 2, 'nurse_notes', 1, 1, 1, 1, NULL, '2019-10-23 16:13:51');

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
(1, 'General', 'patients', 1, 1, NULL, NULL),
(2, 'Medical Records', 'medical_records', 1, 1, NULL, NULL),
(3, 'Financial', 'financial', 1, 1, NULL, NULL);

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
  `is_system` int(11) NOT NULL DEFAULT '0',
  `is_superadmin` int(11) NOT NULL DEFAULT '0',
  `hospital_id` int(10) UNSIGNED DEFAULT NULL,
  `hospital_branch_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `hospital_id`, `hospital_branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'superadmin', 1, 1, 1, 0, 0, NULL, NULL),
(2, 'Administrator', 'admin', 0, 1, 1, 1, 0, NULL, '2019-11-02 13:10:12'),
(3, 'Secretary', 'secretary', 1, 1, 1, 1, 0, '2019-11-02 10:38:39', '2019-11-02 10:38:39'),
(4, 'Doctor', 'doctor', 0, 1, 1, 0, 0, '2019-11-02 11:27:49', '2019-11-02 11:27:49'),
(5, 'Reception', 'reception', 1, 1, 1, 0, 0, '2019-11-02 11:28:48', '2019-11-02 11:28:48'),
(6, 'Laboratorist', 'lab', 1, 1, 1, 0, 0, '2019-11-02 13:10:58', '2019-11-02 13:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `perm_category_id` int(10) UNSIGNED NOT NULL,
  `can_view` int(11) NOT NULL,
  `can_add` int(11) NOT NULL,
  `can_edit` int(11) NOT NULL,
  `can_delete` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `perm_category_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `main_branch` tinyint(1) NOT NULL DEFAULT '1',
  `client_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `surname`, `employee_id`, `department`, `email`, `dob`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `marital_status`, `designation`, `qualification`, `work_exp`, `specialization`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `hospital_id`, `user_id`, `main_branch`, `client_id`, `is_active`, `verification_code`) VALUES
(1, 'Mary Magdaline Otieno', 'peters', '23', '1', 'peters@gmail.com', '2019-10-16', 'peters', 'mum', '0700412127', 'ff', 'mar', '22', '22', '22', '22', '2019-10-01', '2019-10-03', 'msa', 'msa', 'mas', 'ass', 'secre', 'male', 'a', 'a', 'a', '', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '3', '3', '3', '3', '3', '3', 1, 1, 1, 1, 1, 'a'),
(2, 'ds', 'ddd', 'qeqe', 'we', 'ad', '2019-11-13', 'ad', 'ad', '089', 'dad', 'da', 'dsd', 'dd', 'ds', 'ds', '2019-11-20', '2019-11-28', 'ad', 'ad', 'ad', 'ad', 'ad', 'ad', 'adda', 'ad', 'ad', 'ad', 'ad', 'ad', 'ad', 'ada', 'ad', 'add', 'ad', 'ad', 'ad', 'ad', 'ad', 'S', 'S', 'S', 'S', 'S', 'S', 1, 4, 1, 2, 1, '1');

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
  `uniqId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `acc_level` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `uniqId`, `email`, `id_no`, `email_verified_at`, `password`, `remember_token`, `is_active`, `acc_level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ken', 'dddd', 'ken@gmail.com', '35281222', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2', 2, NULL, NULL, NULL),
(4, 'Melshals', 'jlo', 'melshals@gmail.com', '35281221', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2', 2, NULL, NULL, NULL);

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
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 1, 2, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hospital_branches`
--
ALTER TABLE `hospital_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospital_roles`
--
ALTER TABLE `hospital_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `identifications`
--
ALTER TABLE `identifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `modules_permission`
--
ALTER TABLE `modules_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `permission_categories`
--
ALTER TABLE `permission_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
