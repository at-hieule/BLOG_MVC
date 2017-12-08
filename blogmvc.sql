-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 192.168.30.10    Database: blogmvc
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `author` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (14,'Bạn đã dành cho gia đình những gì?','Bạn hãy dành nhiều thời gian cho gia đình hơn nữa, để yêu thương và cảm nhận đầy đủ những nhọc nhằn của mẹ, những nghiêm khác của cha hay cái nhõng nhẽo của những đứa em. Vì có thể một lúc nào đó, bạn sẽ không còn thời gian để quay lại được nữa đâu…','* Khi còn nhỏ :\r\n– Bạn sẵn sàng nhường nhiều thứ lớn hơn cái kẹo cho đứa bạn ngồi cùng bàn nhưng đôi khi lại tranh giành đến đánh nhau với đứa em chỉ vì một chổ ngồi .\r\n– Bạn rất vui khi nhận trực nhật giùm cô bạn trong lớp nhưng lại luôn phân bì công việc dọn dẹp nhà cửa với đứa em ở nhà .\r\n– Bạn có thể hăng hái làm một đầu bếp ” siêu hạng ” trong chuyến cắm trại đã ngoại của lớp nhưng lại không nhấc nổi tay chân vào bếp nhặt rau giúp mẹ. Bạn xem đó là việc đương nhiên mẹ phải làm\r\n– Bạn sẵn sàng bỏ ra ra hàng giờ đồng hồ trong tiệm điện tử và “chỉ bảo” cho những tên “đệ tử” với những game phức tạp nhưng lại không có lấy 1 phút để giảng bài cho các em của mình.\r\n– Bạn luôn nhớ chúc mừng và tặng quà cho các cô bạn gái nhân dịp sinh nhật , 8-3 nhưng lại quên mất rằng bạn còn có một người phụ nữ khác quan trọng hơn rất nhiều ,đó là Mẹ.\r\n– Bạn thường sa sầm mặt mày, thậm chí nổi xung lên chỉ vì những lời trách cứ, răn dạy của bố mẹ , dù đúng nhưng sau đó bạn lại quên ngay như chưa từng được nghe.\r\n– Bạn đã từng lưỡng lự mỗi khi xoa đầu cho Mẹ khi mẹ cảm thấy mệt nhưng lại quên mất rằng mẹ đã từng thức thâu đêm để canh giấc ngủ của bạn mỗi khi bạn “trái gió trở trời”.\r\n* Khi lớn lên\r\n– Bạn quá bận rộn với công việc , ngày nào cũng đến khuya mới về , ăn uống vội vàng rồi ngủ mà đôi khi quên hỏi thăm mẹ vì đã chong đèn thưc chờ cơm bạn .\r\n– Bạn đã từng khó chịu vì cha mẹ mình có lúc lẫn thẩn, “già hóa trẻ con” nhưng lại quên mất chính vì một phần vất vả , sinh thành nuôi dưỡng bạn mà cha mẹ bạn đi về hướng ngược lại như vậy.\r\n– Bạn không bao giờ để ý rằng những lúc bạn buồn bã, thất vọng hay thất bại, Mẹ luôn ở bên cạnh bạn , chở che nâng đỡ bạn . Và dường như bạn cho rằng mỗi ngày việc bạn nhìn thấy mẹ là một điều hiển nhiên.\r\n\r\n* Khi bạn rời xa gia đình …\r\n– Bạn bắt đầu hiểu cha mẹ đã vất vả, khó nhọc thế nào để nuôi bạn không lớn.\r\n– Bạn hối hận vì đã cư xử không phải khi cha mẹ cứ trách mình .\r\n– Bạn nhận ra rằng đứa em bạn thật đáng yêu, xem ra nó không trẻ con một chút nào, khác hẳn với bạn.\r\n– Bạn cảm thấy tiếc nuối vì đã đánh mất biết bao giây phút gia đình sum họp đầm ấm.\r\n– Bạn nhận ra mình thật vô tâm vì chưa bao giờ thực tâm giúp mẹ trong công việc gia đình.\r\n– Bạn có lúc sẽ nhận ra là mình đã sai khi dặt cha mẹ ra khỏi thế giới riêng của mình chỉ vì một suy nghỉ hết sức một chiều :”Cha mẹ không hiểu con !”\r\n– Chỉ khi bắt đầu làm cha, làm mẹ bạn mới thấu hiểu làm đấng sinh thành khó đến nhường nào. Khi những đứa con xinh xắn của bạn lớn lên, bạn mới thấy thật không dể dàng dể làm bạn với chúng. Và khi đã bước vào cuộc sống rồi, bạn mới hiểu sẽ rất khó có những giây phút vui vầy cạnh những đứa em như xưa. Nhưng hình như tất cả đã quá muộn , ba mẹ bạn hoặc đã già, hoặc đã đi xa mãi mãi . Bạn không thể tìm lại được những năm tháng hạnh phúc ấy.\r\n– Có những lúc bạn vô tình đặt gia đình ở một vị trí rất bình thường trong trái tim bạn . Chỉ khi thật sự mất đi một điều gì đó, bạn mới thấy diều đó là quan trọng . Sẽ đến một ngày những giây phút bình dị nhất bên gia đình sẽ không còn nữa . Bạn ngoảnh đầu nuối tiếc ư ? Sẽ không còn kịp! Bạn hãy dành nhiều thời gian cho gia đình hơn nữa, để yêu thương và cảm nhận đầy đủ những nhọc nhằn của mẹ, những nghiêm khác của cha hay cái nhõng nhẽo của những đứa em.Vì có thể một lúc nào đó, bạn sẽ không còn thời gian để quay lại được nữa đâu…                   ','HieuLe','2017-12-05 00:00:00'),(15,'Cô bé quàng khăn đỏ','Cô bé quàng khăn đỏ là một câu chuyện cổ tích châu Âu kể về một cô gái trẻ và một con sói già độc ác. Cô bé mải chơi quên lời mẹ dặn đến nỗi bị chó Sói lừa ăn thịt cả cô và bà ngoại vào trong bụng. Câu chuyện trên đã thể hiện rất rõ sự tương phản giữa thế giới an toàn của ngôi làng và sự nguy hiểm của rừng rậm. Đồng thời cũng dạy dỗ các bạn nhỏ việc phải nghe lời mẹ dặn. Đây là một trong những câu truyện cổ tích rất được các bạn nhỏ thế giới yêu thích.','Ngày xửa ngày xưa, có một cô bé rất ngoan ngoãn tốt bụng, cô luôn được mọi người yêu mến, bà ngoại là người yêu cô nhất. Sinh nhật cô bé, bà đan tặng cô một chiếc khăn màu đỏ rất đẹp, hễ đi đâu cô bé cũng quàng. Vì thế nên mọi người gọi cô là cô bé quàng khăn đỏ. Một hôm nọ, bà ngoại bị ốm, mẹ dặn Khăn Đỏ đem bánh sang biếu bà. Trước khi cô bé ra khỏi nhà mẹ dặn cô rất kĩ:- Con à, sang bà thì con đi đường thẳng đến nhà bà luôn nhé, đừng la cà dọc đường. Đường vòng qua rừng có rất nhiều chó sói đấy.\r\n\r\nCô bé ngoan ngoãn nghe lời mẹ rồi cầm giỏ bánh đi sang nhà bà ngoại. Nhưng vốn tình ham chơi, trên đường đi, cô bé thấy đường qua rừng có rất nhiều hoa thơm, những con bướm màu sắc sặc sỡ đang tung tăng bay lượn, mải chơi quá cô bé quên mất lời mẹ dặn, cứ thế đi men theo đường rừng. Đi được 1 đoạn đường thì gặp bạn Sóc, Sóc nhắc nhở cô bé:\r\n\r\n– Cô bé quàng khăn đỏ ơi, cô quên lời mẹ dặn rồi à? Cô quay lại đi đường thẳng đi, đi đường vòng sẽ bị sói ăn thịt đấy.\r\n\r\nMặc cho sóc can ngăn, cô bé vẫn rong ruổi theo đàn bướm. Cô bé vừa tung tăng trên đường, vừa bắt bướm hái hoa. Đến tới giữa khu rừng thì cô bé gặp chó Sói. Sói nhìn thấy Khăn Đỏ thì mừng lắm, vậy là đã có bữa ăn rồi. Sói ngay lập tức nhảy ra từ bụi rậm tiến đến trước mặt cô, chó Sói cất giọng ồm ồm:\r\n\r\n– Này, nhóc con, đang tung tăng đi đâu thế?\r\n\r\nNhìn thấy chó Sói Khăn Đỏ sợ hãi, cô run run trả lời:\r\n\r\n– Bà ngoại cháu bị ốm, mẹ cháu sai mang bánh sang biếu bà ạ.\r\nSói nghe thấy cô bé quàng khăn đỏ nói đang đi sang bà ngoại tặng bánh, nó thầm nghĩ trong bụng: “À, hoá ra con bé này lại còn có bà ngoại nữa, thế thì ta phải tính ăn thịt cả 2 bà cháu nó mới được”. Sói tiếp tục hỏi:\r\n\r\n– Thế nhà bà ngoại cháu ở đâu?\r\n\r\nCô bé quàng khăn đỏ đáp:\r\n\r\n– Nhà bà ngoại cháu ở bên kia khu rừng này. Ngôi nhà gỗ có cái ống khói cao tít, chỉ cần đẩy cửa là vào nhà được luôn.\r\n\r\nBiết tính cô ham chơi, sói ta liền bảo:\r\n\r\n– Bà cháu đang ốm, vậy cháu hãy đi hái ít hoa mang cho bà đi.','HaiNgiLe','2017-12-06 00:00:00'),(16,'Hạ đỏ','Kể về mối tình đầu trong sáng của cậu học trò Chương dành cho cô gái quê Út Thêm trong dịp về quê nghỉ hè sau kì thi căng thẳng','Kể về mối tình đầu trong sáng của cậu học trò Chương dành cho cô gái quê Út Thêm trong dịp về quê nghỉ hè sau kì thi căng thẳng','HieuLe','2017-12-06 00:00:00'),(17,'Ngôi trường mọi khi','à những câu chuyện về nhóm bạn khi bước vào năm đầu cấp 3 với bao kỷ niệm vui buồn hờn giận, bao trò tinh nghịch của tuổi mới lớn. Hạt Tiêu, Tóc Ngắn, Hột Mít, Bảnh Trai, Răng Chuột, Mặt Mụn… những người bạn vui nhộn đã tạo nên không khí của một lớp học thật dễ thương với bao nhiêu tình cảm yêu thương, cảm động và gần gũi.','à những câu chuyện về nhóm bạn khi bước vào năm đầu cấp 3 với bao kỷ niệm vui buồn hờn giận, bao trò tinh nghịch của tuổi mới lớn. Hạt Tiêu, Tóc Ngắn, Hột Mít, Bảnh Trai, Răng Chuột, Mặt Mụn… những người bạn vui nhộn đã tạo nên không khí của một lớp học thật dễ thương với bao nhiêu tình cảm yêu thương, cảm động và gần gũi.','HaiNgiLe','2017-12-06 09:10:38'),(24,'Uninstall packages','Before reinstalling or updating the package for Sublime Text, you might need to uninstall it first.','Run Sublime Text.\r\nSelect Preferences → Package Control.\r\nSelect Remove Package.\r\nStart typing Telerik AppBuilder and select it from the list of installed packages.\r\nWait for the installation to complete.\r\n               ','HaiNgiLe','2017-12-07 14:30:12'),(25,'CÀI ĐẶT GIT VÀ THIẾT LẬP BAN ĐẦU','Để có thể sử dụng được Git, bạn phải cài ứng dụng Git vào máy tính để có thể sử dụng các dòng lệnh của Git vì toàn bộ quy trình làm việc với Git đều diễn ra các dòng lệnh ','Trước hết, để tạo một repository thì bạn cần truy cập vào thư mục của mã nguồn với lệnh cd, sau đó sử dụng lệnh git init để khởi tạo repository trong thư mục đó. Ở ví dụ này, mình sẽ tạo tạo ra một thư mục mới để chứa code sau này và khởi tạo repository cho nó, mình sẽ dùng lệnh git init tên_folder để nó tự khởi tạo thư mục.\r\nVà sau khi tập tin đã được đưa vào trạng thái tracked và nếu một tập tin đã tracked thì nó phải được đưa vào lại Staging Area (giải thích ở bài sau) cũng bằng lệnh git add thì bạn mới có thể tiến hành ủy thác (commit) nhằm lưu lại bản chụp các thay đổi. Lệnh commit sẽ có cấu trúc git commit -m \"Lời nhắn\", lúc này tất cả các tập đang trong trạng thái tracked (file mới) hoặc một tập tin đã được tracked nhưng có một sự thay đổi mới thì sẽ được commit.                    ','LeoCoHo','2017-12-07 17:24:40');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'HieuLe','123123','Hieu Le Thi'),(3,'HaiNgiLe','123123','Hai Nghi Le'),(16,'LeoCoHo','123123','Leo Co Ho Cho'),(17,'Hieu1234','123456','Hieu Le Thi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-08 13:53:34
