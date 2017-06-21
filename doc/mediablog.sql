/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-06-08 21:45:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleId` varchar(32) NOT NULL,
  `articleName` varchar(128) NOT NULL,
  `creatTime` varchar(32) NOT NULL,
  `readNum` int(32) NOT NULL,
  `commentNum` int(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL,
  `blogId` varchar(32) NOT NULL,
  `articleText` text,
  `articleHead` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('0ec4af1588d146d482950bc21f0bcf6f', '范德萨范德萨发', '2017年05月26日 13:22:01', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>佛挡杀佛</p>', '法第三方士大夫');
INSERT INTO `article` VALUES ('20e9c27a8f66496590417068dcb07174', '范德萨范德萨发', '2017年05月26日 13:22:32', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>佛挡杀佛</p>', '法第三方士大夫');
INSERT INTO `article` VALUES ('3ae2aeee2006495baaf05af40710584b', '恢复规划', '2017年05月26日 13:11:05', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>风光好风光好<br/></p>', '寡妇反正');
INSERT INTO `article` VALUES ('4c8dee9ad8884d9c989a2abc5b410c37', '多福多寿', '2017年05月26日 17:09:00', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">有时候会检测到服务器有很多漏洞，而大部分漏洞都是由于服务的版本过低的原因，因为官网出现漏洞就会发布新版本来修复这个漏洞，所以一般情况下，我们只需要对相应的软件包进行升级到安全版本即可。</p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">通过查阅官网信息，&nbsp;Oracle MySQL Server远程安全漏洞(CVE-2015-0411)，受影响系统：</p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">Oracle&nbsp;MySQL Server &lt;= 5.6.21<br/>Oracle MySQL Server &lt;= 5.5.40</p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">因此我们需要将mysql的版本升级到5.6.21之后，这里我们选择5.6.35版本，下面开始升级。</p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">一、备份并删除原有的mysql包</p><p><span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5 !important;\"><a title=\"复制代码\" style=\"margin: 0px; padding: 0px; text-decoration: underline; border: none !important;\"></a></span></p><pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &#39;Courier New&#39; !important;\">mysqldump&nbsp;-u&nbsp;root&nbsp;-p&nbsp;--all-databases&nbsp;&gt;/usr/-*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//移除原有mysql服务|//如果有，可输入命令删除：rpm&nbsp;-e&nbsp;【列表】</pre><pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &#39;Courier New&#39; !important;\">&nbsp;<br/></pre><p></p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;二、安装5.6.35的mysql（两种方式）</p><p></p><pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &#39;Courier New&#39; !important;\">-Uvh&nbsp;http:yum&nbsp;-y&nbsp;install&nbsp;mysql-community-server\n//依次输入两条命令，进行安装升级，成功之后输入mysql&nbsp;-V&nbsp;看到版本即可\n\n第二种（服务器不能ping通百度）：\n1.到http://mirrors.sohu.com/mysql/MySQL-5.6下载MySQL-5.6.35-1.linux_glibc2.5.x86_64.rpm-bundle.tar。\n2.将其放到/usr目录下并进入目录：cd&nbsp;/usr\n3.解压：tar&nbsp;-xvf&nbsp;MySQL-5.6.35-1.linux_glibc2.5.x86_64.rpm-bundle.tar&nbsp;\n4.安装解压出的RPM包，主要是下面四个</pre><pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &#39;Courier New&#39; !important;\">&nbsp;##Server包：\n[root@mysql&nbsp;~]#&nbsp;rpm&nbsp;-ivh&nbsp;MySQL-server-5.6.35-1.linux_glibc2.5.x86_64.rpm\n&nbsp;##Client包：\n[root@mysql&nbsp;~]#&nbsp;rpm&nbsp;-ivh&nbsp;MySQL-client-5.6.35-1.linux_glibc2.5.x86_64.rpm\n&nbsp;##库函数包：\n[root@mysql&nbsp;~]#&nbsp;rpm&nbsp;-ivh&nbsp;MySQL-devel-5.6.35-1.linux_glibc2.5.x86_64.rpm\n[root@mysql&nbsp;~]#&nbsp;rpm&nbsp;-ivh&nbsp;MySQL-shared-5.6.35-1.linux_glibc2.5.x86_64.rpm</pre><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin: 10px auto; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 21.6px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;三、mysql初始化：</p><p></p><pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &#39;Courier New&#39; !important;\">1.启动mysql，在第一次启动的时候进行：service&nbsp;mysql&nbsp;start。\n注：如果启动的时候有关于PID的报错，不能启动。输入命令&nbsp;&nbsp;ps&nbsp;-ef|grep&nbsp;mysqld&nbsp;。&nbsp;&nbsp;看到有mysql服务，将mysql服务全部kill掉，命令&nbsp;&nbsp;kill&nbsp;[进程ID]，然后重新启动即可。\n\n2.停止mysql，进入安全模式修改密码。\nservice&nbsp;mysql&nbsp;stop</pre><p style=\"margin: 10px auto; padding: 0px;\">&nbsp; mysqld_safe --skip-grant-tables &amp;<br/>&nbsp; /usr/bin/mysql -u root -p<br/>&nbsp; use mysql;</p><p style=\"margin: 10px auto; padding: 0px;\">　update mysql.user set authentication_string=password(&quot;你要设置的数据库密码&quot;) where user=&#39;root&#39; and host=&#39;localhost&#39;;<br/>&nbsp; flush privileges;</p><p style=\"margin: 10px auto; padding: 0px;\">　quit</p><p style=\"margin: 10px auto; padding: 0px;\">&nbsp;3.重启mysql，并运行sql脚本载入数据。</p><p style=\"margin: 10px auto; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; line-height: 1.5;\">　service mysqld restart</span></p><p style=\"margin: 10px auto; padding: 0px;\">　chkconfig --list &nbsp; //看到列表中mysql的3 4 5全是on即可，说明开机启动，即可不用管。</p><p style=\"margin: 10px auto; padding: 0px;\">&nbsp; mysql -u root -p</p><p style=\"margin: 10px auto; padding: 0px;\">&nbsp;&nbsp;source /usr/databases.sql</p><p style=\"margin: 10px auto; padding: 0px;\">&nbsp;</p><p style=\"margin: 10px auto; padding: 0px;\">到这里就完成了升级了~</p><p><br/></p>', '似懂非懂是');
INSERT INTO `article` VALUES ('6622a0fa9a834022b48a1518d56a73ba', '硕大的', '2017年05月25日 22:15:27', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>方式</p>', '的撒');
INSERT INTO `article` VALUES ('bcfded7ccaa441638a979999043a1c9c', 'gdfg ', '2017年05月25日 22:12:25', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>dasdggfdgdf<br/></p>', 'gfdgdf');
INSERT INTO `article` VALUES ('be07130163a44f5fabd5d6877bdfdce0', 'jhfjghj', '2017年05月26日 13:31:36', '0', '0', 'sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '<p>fsdfsd<br/></p>', 'hgjghjg');
INSERT INTO `article` VALUES ('c78ce4ee0bf64ca5a73a0df7cca09440', 'jhfjghj', '2017年05月26日 13:28:38', '0', '0', 'dad56w4156', '822bac3a4f334db0bf05011cac284b14', '<p>jhgjhggjhghjjghjgh<br/></p>', 'hgjghjg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryId` varchar(32) NOT NULL,
  `blogId` varchar(32) NOT NULL,
  `categoryName` varchar(128) NOT NULL,
  `articleNum` int(16) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('dad56w4156', '822bac3a4f334db0bf05011cac284b14', '奇偶评分a', '56');
