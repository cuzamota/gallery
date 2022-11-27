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

-- 테이블 데이터 gallery.carts:~3 rows (대략적) 내보내기
DELETE FROM `carts`;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;

-- 테이블 데이터 gallery.items:~7 rows (대략적) 내보내기
DELETE FROM `items`;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `img_path`, `price`, `discount_per`) VALUES
	(1, 'vintage', '/img/vincent-van-gogh-g9edbf42e0_1920.jpg', 10000000, 5),
	(2, 'post', '/img/post-impressionist-g269c3ebe1_1920.jpg', 20000000, 10),
	(3, 'vincent', '/img/vintage-gd8f6edba3_1920.jpg', 30000000, 30);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- 테이블 데이터 gallery.members:~1 rows (대략적) 내보내기
DELETE FROM `members`;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `email`, `password`) VALUES
	(1, 'example@example.com', '1234');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- 테이블 데이터 gallery.orders:~7 rows (대략적) 내보내기
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `member_id`, `name`, `address`, `payment`, `card_number`, `items`) VALUES
	(1, 1, '김철수', '서울시', 'card', '1234567', ''),
	(6, 1, '김영희', '대전', 'card', '435433', '[{"id":1,"name":"vintage","imgPath":"/img/vincent-van-gogh-g9edbf42e0_1920.jpg","price":"10000000","discountPer":5},{"id":2,"name":"post","imgPath":"/img/post-impressionist-g269c3ebe1_1920.jpg","price":"20000000","discountPer":10}]'),
	(7, 1, '김종수', '동대문수', 'card', '223554365423', '[{"id":1,"name":"vintage","imgPath":"/img/vincent-van-gogh-g9edbf42e0_1920.jpg","price":"10000000","discountPer":5},{"id":2,"name":"post","imgPath":"/img/post-impressionist-g269c3ebe1_1920.jpg","price":"20000000","discountPer":10},{"id":3,"name":"vincent","imgPath":"/img/vintage-gd8f6edba3_1920.jpg","price":"30000000","discountPer":30}]');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
