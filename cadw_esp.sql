-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 août 2023 à 20:46
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cadw_esp`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'allo', 2, '2023-08-25 21:40:11', '2023-08-25 21:40:11'),
(2, 'allo', 2, '2023-08-25 21:42:57', '2023-08-25 21:42:57'),
(3, 'Je ne sais pas quoi répondre...', 1, '2023-08-25 21:42:57', '2023-08-25 21:42:57'),
(4, 'allo mon vieux', 2, '2023-08-25 21:43:13', '2023-08-25 21:43:13'),
(5, 'Je ne sais pas quoi répondre...', 1, '2023-08-25 21:43:13', '2023-08-25 21:43:13'),
(6, 'sfdisajfsiajf', 2, '2023-08-25 21:46:25', '2023-08-25 21:46:25'),
(7, 'Je ne sais pas quoi répondre...', 1, '2023-08-25 21:46:25', '2023-08-25 21:46:25'),
(8, 'test', 2, '2023-08-25 21:48:12', '2023-08-25 21:48:12'),
(9, 'This is a response from LaraGPT.', 2, '2023-08-25 21:48:12', '2023-08-25 21:48:12'),
(10, 'allo mon ami', 2, '2023-08-25 21:48:19', '2023-08-25 21:48:19'),
(11, 'This is a response from LaraGPT.', 2, '2023-08-25 21:48:19', '2023-08-25 21:48:19'),
(12, 'parle moi des moustiques', 2, '2023-08-25 21:49:14', '2023-08-25 21:49:14'),
(13, 'This is a response from LaraGPT.', 2, '2023-08-25 21:49:14', '2023-08-25 21:49:14'),
(14, 'moustique', 2, '2023-08-25 21:49:21', '2023-08-25 21:49:21'),
(15, 'This is a response from LaraGPT.', 2, '2023-08-25 21:49:21', '2023-08-25 21:49:21'),
(16, 'allo', 2, '2023-08-25 21:51:27', '2023-08-25 21:51:27'),
(17, 'Je ne sais pas quoi répondre...', 2, '2023-08-25 21:51:27', '2023-08-25 21:51:27'),
(18, 'moustique', 2, '2023-08-25 21:51:31', '2023-08-25 21:51:31'),
(19, 'Il y a plus de 1.4 milliards de moustiques pour chaque être humain sur Terre.', 2, '2023-08-25 21:51:31', '2023-08-25 21:51:31'),
(20, 'allo', 2, '2023-08-25 22:03:03', '2023-08-25 22:03:03'),
(21, 'Je ne sais pas quoi répondre...', 2, '2023-08-25 22:03:03', '2023-08-25 22:03:03'),
(22, 'allo', 2, '2023-08-25 22:14:04', '2023-08-25 22:14:04'),
(23, 'Je ne sais pas quoi répondre...', 2, '2023-08-25 22:14:04', '2023-08-25 22:14:04'),
(24, 'parle moi des moustiques', 2, '2023-08-25 22:18:08', '2023-08-25 22:18:08'),
(25, 'Il y a plus de 1.4 milliards de moustiques pour chaque être humain sur Terre.', 2, '2023-08-25 22:18:08', '2023-08-25 22:18:08'),
(26, 'bonjour', 2, '2023-08-25 22:19:15', '2023-08-25 22:19:15'),
(27, 'Bonjour [nom]!', 2, '2023-08-25 22:19:15', '2023-08-25 22:19:15'),
(28, 'bonjour', 2, '2023-08-25 22:21:21', '2023-08-25 22:21:21'),
(29, 'Bonjour Adelle!', 2, '2023-08-25 22:21:21', '2023-08-25 22:21:21'),
(30, 'bonjour', 2, '2023-08-25 22:24:06', '2023-08-25 22:24:06'),
(31, 'Bonjour Adelle!', 2, '2023-08-25 22:24:06', '2023-08-25 22:24:06'),
(32, 'parle moi des moustiques', 2, '2023-08-25 22:24:14', '2023-08-25 22:24:14'),
(33, 'Il y a plus de 1.4 milliards de moustiques pour chaque être humain sur Terre.', 2, '2023-08-25 22:24:14', '2023-08-25 22:24:14'),
(34, 'chialage', 2, '2023-08-25 22:24:19', '2023-08-25 22:24:19'),
(35, 'Un simple 30 minutes quotidien de chialage a des effets physiques négatifs sur le cerveau. Entendre quelqu\'un se plaindre constamment a aussi cet effet sur le cerveau.', 2, '2023-08-25 22:24:19', '2023-08-25 22:24:19'),
(36, 'bonjour', 2, '2023-08-25 18:33:58', '2023-08-25 18:33:58'),
(37, 'Bonjour Adelle!', 2, '2023-08-25 18:33:58', '2023-08-25 18:33:58'),
(38, 'quelle heure est il ?', 2, '2023-08-25 18:41:34', '2023-08-25 18:41:34'),
(39, 'Il est présentement [heure].', 1, '2023-08-25 18:41:34', '2023-08-25 18:41:34'),
(40, 'quelle heure est il ?', 2, '2023-08-25 18:43:32', '2023-08-25 18:43:32'),
(41, 'Il est présentement 14:43.', 2, '2023-08-25 18:43:32', '2023-08-25 18:43:32');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_23_212357_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'LaraGPT', 'test@outlook.com', '2023-08-25 19:29:47', 'test1234', NULL, 'NMnpHNUwkZ', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(2, 'Schmeler', 'Adelle', 'casper.pedro@example.org', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '73epMXmFXek5sXDW59ksBABgy2fCrcN5mX0VJBpodm0mxSQIBFXaeCIFSqpP', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(3, 'Berge', 'Hermann', 'izaiah53@example.net', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'a68NNe0fMF', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(4, 'Grady', 'Cathy', 'haleigh16@example.com', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'cyHCFwIHQt', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(5, 'Haley', 'Ernie', 'okuneva.loy@example.net', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3sWyZwur4G', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(6, 'Predovic', 'Shea', 'gmarks@example.com', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'j8w4s7ehJt', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(7, 'Boyle', 'Issac', 'ellsworth.metz@example.net', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'XiwpUpPBdm', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(8, 'Hackett', 'Delilah', 'ularson@example.org', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'PNg49cOEk9', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(9, 'Bechtelar', 'Douglas', 'kklocko@example.net', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'E89VlktnZw', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(10, 'Nicolas', 'Anna', 'paula.hessel@example.org', '2023-08-25 19:29:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'lBD8DlJQY6', '2023-08-25 19:29:47', '2023-08-25 19:29:47'),
(11, 'allo', 'allo', 'allo@outlook.com', NULL, '$2y$10$iQyMoHhh9HiO6MURXeKZe.1O/O4pvqOtYH20/iIiaqjZrXL5KJ1SC', NULL, NULL, '2023-08-25 20:19:39', '2023-08-25 20:19:39'),
(12, 'allotest', 'allotest', 'allotest@outlook.com', NULL, '$2y$10$3cIguDIafE5mvb0UhLF.NOb9gsECjGRSw2opxuGkRdfxxIgpN1kPy', NULL, NULL, '2023-08-25 20:20:30', '2023-08-25 20:20:30'),
(13, 'testalloallo', 'testalloallo', 'testalloallo@outlook.com', NULL, '$2y$10$GmxNATriOXQExB4Vz0XlzOnzREnMkLTAzYwMTlsncL8mmuGH9pXPi', NULL, NULL, '2023-08-25 20:53:25', '2023-08-25 20:53:25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
