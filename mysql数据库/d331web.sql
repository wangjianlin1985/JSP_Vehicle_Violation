/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : d331web

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-05-19 14:59:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `affiche`
-- ----------------------------
DROP TABLE IF EXISTS `affiche`;
CREATE TABLE `affiche` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` varchar(50) default NULL,
  `title` varchar(200) default NULL,
  `atime` datetime default NULL,
  `content` text,
  PRIMARY KEY  (`aid`),
  KEY `aff_1` (`uid`),
  CONSTRAINT `aff_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of affiche
-- ----------------------------
INSERT INTO `affiche` VALUES ('72', 'mr', '公告公告公告公告', '2018-03-25 11:12:09', '内容内容内容内容内容内容');
INSERT INTO `affiche` VALUES ('73', 'mr', '饭堂开张', '2018-03-25 11:12:09', '北苑3楼饭堂于2017年2月24日开始营业，欢迎所有同学来进餐');
INSERT INTO `affiche` VALUES ('74', 'mr', '开学了', '2018-03-23 00:04:02', '开学了开学了开学了开学了');

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL auto_increment,
  `carNo` varchar(255) default NULL,
  `carColour` varchar(255) default NULL,
  `name` varchar(50) default NULL,
  `tel` varchar(255) default NULL,
  `sfid` varchar(100) default NULL,
  `bz` varchar(255) default NULL,
  `flag` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('41', '京-256333', '京-256333', '大众', '96', '10025654654', '备注', '0');
INSERT INTO `car` VALUES ('42', '京-256444', '京-256444', '奥迪', '96', '10025654654', '备注', '0');
INSERT INTO `car` VALUES ('45', '京-256555', '京-256555', '宝马', '96', '10025654654', '备注', '0');
INSERT INTO `car` VALUES ('46', '京-256666', '京-256666', '奔驰', '96', '10025654654', '备注', '0');
INSERT INTO `car` VALUES ('48', '京-256777', '京-256777', '本田', '96', '10025654654', '5', '0');
INSERT INTO `car` VALUES ('49', '京-256888', '京-256888', '现代', '96', '10025654654', '9', '0');

