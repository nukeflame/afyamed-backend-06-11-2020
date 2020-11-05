-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2020 at 04:25 PM
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
(1, 'Ken', 'Peters', 'ken@gmail.com', 11, '35281222', '0700412127', 1, 1, 5, NULL, NULL, '2019-12-18 14:46:35'),
(2, 'John', 'Doe', 'johndoe@gmail.com', 3523838, '3523838', '0700412127', NULL, 1, 1, NULL, NULL, NULL);

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
  `hospital_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_telephone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_is_active` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_branches`
--

INSERT INTO `hospital_branches` (`id`, `hospital_id`, `branch_name`, `branch_code`, `branch_url`, `branch_address`, `branch_location`, `branch_email`, `branch_telephone`, `branch_is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hossana Demo Branch', 'demob1', 'hossana.demohospital.com', '', 'Mombasa', 'hossana.hospital@demo.com', '+254700412127', 0, NULL, NULL, NULL),
(2, '1', 'Mkuyuni Hospital Branch', 'demob2', 'mkuyuni.demohospital.com', '', 'Lamu', 'mkuyuni.hospital@demo.com', '+254721456129', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_roles`
--

CREATE TABLE `hospital_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hospital_branch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_roles`
--

INSERT INTO `hospital_roles` (`id`, `hospital_id`, `role_id`, `hospital_branch_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, NULL, NULL),
(3, 1, 3, NULL, NULL, NULL),
(4, 1, 4, NULL, NULL, NULL),
(5, 1, 5, NULL, NULL, NULL),
(6, 1, 6, NULL, NULL, NULL),
(8, 2, 2, NULL, NULL, NULL),
(9, 2, 3, NULL, NULL, NULL),
(10, 2, 4, NULL, NULL, NULL),
(11, 2, 5, NULL, NULL, NULL),
(12, 2, 6, NULL, NULL, NULL),
(13, 2, 8, NULL, NULL, NULL),
(14, 1, 9, NULL, NULL, NULL),
(15, 1, 10, NULL, NULL, NULL),
(16, 1, 11, NULL, NULL, NULL),
(17, 1, 12, NULL, NULL, NULL);

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
(1, 1, 2, NULL, NULL);

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
('06286160f8154d9617810517407a555b6125e813b7f4c0992c82d04f78e6b78d285d967edc30891b', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:14:07', '2019-12-18 15:14:07', '2020-12-18 18:14:07'),
('069fe19a2d349e18a1e5777ba5f4fd159e8bebdae3eff6fc1bea11237700b2a601feb37f17084130', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-05 21:33:50', '2019-11-05 21:33:50', '2020-11-06 00:33:50'),
('0960d4ed57d459720513341a834c0cbd56abef9bed258745cdb1baa155f2ffaf61fb96d8d9e5e426', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 20:21:06', '2019-11-03 20:21:06', '2020-11-03 23:21:06'),
('109c79f735db2614d2116ca6aca71eb5ce65d546bbfb0c615faaf50b7ba7c46d492dae09c726d5b7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 12:29:45', '2019-11-03 12:29:45', '2020-11-03 15:29:45'),
('10af96a321d2d32f5d571bba9e1e0a72b0271ab6f4b5bb5ae5c7ff022018b26ca477347e06b91eeb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:13:22', '2019-11-04 02:13:22', '2020-11-04 05:13:22'),
('11d74839e5e99cf1fff155a80428015a19b135d342223af74b16f3aa6fb1361dd8b0a3d38b838eb4', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-22 22:57:21', '2019-12-22 22:57:21', '2020-12-23 01:57:21'),
('12317a12e09d90aa30eb80a843e3d419f7a79cf3c46e6b3afb583873694079b9c41140123c107b3c', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:05:52', '2019-10-31 11:05:52', '2019-10-31 14:08:51'),
('126c37da27232b46e22db131d3b307784dec16e3c818a07e7546f54bb50745f3dcba6ccfb4f2182b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:28:47', '2019-11-01 16:28:47', '2019-11-01 19:31:46'),
('1387581fee1a021cdefa7afdcbf2ac1371f7f21ea69d0dc8a8a27422c0dea19811efe06b7d04465f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-21 04:26:57', '2019-12-21 04:26:57', '2020-12-21 07:26:57'),
('140fe7a0f2a615a45eb4df73ec5197989f1c1ba816264228beef3a127fe3889ae5128a6c3438d984', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:14', '2019-11-01 23:41:14', '2019-11-02 03:11:14'),
('163b28cb9149c59efad0579a594dffeeded6dbcc86640f2cfeecb1faf146d5a4b445b10c1d04a292', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 11:18:39', '2019-11-06 11:18:39', '2020-11-06 14:18:39'),
('18e94c56a89b9c5b5071aa456902e99083de0c2e2875541a3435ff4ffb6c7e878c28f623d359ce41', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:13:08', '2019-12-18 14:13:08', '2020-12-18 17:13:08'),
('1b954fa5b8b436f9b1a76f158a66d20568ffd0e427ed76473b0779cf0010f6dd5de6c71c3ddac93b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:15:33', '2019-12-14 22:15:33', '2020-12-15 01:15:33'),
('20de220f0e3d6af59dce7d41a394a06995e018ffdff11d2ddf36e18b6960f2a39ceb971d1ec235d8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:14:45', '2019-11-04 02:14:45', '2020-11-04 05:14:45'),
('21a57cf1ed9dd2e4c5acf378903101c84f54d76cd0d616c7ae27e5afd4f77d976494d3065fd47b52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:31:01', '2019-10-31 12:31:01', '2019-10-31 15:34:01'),
('260c0ba09c3688a644cb6076c8bf6e9519f8407a5e26c47ed8fe34de78194c712b83899a071a797a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 13:05:53', '2019-11-01 13:05:53', '2019-11-01 16:08:51'),
('279a8f8c0647d6fc1bd2d8f19d2195f46eccb525f95ec5a5e993f175e4f41094d36b53c26771437c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-05 21:41:30', '2019-11-05 21:41:30', '2020-11-06 00:41:30'),
('299013c70b47ab808cf8c65d18ef620071f3ef7b6dd7f218964541065535545ddbf5e79f63910484', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 19:31:47', '2019-10-22 19:31:47', '2020-10-22 22:31:47'),
('2f50e7fc4423bd7f855f0189dc7ce28943de38e7e8bcb5b39a476bc5c00054e2bf46b071a35cc263', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 13:08:20', '2019-11-06 13:08:20', '2020-11-06 16:08:20'),
('31269befddc548761198daa03f7d7b903ed7bc91f29a4814b85ceff957b7e845ff8843744a86272c', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 11:57:41', '2019-11-03 11:57:41', '2020-11-03 14:57:41'),
('31ea564221a3807556074c17a8796624f8721ecabc32e0675884cf97ba9aa3ee9d2cc39744bf81f2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 19:06:21', '2019-11-04 19:06:21', '2020-11-04 22:06:21'),
('32c7bb79ee856b9a31cc019d93160cd76f225a3f2d2da54797aa78872e236c0d040757d8618f1402', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-09 15:11:58', '2019-12-09 15:11:58', '2020-12-09 18:11:58'),
('332e2234441246298bce22f6a8e600ace8a7631b88bd05271cb0ba6a7a663cda89bfc5f792a3a0cc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:14:03', '2019-11-02 09:14:03', '2019-11-02 12:44:03'),
('3b0486fd2c59d45ecfa313e0fbed2073a7322c8ddf380c1404bc0381588ac7d032d2321096976d52', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 19:20:42', '2020-01-04 19:20:42', '2021-01-04 22:20:42'),
('3d8dc672b08fa1b34e0da9a5c7768c3f53977bfdfced490aad04eec17460dacda33939266d86f9e4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 21:58:22', '2019-12-14 21:58:22', '2020-12-15 00:58:22'),
('40989f30ef64d78846c145789274deb01a63d077a0aa9f7105af7530c47e8fa64ff9eeeb4a5903bf', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 19:19:13', '2019-11-06 19:19:13', '2020-11-06 22:19:13'),
('40d858e3617c318e11d11a45474ff6fbed0f75a9f151c4a7d6a5186aeca2875a8e90d9909906f597', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:33:58', '2019-11-02 00:33:58', '2019-11-02 04:03:58'),
('4299321b95f335d90161ca420fbf442f8de5a12d01647bffe10312a4c35541a1a9f3bc4138d7a60c', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 16:15:09', '2019-12-18 16:15:09', '2020-12-18 19:15:09'),
('475d76d875fd5bb5f777d5bfc2173dd8b97fbd6de12fa40dcc726c0b5abc408ca982fbd7f5b92c0a', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:39:43', '2019-12-18 14:39:43', '2020-12-18 17:39:43'),
('49b6d70d6e2dc90e7fecbda817080575ee8b4e67447b3cc60566ef45aaadb9cf206b8d2e53737d96', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:56:28', '2019-10-31 10:56:28', '2019-10-31 13:59:28'),
('4a06a2ba2529d675fbc8db71af3c460fe3315fe7109a6c232b0baa6de06f222710a37d8c9bc4d201', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 21:19:14', '2019-11-02 21:19:14', '2020-11-03 00:19:14'),
('4b877c1293d72c1261ce027bc21588ae1c06684d2dd3bde1b76c6009e8e3a416ad990aded531eb19', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:38:30', '2019-11-01 23:38:30', '2019-11-02 03:08:29'),
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
('6003bff3552a14a4d8fb5f58897bf9bd11d55d0463567bbd7b476a722b911a03d5e05bc7b9e031df', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:35:39', '2019-10-31 11:35:39', '2019-10-31 14:38:38'),
('63a5f75ccbf5ebde97006f36ca1df4faa918773ef36d6fe52e0ea24e35a351500300ca57e781d3d3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:48:10', '2019-12-15 22:48:10', '2020-12-16 01:48:10'),
('63aa626c5edaafc14bf6696bf0eded8e81321aab34e27158697ed881edb2caeff28a297e049da317', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 11:21:18', '2019-11-02 11:21:18', '2019-11-02 14:51:16'),
('64289a7143f707a69b4b9aa851eeb4ca4ecae04ec5f679e2cad43606076d05133b875db5dc24107f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:52:13', '2019-12-23 23:52:13', '2020-12-24 02:52:13'),
('669ca45e16ba03ae2eeb24a0a42b7932f3da2d067509b35b18c63231dc10e9c9ab4b07499106073f', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:40', '2019-10-31 11:00:40', '2019-10-31 14:03:40'),
('72ac2109c3a8e2711ad3a800755bb7519177c9e48870cae884a4206c436ac37f33e5c49381c74b07', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:35:50', '2019-11-04 02:35:50', '2020-11-04 05:35:50'),
('76fdd7f1d23e2a62f1ff651c14c06bbf2f8cc7fe423e1ab307b99e5838729568867830a48de5ce06', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:02:01', '2019-10-31 12:02:01', '2019-10-31 15:05:01'),
('78563a165480f7c4a98f223be0f64def2ba639209a547d71b58b12a8b0fa15dfa75732732be55db9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:11:14', '2019-10-31 11:11:14', '2019-10-31 14:14:14'),
('7c5ee386b1df18e1e33cd5f7e1e57f09fab45d9d5fb15e9772c9589cd3e4a1c03df64a273b6ccdf4', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-28 09:27:58', '2019-12-28 09:27:58', '2020-12-28 12:27:58'),
('7d04058ecdcf0b3d477d6d1f40cbfeb41b2eee599fb9d2e6f56efe7f21a25cf57c7aafab5f58f0b8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:15:52', '2019-11-04 02:15:52', '2020-11-04 05:15:52'),
('7d53ba55d4323d8e4c575b9cff27c22364578df11a754ccbfb3fd4d03fb5ac99da55cc9bfe0d5a8a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 00:58:53', '2019-11-06 00:58:53', '2020-11-06 03:58:53'),
('8009271834517bb7724eb9f16e503b8d1edeb3f27b894b463f7668677cb04373f4a5a95709227c63', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-03 12:07:44', '2019-11-03 12:07:44', '2020-11-03 15:07:44'),
('8631cc8a5cddbd8b98c1a0b07396b76ef750b86547913e10d6db48f628347f5e51224f2d8198946f', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:28:38', '2019-12-23 20:28:38', '2020-12-23 23:28:38'),
('8834085cbb716e989a457138ed3960caec6bbe85115d8adf267189eb5072e0f1375489b93bbbae73', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:07:28', '2019-12-18 15:07:28', '2020-12-18 18:07:28'),
('8b9a77fdde404e1ac567acf4b0ecbdcc34c70416df03e61b53d5384163b826cd0913376cd344a0e6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:26:02', '2019-11-01 19:26:02', '2019-11-01 22:56:02'),
('8e21dcac71c7f07b147b39ba714434ddd5c3faa55c4cf49b7e295eaf7cb28b10f9763fbc4cdd3488', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 09:29:35', '2020-01-07 09:29:35', '2021-01-07 12:29:35'),
('906a80d554aaedd12c2b67a4f297e849a4cdbf1cc4488fd79b0f9560966eb91eb7f87cd729cd8eaa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:41', '2019-11-01 23:40:41', '2019-11-02 03:10:41'),
('91844687a95e66d8b104cb47de54603fb353128bc67c6a0ee8a2c560a0981c4d6bd5c701f0821306', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:26:12', '2019-12-23 00:26:12', '2020-12-23 03:26:12'),
('923c4c978217a2d0d8191151ce51664091447283168c9365c8c7c70b6f840102454fa6856fbf42f5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:49:49', '2019-11-01 16:49:49', '2019-11-01 19:52:49'),
('9281a442821bdb883307fea715cd3eb17556549d7a4b5b7b452c5d99e77d159265706353d28b9ca3', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:20:30', '2019-12-23 00:20:30', '2020-12-23 03:20:30'),
('935489528112d1d11bc702cceb985c879a7555cc527272b5067aeba14134ca1af69e2fb01728bd14', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 13:46:12', '2020-01-07 13:46:12', '2021-01-07 16:46:12'),
('949208c9285b0c9fb4c4db1a4e21410131ed97bca29ff3d877ae3a2c4c99c780d43760a398313a63', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:37:49', '2019-12-23 23:37:49', '2020-12-24 02:37:49'),
('961d81639fea4762c89a6746b947d5b68bf1a8b31f0b02a507cc300a55075bfdc6ffef30523d1186', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:24:46', '2019-12-23 00:24:46', '2020-12-23 03:24:46'),
('964be09e6520dd2bad6b93f90119d183e500dc4f74c6727329fbfbecbf923783c7cb3489d0069e52', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:04:17', '2019-11-01 17:04:17', '2019-11-01 20:34:17'),
('9669c2e6623ba2005c1c9f825d8ecc2e5f55c7062c4bc45700892ef6ad95b18e13365abdcfa1f325', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:53:08', '2019-12-23 23:53:08', '2020-12-24 02:53:08'),
('966a45dbee68b79c56d3d2edc8a5a23f8be630e3349b42d5f4b3f07ad99ba4dbf6ac7d5b70490482', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:17:54', '2019-10-31 12:17:54', '2019-10-31 15:20:54'),
('9b55034e8a855618c63d26a3b0f111bf3844cd92a906ba4194cf89a9eef3db4abe92875a6c4ce9db', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:17:21', '2019-11-04 01:17:21', '2020-11-04 04:17:21'),
('9b7c52642ed814aeb2cf20fde4ac7093d2709271a5cc7b9135605b1de431e3366eb5fb439811d37b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 13:09:15', '2019-11-02 13:09:15', '2019-11-02 16:39:14'),
('9c4a65ba6272d2c647b007dd7a753087d705ce3d567047d05718daa9e7875f4f7e05dfed285de781', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:08:40', '2019-10-31 12:08:40', '2019-10-31 15:11:39'),
('9c79250ebf1d3153d7fd88a0f8a3693dadd52caf969b10ff6fb47420992ae85d79a03a231f3ff195', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-28 09:34:44', '2019-12-28 09:34:44', '2020-12-28 12:34:44'),
('a2652c10070c1be0c874c2a543ca8098269ea86742e5b5df72666e2cfbf6da8ac3ab5342c34de2e9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:00:52', '2019-10-31 11:00:52', '2019-10-31 14:03:52'),
('a2cfccc10a03e2956bfb63f8e11fcacf6201a800e6d77f5c92ae22c0e648d25f98326174ddee5b24', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-16 22:35:58', '2019-12-16 22:35:58', '2020-12-17 01:35:58'),
('a9634d36760b7187cf4eb251618b09c595fa6736d4f3422bc3d1d7b3f0bd83c184df049dfe0bd579', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:22:56', '2020-01-04 20:22:56', '2021-01-04 23:22:56'),
('ac9e3b16e5c6f25f9448261d1bddcf7334ea59eb068f458387eecdc77e2809b5978bf1c11f71b4ee', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 12:00:28', '2019-10-31 12:00:28', '2019-10-31 15:03:28'),
('ad6ff4f765498c9a3add0f6ccc56feb0979953fd554f16e6a1a1b5b88d89d14f06402349cebb18a5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 10:28:27', '2019-11-02 10:28:27', '2019-11-02 13:58:26'),
('b0c154bb58033ef4489d4dc424664b89f204a4b64fa45691533c74119c6658c0999279c92ebdf107', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-07 09:27:39', '2020-01-07 09:27:39', '2021-01-07 12:27:39'),
('b11d21635cd75ce5e3e9aaff8055bcb8d8f86a3a0154473d6c25ec8bdd5e83079a2558d964a23f40', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:20:33', '2019-12-14 22:20:33', '2020-12-15 01:20:33'),
('b27b42772ff5f36e203d9240e8c29f0ec93c099f365c1f80aa28a7e13fc852766d5393ba761fe0e3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-09 15:16:45', '2019-12-09 15:16:45', '2020-12-09 18:16:45'),
('b49814288ce3795e2d64dafb3cb5375ab2ced3dbce3f25c4c231f1176faa671475ff42aca4cf4dcf', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:11:01', '2019-12-14 22:11:01', '2020-12-15 01:11:01'),
('b57536b28b0dfdba55107d0a7d69f9fc9588102f10e4a8bb112ec4b7c70e14e05fb33ad980dd3517', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-15 22:37:56', '2019-12-15 22:37:56', '2020-12-16 01:37:56'),
('b9bd145feeb6db4afe7d3e9b5124c39c42a1734bf76f8f94e2512b4c3c574a90253e7a07da8b89a2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 10:06:09', '2019-11-06 10:06:09', '2020-11-06 13:06:09'),
('becf571018ed9404ec84b909d5dbe337994d19d38335d9c73f0d68de81e8749ab54a3691299d7a6c', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 15:50:15', '2019-12-18 15:50:15', '2020-12-18 18:50:15'),
('c1ae1562821437b0d5e9dca59bbe6b9bc4f47f1615893ee705cf442b294b7735a199768bba36d3da', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:57:26', '2019-11-01 23:57:26', '2019-11-02 03:27:26'),
('c4832fc760334475377ee1fd8564a7ebe9fc55adc555d8c2d58b85b5c8737b0d8e0861fbe8640326', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-06 00:41:32', '2019-11-06 00:41:32', '2020-11-06 03:41:32'),
('c65ebf494de836247ca06503e1f9f68918660b8435497428dd215fc5b3d006da5f9ef4fb16181b31', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:14:19', '2019-11-04 01:14:19', '2020-11-04 04:14:19'),
('c7e18a67d53a6881ac2044fd041730b36afd252236c604cee32288d340a6e5b02c357cb7ae05bdfb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:17:11', '2019-11-04 02:17:11', '2020-11-04 05:17:11'),
('cae71522040f20afc994f9fa74f192f64d92e6ed2db08bf4b1b44534222870a37691eba39285bdb1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 09:12:25', '2019-11-02 09:12:25', '2019-11-02 12:42:24'),
('cbeb7d73a94e9d5cde13d87c6c4e5613293a4c394a08080eed520774bca3a3d7bf56cf31f2b8d043', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 23:56:18', '2019-12-23 23:56:18', '2020-12-24 02:56:18'),
('cf7e62d94229b0724b5e167e9397f1eec72b15c7e6383c7f26487bcfdcd74effc38695c31d91bcec', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:03:57', '2020-01-04 20:03:57', '2021-01-04 23:03:57'),
('d0ece6b5bbd672135cbdb9397b1894480f9e20a7d40444de48ae68d8a591fbd30062dfd5aff873d9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:34:23', '2019-11-01 23:34:23', '2019-11-02 03:04:23'),
('d1dd24f4eb331c5783213fa6d647e7ba0bbeac68096842ce5720244ea59cb7f48277fff6e06913a7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:57:53', '2019-10-31 11:57:53', '2019-10-31 15:00:52'),
('d2ac61ada3883b02f251a2d5fa85ba98cbf72bb1508fcc570895342fe70bbae6f74ffd7e1e6fa693', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:50:00', '2019-12-18 14:50:00', '2020-12-18 17:50:00'),
('d2e9d8af0a2b67180b06caab309ce763f173a4393e3a490037998dfd2d35c0ee303d60547c26b2dc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 22:26:33', '2019-12-14 22:26:33', '2020-12-15 01:26:33'),
('d37321dd0b40a01fc5576825f5a82bb7fc9d92ffdf268d6594088e56b7e838683d85bcdee6257202', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:07:48', '2019-12-23 20:07:48', '2020-12-23 23:07:48'),
('d3c5f0d4d8ec6326aa3d92578cd9b8253437bc459bb679fef1873bd38cffc5ac6862bc8717bef95a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:36:53', '2019-11-01 23:36:53', '2019-11-02 03:06:53'),
('d7184173a0b80a9f7754d9e4b46cdf8b7713b22740dce3328e077c17d9cf19ba481cbc505d3122b3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-14 21:58:39', '2019-12-14 21:58:39', '2020-12-15 00:58:39'),
('d72313ef3457b3bef13738873a1c1c91db3a0c35cee85040364cce3efed4c5a140c8dc8e6226ac7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:33:29', '2019-11-01 23:33:29', '2019-11-02 03:03:29'),
('d94ca5ea92c0559de39795be48c2b70c4d962df73f5a10d883c42cc3209ae23d230a38861a562fab', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-22 04:55:22', '2019-12-22 04:55:22', '2020-12-22 07:55:22'),
('d94d412380c01ac8fb77993399a255aa16b0c85ce0e9f26d2a8e78e5778b04af47cfc87e0847cc24', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:11:44', '2019-11-01 17:11:44', '2019-11-01 20:41:44'),
('db46342930851195f459ddfb4de8a5cfad86a8c8c8e709229eac093fa6d5aea302d8c63f406ad1f9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:52:12', '2019-11-01 23:52:12', '2019-11-02 03:22:12'),
('ddcecdf165d5cc8109cfdda4d3c432e67131e03f7f55f7e12f50b70ceb377013dbcf1b102ab1196c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:38:38', '2019-11-04 02:38:38', '2020-11-04 05:38:38'),
('dec306f75c224aea230b6ca4b6268e9bd67c18e11bbc1aa0508bba09d78133da215f73ad50214959', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 09:01:43', '2019-12-18 09:01:43', '2020-12-18 12:01:43'),
('e0960a8b579ec03341be8eea7dccc034b1c22379d04b5ad3fd55119d44b92029fddc1c5600a9efa9', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 19:13:07', '2020-01-04 19:13:07', '2021-01-04 22:13:07'),
('e0f6740e92639d7c5057b4491b159ed1d33e7c4b62517893a53ac0078d598dc58f5922f54f9100dc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 16:43:53', '2019-11-01 16:43:53', '2019-11-01 19:46:52'),
('e1653f6b2591e45c76b2965c291cbaf588f66eab46e838022568941cee9b3fa64a4db432d59c52b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:39:23', '2019-10-31 11:39:23', '2019-10-31 14:42:22'),
('e50d95733e3b6d1e6cac68eb5a234408a5a02f4d382c8e1b89e8661b2d6c88df10b6c37e6d547940', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-21 04:26:26', '2019-12-21 04:26:26', '2020-12-21 07:26:26'),
('e5a03ed1ca9559683c04dea23ad7e7dea752ca0e41c9d4e8c7f9c41819b81dec763c22f18f52c693', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 00:27:23', '2019-12-23 00:27:23', '2020-12-23 03:27:23'),
('e5a2f57fd431e9a136d09ef1e193a344dfbfd7e3cc14471119f5f2010a486a946040be952666b1dd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:40:44', '2019-11-01 23:40:44', '2019-11-02 03:10:44'),
('e6767e58c12fa888c7967457879c48ecb453c12ba5b021c8e1bdfc259280a4ccdea5d0d4d1f6cb56', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 00:01:18', '2019-11-02 00:01:18', '2019-11-02 03:31:18'),
('e6bc0030b52ddb41b0b75ded14515719a9b229503777006eeb0e93288b604e29272828488cfa97b0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 23:41:28', '2019-11-01 23:41:28', '2019-11-02 03:11:28'),
('e86064982731512425143044ad5bed58ef22857c449fce030e7391fc745195f08fc69803cb8f2d9c', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 22:16:58', '2019-11-02 22:16:58', '2020-11-03 01:16:58'),
('e8c36187fbab76e4a7ea6ee04d41c78263c5e3081e80c7d84202781dc35fbe3aec6d66941c756924', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2020-01-04 20:01:24', '2020-01-04 20:01:24', '2021-01-04 23:01:24'),
('e95cda4318e009c7b95773f26fe9698801674d42c1d5f499fce1c394b86478ce3df7ed1047d5676d', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:39:39', '2019-10-31 10:39:39', '2020-10-31 13:39:39'),
('e9b66501fe86eaf12f3839e7f3d784226fc1d3540d2845d82804743b15315bfaa290224809d68abb', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:45:05', '2019-10-31 10:45:05', '2019-11-01 13:45:05'),
('eb717644d23aad17889fe3ffe0e7315e1f377c32effaf149f3a779a1a98efe12e38653cde345acee', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 11:07:55', '2019-10-31 11:07:55', '2019-10-31 14:10:55'),
('eeca7193655c2a02a71ee181640f2bff5fede1f94d22f601f149ca3b91485f380a3a67c02cd360e7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 01:37:35', '2019-11-04 01:37:35', '2020-11-04 04:37:35'),
('eeeff59bbb2b4d3e52bd747a1d1ebe10b5ee89c9d7feae89d38b030e559c59a58223b619a074553e', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-23 20:08:31', '2019-12-23 20:08:31', '2020-12-23 23:08:31'),
('f093e65d5e4b44be67a54e1b4265483d47292e1c60068206a16f8c352d85f56e1526665df2499dd9', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 19:01:09', '2019-11-01 19:01:09', '2019-11-01 22:31:09'),
('f60d5238cb3d74b47649baca275821090fee94d5602d920571cc6b42e4e5697bf9e5c0a8fad7a88b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-04 02:13:57', '2019-11-04 02:13:57', '2020-11-04 05:13:57'),
('f6eeea0be8636c1b128c7103bdf203ac763c52b1b0e8e4eaf5a842a5657528a5f69922df5bbdbe92', 13, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-31 10:41:58', '2019-10-31 10:41:58', '2020-10-31 13:41:58'),
('f8e0f4d2f300ab8f215cef3a6146382d09a2771aa0199c14560464caff231a7a32ace87656e15396', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 20:44:23', '2019-11-02 20:44:23', '2019-11-03 00:14:23'),
('fcfd23c592c7cf7459e377ac96a6a7c0f8762ba2a4209981c2ed225494295fd00ccb3b520e78b6d5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-02 18:01:33', '2019-11-02 18:01:33', '2019-11-02 21:31:32'),
('fdd45e82de7066995f423d695f3e96bf8825f43ca1d954b964d9c6ef1fc4e62f1f361392ffd9a8bb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-11-01 17:43:25', '2019-11-01 17:43:25', '2019-11-01 21:13:25'),
('fe416b07f27f7992dd09b9feb5de9072f76b18070cd46d962f2e7da3456427dc15d56529030893c2', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-12-18 14:48:17', '2019-12-18 14:48:17', '2020-12-18 17:48:17'),
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
(1, 1, '2424', '2019-10-25 11:25:14', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 1, 'a', 'a', 'a', NULL, NULL),
(2, 1, '900', '16/10/2019 12:35:12 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464', NULL, NULL, NULL, NULL, '2019-10-15 21:35:12', '2019-10-15 21:35:12'),
(3, 1, '900', '16/10/2019 12:38:07 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6890', NULL, NULL, NULL, NULL, '2019-10-15 21:38:07', '2019-10-15 21:38:07'),
(4, 16, '0004', '16/10/2019 12:41:46 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8334794', NULL, NULL, NULL, NULL, '2019-10-15 21:41:46', '2019-10-15 21:41:46'),
(5, 17, '0005', '16/10/2019 12:50:22 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 21:50:22', '2019-10-15 21:50:22'),
(7, 19, '0006', '16/10/2019 1:18:01 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '464344', NULL, NULL, NULL, NULL, '2019-10-15 22:18:01', '2019-10-15 22:18:01'),
(8, 20, '0007', '17/10/2019 1:46:48 pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4785', NULL, NULL, NULL, NULL, '2019-10-17 10:46:48', '2019-10-17 10:46:48'),
(9, 21, '0008', '18/10/2019 10:30:03 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36784', NULL, NULL, NULL, NULL, '2019-10-18 07:30:03', '2019-10-18 07:30:03'),
(10, 23, '0009', '18/12/2019 7:02:47 pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-18 16:02:47', '2019-12-18 16:02:47'),
(11, 24, '0010', '24/12/2019 12:36:03 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 21:36:03', '2019-12-23 21:36:03'),
(12, 27, '0011', '05/01/2020 12:29:28 am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-04 21:29:28', '2020-01-04 21:29:28');

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
(21, '000013', '18/10/2019 10:30:03 am', 'Bill Mahn', 'Gates', 25238381, 'Alien\'s Card', '6/6/2014', 6, 5, NULL, '0700412104', '0700412127', 'bill@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, 'chaani', 1, 'chaaani', 1, NULL, NULL, NULL, '2019-10-18 07:30:03', '2019-10-18 07:30:03', NULL),
(23, '000014', '18/12/2019 7:02:47 pm', 'Kennedy', 'Mwanzi', NULL, NULL, '4/2/2016', 2, 3, NULL, '0700412112', NULL, 'peters@example.com', 'Male', NULL, 'Sister', '0700412127', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, NULL, 2, NULL, 4, NULL, NULL, NULL, '2019-12-18 16:02:47', '2019-12-18 16:02:47', NULL),
(24, '000015', '24/12/2019 12:36:03 am', 'John', 'Doe', 35238386, 'Passport', '2/5/2011', 5, 8, 'zfJ57x70a1.jpg', '0700412126', NULL, 'john@example.com', 'Male', NULL, 'Sister', '0700413120', 'Ruth', NULL, NULL, NULL, 2, 'Chaani', 2, NULL, NULL, 2, 'chaaani', 4, NULL, NULL, NULL, '2019-12-23 21:36:03', '2019-12-23 21:36:03', NULL),
(27, '000016', '05/01/2020 12:29:28 am', 'Moses Abdi', 'Kuria', 31238380, 'National Identity Card', '3/3/2009', 3, 11, NULL, '0700412224', NULL, '', 'Male', NULL, 'Sister', '0700412120', 'Ruth', NULL, NULL, NULL, 1, 'Chaani', 1, NULL, NULL, 0, NULL, 4, NULL, NULL, NULL, '2020-01-04 21:29:28', '2020-01-04 21:29:28', NULL);

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
(10, 'Morgue Module', 12, 'morgue_module', NULL, NULL);

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
(2, 'Administrator', 'admin', 1, NULL, '2019-12-21 04:37:04'),
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
(13, 'Triage', 'triage', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `perm_category_id` int(10) UNSIGNED NOT NULL,
  `hosp_branch_id` int(11) NOT NULL DEFAULT '1',
  `can_view` tinyint(1) NOT NULL DEFAULT '1',
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_category_id`, `hosp_branch_id`, `can_view`, `can_create`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 1, 1, 1, 1, NULL, NULL),
(2, 3, 3, 2, 1, 0, 1, 0, NULL, NULL),
(4, 3, 7, 1, 0, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_point` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL COMMENT '2- available 1-busy 0-stepped out ',
  `sign_in` timestamp NULL DEFAULT NULL,
  `sign_out` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `room_type`, `category`, `entry_point`, `staff_id`, `department_id`, `status`, `sign_in`, `sign_out`, `created_at`, `updated_at`) VALUES
(1, '', '', 0, '', 0, 1, 2, 2, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL,
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
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
  `main_branch` tinyint(1) NOT NULL DEFAULT '1',
  `verification_code` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `surname`, `employee_id`, `department_id`, `client_id`, `is_active`, `hospital_id`, `user_id`, `branch_id`, `email`, `dob`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `marital_status`, `designation`, `qualification`, `work_exp`, `specialization`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `main_branch`, `verification_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ken Peters', 'peters', '23', 1, 1, 2, 1, 1, 0, 'peters@gmail.com', '2019-10-16', 'peters', 'mum', '0700412127', 'ff', 'mar', '22', '22', '22', '22', '2019-10-01', '2019-10-03', 'msa', 'msa', 'mas', 'ass', 'secre', 'male', 'a', 'a', 'a', '', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '3', '3', '3', '3', '3', '3', 1, 'a', NULL, NULL, NULL),
(2, 'ds', 'ddd', 'qeqe', 2, 2, 1, 2, 4, 0, 'ad', '2019-11-13', 'ad', 'ad', '089', 'dad', 'da', 'dsd', 'dd', 'ds', 'ds', '2019-11-20', '2019-11-28', 'ad', 'ad', 'ad', 'ad', 'ad', 'ad', 'adda', 'ad', 'ad', 'ad', 'ad', 'ad', 'ad', 'ada', 'ad', 'add', 'ad', 'ad', 'ad', 'ad', 'ad', 'S', 'S', 'S', 'S', 'S', 'S', 1, '1', NULL, NULL, NULL),
(4, 'Joel Mershals', 'Joel', '25', 1, 2, 1, 2, 5, 1, 'joell@gmail.com', '2019-10-16', 'ds', 'sf', 'zdc', 'zadz', 'dfgd', 'zd', 'af', 'azf', 'zaf', '2019-11-20', '2019-11-04', 'sds', 'ds', 'sds', 'sds', 'sds', 'sd', 'sd', 'ds', 'sd', 'sd', 'sd', 'd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sff', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', 1, '1', NULL, NULL, NULL);

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT '0',
  `acc_level` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `uniqId`, `email`, `id_no`, `avatar`, `email_verified_at`, `remember_token`, `password`, `is_active`, `acc_level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ken', 'dddd', 'ken@gmail.com', '35281222', 'a6vRhx56Jc.jpg', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 2, NULL, NULL, '2019-12-28 10:08:52'),
(4, 'Wale', 'jlo', 'wale@gmail.com', '35281221', '8u1GNkRCDh.jpg', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, NULL, NULL, '2020-01-06 10:03:58'),
(5, 'Joel', 'EPSO21', 'joell@gmail.com', '35271828', '68M82YYr7n.jpg', '2019-11-21 21:00:00', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, NULL, NULL, '2019-12-27 07:03:39');

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospital_roles`
--
ALTER TABLE `hospital_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `permission_categories`
--
ALTER TABLE `permission_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