INSERT INTO `category` VALUES ('sd1a+612d65', '822bac3a4f334db0bf05011cac284b14', '时尚', '3');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `photoId` varchar(32) NOT NULL,
  `boxId` varchar(32) NOT NULL,
  `photoText` varchar(255) DEFAULT NULL,
  `photoUrl` varchar(255) NOT NULL,
  `okNum` int(16) NOT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('62e59209ddcd4e7a975aef5afda3ae32', '9f9ce7ae2a1f47e9b483144a533d2c91', '', 'upload/photo/201705/20170524234858_625.jpg', '0');
INSERT INTO `photos` VALUES ('98e9e899694c41b4ab1d9fcfb67f98b6', '9f9ce7ae2a1f47e9b483144a533d2c91', '', 'upload/photo/201705/20170524235054_360.jpg', '0');
INSERT INTO `photos` VALUES ('9d89b912fd814e35a1ab5d67369f43f1', '9f9ce7ae2a1f47e9b483144a533d2c91', '', 'upload/photo/201705/20170525113351_452.jpg', '0');
INSERT INTO `photos` VALUES ('e976ac7911624f33ab9a1b25c83ec115', '9f9ce7ae2a1f47e9b483144a533d2c91', '', 'upload/photo/201705/20170525111918_569.jpg', '0');

