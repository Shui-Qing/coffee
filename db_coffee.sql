/*
 Navicat MySQL Data Transfer

 Source Server         : MySQL5.5
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : db_coffee

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 30/10/2020 10:05:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmNum` int(11) NULL DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述信息',
  `type` int(11) NULL DEFAULT NULL,
  `zk` int(10) NULL DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) NULL DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) NULL DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) NULL DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (27, '福满粟香玛奇朵(热/冰/星冰乐)', '32.00', 5, '\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '中杯', 70, 9, 50, 51, 0);
INSERT INTO `item` VALUES (28, '如意桃花红茶拿铁(热/冰)', '31.00', 4, '\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpeg', '\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg', '\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg', '\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg', '\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg', '中杯', 70, 9, 50, 52, 0);
INSERT INTO `item` VALUES (29, '焦糖玛奇朵', '31.00', 3, '\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg', '\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg', '\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg', '\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '中杯', 70, 8, 60, 61, 0);
INSERT INTO `item` VALUES (30, '香草拿铁', '30.00', 2, '\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpeg', '\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '中杯', 71, 9, 60, 62, 0);
INSERT INTO `item` VALUES (31, '拿铁', '27.00', 1, '\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg', '\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg', '\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '中杯', 71, 7, 60, 63, 0);
INSERT INTO `item` VALUES (32, '卡布奇诺', '27.00', 2, '\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg', '\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg', '\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg', '\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg', '中杯', 72, 9, 60, 64, 0);
INSERT INTO `item` VALUES (33, '摩卡', '30.00', 3, '\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '中杯', 72, 9, 60, 65, 0);
INSERT INTO `item` VALUES (34, '密斯朵咖啡', '20.00', 4, '\\upload\\012eb0202c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\upload\\012f25502c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\012fc1902c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\upload\\013036c02c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\upload\\0130abf02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '中杯', 73, 9, 60, 66, 0);
INSERT INTO `item` VALUES (35, '英式红茶拿铁', '27.00', 5, '\\upload\\4152abc02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\41536f102c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\upload\\41540b502c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\415459702c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\upload\\4154cea02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '中杯', 73, 9, 70, 71, 0);
INSERT INTO `item` VALUES (36, '抹茶拿铁', '30.00', 4, '\\upload\\88b583202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\upload\\88b5f8502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\upload\\88b66d802c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\upload\\88b6e2b02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\upload\\88b77ef02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '中杯', 73, 5, 70, 71, 0);
INSERT INTO `item` VALUES (37, '热巧克力', '27.00', 1, '\\upload\\reqiaokeli.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 70, 73, 0);
INSERT INTO `item` VALUES (38, '冰焦糖玛奇朵', '31.00', 2, '\\upload\\bingjiaotangmaqiduo.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (39, '冰香草拿铁', '30.00', 3, '\\upload\\88b583202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 77, 0);
INSERT INTO `item` VALUES (40, '冰拿铁', '27.00', 4, '\\upload\\bingnatie.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 78, 0);
INSERT INTO `item` VALUES (41, '冰卡布奇诺', '27.00', 1, '\\upload\\bingdekabuqinuo.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 79, 0);
INSERT INTO `item` VALUES (42, '冰摩卡', '30.00', 2, '\\upload\\bingmoka.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 80, 0);
INSERT INTO `item` VALUES (43, '冰美式咖啡', '22.00', 3, '\\upload\\bingmeishikafei.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 81, 0);
INSERT INTO `item` VALUES (44, '冰摇红莓黑加仑茶', '24.00', 4, '\\upload\\bingyaomei.jpeg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 82, 0);
INSERT INTO `item` VALUES (45, '冰摇芒果木槿花茶', '24.00', 3, '\\upload\\mangguomujinhua.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 75, 83, 0);
INSERT INTO `item` VALUES (46, '浓缩咖啡星冰乐', '30.00', 2, '\\upload\\nongsuokafeixingbingle.jpeg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 85, 88, 0);
INSERT INTO `item` VALUES (47, '咖啡星冰乐', '26.00', 1, '\\upload\\kafeixingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 85, 91, 0);
INSERT INTO `item` VALUES (48, '摩卡星冰乐', '30.00', 2, '\\upload\\mokaxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 85, 92, 0);
INSERT INTO `item` VALUES (49, '焦糖咖啡星冰乐', '30.00', 3, '\\upload\\jiaotangxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 85, 93, 0);
INSERT INTO `item` VALUES (50, '特浓焦糖咖啡星冰乐', '33.00', 4, '\\upload\\tenongjiaotangxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 85, 94, 0);
INSERT INTO `item` VALUES (51, '香草星冰乐', '28.00', 3, '\\upload\\mochaxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 86, 89, 0);
INSERT INTO `item` VALUES (52, '巧克力星冰乐', '28.00', 2, '\\upload\\qiaokelixingbinglele.png', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 86, 95, 0);
INSERT INTO `item` VALUES (53, '抹茶星冰乐', '30.00', 1, '\\upload\\xiangcaoxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 86, 96, 0);
INSERT INTO `item` VALUES (54, '焦糖星冰乐', '30.00', 4, '\\upload\\jiaotangxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 86, 97, 0);
INSERT INTO `item` VALUES (55, '可可碎片星冰乐', '32.00', 2, '\\upload\\kekesuipianxingbingle.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 86, 98, 0);
INSERT INTO `item` VALUES (56, '芒果西番莲果茶星冰乐', '28.00', 3, '\\upload\\mangguoxifanlian.jpg', NULL, NULL, NULL, NULL, '中杯', NULL, 9, 87, 90, 0);

-- ----------------------------
-- Table structure for item_category
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号，自增',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类目名称',
  `pid` int(11) NULL DEFAULT NULL COMMENT '一级类目',
  `isDelete` int(1) NULL DEFAULT NULL COMMENT '删除标志位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES (50, '新春特饮', NULL, 0);
INSERT INTO `item_category` VALUES (51, '福满粟香玛奇朵(热/冰/星冰乐)', 50, 0);
INSERT INTO `item_category` VALUES (52, '如意桃花红茶拿铁(热/冰)', 50, 0);
INSERT INTO `item_category` VALUES (60, '经典咖啡', NULL, 0);
INSERT INTO `item_category` VALUES (61, '焦糖玛奇朵', 60, 0);
INSERT INTO `item_category` VALUES (62, '香草拿铁', 60, 0);
INSERT INTO `item_category` VALUES (63, '拿铁', 60, 0);
INSERT INTO `item_category` VALUES (64, '卡布奇诺', 60, 0);
INSERT INTO `item_category` VALUES (65, '摩卡', 60, 0);
INSERT INTO `item_category` VALUES (66, '密斯朵咖啡', 60, 0);
INSERT INTO `item_category` VALUES (70, '茶饮（热）', NULL, 0);
INSERT INTO `item_category` VALUES (71, '英式红茶拿铁', 70, 0);
INSERT INTO `item_category` VALUES (72, '抹茶拿铁', 70, 0);
INSERT INTO `item_category` VALUES (73, '热巧克力', 70, 0);
INSERT INTO `item_category` VALUES (75, '冰饮系列', NULL, 0);
INSERT INTO `item_category` VALUES (76, '冰焦糖玛奇朵', 75, 0);
INSERT INTO `item_category` VALUES (77, '冰香草拿铁', 75, 0);
INSERT INTO `item_category` VALUES (78, '冰拿铁', 75, 0);
INSERT INTO `item_category` VALUES (79, '冰卡布奇诺', 75, 0);
INSERT INTO `item_category` VALUES (80, '冰摩卡', 75, 0);
INSERT INTO `item_category` VALUES (81, '冰美式咖啡', 75, 0);
INSERT INTO `item_category` VALUES (82, '冰摇红莓黑加仑茶', 75, 0);
INSERT INTO `item_category` VALUES (83, '冰摇芒果木槿花茶', 75, 0);
INSERT INTO `item_category` VALUES (85, '星冰乐咖啡', NULL, 0);
INSERT INTO `item_category` VALUES (86, '星冰乐无咖啡', NULL, 0);
INSERT INTO `item_category` VALUES (87, '星冰乐果茶', NULL, 0);
INSERT INTO `item_category` VALUES (88, '浓缩咖啡星冰乐', 85, 0);
INSERT INTO `item_category` VALUES (89, '香草星冰乐', 86, 0);
INSERT INTO `item_category` VALUES (90, '芒果西番莲果茶星冰乐', 87, 0);
INSERT INTO `item_category` VALUES (91, '咖啡星冰乐', 85, 0);
INSERT INTO `item_category` VALUES (92, '摩卡星冰乐', 85, 0);
INSERT INTO `item_category` VALUES (93, '焦糖咖啡星冰乐', 85, 0);
INSERT INTO `item_category` VALUES (94, '特浓焦糖咖啡星冰乐', 85, 0);
INSERT INTO `item_category` VALUES (95, '巧克力星冰乐', 86, 0);
INSERT INTO `item_category` VALUES (96, '抹茶星冰乐', 86, 0);
INSERT INTO `item_category` VALUES (97, '焦糖星冰乐', 86, 0);
INSERT INTO `item_category` VALUES (98, '可可碎片星冰乐', 86, 0);

-- ----------------------------
-- Table structure for item_order
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES (27, NULL, 3, '2018032017080001', '2018-03-20 17:08:56', '54.9', 0, 3);
INSERT INTO `item_order` VALUES (28, NULL, 3, '2018032017380001', '2018-03-20 17:38:52', '653.59', 0, 3);
INSERT INTO `item_order` VALUES (29, NULL, 3, '2018032017390001', '2018-03-20 17:39:28', '976.5', 0, 3);
INSERT INTO `item_order` VALUES (30, NULL, 3, '2018032019220001', '2018-03-20 19:22:25', '364.5', 0, 3);
INSERT INTO `item_order` VALUES (31, NULL, 3, '2018032019310001', '2018-03-20 19:31:23', '359.15999999999997', 0, 1);
INSERT INTO `item_order` VALUES (32, NULL, 3, '2018032019310002', '2018-03-20 19:31:50', '59.86', 0, 3);
INSERT INTO `item_order` VALUES (33, NULL, 2, '2018032019310003', '2020-10-07 19:10:49', '42.86', 0, 1);
INSERT INTO `item_order` VALUES (34, NULL, 6, '2020035256566536', '2020-09-30 10:54:38', '48.35', 0, 0);
INSERT INTO `item_order` VALUES (35, NULL, 12, '5365663355633663', '2020-10-05 10:55:12', '94.50', 0, 2);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长，ID',
  `userName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (1, 'admin', '123456', '土豆');
INSERT INTO `manage` VALUES (2, 'admin01', '555555', '二哈');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (54, 27, 27, 0, 1, '1');
INSERT INTO `order_detail` VALUES (55, 32, 28, 0, 5, '25');
INSERT INTO `order_detail` VALUES (56, 27, 28, 0, 3, '9');
INSERT INTO `order_detail` VALUES (57, 28, 28, 0, 1, '1');
INSERT INTO `order_detail` VALUES (58, 35, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (59, 34, 29, 0, 4, '16');
INSERT INTO `order_detail` VALUES (60, 32, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (61, 36, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (62, 32, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (63, 35, 30, 0, 6, '36');
INSERT INTO `order_detail` VALUES (64, 30, 30, 0, 3, '9');
INSERT INTO `order_detail` VALUES (65, 28, 31, 0, 4, '16');
INSERT INTO `order_detail` VALUES (66, 28, 31, 0, 2, '4');
INSERT INTO `order_detail` VALUES (67, 28, 32, 0, 1, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `userName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `realName` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住址',
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '2', '3', '4', '1', '3', '22');
INSERT INTO `user` VALUES (2, 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'zs', '111111', '12345678933', '测试33', '女', '这里是', '1133');
INSERT INTO `user` VALUES (4, '张华志', '567', '45', '花花', '男', NULL, '333@qq.com');
INSERT INTO `user` VALUES (5, 'yangjichao', 'cchhaaoo', '17861515525', '杨吉超', '女', NULL, '无');
INSERT INTO `user` VALUES (6, 'huang1', '123456', '18888888', '杨吉超', '女', '无', NULL);
INSERT INTO `user` VALUES (7, 'huang1', '123456', '18888888', '杨吉超', '女', NULL, NULL);
INSERT INTO `user` VALUES (8, '1111112', '11', '11', '杨吉超', '女', NULL, '111@qq.com');
INSERT INTO `user` VALUES (9, '562', '123', '136', '杨吉超', '女', '无', NULL);
INSERT INTO `user` VALUES (10, '3536', '132', '136', '杨吉超', '女', NULL, NULL);
INSERT INTO `user` VALUES (11, '7584', '1321', '136', '杨吉超', '女', NULL, '111@qq.com');
INSERT INTO `user` VALUES (12, '96', '13231', '136', '杨吉超', '女', '无', NULL);
INSERT INTO `user` VALUES (13, '462', '132312', '136', '杨吉超', '女', NULL, '111@qq.com');
INSERT INTO `user` VALUES (14, '4626', '12321', '136', '杨吉超', '女', NULL, NULL);
INSERT INTO `user` VALUES (15, '745', '132312', '135', '杨吉超', '女', '无', NULL);
INSERT INTO `user` VALUES (16, '955', '132312', '135', '杨吉超', '女', NULL, '111@qq.com');
INSERT INTO `user` VALUES (17, '415', '232312', '136', '杨吉超', '女', NULL, NULL);
INSERT INTO `user` VALUES (18, '852', '232312', '137', '杨吉超', '女', '无', NULL);
INSERT INTO `user` VALUES (19, '952', '13231', '139', '杨吉超', '女', NULL, '111@qq.com');
INSERT INTO `user` VALUES (20, '4552', '132321', '130', '杨吉超', '女', NULL, NULL);
INSERT INTO `user` VALUES (21, '21553', '13232', '178', '杨吉超', '女', '无', '111@qq.com');
INSERT INTO `user` VALUES (22, 'lixiaoya', 'lixiaoya123', NULL, '李肖亚', NULL, NULL, '1234567890@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
