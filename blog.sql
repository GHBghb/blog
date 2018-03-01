/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:31:47 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_blog_tags`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK5feau0gb4lq47fdb03uboswm8` (`tags_id`),
  KEY `FKh4pacwjwofrugxa9hpwaxg6mr` (`blogs_id`),
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`),
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_blog_tags`
-- ----------------------------
BEGIN;
INSERT INTO `t_blog_tags` VALUES ('4', '1'), ('4', '2'), ('4', '3'), ('5', '1'), ('5', '2'), ('5', '3'), ('3', '2'), ('3', '3'), ('1', '3');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:31:07 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_blog`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `create_time` datetime DEFAULT NULL,
  `first_picture` longtext COLLATE utf8_bin,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK292449gwg5yf7ocdlmswv9w4j` (`type_id`),
  KEY `FK8ky5rrsxh01nkhctmo7d48p82` (`user_id`),
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_blog`
-- ----------------------------
BEGIN;
INSERT INTO `t_blog` VALUES ('1', b'0', b'1', 0x717171, '2018-01-24 15:43:56', 0x68747470733a2f2f70696373756d2e70686f746f732f3230302f3330302f3f72616e646f6d, '', b'1', b'1', b'1', 'gab', '2018-01-25 11:22:10', '5', '1', '1', 'Select the cropping gravity by adding ?gravity to the end of the url.\r\n\r\nValid options are: north, east, south, west, center'), ('3', b'1', b'1', 0xe697a2e784b6e2809ce5a4a7e6a39ae688bfe2809de58db3e5b086e585a8e983a8e6a0b9e999a4efbc8ce4b99fe5b0b1e6b2a1e4ba86e2809ce5898de4b896e2809defbc8ce4b88de5a6a8e68a8ae69bb4e5a49ae79a84e6b3a8e6848fe58a9be694bee59ca8e5ae83e79a84e2809ce4bb8ae7949fe2809de4b88ae380820d0a0d0ae79bafe7b4a7e68b86e999a4e78eb0e78ab6efbc8ce5b0bde5bfabe6b885e999a4e5b9b2e58780efbc8ce4b8a5e998b2e58f8de5bcb9efbc8ce698afe5bd93e4b88be79a84e7b4a7e8a681e4bbbbe58aa1e38082e2809ce5a4a7e6a39ae688bfe2809de5ad98e59ca8e5b7b2e4b985efbc8ce4b8bae4bb80e4b988e883bde5bda2e68890e2809ce5a4a9e5a5b3e695a3e88ab1e2809de4b98be58abfefbc8ce59084e58cbae699aee9818de983bde69c89e591a2efbc9fe58e9fe59ba0e59ca8e4ba8ee2809ce7acace4b880e4b8aae5a4a7e6a39ae688bfe2809de6b2a1e69c89e8a2abe58f8ae697b6e588b6e6ada2efbc8ce6b2a1e69c89e4be9de6b395e68b86e999a4efbc8ce4ba8ee698afe4bda0e79c8be68891e38081e68891e79c8be4bda0e38081e5a4a7e5aeb6e7bab7e7bab7e69588e4bbbfe38082e78eb0e59ca8efbc8ce69c89e4ba9be2809ce5a4a7e6a39ae688bfe2809de68b86e999a4e4ba86e4b8bbe4bd93efbc8ce69c89e4ba9be68b86e999a4e4ba86e997a8e7aa97efbc8ce8bf98e69caae8bebee588b0e5ae8ce585a8e6b885e999a4e5b9b2e58780efbc8ce69c89e58fafe883bde587bae78eb0e58f8de5bcb9e78eb0e8b1a1e38082e697b6e588bbe79bafe7b4a7efbc8ce59d9ae586b3e79c8be4bd8fefbc8ce6898de883bde7a1aee4bf9de4b88de587bae78eb0e58f8de5bcb9e380820d0a0d0ae5b0bde5bfabe681a2e5a48de59c9fe59cb0e58e9fe69c89e794a8e98094efbc8ce698afe68ea5e4b88be69da5e8a681e68a93e7b4a7e5819ae5a5bde79a84e4ba8be68385e38082e59c9fe59cb0e681a2e5a48de8b5b7e69da5e5b9b6e4b88de5aeb9e69893efbc8ce5b19ee59cb0e694bfe5ba9ce8a681e8b49fe8b5b7e8b4a3e4bbbbefbc8ce98187e588b0e4b8aae4babae681a2e5a48de7a1aee69c89e59bb0e99abee79a84e8a681e58f8ae697b6e587bae6898be79bb8e58aa9efbc8ce588abe8aea9e68b86e999a4e5908ee79a84e59c9fe59cb0e8a2abe2809ce69282e88d92e2809de38082e5a682e4b88de5b0bde5bfabe681a2e5a48defbc8ce4bb85e4bb8ee8a786e8a789e69da5e8afb4e4b99fe69c89e7a28de8a782e79ebbefbc8ce982a3e4ba9be2809ce5a4a7e6a39ae688bfe2809de8a2abe68b86e999a4e5908ee79a84e78eb0e78ab6e5be88e4b88de7be8ee8a782efbc8ce4b99fe5bdb1e5938de59084e58cbae79a84e59cb0e696b9e5bda2e8b1a1e380820d0a0d0ae2809ce5a4a7e6a39ae688bfe2809de8a2abe68b86e999a4e4ba86efbc8ce8bf98e8a681e8ada6e68395e696b0e7949fe2809ce5a4a7e6a39ae688bfe2809de38082e2809ce5a4a7e6a39ae688bfe2809de69c89e588a9e58fafe2809ce59bbee2809defbc8ce6898de980a0e68890e4ba86e8bf87e58ebbe58cbae58cbae2809ce5bc80e88ab1e2809de79a84e78eb0e8b1a1efbc8ce68980e4bba5efbc8ce4b8a5e6a0bce68ea7e588b6e696b0e2809ce5a4a7e6a39ae688bfe2809de4baa7e7949fefbc8ce4b99fe698afe4b880e9a1b9e9878de8a681e79a84e5b7a5e4bd9ce38082e899bde69c89e68b86e999a4e8bf9de6b395e5bbbae8aebee79a84e5a4a7e6b094e58099efbc8ce4bd86e4b99fe4b88de68e92e999a4e69c89e4babae2809ce9a1b6e9a38ee4bd9ce6a188e2809defbc8ce69d9ce7bb9de696b0e5a29ee2809ce5a4a7e6a39ae688bfe2809de4b88de698afe4b880e58fa5e7a9bae8af9defbc8ce4b99fe4b88de698afe2809ce69d9ee4babae5bfa7e5a4a9e2809de38082, '2018-01-25 10:46:17', 0x68747470733a2f2f70696373756d2e70686f746f732f3230302f3330302f3f677261766974793d65617374, '', b'1', b'1', b'1', '没了“前世”的“大棚房”，还得关注它的“今生', '2018-01-25 11:21:13', '2', '2', '1', '太平洋证券违反合同突然对郭文芬（云南省会泽县人）的“两融”账户进行强制平仓，造成郭文芬1千多万的损失。郭文芬欠下巨额债务，太平洋证券获得丰硕的佣金收入。太平洋证券多方面打压郭文芬，让郭文芬败诉。我为此向只有欺诈和无耻，没有诚信和公平的太平洋证券讨个说法！'), ('4', b'1', b'1', 0xe5b7b4e9bb8ee4b880e79bb4e4bba5e69da5e983bde698afe4b880e4b8aae697b6e5b09ae8839ce59cb0efbc8ce697a0e695b0e79a84e697b6e5b09ae8bebee4babae59ca8e8bf99e9878ce6b187e8819aefbc8ce8aea8e8aebae79d80e4b88be4b880e5ada3e695b4e4b8aae4b896e7958ce79a84e6b581e8a18ce8b68be58abfe38082e982a3e698afe4bb80e4b988e8aea9e5b7b4e9bb8ee69c89e982a3e4b988e5a49ae79a84e697b6e5b09ae8bebee4babae591a2efbc8ce5b0b1e698afe59ba0e4b8bae5b7b4e9bb8ee79a84e69687e58c96e5ba95e895b4e7bb99e4ba86e4babae4bbace5be88e5a49ae79a84e781b5e6849fe38082e8b081e8afb4e4b880e5ae9ae8a681e58ebbe79c8be59f83e88fb2e5b094e99381e5a194e5928ce587afe6978be997a8efbc8ce59ca8e5b7b4e9bb8ee69da5e6aca1e58d9ae789a9e9a686e4b98be69785e4b99fe4b88de99499e5958aefbd9e, '2018-01-25 10:47:50', 0x68747470733a2f2f70696373756d2e70686f746f732f672f3230302f333030, '', b'1', b'1', b'1', '巴黎是艺术家的圣地，不论是街边吟唱还是博物馆游览，总有灵感', '2018-01-25 11:20:40', '4', '1', '1', '在巴黎还有许多像这样奇奇怪怪的博物馆，下水道博物馆展出了自13世纪巴黎建成第一个下水道系统后，公共卫生设施发展的漫长历史。游客们可以看到巴黎最古老的下水道体系。'), ('5', b'1', b'1', 0xe59c9fe5aeb6e4babae69c89e2809ce4b99de88081e58d81e585abe58ca0e2809de79a84e8afb4e6b395efbc8ce4b99de4bdace698afe68c87efbc9ae8a1a5e99485e4bdace38081e992bbe7a3a8e4bdace38081e692ace78caae4bdace38081e69d80e78caae4bdace38081e58994e5a4b4e4bdace38081e4bfaee8849ae4bdace38081e5988ee888b9e4bdace38081e68993e6a6a8e4bdace38081e783a7e781abe4bdacefbc8ce58d81e585abe58ca0e698afe68c87efbc9ae98791e58ca0e38081e993b6e58ca0e38081e9939ce58ca0e38081e99381e58ca0e38081e994a1e58ca0e38081e5b2a9e58ca0e38081e69ca8e58ca0e38081e99b95e58ca0e38081e794bbe58ca0e38081e6bc86e58ca0e38081e793a6e58ca0e38081e59c9fe58ca0e38081e7afbee58ca0e38081e6a485e58ca0e38081e5bcb9e58ca0e38081e8a7a3e58ca0e38081e69f93e58ca0e38081e8b5b6e58ca0efbc88e5819ae99eade782aeefbc89e38082e69c89e79a84e59cb0e696b9e88081e58ca0e4babae4b880e9a297e58ca0e5bf83efbc8ce4bca0e689bfe79d80e58d83e5b9b4e79a84e59c9fe5aeb6e69687e58c96efbc8ce68890e4b8bae59c9fe5aeb6e6978fe79a84e2809ce6b4bbe58e86e58fb2e2809de38082e4bd86e99a8fe79d80e7a4bee4bc9ae79a84e58f91e5b195efbc8ce697b6e4bba3e79a84e58f98e8bf81efbc8ce69c89e4ba9be2809ce88081e2809de5928ce2809ce58ca0e2809de79a84e8818ce4b89ae4b99fe59ca8e99a8fe4b98be58f91e7949fe58f98e58c96efbc8ce69c89e79a84e59ca8e7949fe6b4bbe4b8ade5b7b2e7bb8fe5be88e5b091e8a781e4ba86efbc8ce5b9b4e8bdbbe4babae4b99fe59fbae69cace4b88ae4b88de4bc9ae4ba86efbc8ce68890e4b8bae4ba86e99d9ee789a9e8b4a8e69687e58c96e98197e4baa7e380820d0a2020202020202020e5898de6aeb5e697b6e997b4efbc8ce59ca8e6b996e58c97e681a9e696bde59c9fe5aeb6e6978fe88b97e6978fe887aae6b2bbe5b79ee4b8bee8a18ce79a84e69785e6b8b8e68ea8e4bb8be4bc9ae4b88aefbc8ce59c9fe5aeb6e88081e4babae59ca8e4bc9ae4b88ae78eb0e59cbae5b195e7a4bae983a8e58886e2809ce4b99de88081e58d81e585abe58ca0e2809de7b2bee5bda9e6b091e997b4e6898be889baefbc8ce68890e4b8bae68ea8e4bb8be4bc9ae4b88ae4b880e98193e4baaee4b8bde79a84e9a38ee699afe38082e69687e58c96e698afe69785e6b8b8e79a84e781b5e9ad82efbc8ce69785e6b8b8e698afe69687e58c96e79a84e8bdbde4bd93e38082e4bd86e684bfe9809ae8bf87e69785e6b8b8e8bf99e4b8aae8bdbde4bd93efbc8ce883bde5a49fe8aea9e69bb4e5a49ae79a84e6b091e997b4e6898be889bae5be97e4bba5e4bca0e689bfefbc81efbc88e59bbee78987e7b3bbe69c8be58f8be68b8de69184e58886e4baabefbc89, '2018-01-25 10:48:59', 0x68747470733a2f2f70696373756d2e70686f746f732f3230302f3330303f696d6167653d30, '', b'1', b'1', b'1', '湖北恩施：土家老人展示“九老十八匠”民间手艺', '2018-01-25 11:20:58', '1', '1', '1', '大国功将在中国 ，能工巧匠在民间 国家的发展需要高级工程师，还需要高级技师。能工巧匠');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:31:52 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke3uogd04j4jx316m1p51e05u` (`blog_id`),
  KEY `FK4jj284r3pb7japogvo6h72q95` (`parent_comment_id`),
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`),
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_comment`
-- ----------------------------
BEGIN;
INSERT INTO `t_comment` VALUES ('1', 'yy[Null]', '不错的文章，比较有见地', '2018-01-25 10:56:17', '2978032936@qq.com', 'ghb', '4', null, b'1'), ('2', 'yy[Null]', 'dd', '2018-01-25 11:14:51', '2978032936@qq.com', 'ghb', '1', null, b'1'), ('3', 'yy[Null]', 'hard', '2018-01-25 11:14:59', '2978032936@qq.com', 'ghb', '1', null, b'1'), ('4', '/images/avatar.png', '放放风', '2018-03-01 12:15:59', 'qq@tt.com', '方法', '4', null, b'0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:31:56 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_tag`
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_tag`
-- ----------------------------
BEGIN;
INSERT INTO `t_tag` VALUES ('1', '熟练'), ('2', '了解'), ('3', '不懂'), ('4', '非常喜欢'), ('5', '极度讨厌'), ('6', '无聊到爆'), ('7', '乏味无力');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:32:00 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_type`
-- ----------------------------
BEGIN;
INSERT INTO `t_type` VALUES ('1', 'JavaScript'), ('2', 'CSS'), ('3', 'C++'), ('4', 'Machine Learn'), ('5', 'Web'), ('6', '计算机网络'), ('7', '操作系统'), ('8', '数据库设计'), ('9', '编译原理');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : myblog

 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 03/01/2018 13:32:04 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'https://picsum.photos/200/300?image=0', '2018-01-24 10:58:48', '2978032936@qq.com', 'ghb', '96e79218965eb72c92a549dd5a330112', null, '2018-01-24 10:59:19', 'ghb');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
