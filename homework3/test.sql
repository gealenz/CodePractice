
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `bookId` int(10) NOT NULL AUTO_INCREMENT,
  `bookCode` varchar(10) NOT NULL,
  `bookName` varchar(10) NOT NULL,
  `bookType` int(10) NOT NULL,
  `bookAuthor` varchar(10) NOT NULL,
  `publishPress` varchar(10) NOT NULL,
  `publishDate` varchar(10) NOT NULL,
  `borrowed` int(2) NOT NULL,
  `createdBy` varchar(10) NOT NULL,
  `createTime` date NOT NULL,
  `lastUpdatetime` date DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

