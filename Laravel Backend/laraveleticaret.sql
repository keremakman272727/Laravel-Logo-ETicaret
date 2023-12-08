
-- https://www.instagram.com/qrafikerem

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Veritabanı: `laraveleticaret`
--


CREATE TABLE `admin_kullanicilaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `admin_kullanicilaris` (`id`, `status`, `name`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kerem', 'keremakman2727@gmail.com', 'admin', NULL, NULL);



CREATE TABLE `adres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `adres`
--

INSERT INTO `adres` (`id`, `customer_id`, `status`, `type`, `name`, `address`, `city`, `tc_no`, `mobile`, `phone`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'Ev', 'Ev Adres', 'Turkey', 'Istanbul', '68616516165', '61651981984', '91919898989', '2023-04-03 19:04:37', '2023-04-03 19:04:37'),
(2, 9, 1, 'Ev Adresi', 'Hakkinin Evi', 'Türkiye Ankara', 'Ankara', '74185274185', '05555555555', '05555555555', '2023-04-04 10:34:14', '2023-04-04 10:34:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `categories` (`id`, `name`, `status`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 0, 'Logo Ürünleri', '', NULL, '2023-04-04 11:09:05'),
(4, 'Yazılım', 1, 'Yazılım Ürünleri', 'https://img-trendyol.mncdn.com/mnresize/400/-/assets/product/images2/20190919/10/249543/56749254/1/1_org_zoom.jpg', '2023-03-30 13:05:25', '2023-03-30 13:05:25'),



CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '20232023_11_18_201653_create_uruns_table', 2),
(4, '2023_11_18_201713_create_categorys_table', 2),
(5, '2023_11_18_201723_create_musteris_table', 2),
(6, '2023_11_18_201733_create_adress_table', 2),
(7, '2023_11_18_201741_create_sepets_table', 2),
(8, '2023_11_18_201753_create_sepetelemanlaris_table', 2),
(9, '2023_11_18_201804_create_adminkullanicilaris_table', 2),
(10, '2023_11_18_201817_create_rols_table', 2),
(11, '2023_11_18_201827_create_rolyetkileris_table', 2),
(12, '2023_11_19_084217_create_categories_table', 3),
(13, '2023_11_19_085627_create_adres_table', 4),
(14, '2023_11_19_091324_create_admin_kullanicilaris_table', 5),
(15, '2023_04_03_220238_create_adres_table', 6),
(16, '2023_04_04_114722_create_sepet_elemanlaris_table', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteris`
--

CREATE TABLE `musteris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `musteris`
--

INSERT INTO `musteris` (`id`, `name`, `status`, `email`, `mobile`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Kerem', 0, 'kerem@kerem.com', '05454554', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rolyetkileris`
--

CREATE TABLE `rolyetkileris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepets`
--

CREATE TABLE `sepets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sepets`
--

INSERT INTO `sepets` (`id`, `status`, `customer_id`, `total_amount`, `shipping_address_id`, `billing_address_id`, `created_at`, `updated_at`) VALUES
(8, 1, 9, 3150, 2, 2, '2023-04-04 10:34:35', '2023-04-04 10:34:35'),
(9, 1, 10, 230, 1, 1, '2023-04-05 08:19:58', '2023-04-05 08:19:58');

-- --------------------------------------------------------



CREATE TABLE `sepet_elemanlaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `basket_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sepet_elemanlaris`
--

INSERT INTO `sepet_elemanlaris` (`id`, `basket_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(9, 8, 13, 1, 3000, '2023-04-04 10:34:36', '2023-04-04 10:34:36'),
(10, 8, 6, 1, 150, '2023-04-04 10:34:36', '2023-04-04 10:34:36'),
(11, 9, 11, 1, 80, '2023-04-05 08:19:59', '2023-04-05 08:19:59'),
(12, 9, 6, 1, 150, '2023-04-05 08:19:59', '2023-04-05 08:19:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uruns`
--

CREATE TABLE `uruns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `uruns`
--

INSERT INTO `uruns` (`id`, `name`, `category_id`, `status`, `price`, `stock`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(3, '3D Logo Örnek', 2, 0, 1000, 10, '', '', '2023-03-29 05:41:18', '2023-04-05 08:24:13'),
(4, '2D Logo Örnek<', 5, 1, 500, 10, 'Sennheiser Momentum True Wireless Kulaklık', 'https://resmim.net/cdn/2023/11/25/Zwk341.png', '2023-03-29 06:46:07', '2023-04-05 06:28:40'),
(5, 'Kartvizit', 1, 1, 60, 10, 'Dermosept El Dezenfektanı 1000 ML', 'https://cdn.dsmcdn.com/assets/dev/product/media/images/20230323/15/107/66284958/1/1_org_zoom.jpg', '2023-03-29 08:11:58', '2023-04-04 11:22:57'),



CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES

--
ALTER TABLE `admin_kullanicilaris`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `adres`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `musteris`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);


ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `rolyetkileris`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sepets`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sepet_elemanlaris`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `uruns`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);




ALTER TABLE `admin_kullanicilaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `adres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `musteris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;


ALTER TABLE `rolyetkileris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;


ALTER TABLE `sepets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `sepet_elemanlaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `uruns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

