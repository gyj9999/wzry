/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : wzry

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-01-25 17:21:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for add_e
-- ----------------------------
DROP TABLE IF EXISTS `add_e`;
CREATE TABLE `add_e` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `E_One` int(11) DEFAULT NULL,
  `E_Two` int(11) DEFAULT NULL,
  `E_Three` int(11) DEFAULT NULL,
  `E_Four` int(11) DEFAULT NULL,
  `E_Five` int(11) DEFAULT NULL,
  `E_Six` int(11) DEFAULT NULL,
  `E_tips` varchar(255) DEFAULT NULL COMMENT '贴士',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_e
-- ----------------------------
INSERT INTO `add_e` VALUES ('1', '1', '1', '2', '3', '4', '5', '6', '这套装备在后期雅典娜需要切入敌方后排，对敌方后排进行持续输出，需要一定的操作技巧');
INSERT INTO `add_e` VALUES ('2', '1', '7', '2', '3', '5', '8', '9', '这套装备使得后期雅典娜具有很强的承伤能力，并且输出可观，能黏住敌方后排输出');

-- ----------------------------
-- Table structure for add_i
-- ----------------------------
DROP TABLE IF EXISTS `add_i`;
CREATE TABLE `add_i` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id\r\n',
  `One` int(11) DEFAULT NULL,
  `Two` int(11) DEFAULT NULL,
  `Three` int(11) DEFAULT NULL,
  `I_Tips` varchar(255) DEFAULT NULL COMMENT '贴士',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_i
-- ----------------------------
INSERT INTO `add_i` VALUES ('1', '1', '1', '2', '3', '红色选择异变，绿色选择鹰眼，增加物理攻击力和物理穿透，可以最大程度增加雅典娜前期伤害，提高发育效率。蓝色选择狩猎，增加10%攻速和10%移速，提高攻速可以帮助雅典娜的连招打的更加流畅。');

-- ----------------------------
-- Table structure for add_skill
-- ----------------------------
DROP TABLE IF EXISTS `add_skill`;
CREATE TABLE `add_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL,
  `first` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_skill
-- ----------------------------
INSERT INTO `add_skill` VALUES ('1', '1', '3', '2');

-- ----------------------------
-- Table structure for add_s_skill
-- ----------------------------
DROP TABLE IF EXISTS `add_s_skill`;
CREATE TABLE `add_s_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `R_first` int(11) DEFAULT NULL COMMENT '推荐一',
  `R_Second` int(11) DEFAULT NULL COMMENT '推荐二',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_s_skill
