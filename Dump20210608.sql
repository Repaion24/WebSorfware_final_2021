-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mql_db
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `boardID` int NOT NULL,
  `boardTitle` varchar(50) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `boardDate` datetime DEFAULT NULL,
  `boardContent` varchar(2048) DEFAULT NULL,
  `boardAvailable` int DEFAULT NULL,
  `boardBad` int DEFAULT NULL,
  PRIMARY KEY (`boardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'123321','repaion24','2021-05-31 20:59:45','321321',0,0),(2,'나는 바보다','gwantae98','2021-05-31 21:17:55','너도 바보다',1,0),(3,'멍청이','gwantae98','2021-05-31 21:18:05','바보',1,0),(4,'1번글','gwantae98','2021-05-31 21:18:25','1',1,0),(5,'2번글','gwantae98','2021-05-31 21:18:31','2',1,0),(6,'3번글','gwantae98','2021-05-31 21:18:37','3',1,0),(7,'4번글','gwantae98','2021-05-31 21:18:42','4',0,4),(8,'5번글','gwantae98','2021-05-31 21:18:49','5',0,4),(9,'6번글','gwantae98','2021-05-31 21:18:55','6',0,5),(10,'7번글','gwantae98','2021-05-31 21:19:01','7',0,0),(11,'8번글','gwantae98','2021-05-31 21:19:07','8',1,0),(12,'9번글123','gwantae98','2021-05-31 21:19:13','9123',1,1),(13,'10번글 ','gwantae98','2021-05-31 21:19:19','10',1,13),(14,'<d안영?>      이 글은 테스트용','gwantae98','2021-05-31 22:11:22','<?   \r\n\r\nㄴㅁㅇㄴㅇㅎ\r\nㅠㄹㅇㅎ\r\n>?',1,2),(15,'힘들어 좀 죽여줘 123','ggantae98','2021-06-01 01:22:22','제발 죽여123',0,0),(16,'이거 어떻게 사용하는건가요','repaion24','2021-06-01 15:09:36','나는 정말 좋은 물건을 찾았습니다\r\n\r\n\r\n\r\n\r\n\r\n\r\n오늘 소개해드릴 물건은 이 건강식품인데요\r\n\r\n\r\n\r\n\r\n\r\n\r\n정말 환상적이에요',1,2),(17,'신고기능 테스트용','repaion24','2021-06-01 15:40:49','이 글은 곧 신고됩니다',0,5),(18,'여러분 아보카도 오일 후기 올립니다~~','repaion24','2021-06-08 03:53:50','아보카도 오일 매일 한 숟가락씩 먹었는데\r\n눈도 엄청 좋아지고\r\n살도 많이 빠졌어요\r\n\r\n\r\n다들 아보카도 오일 한병씩 사서\r\n매일 한숟가락씩 먹어보세요\r\n\r\n\r\n진짜 하나도 안느끼하고\r\n샐러드에 같이 먹어도 좋아요~',1,0),(19,'서리태가 새치에 그렇게 좋다면서요?','gwantae98','2021-06-08 03:54:32','내용1',1,0),(20,'원푸드 다이어트 후기입니다','ggantae98','2021-06-08 03:55:21','내용2',1,0),(21,'다한증 있으신 분들 꿀팁','ggantae98','2021-06-08 03:55:44','내용3\r\n',1,0),(22,'편식하는 아이들을 위한 조리방법들','chjhyun','2021-06-08 03:56:46','내용4',1,0),(23,'눈건강에 좋다고 하는 음식들','glument','2021-06-08 03:57:31','내용5',1,0),(24,'매일매일 칡즙을 먹었더니 확실히 좋아지네요','snowinggg','2021-06-08 03:58:29','내용 5',1,0),(25,'제로 칼로리 음료는 마셔도 살이 안쪄요 여러분','yonggin','2021-06-08 04:01:49','설탕을 사용하지 않고 인공감미료를 사용하기 때문에\r\n\r\n아무리 먹어도 살이 찌지 않습니다.\r\n\r\n다들 다이어트 콜라를 마십시다!',0,4),(26,'변비에 좋다고 망고를 계속 먹으면 신장염에 걸릴 수 있으니 조심하세요~','repaion24','2021-06-08 04:03:04','내용8',1,0),(27,'안녕하세요 여러분','example','2021-06-08 04:09:02','잘 부탁드립니다\r\n\r\n\r\n글 수정도 할 수 있네요?',1,0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userGender` varchar(20) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('chjhyun','7233no','차재현','남자','as@ba'),('example','7233no','노관태','남자','gwantae98@naver.com'),('ggantae98','7233no','심관태','남자',' ggantae98@naver.com'),('glument','7233no','차재현','남자','as@ba'),('gwantae98','7233no','김관태','남자','gwantae98@naver.com'),('repaion24','7233no','노관태','남자','repaion24@naver.com'),('snowinggg','7233no','신혁진','남자','sh@na'),('yonggin','7233no','123','남자','as@ba');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mql_db'
--

--
-- Dumping routines for database 'mql_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08  4:36:17