-- ----------------------------
-- Table structure for `clbf`
-- ----------------------------
DROP TABLE IF EXISTS `clbf`;
CREATE TABLE `clbf` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `number` varchar(50) default NULL,
  `uptime` datetime default NULL,
  `uid` varchar(50) default NULL,
  `sid` int(11) default NULL,
  `xytime` varchar(50) default NULL,
  `flag` varchar(11) default NULL,
  `bz` varchar(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `so_1` (`uid`),
  KEY `so_2` (`sid`),
  CONSTRAINT `clbf_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `clbf_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of clbf
-- ----------------------------
INSERT INTO `clbf` VALUES ('78', '党支部', '18', '2018-03-25 11:12:09', 'mr', '41', '1', '4', '2');
INSERT INTO `clbf` VALUES ('79', '11', '11', '2018-03-23 00:14:58', '123', '46', '1', '4', '3');
INSERT INTO `clbf` VALUES ('80', '66', '666', '2018-03-24 16:37:08', 'mr', '45', '1', '3', '0');
INSERT INTO `clbf` VALUES ('81', '99', '99', '2018-03-24 21:00:21', 'mr', '41', '1', '3', '0');

-- ----------------------------
-- Table structure for `guestboard`
-- ----------------------------
DROP TABLE IF EXISTS `guestboard`;
CREATE TABLE `guestboard` (
  `gid` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `guest` varchar(50) default NULL,
  `gtime` datetime default NULL,
  `content` varchar(250) default NULL,
  `gflag` tinyint(1) default '0',
  `rtime` datetime default NULL,
  `recontent` text,
  `mid` int(11) default NULL,
  `pllx` int(11) default NULL COMMENT '0讨论区 1面对面',
  `re_uid` varchar(50) default NULL,
  `uid` varchar(50) default NULL,
  PRIMARY KEY  (`gid`),
  KEY `guest_1` (`mid`),
  KEY `guest_2` (`re_uid`),
  KEY `guest_3` (`uid`),
  CONSTRAINT `guest_3` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of guestboard
-- ----------------------------
INSERT INTO `guestboard` VALUES ('74', '留&nbsp;言&nbsp;人', '留&nbsp;言&nbsp;人', '2018-03-25 11:12:09', '留&nbsp;言&nbsp;人', '1', '2018-03-11 21:38:51', '真的好想', '45', '0', '123', 'mr');
INSERT INTO `guestboard` VALUES ('75', '留言标题', '游客', '2018-03-25 11:12:09', '留言内容', '1', '2018-03-22 23:23:11', '我想留言呀', '45', '0', '18', 'mr');
INSERT INTO `guestboard` VALUES ('92', '京津危机', '管理员', '2018-03-11 22:41:39', '京津危机', '0', null, null, '36', '1', '888', 'mr');
INSERT INTO `guestboard` VALUES ('93', '你好呀', '18', '2018-03-12 16:44:55', '你好么', '0', null, null, '45', '1', '999', '18');
INSERT INTO `guestboard` VALUES ('95', '课程课程', '18', '2018-03-19 10:31:54', '都是这样的', '0', null, null, '45', '1', '888', '18');
INSERT INTO `guestboard` VALUES ('96', '课程好像很难', '18', '2018-03-22 23:24:47', '这个课专业性很高的', '0', null, null, '37', '1', '999', '18');
INSERT INTO `guestboard` VALUES ('97', '999', '00', '2018-03-23 12:00:56', '999', '0', null, null, '45', '1', '老师1', '00');
INSERT INTO `guestboard` VALUES ('98', '555', '00', '2018-03-23 12:08:05', '555', '1', '2018-03-23 12:10:13', '33333', '45', '0', '00', '00');

-- ----------------------------
-- Table structure for `ico`
-- ----------------------------
DROP TABLE IF EXISTS `ico`;
CREATE TABLE `ico` (
  `iid` varchar(50) NOT NULL default '',
  `path` varchar(50) default NULL,
  `atime` datetime default NULL,
  `state` int(11) default '0',
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ico
-- ----------------------------
INSERT INTO `ico` VALUES ('01.gif', 'images/ico/01.gif', '2018-01-20 20:52:37', '0');
INSERT INTO `ico` VALUES ('08.gif', 'images/ico/08.gif', '2018-01-20 20:52:37', '0');
INSERT INTO `ico` VALUES ('1876233369284811825', 'images/soft/1876233369284811825.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('1975906694170547170', 'images/soft/1975906694170547170.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('2334980295031423252', 'images/resolvent/2334980295031423252.jpg', '2018-01-20 20:52:37', '2');
INSERT INTO `ico` VALUES ('2372402691681215650', 'images/soft/2372402691681215650.jpg', '2018-02-24 16:41:55', '1');
INSERT INTO `ico` VALUES ('2763291264878869294', 'images/soft/2763291264878869294.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('3510933179606430636', 'images/soft/3510933179606430636.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('3525849108387347116', 'images/soft/3525849108387347116.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('3584351275462147751', 'images/soft/3584351275462147751.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('4274451394244598604', 'images/soft/4274451394244598604.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('5263777446254209068', 'images/resolvent/5263777446254209068.jpg', '2018-01-20 20:52:37', '2');
INSERT INTO `ico` VALUES ('5814120763813059945', 'images/resolvent/5814120763813059945.jpg', '2018-03-23 12:22:23', '2');
INSERT INTO `ico` VALUES ('6180548567225567166', 'images/resolvent/6180548567225567166.jpg', '2018-02-24 16:18:12', '2');
INSERT INTO `ico` VALUES ('7315210419947818978', 'images/soft/7315210419947818978.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('7405303180270847562', 'images/soft/7405303180270847562.jpg', '2018-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('8188329228940796814', 'images/resolvent/8188329228940796814.gif', '2018-03-23 00:16:05', '2');
INSERT INTO `ico` VALUES ('8478164218091267939', 'images/resolvent/8478164218091267939.jpg', '2018-01-20 20:52:37', '2');
INSERT INTO `ico` VALUES ('9121962922356206002', 'images/resolvent/9121962922356206002.jpg', '2018-02-24 16:20:42', '2');
INSERT INTO `ico` VALUES ('_2175784090399803073', 'images/ico/_2175784090399803073.jpg', '2017-03-19 12:47:12', '0');
INSERT INTO `ico` VALUES ('_2201894866907564200', 'images/soft/_2201894866907564200.jpg', '2017-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('_2389904712806996573', 'images/soft/_2389904712806996573.jpg', '2017-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('_2459001130809488743', 'images/ico/_2459001130809488743.jpg', '2017-01-20 20:52:37', '0');
INSERT INTO `ico` VALUES ('_249280451911065306', 'images/soft/_249280451911065306.jpg', '2017-01-20 20:52:37', '1');
INSERT INTO `ico` VALUES ('_2633375419378404497', 'images/soft/_2633375419378404497.jpg', '2017-03-25 11:14:26', '1');
INSERT INTO `ico` VALUES ('_3341637883265034148', 'images/soft/_3341637883265034148.jpg', '2016-03-16 19:15:24', '1');
INSERT INTO `ico` VALUES ('_3548866065775506890', 'images/soft/_3548866065775506890.jpg', '2015-11-18 00:51:40', '1');
INSERT INTO `ico` VALUES ('_3752999453615432124', 'images/soft/_3752999453615432124.jpg', '2016-03-16 18:09:30', '1');
INSERT INTO `ico` VALUES ('_4349078374714514079', 'images/soft/_4349078374714514079.jpg', '2016-03-16 18:03:50', '1');
INSERT INTO `ico` VALUES ('_4544122732577804924', 'images/soft/_4544122732577804924.jpg', '2017-03-24 16:36:40', '1');
INSERT INTO `ico` VALUES ('_4619829537996558738', 'images/soft/_4619829537996558738.jpg', '2016-03-16 18:07:10', '1');
INSERT INTO `ico` VALUES ('_4669778958840609943', 'images/soft/_4669778958840609943.jpg', '2015-11-18 00:05:54', '1');
INSERT INTO `ico` VALUES ('_4818494245899261487', 'images/resolvent/_4818494245899261487.jpg', '2015-10-29 23:53:09', '2');
INSERT INTO `ico` VALUES ('_5233416494105315004', 'images/resolvent/_5233416494105315004.jpg', '2016-01-08 18:18:31', '2');
INSERT INTO `ico` VALUES ('_55765204936694896', 'images/soft/_55765204936694896.jpg', '2016-03-16 18:20:43', '1');
INSERT INTO `ico` VALUES ('_5677004364098021431', 'images/soft/_5677004364098021431.jpg', '2015-11-18 00:03:58', '1');
INSERT INTO `ico` VALUES ('_5819767883658723667', 'images/resolvent/_5819767883658723667.jpg', '2015-10-29 23:53:32', '2');
INSERT INTO `ico` VALUES ('_5882239756248532002', 'images/ico/_5882239756248532002.jpg', '2017-03-19 12:47:33', '0');
INSERT INTO `ico` VALUES ('_6769017159342990597', 'images/ico/_6769017159342990597.jpg', '2017-03-19 12:46:25', '0');
INSERT INTO `ico` VALUES ('_6909357779101394800', 'images/soft/_6909357779101394800.jpg', '2016-03-16 19:20:00', '1');
INSERT INTO `ico` VALUES ('_7001178136325075669', 'images/soft/_7001178136325075669.jpg', '2016-01-08 12:20:39', '1');
INSERT INTO `ico` VALUES ('_7069251462994294124', 'images/soft/_7069251462994294124.jpg', '2015-11-18 00:08:00', '1');
INSERT INTO `ico` VALUES ('_757017797415156877', 'images/resolvent/_757017797415156877.jpg', '2015-10-29 23:54:21', '2');
INSERT INTO `ico` VALUES ('_8766464729711456666', 'images/soft/_8766464729711456666.jpg', '2016-01-08 17:27:03', '1');
INSERT INTO `ico` VALUES ('_9067631911270184465', 'images/resolvent/_9067631911270184465.jpg', '2015-12-08 21:12:07', '2');

-- ----------------------------
-- Table structure for `jsy`
-- ----------------------------
DROP TABLE IF EXISTS `jsy`;
CREATE TABLE `jsy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `number` varchar(50) default NULL,
  `uptime` datetime default NULL,
  `uid` varchar(50) default NULL,
  `sid` int(11) default NULL,
  `xytime` varchar(50) default NULL,
  `flag` varchar(11) default NULL,
  `bz` varchar(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `so_1` (`uid`),
  KEY `so_2` (`sid`),
  CONSTRAINT `jsy_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `jsy_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jsy
-- ----------------------------
INSERT INTO `jsy` VALUES ('71', '张桐', '222', '2018-01-20 20:53:23', 'mr', '42', '1', '5', '10');
INSERT INTO `jsy` VALUES ('78', '刘小小', '333', '2018-02-24 16:42:47', 'mr', '41', '1', '4', '2');
INSERT INTO `jsy` VALUES ('79', '11', '11', '2018-03-23 00:14:58', '123', '46', '1', '4', '3');
INSERT INTO `jsy` VALUES ('80', '66', '666', '2018-03-24 16:37:08', 'mr', '45', '1', '3', '0');
INSERT INTO `jsy` VALUES ('81', '99', '99', '2018-03-24 21:00:21', 'mr', '41', '1', '3', '0');
INSERT INTO `jsy` VALUES ('82', '3', '3', '2018-03-25 09:30:32', 'mr', '41', '3', 'C', '3');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `lid` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `ltime` datetime default NULL,
  `url` varchar(50) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('34', '百度', '2018-03-25 11:12:09', 'http://www.baidu.com1');
INSERT INTO `link` VALUES ('36', '中国保险监管委员会', '2018-03-25 11:12:09', 'http://www.circ.gov.cn/web/site0/');
INSERT INTO `link` VALUES ('38', '中国保险行业协会', '2018-03-25 11:12:09', 'http://www.iachina.cn/');
INSERT INTO `link` VALUES ('40', '淘宝', '2018-03-25 11:12:42', 'http://www.taobao.com/');

-- ----------------------------
-- Table structure for `lyb`
-- ----------------------------
DROP TABLE IF EXISTS `lyb`;
CREATE TABLE `lyb` (
  `gid` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `guest` varchar(50) default NULL,
  `gtime` datetime default NULL,
  `content` varchar(250) default NULL,
  `gflag` tinyint(1) default '0',
  `rtime` datetime default NULL,
  `recontent` text,
  `re_uid` varchar(50) default NULL,
  `uid` varchar(50) default NULL,
  PRIMARY KEY  (`gid`),
  KEY `guest_2` (`re_uid`),
  KEY `guest_3` (`uid`),
  CONSTRAINT `lyb_ibfk_2` FOREIGN KEY (`re_uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `lyb_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lyb
-- ----------------------------
INSERT INTO `lyb` VALUES ('93', '5555', '管理员', '2018-01-19 20:32:28', '555', '1', '2018-02-24 16:07:38', '喔喔', 'mr', 'mr');
INSERT INTO `lyb` VALUES ('94', '网站问题', '18', '2018-03-19 10:36:40', '网站不够美观呀', '1', '2018-03-25 11:17:02', '网站不够美观呀网站不够美观呀网站不够美观呀', 'mr', '18');
INSERT INTO `lyb` VALUES ('95', '留言标题', '管理员', '2018-03-25 11:17:36', '留言内容留言内容留言内容留言内容', '0', null, null, null, 'mr');
INSERT INTO `lyb` VALUES ('96', '1111', 'aa', '2018-05-19 14:48:45', '2222', '0', null, null, null, 'aa');

-- ----------------------------
-- Table structure for `new`
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `nid` int(11) NOT NULL auto_increment,
  `uid` varchar(50) default NULL,
  `title` varchar(200) default NULL,
  `ntime` datetime default NULL,
  `fromto` varchar(100) default NULL,
  `content` text,
  `lid` int(11) default NULL,
  PRIMARY KEY  (`nid`),
  KEY `new_1` (`uid`),
  CONSTRAINT `new_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('40', 'mr', '2018产假国家规定：产假多少天&nbsp;产假工资怎么算', '2018-03-25 11:12:09', '沃保网', '导读：&nbsp;产假，是指女性在分娩前后一段时间内的特殊休假待遇。2014年我国产假规定，女职工若顺产生育单胎，可享有98天的产假，其中产前休息15天，产后休息83天。难产者增加15天产假;多胞胎生育者，每多生育一个婴儿，增加15天产假。那么2016产假国家规定又是怎样的呢？<br>2015年产假的规定为：女职工单胎顺产者，给予产假98天，其中产前休息15天，产后休息83天。难产者，增加产假15天;多胞胎生育者，每多生育一个婴儿，增加产假15天。现行的国家产假规定是2012年国务院常务会议通过的《女职工劳动保护特别规定（草案）》。草案调整了女职工禁忌从事的劳动范围，将女职工生育享受的产假由90天延长至98天，并规范了产假待遇。<br>【产假分类】<br>一、必须享受的假<br>产假：98天+30天/15天（晚育）+15天/30天（难产）+15天（多胞胎每多生一个婴儿）<br>产前检查：女职工妊娠期间在医疗保健机构约定的劳动时间内进行产前检查（包括妊娠十二周内的初查），应算作劳动时间。（有些企业将怀孕女职工在劳动时间内进行产前检查的时间计为病假、缺勤等，侵害女职工的合法权益）<br>产前工间休息：怀孕七个月以上，每天工间休息一小时，不得安排夜班劳动。<br>授乳时间：婴儿一周岁内每天两次授乳时间，每次30分钟，也可合并使用。<br>二、可以请的假<br>产前假：怀孕7个月以上，如工作许可，经本人申请，单位批准，可请产前假两个半月。部分属于地方法规规定必须给假的情况，单位应批准其休假。如上海市规定“经二级以上医疗保健机构证明有习惯性流产史、严重的妊娠综合症、妊娠合并症等可能影响正常生育的，本人提出申请，用人单位应当批准其产前假。”<br>哺乳假：女职工生育后，若有困难且工作许可，由本人提出申请，经单位批准，可请哺乳假六个半月。<br>保胎假：医生开证明，按病假待遇。<br>晚育假、晚育护理假<br>遇法定节假日顺延。<br>产假98天是包括双休日和国定假日的<br>晚育假，根据各省、自治区、直辖市的规定处理。例如，广东省为15天，上海市为30天。晚育假包括双休日，但不包括法定节假日。<br>授乳时间哺乳假<br>女职工生育后。在其婴儿一周岁内应照顾其在每班劳动时间内授乳两次（包括人工喂养）。每次单胎授乳时间为三十分钟，亦可将两次授乳时间合并使用。多胞胎&nbsp;生育者，每多生一胎，每次哺乳时间增加三十分钟。女职工生育后，若有困难且工作许可。由本人提出申请，经单位批准，可谓哺乳假六个半月。（上海市女职工劳动保护办法第十六条）<br>【2016产假福利】<br>一、产前假<br>女职工妊娠七个月以上（按二十八周计算），工作许可，本人申请，单位批准，可休产前假;<br>经二级以上医疗保健机构证明有习惯性流产史、严重的妊娠综合征、妊娠合并症等可能影响正常生育的，本人提出申请，用人单位应当批准其产前假。<br>产前假为期两个半月。期间，女职工工资不得低于其原工资性收入的80%;调整工资时，产前假视作正常出勤。<br>二、产假<br>不管是一胎还是二胎，女职工都能享受98天产假，其中产前可以休假15天，难产的增加产假15天，生育多胞胎的，每多生育1个婴儿，增加产假15天。<br>三、生二胎还能享受哪些福利？<br>1、女职工产假期间的生育津贴：<br>对已经参加生育保险的，按照用人单位上年度职工月平均工资的标准由生育保险基金支付;对未参加生育保险的，按照女职工产假前工资的标准由用人单位支付。<br>2、怀孕女职工在劳动时间内进行产前检查，所需时间计入劳动时间，单位应当支付其工资。<br>3、怀孕7个月以上的女职工，用人单位不得延长劳动时间或者安排夜班劳动，并应当在劳动时间内安排一定的休息时间。<br>哺乳未满1周岁婴儿的女职工，用人单位不得延长劳动时间或者安排夜班劳动。<br>4、用人单位应当在每天的劳动时间内为哺乳期女职工安排1小时哺乳时间;<br>女职工生育多胞胎的，每多哺乳1个婴儿每天增加1小时哺乳时间。<br>四、二胎无法享受哪些假？<br>1、不再享受独生子女父母奖励费等相关奖励优待政策<br>计划生育法修正案草案删除了对独生子女父母进行奖励的规定，同时明确按照“老人老办法”的原则，法律修改前按照规定应当享受奖励扶助的计划生育家庭老年人、独生子女父母和独生子女发生意外伤残、死亡的父母可继续享受奖励扶助。<br>2、不能享受晚婚晚育假，其配偶也不能享受晚育护理假<br>计划生育法草案还修改了与全面两孩政策不协调的奖励保障措施，删除了对晚婚晚育夫妻进行奖励的规定。<br>知识链接：二胎不等于二孩<br>十八届五中全会公报提出：促进人口均衡发展，坚持计划生育的基本国策，完善人口发展战略，全面实施一对夫妇可生育两个孩子政策，积极开展应对人口老龄化行动。<br>值得注意的是，此次全会公报允许一对夫妻生育两个孩子，也就是说，允许“二孩”而不是“二胎”，例如已经生育双胞胎的夫妻就不能再次生育。<br>目前关于全面二孩的政策还没有正式落实，抢生的二孩一样会被罚款。只有等全面二孩正常落实后出生的孩子符合政策的才不算超生，才不用缴纳超生罚款。<br>【劳动法关于产假的规定】<br>劳动法62条规定：“女职工生育享受不少于九十天的产假。”<br>1.《女职工劳动保护规定》第8条规定“女职工产假为90天，其中产前休假15天。难产的，增加产假15天。多胞胎生育的，每多生育一个婴儿，增加产假15天”。<br>根据以上规定，法定的产假期为90天。用人单位可以根据本单位实际情况对产假时间另行规定，但不得低于法定标准。如果因为特殊情况休假超过90天的，只要有医院证明就可以向单位请病假，但病假期间不能享受产假待遇。<br>对于生育假期，国家劳动法有一个明确的规定就是不少于九十天。另外，每个地区对产假都有自己的补充规定。<br>2.女职工产假为九十天，其中产前休假十五天。难产的，增加产假十五天。多胞胎生育的，每多生育一个婴儿，增加产假十五天。女职工怀孕流产的，其所在单位应当根据医务部门的证明，给予一定时间的产假。（根据国务院颁布的《女职工劳动保护规定》相关规定）<br>3.劳动部还下发了一份《劳动部关于女职工生育待遇若干问题的通知》，对女职工产假、产假期间待遇以及适用范围等问题更为详细的解释：<br>一、&nbsp;怀孕不满四个月流产时，应当根据医务部门的意见，给予十五天至三十天的产假;怀孕满四个月以上流产时，给予四十二天产假。产假期间，工资照发。<br>二、&nbsp;产假期满，因身体原因仍不能工作的，经过医务部门证明后，其超过产假期间的待遇，按照职工患病的有关规定处理。<br>另外，在这些规定的基础上不同省市和地区对产假也有相关的规定<br>至于男职工，其妻休产假时，他是否也有权休假照顾妻子，国家目前尚未作出规定。因此，单位可以根据实际情况需要，自主确定男职工是否休产假，以及时间长短与待遇。<br>江西关于产假的规定：<br>《江西省计划生育条例》第三十条&nbsp;实行晚婚、晚育的夫妻，其所在单位或者户籍所在地的乡镇人民政府、街道办事处以及有关部门应当给予表扬和奖励;其中属于干部、职工晚婚、晚育的，除享受国家规定的假期外，晚婚的增加婚假15日;晚育的增加产假30日，并给予男方护理假7日;假期工资和奖金照发;农民晚婚晚育的，免除夫妻双方1&nbsp;年的集体义务工。&nbsp;女方年满23周岁初婚的为晚婚，已婚女子24周岁以上生育第一胎的为晚育。<br>国家规定的基本婚假一般为3天，根据我国劳动法的规定女职工享受不少于90天的法定产假。所以江西省的妇女晚婚可享受18日婚假，晚育享受四个月左右产假。<br>劳动法62条规定：女职工生育享受不少于九十天的产假。&nbsp;1.《女职工劳动保护规定》第8条规定女职工产假为90天，其中产前休假15天。难产的，增加产假&nbsp;15天。多胞胎生育的，每多生育一个婴儿，增加产假15天。&nbsp;根据以上规定，法定的产假期为90天。用人单位可以根据本单位实际&nbsp;。<br>【产假工资规定】<br>产假，工资”应全拿。<br>第一种：是用人单位为女职工缴纳生育保险的，女职工的的产假期间的待遇为：<br>1、生育津贴;<br>2、生育医疗费用;<br>3、计划生育手术医疗费用;<br>4、国家和本市规定的其他费用。<br>上述费用均有社保基金支付。<br>值得注意的是：在该种情况下，生育津贴即应视为女职工的产假工资，但由于生育津贴的计算方法是：女职工本人生育当月的缴费基数除产假天数得出的，该津贴的数额可能低于女职工的本人工资数额。因此，若生育津贴的数额低于女职工工资的，由用人单位补足差额。<br>第二种，用人单位未给女职工缴纳生育保险的，女职工产假期间，工资由用人单位照发，这里的工资应包括计时工资、计件工资、岗位工资、奖金、津贴和补贴，应是女职工休产假之前的月工资标准。另外，女职工还可以要求用人单位报销生育医疗费用及疾患生育手术费用。', '1');
INSERT INTO `new` VALUES ('42', 'mr', '四天熔断了四次&nbsp;是保险丝不行还是电路有问题', '2018-03-25 11:12:09', '沃保网', '导读：&nbsp;短短一个交易日的反弹之后，A股再度出现熔断。沪深股市昨日出现开盘后13分钟就熔断的走势，停牌15分钟后，市场不到一分钟触及7%再次熔断，市场又一次上演千股跌停的惨烈局面。A股开盘后不足半个小时就提前结束了全天交易。<br>当天沪深股市双双大幅低开。作为熔断机制基准指数的沪深300指数低开近1.66%，报3481.15点，这一点位也最终成为全天最高点。开盘后各大股指下跌。9时42分许沪深300指数触发5%的一级熔断阈值，两市交易暂停。15分钟后，恢复交易的沪深两市继续下跌，仅仅两分钟后触发7%的二级阈值，股票期现货市场全天交易暂停。此时距离开盘尚不足半个小时。<br>二次熔断后，上证综指和深证成指分别收报3115.89点和10745.47点，跌幅分别达7.32%和8.35%。创业板指数跌幅高达8.66%。沪深300指数跌幅为7.21%。<br>股指重挫拖累个股普跌，仅30余只交易品种上涨。不计算ST个股和未股改股，两市近2000只个股跌停。<br>行业板块全线大跌。除综合类板块跌逾9%外，前一交易日领涨的钢铁、煤炭两大权重板块，当日双双录得约8%的跌幅，券商保险、房地产、汽车、电力等板块跌幅也均高达逾8%。IT、日用品、银行板块表现相对抗跌，但跌幅也超过了2%。<br>短短近半个小时的交易中，沪深两市分别成交800亿元和1080亿元。<br>这是进入2016年以来短短4个交易日内，A股第二次因触发熔断而暂停全天交易。截至7日，沪深股指新年以来的累计跌幅分别高达11.96%和15.16%。创业板指数同期跌幅则接近17%。<br>截至收盘，沪指报3125.00点，下跌236.84点，下跌7.04%，成交799.8亿元;深成指报10760.27点，下跌964.61点，跌幅8.23%，成交1080亿元;创业板指报2256.52点，下跌211.84点，跌幅8.58%，成交261.0亿元。个股方面，井神股份、长高集团、三夫户外、盛天网络等27只个股涨停;武钢股份、河北钢铁、渝三峡A、中粮屯河等1784只个股跌停。<br>在市场的质疑下，上海证券交易所发布微信公告，对出现的实际偏差值进行解释。根据公告内容，当完全熔断时，第一次的指数实际跌幅为5.38%，第二次指数实际跌幅为7.21%。', '2');
INSERT INTO `new` VALUES ('43', 'mr', '四方资本逐鹿：互联网保险或出现分水岭', '2018-03-25 11:12:09', '沃保网', '导读：&nbsp;过往这几年，从余额宝、支付、P2P、众筹等业务看，互联网金融发展可谓势如破竹，互联网保险却始终按兵不动。自2015年众安保险A轮80亿美元估值尘埃落定，更多互联网保险创业公司开始获得融资。2015年，作为互联网保险元年，四种资本群雄逐鹿。<br>资本风口四方角力<br>继注资众安保险之后，阿里、腾讯又另立山头，而百度、安联与高瓴也合作组建保险公司。第一种以BAT(百度、阿里、腾讯)为首的互联网巨头，大手笔“高举高打”式进入。尽管BAT保险板块起步较晚，但凭借各自生态和资源，势必会以雨后春笋般的劲头发展。<br>第二种是传统险企以“自我革新”为目标全线触网。各家保险公司纷纷成立电商公司、网销平台、在线客服，其中最具代表性的当属平安保险、泰康在线和华泰保险。他们不仅在产品创新、渠道革新等方面做了大量的尝试和布局，更是从承保流程、理赔模式等加强客户服务与体验。这些无不体现传统保险企业拥抱互联网已迫在眉睫。<br>第三种是传统产业以“强势暴力”破门而入。这也使得保险头戴“资本之王”的桂冠名至实归。在险资频频举牌、入股房企的同时，房企入局保险业的脚步也日渐加快，2015年前发生的“宝万之争”更将此局面推向高潮，同时也让恒大、万达、宝能等当仁不让，成为入股保险企业的急先锋。这些企业在拥抱保险的同时，谋划的是更大的金融产业布局，甚至金融全牌照将成为其标配，正在上演的房地产行业金融资本的大戏，也使他们成为保险业的第三种角逐势力。<br>第四种则是VC支持的互联网保险创业公司以“望闻问切”切入模式进入。其中以意时网、大特保、悟空保、最惠保、OK车险、小雨伞为代表的新一代保险种子选手正在破土而出。他们中孕育着商机和创新虽未可知，但值得期待。四股资本力量各有优势和特长，似保险战国，硝烟刚起，“数风流人物，还看今朝”。<br>商业模式百花齐放<br>2016年，产寿险或成为各家企业排兵布阵的第一道分水岭。地产类资本更注重旗下企业的资金链条，多以寿险为切入口;而以生态支撑主体业务较多的公司则大多选择财产险为切入口，诸如淘宝保险。<br>就服务用户而言，业务对象或服务B端，或直接针对C端。就商业模式而言，更是“八仙过海各显神通”，有以产品为切入口的突出其创意;有以渠道为切入口的，突出其管理能力或线下推广能力;也有以工具和服务为切入口的，突出其技术和对保险市场深耕多年的经验优势。此外，还有互助保险、保险比价、UBI车险等模式，令人眼花缭乱。目前，数百家创业公司，使得商业模式几乎覆盖全产业链条，真可谓是姹紫嫣红，百花齐放。<br>精算师作为保险公司的产品及风控核心力量，工作内容涵盖了需求分析、产品定价、风险控制、产品负债管理、偿付能力管理、经营指标确定等诸多方面，不但了解整个保险公司运转的各环节和痛点，更懂得市场挖掘、模式设计和服务落地，但他们往往受限于传统险企的体制和模式而无法人尽其才。<br>而今完全不同的是，由精算师领衔或深度参与的创业公司已经成为互联网保险创业公司中的佼佼者，其中不乏悟空保、最惠保、BB保险、里程保等代表性企业。<br>产品创新推陈出新<br>应该说，无论何种模式，产品创新及客户体验都必须首当其冲。不管是有噱头的“赏月险”，还是“加班险”、“步步保”、“牛油保”以及“悦听保”等，这些都是从产品形态、承保流程、客户体验等不同角度的尝试与创新。<br>虽然尚未成为主流，但这些革新对于保险的生活化、场景化、普及化起到了十分重要的作用，对未来的保险模式创新都将起到推陈出新的示范作用。哪些产品创新能经得起市场的检验最终脱颖而出，将由消费者决定，我们拭目以待。伴随着保险业在国内的高速增长，万亿级的市场规模已见端倪。作为市场金融调节重要工具之一的保险资金的管理和运用，监管机构也正积极调整政策，逐步放开对互联网保险的种种限制。与此同时，各类资本源源不断涌入该市场，使得互联网和保险的管理团队从简单对接走向高度融合;另外，国内近7亿网民在被互联网改变生活方式，他们也对保险产品的价格、体验和服务提出了更高要求。从整体上来看，互联网保险应是互联网金融的最后一道堡垒，更是最后机遇，商机巨大。只要能够解决客户痛点、改善客户体验，降低用户成本，提高行业效率，加上不断创新、融合和变革，互联网保险大有可为，目前发展仅为冰山一角。', '2');
INSERT INTO `new` VALUES ('45', 'mr', '退休人员缴交医保：现实有必要&nbsp;细节待推敲', '2018-03-25 11:12:09', '沃保网', '导读：&nbsp;随着我国人口结构的变化，退休人员不缴费、在职人员缴费的筹资模式已给医保基金带来了巨大压力。<br>医保基金是保险而非福利，财政资金为医保基金无限兜底没有先例。<br>退休人员医保缴费费率可能设定为退休金的2%，即当前在职人员参加医疗保险的个人负担部分，大约每人每月45元。<br><br>财政部长楼继伟日前撰文称，正在研究实行职工医保退休人员缴费政策。这一观点立即引发广泛讨论。有人表示，让收入不多的退休人员缴医保，在情感上难以接受;也有人认为，我国医保基金面临前所未有的收支压力，若要维持收支平衡，须改变在职人员为退休人员托底的现状。究竟该如何看“退休人员缴医保”这个热点问题?<br>自1998年建立城镇职工基本医保制度以来，我国始终采用退休人员不缴费、在职人员缴费的筹资模式。这一模式，在很长一段时间内，保证了退休人员的医保质量和水平。但近年来，我国人口结构发生了持续而深刻的变化。<br>数据显示，截至2014年底，全国职工基本医疗保险参保28296万人，其中退休人员7255万人，这意味着不到3个在职人员正负担着1个退休人员的医保，而退休人员仍在快速增加。“城镇职工医保基金赤字危机已迫在眉睫，基金增收压力更加严峻。职工医保统筹基金结余的40%，集中在广东、江苏、浙江等东部省份，其他省份大部分处于赤字边缘。”中国社会科学院经济研究所朱恒鹏分析说。<br>面对医保基金的压力，有人提出疑问：为何不用财政来兜底?<br>事实上，医保基金是保险而非福利，财政资金为医保基金无限兜底的做法，在国际上也没有先例。换言之，医保基金的保险本质，决定了其应由参保人员来承担义务，享受权利。如果退休职工不缴费，则压力将全部由在职人群承担。即便强令财政资金担下这份责任，最终也会增加全民税收负担。<br>那么，职工医保退休人员缴费是否具有合理性呢?<br>从国际上来看，退休人员缴费是通行做法。北京大学中国公共财政研究中心主任林双林介绍，目前主要存在三种退休人员缴费的模式：一种是用退休金缴纳个人负担部分，例如法国、德国、日本;一种是工作时预缴一部分用于年老时的基本医疗，但要享有更多的保障项目还须退休后再交一些，例如美国;还有一种家庭医疗保险，例如，韩国、日本等。<br>从我国情况而言，需进一步实现基金的精算平衡，体现社保的公平本质。2005年到2015年，国家连续11年上调企业退休人员养老金，平均年增幅达到10%左右，从月人均约710元提高到约2300元。而城镇职工医保建立时间尚短，存在大批缴费时间很短但已退休的人员，退休人员的缴费年限只需达15年至25年就可退休后不缴费、终身享受医保待遇，缴费根本无法弥补其医保支出，失去社保权利义务相对等的公平本质。<br>此外，我国现行医保制度间存在的差异需要逐步缩小直至融合。目前城镇居民医保和新农合都采取终生缴费制，即只有当期缴费了方可享受当期的医保待遇，而职工医保退休人员却不缴费。随着不同制度间的融合，缴费水平、缴费模式、待遇水平等都将进行调整，并趋于一致。<br>退休人员缴费多少算合理?这也值得推敲。目前我国医疗保险缴费率为工资的8%，其中企业为6%、个人为2%。有一种普遍的猜测认为，退休人员需个人负担8%。例如，以养老金平均每月2250元为缴费基数，退休人员需要按8%的医保总费率每人每月缴纳180元。“这种提法不符合该政策建议的初衷，也有悖于其他国家退休人员缴费的实践。”林双林说，从其他国家情况来看，退休人员只是负担个人原本需负担的部分，而不是全部缴费;我国在居民医保中也是采取“政府补助+个人缴费”相结合的方式，对于退休的老年人亦是如此。林双林认为，这一缴费费率可能设定为退休金的2%，即当前在职人员参加医疗保险的个人负担部分，大约每人每月45元。<br>综合来看，职工医保退休人员缴费确实存在可能性和可行性，但如果实施这一方案，一些细节问题应该仔细推敲、认真研究。比如，是实行强制还是自愿;是否要同步调增退休人员的退休金水平，以弥补因医保缴费带来的个人负担等。“还需要进行医疗费用控制方面的改革，例如总额预算，按病种付费等国际上普遍采用的措施。”林双林建议说。<br>不过，对于减轻医保基金压力而言，启动退休人员缴费或许只是“开源”的手段之一，控制医疗费用快速增长的“节流”措施也不可忽视。2014年全国卫生总费用达35312亿元，是医改启动前(2008年)的2.4倍。“社会医保制度要可持续，需要将钱都花在刀刃上，该花的要花，不该花的坚决不花。”朱恒鹏说。', '3');
INSERT INTO `new` VALUES ('46', 'mr', '习近平主持中共中央政治局常委会会议', '2018-03-25 11:12:09', '中国新闻网', '中共中央政治局常务委员会1月7日全天召开会议，听取全国人大常委会、国务院、全国政协、最高人民法院、最高人民检察院党组工作汇报，听取中央书记处工作报告。中共中央总书记习近平主持会议并发表重要讲话。<br>　　会议强调，中国共产党领导是中国特色社会主义制度的最大优势，是我们战胜各种风险挑战、实现“两个一百年”奋斗目标、实现中华民族伟大复兴中国梦的根本保证。加强党的领导关键是坚持党中央集中统一领导。党中央集中统一领导要实现制度化、规范化。党政军民学，东西南北中，党是领导一切的。要通过深入学习贯彻党章和《中国共产党党组工作条例(试行)》，增强政治意识、大局意识、责任意识，不断加强和改善党的领导，更好发挥党总揽全局、协调各方的领导核心作用，确保党始终成为中国特色社会主义事业的坚强领导核心。<br>　　会议认为，过去的一年，全国人大常委会、国务院、全国政协、最高人民法院、最高人民检察院党组自觉坚持党中央集中统一领导，坚持全面从严治党，坚持民主集中制，坚持党组发挥领导核心作用与支持依法依章程履行职责相统一，紧紧围绕“五位一体”总体布局和“四个全面”战略布局，强化责任担当，狠抓党中央重大决策部署和重要指示精神的贯彻落实，扎实开展“三严三实”专题教育，充分发挥了把方向、管大局、保落实的重要作用，为推进党和国家各项事业发展、实现“十二五”圆满收官作出了积极贡献。<br>　　会议认为，过去的一年，中央书记处坚决贯彻党中央决策部署，协助党中央推进思想理论建设和作风建设，指导做好群团工作，推动一批重要党内法规制定实施，配合办好纪念中国人民抗日战争暨世界反法西斯战争胜利70周年系列活动等大事要事，各方面工作取得了新进展。<br>　　会议强调，今年是全面建成小康社会决胜阶段的开局之年，也是推进结构性改革的攻坚之年。全国人大常委会、国务院、全国政协、最高人民法院、最高人民检察院党组，要把牢坚定正确的政治方向，严守政治纪律和政治规矩，自觉维护党中央权威，在思想上政治上行动上始终同以习近平同志为总书记的党中央保持高度一致，担当起落实党中央重大决策部署的政治责任。要围绕大局履职尽责，想中央所想、急中央所急，积极适应经济发展新常态，坚持以新的发展理念引领发展，扎实做好党中央部署的各项工作，努力实现全面建成小康社会决胜阶段良好开局。要落实全面从严治党主体责任，带头学习贯彻党章和《中国共产党廉洁自律准则》、《中国共产党纪律处分条例》，抓好党组自身建设，指导好机关和系统党的建设，教育管理监督好干部队伍。<br>　　会议强调，中央书记处要按照自身职责定位，把握大局、服务大局，进一步在推动全面从严治党上聚焦发力，在推进思想政治建设、作风建设上下功夫，深入调查研究，不断提高议事能力和水平，推动党中央决策部署贯彻落实。', '2');
INSERT INTO `new` VALUES ('47', 'mr', '证监会决定暂停熔断机制', '2018-03-25 11:12:09', '中国新闻网', '中新网1月7日电&nbsp;经中国证监会同意，上交所、深交所及中金所决定于1月8日起暂停实施指数熔断机制。<br>　　证监会新闻发言人邓舸在答记者问时表示，引入指数熔断机制的主要目的是为市场提供“冷静期”，避免或减少大幅波动情况下的匆忙决策，保护投资者特别是中小投资者的合法权益；抑制程序化交易的助涨助跌效应；为应对技术或操作风险提供应急处置时间。<br>　　邓舸表示，熔断机制不是市场大跌的主因，但从近两次实际熔断情况看，没有达到预期效果，而熔断机制又有一定“磁吸效应”，即在接近熔断阈值时部分投资者提前交易，导致股指加速触碰熔断阈值，起了助跌的作用。权衡利弊，目前负面影响大于正面效应。因此，为维护市场稳定，证监会决定暂停熔断机制。<br>　　邓舸表示，引入熔断机制是在2015年股市异常波动发生以后，应各有关方面的呼吁开始启动的，有关方案经过了审慎的论证并向社会公开征求了意见。熔断机制是一项全新的制度，在我国没有经验，市场适应也要有一个过程，需要逐步探索、积累经验、动态调整。下一步，证监会将认真总结经验教训，进一步组织有关方面研究改进方案，广泛征求各方面意见，不断完善相关机制。', '1');
INSERT INTO `new` VALUES ('49', 'mr', '新闻信息标题新闻信息标题', '2018-03-25 11:12:09', '无', '新闻信息内容新闻信息内容新闻信息内容新闻信息内容', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `regqu` varchar(50) default NULL,
  `reganswer` varchar(50) default NULL,
  `iid` varchar(50) NOT NULL default '',
  `sex` tinyint(1) default NULL,
  `age` int(11) default NULL,
  `tel` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `qq` varchar(50) default NULL,
  `regtime` datetime default NULL,
  `address` varchar(200) default NULL,
  `http` varchar(50) default NULL,
  `status` int(11) default NULL COMMENT '0普通1管理员2特殊 3老师',
  `state` int(11) default NULL,
  `resume` varchar(250) default NULL,
  PRIMARY KEY  (`uid`),
  KEY `u_1` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('00', '00', '00', '00', '00', '', '1', '19', '', '00@123.com', '', '2018-03-19 12:14:10', '', '', '0', '0', '');
INSERT INTO `user` VALUES ('110', '110', '110', '110', '110', '01.gif', '1', '110', '110', '110@hh.com', '110', '2018-03-23 12:31:50', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('123', '123', '张华', '我是谁', '张华', '_3888691265876014500', '1', '22', '', '22@qq.com', '', '2018-01-09 15:07:10', '', '', '2', '0', '');
INSERT INTO `user` VALUES ('18', '18', '18', '18', '18', '08.gif', '0', '18', '18', '1559371164@qq.com', '1559371164', '2018-02-20 18:47:31', '22', '', '0', '0', '我是活泼开朗的女孩');
INSERT INTO `user` VALUES ('22', '22', '22', '22', '22', '', '1', '22', '', '22', '', '2018-01-09 15:07:10', '', '', '2', '0', '');
INSERT INTO `user` VALUES ('33', '33', '33', '33', '33', '', '1', '33', '', '33', '', '2018-01-09 15:07:10', '', '', '2', '0', '');
INSERT INTO `user` VALUES ('77', '7777', '7777', '7777', '7777', '', '1', '77', '', '77@qq.com', '77', '2018-01-09 15:07:10', '77', '77', '3', '0', '77');
INSERT INTO `user` VALUES ('888', '888', '888', '888', '888', '', '0', '888', '888', '888@88.88', '88', '2018-01-09 15:07:10', '88', '88', '3', '0', '88');
INSERT INTO `user` VALUES ('9001', '11', '9001', '9001', '9001', '', '1', '20', '2365894', '444@qq.com', '454', '2018-03-25 11:00:57', '4564', '4564', '0', '0', '个人简介');
INSERT INTO `user` VALUES ('9011', '11', '9011', '9011', '9011', '', '1', '22', '265698', '456@qq.com', '4654', '2018-03-25 11:10:37', '5464', '564', '0', '0', '个人简介');
INSERT INTO `user` VALUES ('999', '999', '999', '999', '999', '', '1', '999', '999', '999@99.99', '999', '2018-01-09 15:02:04', '999', '999', '3', '0', '999');
INSERT INTO `user` VALUES ('aa', 'aa', 'aa', 'aa', 'aa', '', '1', '20', '', '34356666@qq.com', '', '2018-01-09 15:07:10', '', '', '0', '0', '');
INSERT INTO `user` VALUES ('ewerewr', '123', 'qwe', 'qwe', '123', '', '1', '18', '123456789', '2983183992@qq.com', '784354353', '2018-01-09 15:07:10', '广金', '', '0', '0', '大发光火');
INSERT INTO `user` VALUES ('gdf', 'gdf', 'gdf', 'gdf', 'gdf', '', '1', '23', '', '45346346@qq.com', '', '2018-01-09 15:07:10', '', '', '0', '0', '');
INSERT INTO `user` VALUES ('lsg', '123', 'wrm', '我是谁', '你哥哥', '', '1', '18', '10086', '962314719@qq.com', 'qq', '2018-01-09 15:07:10', '广金', '', '0', '0', '的符号是公司公司');
INSERT INTO `user` VALUES ('mm', 'mm', 'mm1', 'mm', 'mm', '', '1', '234', '5', '53425352@qq.com', '6', '2018-01-09 15:07:10', '7', '8', '0', '0', '9');
INSERT INTO `user` VALUES ('mr', 'mr', '管理员', 'mr', '管理员', '4256456840824322891', '1', '10', '0431-84972266', 'mingrisoft@mingrisoft.com', '', '2018-01-09 15:07:10', '北京', 'http://www.mingribook.com', '1', '0', '');
INSERT INTO `user` VALUES ('pp', 'pp', '王小丽', '我的生日', '10.25', '08.gif', '0', '22', '', '545367674@qq.com', '545367674', '2018-01-09 15:07:10', '广州天河龙洞', '', '0', '0', '');
INSERT INTO `user` VALUES ('qq', 'qq', 'qq', 'qq', 'qq', '', '1', '24', '', 'mingrisoft@mingrisoft.com&nbsp;', '', '2018-01-09 15:07:10', '', '', '0', '0', '');
INSERT INTO `user` VALUES ('QYL', '187188qyl.', '丘艳玲', '我的生日', '1994.05.25', '7023233186634765230', '0', '22', '', '1559371164@qq.com', '', '2017-03-19 10:24:42', '', '', '0', '0', '');
INSERT INTO `user` VALUES ('tt', 'tt', 'tt', 'tt', 'tt', '7023233186634765230', '1', '33', '', '11@123.com', '', '2017-03-12 15:35:57', '', '', '3', '0', '');
INSERT INTO `user` VALUES ('老师1', '11', '11', '11', '11', '', '1', '11', '11', '11@11.omc', '11', '2017-01-20 20:48:19', '11', '11', '3', '0', '11');
INSERT INTO `user` VALUES ('学生1', '11', '11', '11', '11', '', '1', '11', '11', '11@11.omc', '11', '2017-01-20 20:47:44', '11', '11', '0', '0', '11');

-- ----------------------------
-- Table structure for `wx`
-- ----------------------------
DROP TABLE IF EXISTS `wx`;
CREATE TABLE `wx` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `number` varchar(50) default NULL,
  `uptime` datetime default NULL,
  `uid` varchar(50) default NULL,
  `sid` int(11) default NULL,
  `xytime` varchar(50) default NULL,
  `flag` varchar(11) default NULL,
  `bz` varchar(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `so_1` (`uid`),
  KEY `so_2` (`sid`),
  CONSTRAINT `wx_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `wx_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wx
-- ----------------------------
INSERT INTO `wx` VALUES ('71', '心理服务中心', 'J', '2018-01-20 20:53:23', 'mr', '42', '1', '5', '10');
INSERT INTO `wx` VALUES ('78', '党支部', '18', '2018-02-24 16:42:47', 'mr', '41', '1', '4', '2');
INSERT INTO `wx` VALUES ('79', '11', '11', '2018-03-23 00:14:58', '123', '46', '1', '4', '3');
INSERT INTO `wx` VALUES ('80', '66', '666', '2018-03-24 16:37:08', 'mr', '45', '1', '3', '0');
INSERT INTO `wx` VALUES ('81', '99', '99', '2018-03-24 21:00:21', 'mr', '41', '1', '3', '0');

-- ----------------------------
-- Table structure for `wz`
-- ----------------------------
DROP TABLE IF EXISTS `wz`;
CREATE TABLE `wz` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `edition` varchar(50) default NULL,
  `price` float default NULL,
  `uptime` datetime default NULL,
  `uid` varchar(50) default NULL,
  `iid` varchar(50) default NULL,
  `sid` int(11) default NULL,
  `environment` varchar(50) default NULL,
  `commend` int(11) default NULL,
  `loadnum` int(11) default NULL,
  `regular` tinyint(1) default NULL,
  `introduce` mediumtext,
  `resume` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  KEY `so_1` (`uid`),
  KEY `so_2` (`sid`),
  CONSTRAINT `so_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `so_2` FOREIGN KEY (`sid`) REFERENCES `car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wz
-- ----------------------------
INSERT INTO `wz` VALUES ('71', '22', 'J', '1', '2018-01-20 20:53:23', 'mr', '', '42', '1', '5', '0', '1', '1', '1');
INSERT INTO `wz` VALUES ('78', '33', '18', '1', '2018-02-24 16:42:47', 'mr', '2372402691681215650', '41', '1', '4', '0', '1', '1', '1');
INSERT INTO `wz` VALUES ('80', '66', '666', '1', '2018-03-24 16:37:08', 'mr', '_4544122732577804924', '45', '1', '3', '0', '1', '1', '1');
INSERT INTO `wz` VALUES ('81', '99', '99', '1', '2018-03-24 21:00:21', 'mr', '', '41', '1', '3', '0', '1', '1', '1');
INSERT INTO `wz` VALUES ('82', '66', '66', '1', '2018-03-24 21:02:09', 'mr', '4185095980775820263', '41', '1', '3', '0', '1', '1', '1');
INSERT INTO `wz` VALUES ('83', '违章名称', '发布者', '1', '2018-03-25 11:14:41', 'mr', '_2633375419378404497', '41', '1', '1', '0', '1', '违章介绍违章介绍违章介绍', '200');