-- ----------------------------
INSERT INTO `add_s_skill` VALUES ('1', '1', '1', '2');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `admin_pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES ('2', 'lisi', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES ('3', 'wangwu', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES ('4', '111111111111111111111111111111', 'd85247691d13702feab933553f0bb7b0');
INSERT INTO `admin` VALUES ('6', '1111111111111111', '9dcbf642c78137f656ba7c24381ac25b');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `E_name` varchar(255) DEFAULT NULL COMMENT '装备名称',
  `E_img` varchar(255) DEFAULT NULL COMMENT '装备图片路径\r\n',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('1', '暗影战斧', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1137.jpg');
INSERT INTO `equipment` VALUES ('2', '忍者足具', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1421.jpg');
INSERT INTO `equipment` VALUES ('3', '宗师之力', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1134.jpg');
INSERT INTO `equipment` VALUES ('4', '爆裂之甲', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1338.jpg');
INSERT INTO `equipment` VALUES ('5', '不死鸟之眼', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1334.jpg');
INSERT INTO `equipment` VALUES ('6', '冰痕之握', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/13310.jpg');
INSERT INTO `equipment` VALUES ('7', '红莲斗篷', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1331.jpg');
INSERT INTO `equipment` VALUES ('8', '无尽战刃', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1133.jpg');
INSERT INTO `equipment` VALUES ('9', '霸着重甲', 'http://game.gtimg.cn/images/yxzj/img201606/itemimg/1332.jpg');

-- ----------------------------
-- Table structure for hero_gay
-- ----------------------------
DROP TABLE IF EXISTS `hero_gay`;
CREATE TABLE `hero_gay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gay` int(11) DEFAULT NULL COMMENT '英雄关系：1为搭档；2为压制关系；3为被压制关系',
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `Gay_one` int(11) DEFAULT NULL,
  `Gay_two` int(11) DEFAULT NULL,
  `Gay_tips` varchar(255) DEFAULT NULL COMMENT '贴士',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero_gay
-- ----------------------------
INSERT INTO `hero_gay` VALUES ('1', '1', '1', '2', '3', '达摩：雅典娜的免控属性让达摩非常难击飞她，从而无法解锁大招第二段伤害。雅典娜的一技能和三技能都是法术伤害，也使得达摩被动的物理防御无法减免这部分伤害，受到一定程度的克制。');
INSERT INTO `hero_gay` VALUES ('2', '2', '1', '2', '4', '兰陵王：雅典娜的一技能和三技能都可以提供护盾和免控，运用得当可以抵挡兰陵王二技能的二段伤害，以及眩晕效果。在角色定位上，兰陵王属于刺客，身板较弱，而雅典娜是半肉战士，并且可以让兰陵王二技能大部分效果无效化。');
INSERT INTO `hero_gay` VALUES ('3', '3', '1', '5', '6', '孙膑的大招沉默效果和控制很可能使得雅典娜进场后放不出技能，从而毫无作为');

-- ----------------------------
-- Table structure for hero_list
-- ----------------------------
DROP TABLE IF EXISTS `hero_list`;
CREATE TABLE `hero_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Hero_name` varchar(255) DEFAULT NULL COMMENT '英雄名称',
  `Hero_title` varchar(255) DEFAULT NULL,
  `Hero_position` varchar(255) DEFAULT NULL COMMENT '英雄定位',
  `Hero_live` varchar(255) DEFAULT NULL COMMENT '生存能力',
  `Hero_ hurt` varchar(255) DEFAULT NULL COMMENT '攻击伤害',
  `Hero_ Skill` varchar(255) DEFAULT NULL COMMENT '技能效果',
  `Hero_difficulty` varchar(255) DEFAULT NULL COMMENT '上手难度',
  `default_face` varchar(255) DEFAULT NULL,
  `default_mode` varchar(255) DEFAULT NULL COMMENT '默认皮肤路径',
  `Hero_story` text COMMENT '英雄故事',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero_list
-- ----------------------------
INSERT INTO `hero_list` VALUES ('1', '雅典娜', '圣域余晖', '战士', '7', '6', '4', '6', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183-smallskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/183/183-bigskin-1.jpg', '无');
INSERT INTO `hero_list` VALUES ('2', '达摩', '拳僧', '战士', '7', '6', '3', '5', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134-smallskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/134/134-bigskin-1.jpg', null);
INSERT INTO `hero_list` VALUES ('3', '橘右京', '神梦一刀', '刺客', '5', '6', '5', '5', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163-smallskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/163/163-bigskin-1.jpg', null);
INSERT INTO `hero_list` VALUES ('4', '兰陵王', '暗影刀锋', '刺客', '3', '6', '3', '5', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/153/153-smallskin-1.jpg', '//game.gtimg.cn/images/yxzj/img201606/skin/hero-info/153/153-bigskin-1.jpg', null);
INSERT INTO `hero_list` VALUES ('5', '孙膑', '逆流之时', '辅助', '2', '1', '6', '5', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118-smallskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/118/118-bigskin-1.jpg', null);
INSERT INTO `hero_list` VALUES ('6', '关羽', '一骑当千', '战士', '5', '5', '5', '6', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/140/140-smallskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/140/140-bigskin-1.jpg', null);
INSERT INTO `hero_list` VALUES ('7', '雅', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for hero_model
-- ----------------------------
DROP TABLE IF EXISTS `hero_model`;
CREATE TABLE `hero_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `src` varchar(255) DEFAULT NULL COMMENT '皮肤路径',
  `Face_src` varchar(255) DEFAULT NULL,
  `face_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero_model
-- ----------------------------
INSERT INTO `hero_model` VALUES ('1', '1', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/183/183-bigskin-1.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183-smallskin-1.jpg', '圣域余晖');
INSERT INTO `hero_model` VALUES ('2', '1', 'http://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/183/183-bigskin-2.jpg', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183-smallskin-2.jpg', '战争女神');

-- ----------------------------
-- Table structure for inscription
-- ----------------------------
DROP TABLE IF EXISTS `inscription`;
CREATE TABLE `inscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `I_img` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `I_Name` varchar(255) DEFAULT NULL COMMENT '铭文名称',
  `I_content` varchar(255) DEFAULT NULL COMMENT '铭文属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inscription
-- ----------------------------
INSERT INTO `inscription` VALUES ('1', 'http://game.gtimg.cn/images/yxzj/img201606/mingwen/1504.png', '异变', '物理攻击力+2,物理穿透+3.6');
INSERT INTO `inscription` VALUES ('2', 'http://game.gtimg.cn/images/yxzj/img201606/mingwen/3514.png', '鹰眼', '物理攻击力+0.9,物理穿透+6.4');
INSERT INTO `inscription` VALUES ('3', 'http://game.gtimg.cn/images/yxzj/img201606/mingwen/2520.png', '狩猎', '攻速加成+1%,移速+1%');

