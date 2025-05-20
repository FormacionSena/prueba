-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.7.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para apolo
CREATE DATABASE IF NOT EXISTS `apolo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `apolo`;

-- Volcando estructura para tabla apolo.asistencia_estudiante
CREATE TABLE IF NOT EXISTS `asistencia_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `clase` longtext DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.asistencia_estudiante: ~18 rows (aproximadamente)
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(1, 'Johana', 'Parra Sierra', 'fotos/FOTO.jpg', 'tps', 'carrera 55 no 72 b 34', '2025-06-24'),
	(2, 'Jose Luis', 'Quintero Peña', 'fotos/1019126833_4hyIVRk.jpg', 'TPS', NULL, NULL),
	(3, 'Cristian David', 'Urueña Garcia', 'fotos/1000128653_X6IH0Ed.jpg', 'TPS', NULL, NULL),
	(5, 'Victor Manuel', 'Garcia Nuñez', 'fotos/1031648376_b2rfIrF.jpg', 'TPS', NULL, NULL),
	(6, 'Darwin Felipe', 'Bocanegra Gutierrez', 'fotos/1013112159_fTSU78w.jpg', 'TPS', NULL, NULL),
	(7, 'Miguel Angel', 'Acuña Prieto', 'fotos/1021313102_kVTzsyF.jpg', 'TPS', NULL, NULL),
	(8, 'Juan Camilo', 'Arias Saenz', 'fotos/1027401631_7ToVZm5.jpg', 'TPS', NULL, NULL);
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(9, 'Cristiam David', 'Galeano Marin', 'fotos/1031645931_yQZ8T5V.png', 'TPS', NULL, NULL),
	(10, 'Nicolas', 'Molina Beltran', 'fotos/1001111758_KJodpmi.jpg', 'TPS', NULL, NULL),
	(11, 'Deiby Alejandro', 'Rodriguez  Avila', 'fotos/1022953641_eLnzSuH.jpg', 'TPS', NULL, NULL),
	(12, 'Nicolas Alfonso', 'Rincon Quintero', 'fotos/1074810664_sLaL6GG.jpg', 'TPS', NULL, NULL),
	(13, 'Andres Felipe', 'Martinez Camargo', 'fotos/1025534912_z4ZIoJU.jpg', 'TPS', NULL, NULL),
	(14, 'Facsuli Maria', 'Briñez Yate', 'fotos/1033698793_oD0irTF.jpg', 'TPS', NULL, NULL),
	(15, 'Daniel Felipe', 'Guerrero Prias', 'fotos/1021396395_Ukmh9g5.jpg', 'TPS', NULL, NULL),
	(16, 'Sebastian', 'Rodriguez Gomez', 'fotos/1015406783_djQyMsW.jpg', 'TPS', NULL, NULL);
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(17, 'Luz Angela', 'Forero Martinez', 'fotos/1031809814_KaVzIsW.jpg', 'TPS', NULL, NULL),
	(18, 'Edwin Steban', 'Pulido Rojas', 'fotos/1007395624_FYPxCph.jpg', 'TPS', NULL, NULL),
	(19, 'David Esteban', 'Palma Montaño', 'fotos/1011096248_HCqtAQG.jpg', 'TPS', NULL, NULL);

-- Volcando estructura para tabla apolo.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_permission: ~28 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add estudiante', 7, 'add_estudiante'),
	(26, 'Can change estudiante', 7, 'change_estudiante'),
	(27, 'Can delete estudiante', 7, 'delete_estudiante'),
	(28, 'Can view estudiante', 7, 'view_estudiante');

-- Volcando estructura para tabla apolo.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_admin_log: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_content_type: ~7 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(7, 'asistencia', 'estudiante'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');

-- Volcando estructura para tabla apolo.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_migrations: ~22 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'asistencia', '0001_initial', '2025-05-15 16:12:11.958324'),
	(2, 'asistencia', '0002_estudiante_direccion_estudiante_fechaingreso_and_more', '2025-05-15 16:12:12.159671'),
	(3, 'asistencia', '0003_alter_estudiante_foto', '2025-05-15 16:12:12.234429'),
	(4, 'asistencia', '0004_alter_estudiante_id', '2025-05-15 16:12:12.314451'),
	(5, 'contenttypes', '0001_initial', '2025-05-15 16:12:53.463161'),
	(6, 'auth', '0001_initial', '2025-05-15 16:12:54.636538'),
	(7, 'admin', '0001_initial', '2025-05-15 16:12:54.854599'),
	(8, 'admin', '0002_logentry_remove_auto_add', '2025-05-15 16:12:54.874347'),
	(9, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-15 16:12:54.895431');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(10, 'contenttypes', '0002_remove_content_type_name', '2025-05-15 16:12:55.038196'),
	(11, 'auth', '0002_alter_permission_name_max_length', '2025-05-15 16:12:55.136565'),
	(12, 'auth', '0003_alter_user_email_max_length', '2025-05-15 16:12:55.194289'),
	(13, 'auth', '0004_alter_user_username_opts', '2025-05-15 16:12:55.223265'),
	(14, 'auth', '0005_alter_user_last_login_null', '2025-05-15 16:12:55.308069'),
	(15, 'auth', '0006_require_contenttypes_0002', '2025-05-15 16:12:55.312959'),
	(16, 'auth', '0007_alter_validators_add_error_messages', '2025-05-15 16:12:55.331230'),
	(17, 'auth', '0008_alter_user_username_max_length', '2025-05-15 16:12:55.392237'),
	(18, 'auth', '0009_alter_user_last_name_max_length', '2025-05-15 16:12:55.453011'),
	(19, 'auth', '0010_alter_group_name_max_length', '2025-05-15 16:12:55.511384');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(20, 'auth', '0011_update_proxy_permissions', '2025-05-15 16:12:55.523111'),
	(21, 'auth', '0012_alter_user_first_name_max_length', '2025-05-15 16:12:55.579301'),
	(22, 'sessions', '0001_initial', '2025-05-15 16:12:55.673149');

-- Volcando estructura para tabla apolo.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_session: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
