# ************************************************************
# Sequel Ace SQL dump
# Version 20035
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.30)
# Database: flossk_demo
# Generation Time: 2022-10-06 16:40:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `agreed_terms_at` datetime DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `department_id`, `name`, `email`, `email_verified_at`, `approved_at`, `agreed_terms_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Admin','admin@gmail.com','2022-01-22 20:44:02','2022-01-22 22:01:57','2022-01-22 22:02:15','admin','$2y$10$nHgwOPsI98QfdoadeNQMne.qzF5DEPFHwXkIyKCxYmmnlhUNyNVNW','NPPZ86npfr4Dl9rAMBb01E1YTSu0q9UzdXN3IgfObFEua3gswlWiFOlfPEmy','2022-01-22 20:44:02','2022-08-19 22:25:00'),
	(2,2,'Uran Hajzeraj','uhajzeraj@hotmail.com','2022-01-27 00:43:19',NULL,NULL,'customer','$2y$10$bdh7T9M67vgeAMA2cRr5N.4hW9.UIzTiu2bzKzdUoT00tqekWz236','4VUPKVOhNHrW3LsnDL1QFvT4rCc6KcVaktFFajquWhOc47tpU2PgeaFo0cVy','2022-01-22 20:44:29','2022-01-22 20:44:29'),
	(3,NULL,'Citlalli Fisher V','tmarks@example.org','2022-01-22 20:44:42',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6WoXAElx9H','2022-01-22 20:44:42','2022-01-22 20:44:42'),
	(4,3,'New Department','new_department@hplustransport.com',NULL,NULL,NULL,'department_impersonator','$2y$10$4Y7Vx6HQgng1dB1UYTfeGORMPO3eh0GZs92YS/6NGoewmULiDzFDu',NULL,'2022-04-03 12:51:39','2022-04-03 12:51:39'),
	(5,4,'Omari Batz','friesen.raleigh@example.net','2022-04-05 22:20:31',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','v6ZFehf3yk','2022-04-05 22:20:31','2022-04-05 22:20:31'),
	(6,NULL,'Dr. Friedrich Pagac','dooley.jessie@example.com','2022-04-05 22:20:31',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ue4HoDSBp7','2022-04-05 22:20:31','2022-04-05 22:20:31'),
	(7,5,'Miss Glenda Ortiz','wabbott@example.org','2022-04-07 20:57:36',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aeGVmUv65x','2022-04-07 20:57:36','2022-04-07 20:57:36'),
	(8,NULL,'Adalberto Rolfson','reynolds.rachelle@example.net','2022-04-07 20:57:58',NULL,NULL,'admin','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qA3KYO8QVu','2022-04-07 20:57:58','2022-04-07 20:57:58'),
	(9,NULL,'Dallin Bartell','kemmer.rebecca@example.org','2022-04-07 20:58:06',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dy15OYKI7R','2022-04-07 20:58:06','2022-04-07 20:58:06'),
	(10,NULL,'Michael Scott','michael.scott@dmifflin.com','2022-04-07 20:58:06',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dy15OYKI7R','2022-04-07 20:58:06','2022-04-07 20:58:06'),
	(11,NULL,'Uran Hajzeraj','uran@duck.com',NULL,NULL,NULL,'employee','$2y$10$oUDcvwF43vNotL4Rj/LX.uLEYF1k4Pj5z6fogI1Z4M5Z4pByO.znm',NULL,'2022-05-02 15:50:30','2022-05-02 15:50:30'),
	(12,NULL,'Uran Hajzeraj II','uran+1@duck.com',NULL,NULL,NULL,'employee','$2y$10$oUDcvwF43vNotL4Rj/LX.uLEYF1k4Pj5z6fogI1Z4M5Z4pByO.znm',NULL,'2022-05-02 15:50:30','2022-05-02 15:50:30'),
	(13,NULL,'Uran Hajzeraj III','uran+2@duck.com',NULL,NULL,NULL,'employee','$2y$10$oUDcvwF43vNotL4Rj/LX.uLEYF1k4Pj5z6fogI1Z4M5Z4pByO.znm',NULL,'2022-05-02 15:50:30','2022-05-02 15:50:30'),
	(14,NULL,'Uran Hajzeraj IV','uran+3@duck.com',NULL,NULL,NULL,'employee','$2y$10$EtFYWDjyybSIXKHTpdsHmOs7YvBipMGzo043NgA2bBG.9NZIAws06',NULL,'2022-05-02 15:50:30','2022-08-19 22:42:01'),
	(15,6,'Urban Lind','zmante@example.net','2022-07-20 21:04:52',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jhML7KtDps','2022-07-20 21:04:52','2022-07-20 21:04:52'),
	(16,7,'Claud Strosin','rhiannon49@example.org','2022-07-20 21:05:33',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kEm6OSKVrw','2022-07-20 21:05:33','2022-07-20 21:05:33'),
	(17,8,'Kaley Hoeger','chaya83@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mXIv9yXhYf','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(18,9,'Mrs. Marta Lakin','oblock@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UT31HwIp4E','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(19,10,'Ms. Aaliyah Jacobs MD','adalberto27@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WSggW8CwbB','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(20,11,'Tomasa Turner','naomie.hirthe@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Hu5fQq5ZQ8','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(21,12,'Prof. Orland Kassulke','gmayert@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kCr8vuBT3W','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(22,13,'Melody O\'Kon','mswaniawski@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Y2LL5B7KsG','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(23,14,'Mina McLaughlin','wmante@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RUhjWc0Aqx','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(24,15,'Mortimer Bergnaum','laurianne50@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PyrcSruLyQ','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(25,16,'Lolita Bogisich','maximillia.reichert@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qO9MoH31IZ','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(26,17,'Devan Altenwerth','twuckert@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yEerc1RPic','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(27,18,'Carolanne Hammes','lenny39@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cWt0XMYp7p','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(28,19,'Rudolph Ondricka','liliane76@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9AeJ5wN7yE','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(29,20,'Annabelle Olson MD','price.fern@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KwlQvfPaQS','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(30,21,'Ms. Kianna Mosciski II','lexi51@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WFGAvsGwwi','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(31,22,'Lacey Collier','fkemmer@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NJbcmGrQTo','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(32,23,'Selina Jacobs','jedediah.emard@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','B5d7ck1jG3','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(33,24,'Dr. Jalyn Sipes III','raynor.waino@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tg4w20WKCn','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(34,25,'Jalon Kunze','jeanne99@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','02cGQjdoyR','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(35,26,'Wilbert King','murray.jed@example.com','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fUtgaggGGG','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(36,27,'Lexus Herman','arjun40@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5qk7mXWUvu','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(37,28,'Mrs. Aliza Terry','reid02@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UNJtLKnIvP','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(38,29,'Viola Casper','lakin.freida@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','d4gm9UunZh','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(39,30,'Werner Orn','shyanne85@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TVG7PFahZN','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(40,31,'Prof. Eduardo Bruen MD','zwhite@example.net','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PWPCNa9rXr','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(41,32,'Demetrius McGlynn','danyka.wisozk@example.org','2022-07-26 22:24:39',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LrahDYYr5x','2022-07-26 22:24:39','2022-07-26 22:24:39'),
	(42,33,'Dallin Wiegand','simone65@example.com','2022-08-23 22:50:23',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vyybp5wyKQ','2022-08-23 22:50:23','2022-08-23 22:50:23'),
	(43,NULL,'Prof. Leanna Rutherford','kuhlman.rhett@example.org','2022-08-23 22:50:23',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RtaSVfKgB0','2022-08-23 22:50:23','2022-08-23 22:50:23'),
	(44,34,'Heather Lowe PhD','corine.deckow@example.net','2022-08-23 22:51:08',NULL,NULL,'customer','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','T6jAUdjMD5','2022-08-23 22:51:08','2022-08-23 22:51:08'),
	(45,NULL,'Mr. Riley O\'Connell I','herminio60@example.net','2022-08-23 22:51:08',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MWP4iwnGAf','2022-08-23 22:51:08','2022-08-23 22:51:08'),
	(48,3,'My test department','test@example.com',NULL,NULL,NULL,'department_impersonator','$2y$10$4Y7Vx6HQgng1dB1UYTfeGORMPO3eh0GZs92YS/6NGoewmULiDzFDu',NULL,'2022-04-03 12:51:39','2022-04-03 12:51:39'),
	(50,2,'My test department','test+1@example.com',NULL,NULL,NULL,'department_impersonator','$2y$10$4Y7Vx6HQgng1dB1UYTfeGORMPO3eh0GZs92YS/6NGoewmULiDzFDu',NULL,'2022-04-03 12:51:39','2022-04-03 12:51:39'),
	(51,NULL,'Ada Ankunding','ewisoky@example.net','2022-10-04 21:37:44',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GRw91FjBMa','2022-10-04 21:37:44','2022-10-04 21:37:44'),
	(52,NULL,'Brant Gutmann Sr.','shane67@example.net','2022-10-04 21:37:44',NULL,NULL,'employee','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ivXIjz6EKn','2022-10-04 21:37:44','2022-10-04 21:37:44');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