-- ----------------------------
-- Table structure for skill_list
-- ----------------------------
DROP TABLE IF EXISTS `skill_list`;
CREATE TABLE `skill_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `H_id` int(11) DEFAULT NULL COMMENT '英雄id',
  `Skill_name` varchar(255) DEFAULT NULL COMMENT '技能名称',
  `Skill_content` varchar(255) DEFAULT NULL COMMENT '技能内容',
  `Skill_img` varchar(255) DEFAULT NULL COMMENT '技能图标',
  `S_Tips` varchar(255) DEFAULT NULL COMMENT '小贴士',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_list
-- ----------------------------
INSERT INTO `skill_list` VALUES ('1', '1', '真神觉醒', '被动：雅典娜死亡后在当前位置觉醒真身，以真身形态继续移动，对双方都可视；并在真身位置复活，向着雅典娜移动的友军英雄将会获得加速效果；作为造物主的古神，雅典娜对野怪/小兵造成额外25%的伤害。', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/18300.png', '雅典娜在死亡后可以充当一个移动的视野侦查，为队友提供视野，在复活时一定要选择好复活位置，以免被敌方再次击杀.');
INSERT INTO `skill_list` VALUES ('2', '1', '神圣进军', '雅典娜举盾向前，造成290/350/410/470/530/590（+63%物理加成）点法术伤害与击退，并生成一个持续1秒的护盾可抵免375/465/555/645/735/825（+82%物理加成）点伤害，护盾持续时间之内雅典娜免疫控制。', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/18310.png', '这个技能可以使雅典娜进行一个较短距离的突进，对路径上的敌人造成击退效果，能同时生成护盾抵挡伤害，如果护盾被打破，那么雅典娜会受到眩晕效果，所以需要灵活使用这个特性.');
INSERT INTO `skill_list` VALUES ('3', '1', '贯穿之枪', '雅典娜向指定方向跳跃，并使得下一次普通攻击强化为一个非常强大的枪刺，造成290/350/410/470/530/590（+145%物理加成）点物理伤害；对英雄连续的第三次枪刺将贯穿目标，造成目标已损失生命25%的物理伤害，1、3技能的护盾命中会减少2技能4秒的冷却时间', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/18320.png', '这个技能是雅典娜重要的突进技能，主动使用技能位移后使用普攻可以再次突进造成枪刺伤害，逃命时也可以使用技能进行位移逃跑哦！');
INSERT INTO `skill_list` VALUES ('4', '1', '敬畏圣盾', '雅典娜举起圣盾，产生一个巨大的护盾持续1.5秒可抵免1100/1650/2200（+150%物理加成）点伤害，护盾持续过程中免疫控制，1.5秒后圣盾碎裂对范围内敌人造成450/650/850（+150%物理加成）点法术伤害与减速效果。', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/18330.png', '这个技能产生的护盾能吸收大量的伤害，并且效果结束后造成AOE伤害；但需要注意的是，这个技能最好是配合突进技能进场后在团战混战中心释放能吸收大量伤害和大范围的减速效果.');

-- ----------------------------
-- Table structure for summoner_skill
-- ----------------------------
DROP TABLE IF EXISTS `summoner_skill`;
CREATE TABLE `summoner_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `S_img` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `S_Name` varchar(255) DEFAULT NULL COMMENT '技能名称',
  `LV` varchar(255) DEFAULT NULL COMMENT '解锁等级',
  `cont` varchar(255) DEFAULT NULL COMMENT '文字介绍',
  `con_img` varchar(255) DEFAULT NULL COMMENT '效果图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summoner_skill
-- ----------------------------
INSERT INTO `summoner_skill` VALUES ('1', 'http://game.gtimg.cn/images/yxzj/img201606/summoner/80115.jpg', '闪现', 'LV.19解锁', '120秒CD：向指定方向位移一段距离', 'http://game.gtimg.cn/images/yxzj/img201606/summoner/80115-big.jpg');
INSERT INTO `summoner_skill` VALUES ('2', 'http://game.gtimg.cn/images/yxzj/img201606/summoner/80108.jpg', '斩杀', 'LV.3解锁', '90秒CD：立即对身边敌军英雄造成其已损失生命值14%的真实伤害', 'http://game.gtimg.cn/images/yxzj/img201606/summoner/80108-big.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_nickname` varchar(30) NOT NULL DEFAULT '',
  `user_pwd` varchar(32) NOT NULL,
  `user_addtime` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1111111111111111', '1111111111111111', 'fa1d3eb08a879de9a4cd9995a1aa91e1', '2017-08-18 09:52:53');
INSERT INTO `user` VALUES ('2', '1111111111111111', '1111111111111111', 'fa1d3eb08a879de9a4cd9995a1aa91e1', '2017-08-18 10:09:54');
INSERT INTO `user` VALUES ('3', 'admin123', 'admin123', '0192023a7bbd73250516f069df18b500', '2017-08-18 10:38:17');
INSERT INTO `user` VALUES ('4', 'admin123', 'admin123', '0192023a7bbd73250516f069df18b500', '2017-08-18 10:38:25');
INSERT INTO `user` VALUES ('5', 'admin1', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '2017-08-18 10:51:34');
INSERT INTO `user` VALUES ('6', 'admin', '', 'admin', '0000-00-00 00:00:00');
