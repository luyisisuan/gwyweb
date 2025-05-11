-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gwy_data
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course_tracker`
--

DROP TABLE IF EXISTS `course_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tracker` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `completed_lessons` int NOT NULL,
  `course_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `total_lessons` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_course_key` (`course_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tracker`
--

LOCK TABLES `course_tracker` WRITE;
/*!40000 ALTER TABLE `course_tracker` DISABLE KEYS */;
INSERT INTO `course_tracker` VALUES (1,10,'main-course','https://www.huatu.com/htzx/user/index.shtml#/courseDetail/KCZF464FO6/100%E5%85%83%E7%BA%A2%E9%B2%A4%E5%AE%9A%E9%87%91%E7%8F%AD?orderCode=','100元红鲶定金班 (华图)','2025-04-16 00:54:16.074552','测试\n',100);
/*!40000 ALTER TABLE `course_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_activity_log`
--

DROP TABLE IF EXISTS `daily_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_activity_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `log_date` date NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `total_online_seconds` bigint NOT NULL,
  `activity_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKc6qi1n8bd5a7js42lus106oan` (`log_date`),
  UNIQUE KEY `idx_activity_date` (`activity_date`),
  KEY `idx_daily_activity_log_date` (`log_date`),
  KEY `idx_log_date` (`log_date`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_activity_log`
--

LOCK TABLES `daily_activity_log` WRITE;
/*!40000 ALTER TABLE `daily_activity_log` DISABLE KEYS */;
INSERT INTO `daily_activity_log` VALUES (1,'2025-04-14',NULL,60,'2025-04-14'),(4,'2025-04-16',NULL,510,'2025-04-16'),(5,'2025-04-19',NULL,2310,'2025-04-19');
/*!40000 ALTER TABLE `daily_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log_entry`
--

DROP TABLE IF EXISTS `error_log_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_log_entry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_review_date` datetime(6) DEFAULT NULL,
  `my_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `review_count` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log_entry`
--

LOCK TABLES `error_log_entry` WRITE;
/*!40000 ALTER TABLE `error_log_entry` DISABLE KEYS */;
INSERT INTO `error_log_entry` VALUES (7,'11',NULL,'1',NULL,'1','1','1',0,'言语理解与表达','2025-04-16 00:42:56.893280');
/*!40000 ALTER TABLE `error_log_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge_item`
--

DROP TABLE IF EXISTS `knowledge_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_item`
--

LOCK TABLES `knowledge_item` WRITE;
/*!40000 ALTER TABLE `knowledge_item` DISABLE KEYS */;
INSERT INTO `knowledge_item` VALUES (10,'时事政治','1981年6月27～29日，中国共产党第十一届中央委员会第六次全体会议在北京举行。全会一致通过《关于建国以来党的若干历史问题的决议》。《决议》肯定了毛泽东的历史地位和毛泽东思想，实事求是地评价了建国32年来的功过是非，彻底否定了\"文化大革命\"和\"无产阶级专政下继续革命\"的理论。全会一致同意华国锋辞去党中央主席和中央军委主席职务的请求。选举胡耀邦为中央委员会主席；赵紫阳、华国锋为中央委员会副主席；邓小平为中央军事委员会主席；由胡耀邦、叶剑英、邓小平、赵紫阳、李先念、陈云、华国锋组成中共中央政治局常务委员会。增选习仲勋为中共中央书记处书记。 [1]','https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%85%B1%E4%BA%A7%E5%85%9A%E7%AC%AC%E5%8D%81%E4%B8%80%E5%B1%8A%E4%B8%AD%E5%A4%AE%E5%A7%94%E5%91%98%E4%BC%9A%E7%AC%AC%E5%85%AD%E6%AC%A1%E5%85%A8%E4%BD%93%E4%BC%9A%E8%AE%AE/8119599','knowledge/f1d5968c-4f98-4199-928f-7b16df1ed8d4.png','2025-04-19 02:31:47.861248','十一届六中全会'),(12,'时事政治','邓小平在讲话中将中国共产党一贯所强调的思想政治方面的原则，概括为“四项基本原则”，这就是“坚持社会主义道路，坚持无产阶级专政（1982年《中华人民共和国宪法》将无产阶级专政改为人民民主专政），坚持中国共产党的领导，坚持马列主义、毛泽东思想。”并指出，“这是实现四个现代化的根本前提” [1]。邓小平提醒全党注意那种怀疑四项基本原则的思潮在一小部分人中蔓延，他指出“我们必须一方面继续坚定地肃清‘四人帮’的流毒，帮助一部分还在中毒的同志觉悟过来，并且对极少数人所散布的诽谤党中央的反动言论给予痛击；另一方面用巨大的努力同怀疑上面所说的四项基本原则的思潮作坚决的斗争。这两种思潮都是违背马列主义、毛泽东思想的，都是妨碍我们的社会主义现代化建设事业的前进的。”邓小平还论述了四项基本原则是完整的指导原则，论述了它的核心。他指出：坚持四项基本原则的核心，是坚持共产党的领导。并强调，每个共产党员不允许在这个根本立场上有丝毫的动摇。\n邓小平在逐一论述了四项基本原则之后说：“总之，为了实现四个现代化，我们必须坚持社会主义道路，坚持人民民主专政，坚持共产党的领导，坚持马列主义、毛泽东思想。”（《邓小平文选》（1975—1982年）第159页）决不允许否定或反对四项基本原则。如果动摇了这四项基本原则中任何一项，那就动摇了整个社会主义事业和整个现代化建设事业。中共中央认为四项基本原则永远是我们立国、治国、强国之本。','https://baike.baidu.com/item/%e5%9b%9b%e9%a1%b9%e5%9f%ba%e6%9c%ac%e5%8e%9f%e5%88%99/280112','knowledge/40694b24-473e-4bb8-9f1d-b4996e47baa7.png','2025-04-19 02:39:51.536875','四项基本原则'),(13,'时事政治','中国共产党在社会主义初级阶段的基本路线是：领导和团结全国各族人民，以经济建设为中心，坚持四项基本原则，坚持改革开放，自力更生，艰苦创业，为把我国建设成为富强、民主、文明、和谐、美丽的社会主义现代化强国而奋斗。\n党的基本路线最初出自中国共产党第十三次全国代表大会上的报告（《沿着有中国特色的社会主义道路前进》）。此后，党的十七大、十九大先后对党的基本路线的内容进行了完善。 ','https://baike.baidu.com/item/%E5%85%9A%E7%9A%84%E5%9F%BA%E6%9C%AC%E8%B7%AF%E7%BA%BF/1219935','knowledge/35b52a86-1a4c-4baa-bde6-48831d9f41fc.png','2025-04-19 02:43:59.572131','党的基本路线'),(14,'时事政治','小平同志逝世','http://cpc.people.com.cn/n1/2022/0819/c443712-32506321.html','knowledge/d6d3ee05-0336-4503-bcf7-805de11949fc.png','2025-04-19 02:51:47.374763','党的十五大(1997.9)'),(15,'时事政治','江泽民同志2000年2月25日在广东省考察工作时，从全面总结党的历史经验和如何适应新形势新任务的要求出发，首次提出 [12]并比较全面地阐述了“三个代表”重要思想。具体内容为中国共产党始终代表中国先进生产力的发展要求、始终代表中国先进文化的前进方向、始终代表中国最广大人民的根本利益，“三个代表”重要思想是我们党的立党之本、执政之基、力量之源。','https://baike.baidu.com/item/%E2%80%9C%E4%B8%89%E4%B8%AA%E4%BB%A3%E8%A1%A8%E2%80%9D%E9%87%8D%E8%A6%81%E6%80%9D%E6%83%B3/2523227','knowledge/a77e9e37-b5e2-4f76-8fed-8a87fdeecfc1.png','2025-04-19 02:54:11.866755','三个代表重要思想'),(16,'时事政治','  中国共产党第十九次全国代表大会（简称中共十九大）于2017年10月18日至10月24日在北京召开。这次大会的主题是：不忘初心，牢记使命，高举中国特色社会主义伟大旗帜，决胜全面建成小康社会，夺取新时代中国特色社会主义伟大胜利，为实现中华民族伟大复兴的中国梦不懈奋斗。\n  党的十九大，是在全面建成小康社会决胜阶段、中国特色社会主义发展关键时期召开的一次十分重要的大会。承担着谋划决胜全面建成小康社会、深入推进社会主义现代化建设的重大任务，事关党和国家事业继往开来，事关中国特色社会主义前途命运，事关最广大人民根本利益。 [1]\n  2017年10月18日上午9:00，中国共产党第十九次全国代表大会在人民大会堂开幕。习近平代表第十八届中央委员会向大会作了题为《决胜全面建成小康社会 夺取新时代中国特色社会主义伟大胜利》的报告。\n  2017年10月24日，中国共产党第十九次全国代表大会在选举产生新一届中央委员会和中央纪律检查委员会，通过关于十八届中央委员会报告的决议、关于十八届中央纪律检查委员会工作报告的决议、关于《中国共产党章程（修正案）》的决议后，在人民大会堂胜利闭幕。 [2-3]','https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%85%B1%E4%BA%A7%E5%85%9A%E7%AC%AC%E5%8D%81%E4%B9%9D%E6%AC%A1%E5%85%A8%E5%9B%BD%E4%BB%A3%E8%A1%A8%E5%A4%A7%E4%BC%9A/1629417','knowledge/ae4dc678-6006-4fb9-86db-8229756e8b8b.png','2025-04-19 03:52:53.515767','党的十九大（2017.10）'),(17,'时事政治','  中国共产党第二十次全国代表大会是在全党全国各族人民迈上全面建设社会主义现代化国家新征程、向第二个百年奋斗目标进军的关键时刻召开的一次十分重要的大会。大会主题是：高举中国特色社会主义伟大旗帜，全面贯彻新时代中国特色社会主义思想，弘扬伟大建党精神，自信自强、守正创新，踔厉奋发、勇毅前行，为全面建设社会主义现代化国家、全面推进中华民族伟大复兴而团结奋斗。\n报告金句\n1、我们党立志于中华民族千秋伟业，致力于人类和平与发展崇高事业，责任无比重大，使命无上光荣。全党同志务必不忘初心、牢记使命，务必谦虚谨慎、艰苦奋斗，务必敢于斗争、善于斗争，坚定历史自信，增强历史主动，谱写新时代中国特色社会主义更加绚丽的华章。\n2、经过不懈努力，党找到了自我革命这一跳出治乱兴衰历史周期率的第二个答案，确保党永远不变质、不变色、不变味。\n3、新时代的伟大成就是党和人民一道拼出来、干出来、奋斗出来的！\n4、新时代十年的伟大变革，在党史、新中国史、改革开放史、社会主义发展史、中华民族发展史上具有里程碑意义。\n5、中国共产党为什么能，中国特色社会主义为什么好，归根到底是马克思主义行，是中国化时代化的马克思主义行。\n6、中国人民和中华民族从近代以后的深重苦难走向伟大复兴的光明前景，从来就没有教科书，更没有现成答案。党的百年奋斗成功道路是党领导人民独立自主探索开辟出来的，马克思主义的中国篇章是中国共产党人依靠自身力量实践出来的，贯穿其中的一个基本点就是中国的问题必须从中国基本国情出发，由中国人自己来解答。\n7、坚持道不变、志不改，既不走封闭僵化的老路，也不走改旗易帜的邪路，坚持把国家和民族发展放在自己力量的基点上，坚持把中国发展进步的命运牢牢掌握在自己手中。\n8、增强全党全国各族人民的志气、骨气、底气，不信邪、不怕鬼、不怕压，知难而进、迎难而上，统筹发展和安全，全力战胜前进道路上各种困难和挑战，依靠顽强斗争打开事业发展新天地。\n9、坚持以最大诚意、尽最大努力争取和平统一的前景，但决不承诺放弃使用武力，保留采取一切必要措施的选项。\n10、国家统一、民族复兴的历史车轮滚滚向前，祖国完全统一一定要实现，也一定能够实现！\n11、腐败是危害党的生命力和战斗力的最大毒瘤，反腐败是最彻底的自我革命。只要存在腐败问题产生的土壤和条件，反腐败斗争就一刻不能停，必须永远吹冲锋号。\n12、时代呼唤着我们，人民期待着我们，唯有矢志不渝、笃行不怠，方能不负时代、不负人民。全党必须牢记，坚持党的全面领导是坚持和发展中国特色社会主义的必由之路，中国特色社会主义是实现中华民族伟大复兴的必由之路，团结奋斗是中国人民创造历史伟业的必由之路，贯彻新发展理念是新时代我国发展壮大的必由之路，全面从严治党是党永葆生机活力、走好新的赶考之路的必由之路。\n13、党用伟大奋斗创造了百年伟业，也一定能用新的伟大奋斗创造新的伟业。','https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%85%B1%E4%BA%A7%E5%85%9A%E7%AC%AC%E4%BA%8C%E5%8D%81%E6%AC%A1%E5%85%A8%E5%9B%BD%E4%BB%A3%E8%A1%A8%E5%A4%A7%E4%BC%9A/59177990','knowledge/e006f4fb-d29d-4248-bf49-ff598170c60b.png','2025-04-19 04:03:27.637708','党的二十大(2022.10）'),(18,'时事政治','中国式现代化，是中国共产党领导的社会主义现代化，既有各国现代化的共同特征，更有基于自己国情的中国特色。\n——中国式现代化是人口规模巨大的现代化。我国十四亿多人口整体迈进现代化社会，规模超过现有发达国家人口的总和，艰巨性和复杂性前所未有，发展途径和推进方式也必然具有自己的特点。我们始终从国情出发想问题、作决策、办事情，既不好高骛远，也不因循守旧，保持历史耐心，坚持稳中求进、循序渐进、持续推进。\n——中国式现代化是全体人民共同富裕的现代化。共同富裕是中国特色社会主义的本质要求，也是一个长期的历史过程。我们坚持把实现人民对美好生活的向往作为现代化建设的出发点和落脚点，着力维护和促进社会公平正义，着力促进全体人民共同富裕，坚决防止两极分化。\n——中国式现代化是物质文明和精神文明相协调的现代化。物质富足、精神富有是社会主义现代化的根本要求。物质贫困不是社会主义，精神贫乏也不是社会主义。我们不断厚植现代化的物质基础，不断夯实人民幸福生活的物质条件，同时大力发展社会主义先进文化，加强理想信念教育，传承中华文明，促进物的全面丰富和人的全面发展。\n——中国式现代化是人与自然和谐共生的现代化。人与自然是生命共同体，无止境地向自然索取甚至破坏自然必然会遭到大自然的报复。我们坚持可持续发展，坚持节约优先、保护优先、自然恢复为主的方针，像保护眼睛一样保护自然和生态环境，坚定不移走生产发展、生活富裕、生态良好的文明发展道路，实现中华民族永续发展。\n——中国式现代化是走和平发展道路的现代化。我国不走一些国家通过战争、殖民、掠夺等方式实现现代化的老路，那种损人利己、充满血腥罪恶的老路给广大发展中国家人民带来深重苦难。我们坚定站在历史正确的一边、站在人类文明进步的一边，高举和平、发展、合作、共赢旗帜，在坚定维护世界和平与发展中谋求自身发展，又以自身发展更好维护世界和平与发展。\n中国式现代化的本质要求是：坚持中国共产党领导，坚持中国特色社会主义，实现高质量发展，发展全过程人民民主，丰富人民精神世界，实现全体人民共同富裕，促进人与自然和谐共生，推动构建人类命运共同体，创造人类文明新形态。','https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%BC%8F%E7%8E%B0%E4%BB%A3%E5%8C%96/56854252','knowledge/a7a80d4e-8a5d-4521-8ba0-afa85a7b2ad8.png','2025-04-19 04:24:46.309511','中国式现代化'),(19,'时事政治','  报告分析了国际国内形势，比较了抗战中国共两党的不同抗战路线，全面论述了中国共产党的政策。报告指出加强党的领导是胜利的关键，并深刻地阐述了党的三大作风，即理论和实践相结合的作风、和人民群众紧密地联系在一起的作风以及自我批评的作风。并指出，我们共产党人区别于其他任何政党的又一个显著的标志，就是和最广大的人民群众取得最密切的联系。全心全意地为人民服务，一刻也不脱离群众；一切从人民的利益出发，而不是从个人或小集团的利益出发；向人民负责和向党的领导机关负责的一致性；这些就是我们的出发点。','https://baike.baidu.com/item/%E8%AE%BA%E8%81%94%E5%90%88%E6%94%BF%E5%BA%9C/3474618',NULL,'2025-04-19 07:55:28.194128','《论联合政府》'),(20,'时事政治','1949年3月5日至13日，中共七届二中全会在西柏坡召开。\n全会规定党在全国胜利后在政治、经济、外交方面应当采取的基本政策，指出中国由农业国转变为工业国、由新民主主义社会转变为社会主义社会的发展方向。\n全会讨论确定了党的工作重心由乡村转移到城市的问题。\n毛泽东在全会上提出“两个务必”思想，即：“务必使同志们继续地保持谦虚、谨慎、不骄、不躁的作风，务必使同志们继续地保持艰苦奋斗的作风。',NULL,NULL,'2025-04-19 08:22:31.874367','中共七届二中全会（西柏坡会议）'),(21,'时事政治','瑞金→突破敌人四道防线→强渡乌江→占领遵义→四渡赤水→巧渡金沙江→强渡大渡河→飞夺泸定桥→翻雪山→过草地→陕北吴起会师（1935年10月）→甘肃会宁会师（1936年10月9日）→宁夏西吉县将台堡会师（1936年10月22日）','https://baike.baidu.com/item/%E9%95%BF%E5%BE%81/22312','knowledge/2e8758c2-8b91-486a-ad11-b81ae2ef4296.png','2025-04-19 08:47:34.672070','长征历程');
/*!40000 ALTER TABLE `knowledge_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge_item_tags`
--

DROP TABLE IF EXISTS `knowledge_item_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_item_tags` (
  `item_id` bigint NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `FKl79rcde333w1ucadfuy64pt9k` (`item_id`),
  CONSTRAINT `FKl79rcde333w1ucadfuy64pt9k` FOREIGN KEY (`item_id`) REFERENCES `knowledge_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_item_tags`
--

LOCK TABLES `knowledge_item_tags` WRITE;
/*!40000 ALTER TABLE `knowledge_item_tags` DISABLE KEYS */;
INSERT INTO `knowledge_item_tags` VALUES (10,'政治常识'),(12,'政治常识'),(13,'政治常识'),(14,'政治常识'),(15,'政治常识'),(16,'政治常识'),(17,'政治常识'),(18,'政治常识'),(19,'政治常识'),(20,'政治常识'),(21,'政治常识');
/*!40000 ALTER TABLE `knowledge_item_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_entry`
--

DROP TABLE IF EXISTS `note_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_entry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_note_timestamp` (`timestamp` DESC)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_entry`
--

LOCK TABLES `note_entry` WRITE;
/*!40000 ALTER TABLE `note_entry` DISABLE KEYS */;
INSERT INTO `note_entry` VALUES (7,'三个法宝：武统党；武装斗争，统一战线，党的建设（伟大工程）\n','general','2025-04-19 07:30:13.899093'),(8,'党的十八大提出, 法治是治国理政的基本方式, 要加快建设社会主义法治国家, 全面推进依法治国; 到 2020 年, 依法治国基本方略全面落实, 法治政府基本建成, 司法公信力不断提高, 人权得到切实尊重和保障。 党的十八届三中全会\n进一步提出, 建设法治中国, 必须坚持依法治国、 依法执政、 依法行政共同推进,坚持法治国家、 法治政府、 法治社会一体建设。 ','general','2025-04-19 07:35:24.384449'),(9,'第一次明确提出“马克思主义中国化”的命题和任命的会议是：党的六届六中全会','general','2025-04-19 07:36:12.273577'),(10,'中国举起马克思主义旗帜的第一人是李大钊\n','general','2025-04-19 07:36:48.720935'),(11,'1921年，陈独秀在上海成立了第一个共产党小组（南陈北李）','general','2025-04-19 07:37:25.278185'),(12,'习近平同志在《光明日报》上首次系统阐述了“红船精神”','general','2025-04-19 07:38:00.275266'),(13,'1941年3月，张如心在《共产党人》杂志上发表了《论布尔什维克的教育家》一文。在文中首次用了“毛泽东同志的思想”这一概念。','general','2025-04-19 07:47:53.424503'),(14,'1943年7月，王稼祥在《中国共产党与中国民族解放的道路》一文中，首次提出“毛泽东思想”这一科学概念。','general','2025-04-19 07:48:00.006678'),(15,'毛泽东思想活的灵魂：”实事求是，群众路线，独立自主。“','general','2025-04-19 07:51:00.470692'),(17,'”没有调查就没有发言权“——《反对本本主义》 毛泽东','general','2025-04-19 07:57:06.551877'),(18,'寻乌调查是毛泽东 1930 年 5 月利用红四军在安远、 寻乌和平远等地分兵发动群众之机, 进行的一次为期十多天的大规模社会调查。 ','general','2025-04-19 08:04:34.735353'),(20,'1961 年, 毛泽东在八届九中全会上要求全党恢复实事求是和调查研究的优良传统, 加强调查研究。 于是, 1961 年成为党史上有名的 “调查研究年、 实事求是年”。','general','2025-04-19 08:05:22.089506'),(21,'1930 年 5 月, 毛泽东为了反对当时红军中存在的 “左” 倾冒险主义和教条主义思想, 专门写了 《反对本本主义》 一文, 提出 “没有调查, 没有发言权” 的著名论断。','general','2025-04-19 08:05:58.170009');
/*!40000 ALTER TABLE `note_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pomodoro_settings`
--

DROP TABLE IF EXISTS `pomodoro_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pomodoro_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `long_break_duration` int NOT NULL,
  `settings_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_break_duration` int NOT NULL,
  `work_duration` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_settings_key` (`settings_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pomodoro_settings`
--

LOCK TABLES `pomodoro_settings` WRITE;
/*!40000 ALTER TABLE `pomodoro_settings` DISABLE KEYS */;
INSERT INTO `pomodoro_settings` VALUES (1,10,'default_user',3,60);
/*!40000 ALTER TABLE `pomodoro_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (2,'官方网站','2025-04-14 06:16:32.492163','发布全省公务员招录公告、职位表、考试大纲及政策解读。',0,'fas fa-link','湖南省人力资源和社会保障厅','2025-04-14 06:16:59.009041','https://rst.hunan.gov.cn/'),(3,'官方网站','2025-04-14 06:16:53.817901','提供公务员考试报名、成绩查询、准考证打印等服务。',0,'fas fa-link','湖南人事考试网','2025-04-14 06:16:53.817901','http://www.hunanpea.com/'),(4,'官方网站','2025-04-14 06:17:12.466868','湖南省党建工作官方平台，发布公务员考试相关通知。',0,'fas fa-link','红星网','2025-04-14 06:18:08.371698','http://www.hxw.gov.cn/'),(5,'官方网站','2025-04-14 06:17:30.203904','',0,'fas fa-link','长沙市人社局','2025-04-14 06:18:13.160187','http://rsj.changsha.gov.cn/rszc/rsrc_131369/gkzk_131379/'),(6,'官方网站','2025-04-14 06:17:44.681151','',0,'fas fa-link','娄底市人社局','2025-04-14 06:18:18.230117','http://rsj.hnloudi.gov.cn/'),(7,'学习资料','2025-04-14 06:18:01.607805','提供线上课程、模考题库及申论批改服务。',0,'fas fa-link','粉笔教育','2025-04-14 06:18:01.607805','https://pc.fenbi.com/'),(8,'学习资料','2025-04-14 06:18:37.830598','涵盖笔试 / 面试课程、历年真题及备考资料。',0,'fas fa-link','中公教育湖南分校','2025-04-14 06:18:37.830598','https://m.hn.offcn.com/'),(9,'学习资料','2025-04-14 06:19:01.087930','提供红领培优、名师直播课及本地化教材。',0,'fas fa-link','华图教育湖南分校','2025-04-14 06:19:09.932914','http://hn.huatu.com/'),(10,'其他','2025-04-14 06:19:31.163638','考生经验交流、职位选择讨论及资料分享。',0,'fas fa-link','QZZN 论坛湖南板块','2025-04-14 06:19:31.163638','https://bbs.qzzn.com/forum.php?fid=34'),(11,'学习资料','2025-04-14 06:19:53.447385','提供智能题库、错题分析及定制化学习计划。',0,'fas fa-link','腰果公考','2025-04-14 06:25:19.969740','http://www.yaoguo.cn/'),(12,'时政新闻','2025-04-14 06:20:38.871587','提供湖南本地时政新闻、政策解读及社会热点。',0,'fas fa-link','新华网湖南频道','2025-04-14 06:21:38.322523','https://www.hn.news.cn/'),(13,'时政新闻','2025-04-14 06:20:54.673457','发布省政府重大决策、民生政策及经济动态。',0,'fas fa-link','湖南省人民政府官网','2025-04-14 06:21:31.897889','https://www.hunan.gov.cn/'),(14,'时政新闻','2025-04-14 06:21:09.678296','聚焦湖南本地新闻、深度报道及评论分析。',0,'fas fa-link','湖南日报官网','2025-04-14 06:21:27.293425','https://hnrb.voc.com.cn/'),(15,'时政新闻','2025-04-14 06:21:22.315130','湖南省重点新闻网站，涵盖时政、民生及教育资讯。',0,'fas fa-link','红网','2025-04-14 06:21:22.315130','https://hn.rednet.cn/'),(16,'考试资源','2025-04-14 06:22:52.636080','发布考试时间安排、准考证打印及成绩复核通知。',0,'fas fa-link','湖南省教育考试院','2025-04-14 06:22:52.636080','http://jyt.hunan.gov.cn/sjyt/hnsjyksy/'),(17,'考试资源','2025-04-14 06:23:23.655700','提供公务员及事业单位招聘信息、人才政策解读。',0,'fas fa-link','湖南省人才网','2025-04-14 06:23:23.655700','http://www.hnrcsc.com/'),(18,'考试资源','2025-04-14 06:23:43.456965','发布国考公告、职位表及跨地区考试动态。',0,'fas fa-link','国家公务员局','2025-04-14 06:23:43.456965','http://bm.scs.gov.cn/kl2025'),(19,'其他','2025-04-14 06:23:55.496009','党建知识学习、时政热点解析及申论素材积累。',0,'fas fa-link','共产党员网','2025-04-14 06:24:02.576679','http://www.12371.cn/'),(20,'学习资料','2025-04-14 06:24:31.693782','整合湖南本地学习资源，含政策解读、理论文章及视频课程。',0,'fas fa-link','学习强国 - 湖南平台','2025-04-14 06:24:38.282366','https://www.xuexi.cn/');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_goal`
--

DROP TABLE IF EXISTS `study_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_goal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `completed` bit(1) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_goal`
--

LOCK TABLES `study_goal` WRITE;
/*!40000 ALTER TABLE `study_goal` DISABLE KEYS */;
INSERT INTO `study_goal` VALUES (1,_binary '','测试'),(2,_binary '\0','测试'),(3,_binary '\0','1');
/*!40000 ALTER TABLE `study_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_log`
--

DROP TABLE IF EXISTS `study_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_seconds` bigint NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_log`
--

LOCK TABLES `study_log` WRITE;
/*!40000 ALTER TABLE `study_log` DISABLE KEYS */;
INSERT INTO `study_log` VALUES (44,'专注学习',61,'2025-04-13 18:07:37.149000','pomodoro','2025-04-13 18:06:36.138000'),(45,'专注学习',61,'2025-04-14 02:56:08.036000','pomodoro','2025-04-14 02:55:07.031000'),(46,'专注学习',61,'2025-04-15 16:56:48.417000','pomodoro','2025-04-15 16:55:47.403000'),(47,'专注学习',3657,'2025-04-18 18:23:39.797000','pomodoro','2025-04-18 17:22:43.133000'),(48,'专注学习',3125,'2025-04-18 20:43:28.713000','pomodoro','2025-04-18 19:51:24.153000'),(49,'专注学习',5518,'2025-04-18 23:56:32.438000','pomodoro','2025-04-18 22:24:34.205000');
/*!40000 ALTER TABLE `study_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline_task`
--

DROP TABLE IF EXISTS `timeline_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline_task` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` bit(1) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_task_phase` (`phase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline_task`
--

LOCK TABLES `timeline_task` WRITE;
/*!40000 ALTER TABLE `timeline_task` DISABLE KEYS */;
INSERT INTO `timeline_task` VALUES ('task-phase1-1-timeline',_binary '\0','系统学习行测五大模块基础知识与方法论','phase1'),('task-phase1-2-timeline',_binary '\0','掌握申论基本题型作答思路','phase1'),('task-phase1-3-timeline',_binary '\0','开始分模块专项练习（注重理解）','phase1'),('task-phase1-4-timeline',_binary '\0','持续关注时事政治（学习强国/官媒）','phase1'),('task-phase1-5-timeline',_binary '\0','加强中共党史、理论学习','phase1'),('task-phase1-6-timeline',_binary '\0','初步研究往年职位表，思考方向','phase1'),('task-phase2-1-timeline',_binary '\0','高强度、系统性刷题训练 (行测+申论)','phase2'),('task-phase2-2-timeline',_binary '\0','进行套题模拟，严格控时','phase2'),('task-phase2-3-timeline',_binary '\0','重点攻克弱项模块/题型，分析错题','phase2'),('task-phase2-4-timeline',_binary '\0','加强申论写作练习 (大作文+应用文)','phase2'),('task-phase2-5-timeline',_binary '\0','整理常识体系和申论素材库','phase2'),('task-phase3-1-timeline',_binary '\0','以历年真题和高质量模拟题进行全真模考','phase3'),('task-phase3-2-timeline',_binary '\0','查漏补缺，回归基础，巩固高频考点','phase3'),('task-phase3-3-timeline',_binary '\0','强化记忆常识关键信息和申论热点','phase3'),('task-phase3-4-timeline',_binary '\0','调整作息，模拟考试时间，保持心态','phase3'),('task-phase3-5-timeline',_binary '\0','关注最终公告和职位表，确认报考岗位','phase3');
/*!40000 ALTER TABLE `timeline_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gwy_data'
--

--
-- Dumping routines for database 'gwy_data'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-19 17:39:16