-- ----------------------------
-- Table structure for photos_box
-- ----------------------------
DROP TABLE IF EXISTS `photos_box`;
CREATE TABLE `photos_box` (
  `boxId` varchar(32) NOT NULL,
  `imgNum` int(16) NOT NULL,
  `boxName` varchar(64) NOT NULL,
  `boxText` varchar(255) DEFAULT NULL,
  `creatTime` varchar(32) NOT NULL,
  `blogId` varchar(32) NOT NULL,
  `boxType` int(1) NOT NULL,
  `imgHead` varchar(128) NOT NULL,
  PRIMARY KEY (`boxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos_box
-- ----------------------------
INSERT INTO `photos_box` VALUES ('35c54fffc31c41a280a85e0a8031d574', '0', '缴费', '飞', '2017年05月17日 22:42:19', '游客', '0', 'www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('360e2d4a48184c8f81ae44278cd99d89', '0', '的撒多', '大三', '2017年05月26日 13:15:51', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('9f9ce7ae2a1f47e9b483144a533d2c91', '0', '是你撒丁火', '大三12011111112121212121212', '2017年05月20日 15:02:13', '822bac3a4f334db0bf05011cac284b14', '1', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('bd524f4934b043539319ca0936c1a418', '0', '激光焊接后盖', '几个号结构化', '2017年05月26日 13:18:26', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('dd5202e4ba8e4266a3c14c13a1ba7bd4', '0', '好玩啊', '哇', '2017年05月20日 14:58:37', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('e6208383d5434f8fbf36665bfb5ef0b9', '0', '点胶机', '大三', '2017年05月17日 22:44:52', '游客', '0', 'www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('f3de220ef2974167b526668cfcca6633', '0', '打破军', '爱迪生', '2017年05月20日 15:02:02', '822bac3a4f334db0bf05011cac284b14', '1', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('f86e1a002fde4cb781c3a82be94d5d61', '0', 'hg', 'ds', '2017年05月20日 14:48:17', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('f86e1a002fde4cb781c3a82be94ddd61', '1', 'sda', 'das', '2017年05月20日 14:48:17', '822bac3a4f334db0bf05011cac284b14', '1', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('f86e1a002fde4cb781c3a82be94f5d61', '0', '游玩', '好玩', '2017年05月20日 14:48:17', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');
INSERT INTO `photos_box` VALUES ('f86e1a002fde4cb781c3a82bed4ddd61', '1', '1dweqe', 'da', '2017年05月20日 14:48:17', '822bac3a4f334db0bf05011cac284b14', '0', '/www/images/photosindex/page1_img1.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userName` varchar(64) NOT NULL,
  `userPass` varchar(64) NOT NULL,
  `creatTime` varchar(32) NOT NULL,
  `blogName` varchar(128) DEFAULT NULL,
  `blogId` varchar(32) NOT NULL,
  `friendId` varchar(255) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `authentication` int(2) DEFAULT NULL,
  `headImg` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userName`,`blogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('a123456', 'aa60906841a9a91a3a7b0a42bb6f03f5', '2017年05月16日 19:42:04', null, '', null, '1654987@qq.com', null, null, null);
INSERT INTO `user` VALUES ('a805748009', '7b88d36464c5ab08677ad3db2d64c3ec', '2017年05月18日 10:38:57', null, '822bac3a4f334db0bf05011cac284b14', null, '154212@qq.com', null, null, null);





-- 新增字段  usercname-用户别名   hxy 2017-6-22
alter table `user` add column `userCname` varchar(64);
