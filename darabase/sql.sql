-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        10.11.0-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- gallery 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `gallery`;
CREATE DATABASE IF NOT EXISTS `gallery` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `gallery`;

-- 테이블 gallery.items 구조 내보내기
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '상품 번호',
  `name` varchar(50) NOT NULL COMMENT '상품명',
  `img_path` varchar(100) DEFAULT NULL COMMENT '이미지 경로',
  `price` int(11) DEFAULT NULL COMMENT '가격',
  `discount_per` int(11) DEFAULT NULL COMMENT '할인률',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 gallery.items:~7 rows (대략적) 내보내기
DELETE FROM `items`;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `img_path`, `price`, `discount_per`) VALUES
	(1, 'vintage', '/img/vincent-van-gogh-g9edbf42e0_1920.jpg', 10000000, 5),
	(2, 'post', '/img/post-impressionist-g269c3ebe1_1920.jpg', 20000000, 10),
	(3, 'vincent', '/img/vintage-gd8f6edba3_1920.jpg', 30000000, 30);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- 테이블 gallery.members 구조 내보내기
DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 gallery.members:~1 rows (대략적) 내보내기
DELETE FROM `members`;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `email`, `password`) VALUES
	(1, 'example@example.com', '1234');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
