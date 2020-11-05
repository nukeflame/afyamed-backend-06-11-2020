-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2019 at 07:23 PM
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
  `id_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_no` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `surname`, `other_names`, `id_type`, `id_no`, `user_id`, `phone`, `role`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mwanzi', 'Kennedy Peter', 'National Card', 35281226, 1, '0700412127', 'Manager', NULL, NULL, NULL);

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
  `user_id` int(11) NOT NULL,
  `hospital_id` varchar(255) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_code` varchar(255) NOT NULL,
  `hospital_url` varchar(255) NOT NULL,
  `address_number` varchar(100) NOT NULL DEFAULT 'N/A',
  `location` varchar(100) NOT NULL DEFAULT 'N/A',
  `email_address` varchar(100) NOT NULL DEFAULT 'N/A',
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `profile_logo` varchar(100) NOT NULL DEFAULT 'N/A',
  `completion_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `user_id`, `hospital_id`, `hospital_name`, `hospital_code`, `hospital_url`, `address_number`, `location`, `email_address`, `client_id`, `is_active`, `profile_logo`, `completion_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'AFMD/00004', 'Demo Hospital', 'demo', 'https://demo.afyamed.com', '34657', 'mombasa', 'jocham@gmail.com', 1, 0, 'N/A', 1, '2019-06-24 04:24:00', '2019-06-26 02:32:37'),
(2, 6, 'AFMD/00001', 'Machakos Hospital', 'C1GW750NJ', 'https://machakos.afyamed.com', '848473', 'mombasa', 'ken@gmail.com', 1, 0, 'N/A', 1, '2019-07-18 13:58:49', '2019-08-17 10:34:27'),
(3, 7, 'AFMD/00003', 'Chaani Hospital', 'chaani', 'https://chaani.afyamed.com', '344', 'N/A', 'N/A', 1, 0, 'N/A', 0, '2019-08-17 10:40:27', '2019-08-17 10:40:27'),
(4, 8, 'AFMD/00002', 'MedicAct Community Hospital', 'medi', 'https://mediact.afyamed.com', '0706', 'ee', 'de@gmail.com', 1, 0, 'N/A', 1, '2019-08-23 08:54:30', '2019-08-23 08:57:53');

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
  `address_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_branches`
--

INSERT INTO `hospital_branches` (`id`, `hospital_id`, `branch_name`, `branch_code`, `branch_url`, `address_number`, `location`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hossana Sub Branch Mombasa', 'sdhaodad', '', '', '', '', NULL, NULL, NULL),
(2, '1', 'Eliud Hosana Mkuyuni Hospital', 'djldjld', '', '', '', '', NULL, NULL, NULL);

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
(25, '2019_10_22_013340_create_roles_permissions_table', 17),
(26, '2019_10_25_194052_create_modules_table', 18);

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

-- --------------------------------------------------------

--
-- Table structure for table `modules_permission`
--

CREATE TABLE `modules_permission` (
  `module_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('299013c70b47ab808cf8c65d18ef620071f3ef7b6dd7f218964541065535545ddbf5e79f63910484', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 19:31:47', '2019-10-22 19:31:47', '2020-10-22 22:31:47');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(24, 'Admine', 'admind', 1, 1, 1, '2019-10-21 10:24:05', '2019-10-21 21:33:45'),
(25, 'Lab', 'lab', 1, 1, 1, '2019-10-21 10:29:15', '2019-10-21 21:34:05'),
(26, 'Admindddddd', 'admin', 1, 1, 1, '2019-10-21 10:29:26', '2019-10-21 21:31:00'),
(28, 'Cashier', 'cashier', 0, 1, 1, '2019-10-21 10:33:48', '2019-10-21 11:37:32'),
(29, 'ddd', 'eeddd', 1, 1, 1, '2019-10-21 10:35:24', '2019-10-21 10:35:24'),
(30, 'ssssss', 'vvvvv', 0, 1, 1, '2019-10-21 10:36:24', '2019-10-21 12:37:39'),
(31, 'Admin', 'ddddddd', 0, 1, 1, '2019-10-21 10:36:37', '2019-10-21 10:36:37'),
(32, 'sss', 'sss', 1, 1, 1, '2019-10-21 10:37:20', '2019-10-21 10:37:20'),
(33, 'ddd', 'ddddddd2', 0, 1, 1, '2019-10-21 10:37:35', '2019-10-21 10:37:35'),
(36, 'Admin', 'ssss', 1, 1, 1, '2019-10-21 11:20:09', '2019-10-21 11:20:09'),
(37, 'Doc', 'doc', 1, 1, 1, '2019-10-21 20:35:18', '2019-10-21 20:35:49'),
(38, 'rrrrr', 'ff', 1, 1, 1, '2019-10-21 21:07:19', '2019-10-21 21:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `perm_category_id` int(10) UNSIGNED NOT NULL,
  `can_view` tinyint(1) DEFAULT '0',
  `can_add` tinyint(1) DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_delete` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_category_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 0, 0, 0, 0, '2019-10-24 13:20:51', '2019-10-24 13:20:51'),
(2, 26, 6, 1, 0, 0, 0, '2019-10-24 13:20:54', '2019-10-24 13:20:54'),
(3, 26, 4, 0, 0, 0, 0, '2019-10-24 13:20:56', '2019-10-24 13:20:56'),
(4, 30, 1, 0, 0, 0, 0, '2019-10-24 13:21:04', '2019-10-24 13:21:04'),
(5, 28, 2, 1, 0, 0, 0, '2019-10-24 13:21:10', '2019-10-24 13:21:10'),
(6, 31, 3, 0, 0, 0, 0, '2019-10-24 16:52:21', '2019-10-24 16:52:21'),
(7, 33, 4, 0, 0, 0, 0, '2019-10-24 16:52:59', '2019-10-24 16:52:59'),
(8, 33, 5, 1, 0, 0, 0, '2019-10-24 16:53:01', '2019-10-24 16:53:01'),
(9, 26, 7, 0, 0, 0, 0, '2019-10-24 17:10:38', '2019-10-24 17:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
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
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES
(1, '23', '1', '22', '22', '22', '22', 'Mary Magdaline Otieno', 'peters', 'peters', 'mum', '0700412127', 'ff', 'peters@gmail.com', '2019-10-16', 'mar', '2019-10-01', '2019-10-03', 'msa', 'msa', 'mas', 'ass', 'secre', 'male', 'a', 'a', 'a', '', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '3', '3', '3', '3', '3', '3', 1, 1, 'a');

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
  `id_no` int(10) DEFAULT NULL,
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
(1, 'ken', '0292', 'ken@gmail.com', 35281222, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sdddd', '2', 1, NULL, NULL, NULL),
(2, NULL, '000002', NULL, NULL, NULL, '$2y$10$Fn54i/CuhoN9c1VNBZS6le03wwGRmY/dD6rCajr2QxfczgAs6yxEu', NULL, '0', 3, NULL, '2019-10-14 16:41:58', '2019-10-14 16:41:58'),
(3, '0700412127', '000003', NULL, 700412127, NULL, '$2y$10$JacFAMiORq7YHrrjHLAVN.vuPOBEtD5Xlm8pgu13Gdi3BUgyaXC8W', NULL, '0', 3, NULL, '2019-10-14 16:42:34', '2019-10-14 16:42:34'),
(4, '0700412123', '000004', NULL, 700412123, NULL, '$2y$10$jNCDaRLbTWqoj9qNImwuBeL3jy6NiBABOL3MVpmE9Kcwm4Sl1oDui', NULL, '0', 3, NULL, '2019-10-14 16:45:41', '2019-10-14 16:45:41'),
(5, '0700412127', '000005', NULL, 700412127, NULL, '$2y$10$gXD3Kj6/jw5oVqAIyjw/H.AkXhFV4IHkjbr4d3UOLVBXTyUlYv0Bq', NULL, '0', 3, NULL, '2019-10-14 16:51:27', '2019-10-14 16:51:27'),
(6, 'mwanzi', '000006', NULL, 35238383, NULL, '$2y$10$CuDNh7KZwvJZOLmNA1CcAe6JNiGs3wiW8ww.yAWMeSDG3eHBHX7n.', NULL, '0', 3, NULL, '2019-10-14 21:53:02', '2019-10-14 21:53:02'),
(7, 'lewa', '000007', NULL, 35238383, NULL, '$2y$10$muueAS8MyEEeJs7.kN13Gu6wRQqJ66yfpw5A/I8s7m.4Cie1plDqy', NULL, '0', 3, NULL, '2019-10-14 22:08:13', '2019-10-14 22:08:13'),
(8, 'lewa', '000008', NULL, 35238383, NULL, '$2y$10$89bPKDKchjbxQg5IGOGejua.tzadiIRd6FePGdsHWjwEaYfwnFm2y', NULL, '0', 3, NULL, '2019-10-14 22:09:36', '2019-10-14 22:09:36'),
(9, 'lewa', '000009', NULL, 35238382, NULL, '$2y$10$9c.wnGL8RRFkuWLlKA0S4uUXHJzwQdHB4Ou9d8eBznfcWZojVD97C', NULL, '0', 3, NULL, '2019-10-14 22:09:54', '2019-10-14 22:09:54'),
(10, '', '000010', NULL, NULL, NULL, '$2y$10$HuqPjcNqFmTjOTYiFvsAsuCpd4hJzSR0GRAiaUT0TfU4kAFpcUp5m', NULL, '0', 3, NULL, '2019-10-14 22:14:04', '2019-10-14 22:14:04'),
(11, 'omar', '000011', NULL, 36738383, NULL, '$2y$10$BOdCZqrIb4MiKxop/SPz3.dmpyB1IAxctYo0tNtiwTf2Z7hKjpNHu', NULL, '0', 3, NULL, '2019-10-14 22:21:05', '2019-10-14 22:21:05'),
(12, 'beatrice', '000012', 'bet@gmail.com', 35238383, NULL, '$2y$10$StMeG03ekPMZ6qQrhBEGSu9b8RqvVDjP7Hk.W9kbIH7frZBSBqF26', NULL, '0', 3, NULL, '2019-10-14 22:33:07', '2019-10-14 22:33:07');

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
(1, 1, 25, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 1, 5, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hospital_branches`
--
ALTER TABLE `hospital_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
