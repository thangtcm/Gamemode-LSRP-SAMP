/*
Navicat MySQL Data Transfer

Source Server         : gtasan
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : scrp

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-05 16:39:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(24) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', 'Nathaniel', 'C684F571157FCE123642D9F57FB5C68CECF7B54A53FAE46000E6D824D1DE031B13A47DAB346B5DC1E05A0FA3B77445E2329CC9E67533ECF27EF3F182A19D3DCE', '05/12/2017, 17:10', '05/01/2018, 16:38', '127.0.0.1');

-- ----------------------------
-- Table structure for arrestpoints
-- ----------------------------
DROP TABLE IF EXISTS `arrestpoints`;
CREATE TABLE `arrestpoints` (
  `arrestID` int(11) NOT NULL AUTO_INCREMENT,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL,
  PRIMARY KEY (`arrestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arrestpoints
-- ----------------------------

-- ----------------------------
-- Table structure for atm
-- ----------------------------
DROP TABLE IF EXISTS `atm`;
CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL AUTO_INCREMENT,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL,
  PRIMARY KEY (`atmID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of atm
-- ----------------------------

-- ----------------------------
-- Table structure for backpackitems
-- ----------------------------
DROP TABLE IF EXISTS `backpackitems`;
CREATE TABLE `backpackitems` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of backpackitems
-- ----------------------------

-- ----------------------------
-- Table structure for backpacks
-- ----------------------------
DROP TABLE IF EXISTS `backpacks`;
CREATE TABLE `backpacks` (
  `backpackID` int(12) NOT NULL AUTO_INCREMENT,
  `backpackPlayer` int(12) DEFAULT '0',
  `backpackX` float DEFAULT '0',
  `backpackY` float DEFAULT '0',
  `backpackZ` float DEFAULT '0',
  `backpackInterior` int(12) DEFAULT '0',
  `backpackWorld` int(12) DEFAULT '0',
  `backpackHouse` int(12) DEFAULT '0',
  `backpackVehicle` int(12) DEFAULT '0',
  PRIMARY KEY (`backpackID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of backpacks
-- ----------------------------

-- ----------------------------
-- Table structure for billboards
-- ----------------------------
DROP TABLE IF EXISTS `billboards`;
CREATE TABLE `billboards` (
  `bbID` int(12) NOT NULL AUTO_INCREMENT,
  `bbExists` int(12) DEFAULT '0',
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT '0',
  `bbPrice` int(12) NOT NULL DEFAULT '0',
  `bbRange` int(12) DEFAULT '10',
  `bbPosX` float DEFAULT '0',
  `bbPosY` float DEFAULT '0',
  `bbPosZ` float DEFAULT '0',
  `bbMessage` varchar(230) DEFAULT NULL,
  PRIMARY KEY (`bbID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of billboards
-- ----------------------------

-- ----------------------------
-- Table structure for blacklist
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist` (
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses` (
  `bizID` int(12) NOT NULL AUTO_INCREMENT,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT '0',
  `bizOwnerName` varchar(32) DEFAULT 'Chua co',
  `bizType` int(12) DEFAULT '0',
  `bizPrice` int(12) DEFAULT '0',
  `bizPosX` float DEFAULT '0',
  `bizPosY` float DEFAULT '0',
  `bizPosZ` float DEFAULT '0',
  `bizPosA` float DEFAULT '0',
  `bizIntX` float DEFAULT '0',
  `bizIntY` float DEFAULT '0',
  `bizIntZ` float DEFAULT '0',
  `bizIntA` float DEFAULT '0',
  `bizInterior` int(12) DEFAULT '0',
  `bizExterior` int(12) DEFAULT '0',
  `bizExteriorVW` int(12) DEFAULT '0',
  `bizLocked` int(4) DEFAULT '0',
  `bizVault` int(12) DEFAULT '0',
  `bizProducts` int(12) DEFAULT '0',
  `bizPrice1` int(12) DEFAULT '0',
  `bizPrice2` int(12) DEFAULT '0',
  `bizPrice3` int(12) DEFAULT '0',
  `bizPrice4` int(12) DEFAULT '0',
  `bizPrice5` int(12) DEFAULT '0',
  `bizPrice6` int(12) DEFAULT '0',
  `bizPrice7` int(12) DEFAULT '0',
  `bizPrice8` int(12) DEFAULT '0',
  `bizPrice9` int(12) DEFAULT '0',
  `bizPrice10` int(12) DEFAULT '0',
  `bizSpawnX` float DEFAULT '0',
  `bizSpawnY` float DEFAULT '0',
  `bizSpawnZ` float DEFAULT '0',
  `bizSpawnA` float DEFAULT '0',
  `bizDeliverX` float DEFAULT '0',
  `bizDeliverY` float DEFAULT '0',
  `bizDeliverZ` float DEFAULT '0',
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT '0',
  `bizPrice12` int(12) DEFAULT '0',
  `bizPrice13` int(12) DEFAULT '0',
  `bizPrice14` int(12) DEFAULT '0',
  `bizPrice15` int(12) DEFAULT '0',
  `bizPrice16` int(12) DEFAULT '0',
  `bizPrice17` int(12) DEFAULT '0',
  `bizPrice18` int(12) DEFAULT '0',
  `bizPrice19` int(12) DEFAULT '0',
  `bizPrice20` int(12) DEFAULT '0',
  `bizShipment` int(4) DEFAULT '0',
  PRIMARY KEY (`bizID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of businesses
-- ----------------------------
INSERT INTO `businesses` VALUES ('0', 'Well Stacked Pizza', '0', 'Chua co', '4', '100000', '2105.39', '-1806.48', '13.6546', '85.9679', '372.309', '-133.525', '1001.49', '181.054', '5', '0', '0', '0', '12', '216', '2', '5', '5', '10', '10', '15', '10', '0', '0', '0', '2105.39', '-1806.48', '13.6546', '85.9679', '2115.32', '-1824.68', '13.5562', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('1', 'Gas Station Idlewood', '1', 'Nathaniel Domiguez', '6', '0', '1928.58', '-1776.3', '13.6468', '87.4225', '-27.3383', '-57.6907', '1003.55', '0', '6', '0', '0', '0', '2', '98', '75', '115', '15', '90', '3', '2', '10', '90', '20', '10', '1928.58', '-1776.3', '13.6468', '87.4225', '1906.3', '-1776.26', '13.5466', '', '140', '150', '50', '40', '5', '10', '5', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('2', '24/7 Idlewood', '0', 'Chua co', '1', '100000', '2139.28', '-1742.78', '13.652', '0', '-27.3073', '-30.874', '1003.56', '0', '4', '0', '0', '0', '331', '91', '75', '125', '15', '100', '3', '2', '10', '100', '20', '10', '2139.28', '-1742.78', '13.652', '0', '2137.37', '-1727.61', '13.5402', '', '150', '200', '160', '60', '50', '5', '10', '5', '6', '13', '1');
INSERT INTO `businesses` VALUES ('3', 'Idlewood 24/7', '0', 'Chua co', '1', '100000', '1833.78', '-1842.62', '13.5781', '272.23', '-27.3073', '-30.874', '1003.56', '0', '4', '0', '0', '0', '276', '188', '75', '125', '15', '100', '3', '2', '12', '100', '20', '10', '1833.78', '-1842.62', '13.5781', '272.23', '1852.03', '-1861.66', '13.5781', '', '150', '200', '160', '60', '50', '5', '10', '5', '6', '13', '1');
INSERT INTO `businesses` VALUES ('4', 'Cua hang vu khi', '0', 'Chua co', '2', '100000', '1368.93', '-1279.77', '13.5467', '268.526', '316.396', '-169.837', '999.601', '0', '6', '0', '0', '0', '0', '100', '50', '100', '200', '400', '600', '800', '0', '0', '0', '0', '1368.93', '-1279.77', '13.5467', '268.526', '1365.25', '-1265.73', '13.5468', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('5', 'Mulholland Clothes', '0', 'Chua co', '3', '100000', '1456.5', '-1137.58', '23.9482', '40.4329', '161.48', '-96.5366', '1001.8', '0', '18', '0', '0', '0', '0', '100', '25', '15', '10', '10', '0', '0', '0', '0', '0', '0', '1456.5', '-1137.58', '23.9482', '40.4329', '1452.15', '-1150.77', '24.0209', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('6', 'Temple Burger', '0', 'Chua co', '4', '100000', '1199.3', '-918.138', '43.1228', '7.5377', '377.055', '-193.306', '1000.63', '180.184', '17', '0', '0', '0', '0', '100', '2', '5', '5', '10', '10', '15', '10', '0', '0', '0', '1199.3', '-918.138', '43.1228', '7.5377', '1179.46', '-907.974', '43.3205', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('7', 'Mulholland 24/7', '0', 'Chua co', '1', '100000', '1315.5', '-897.686', '39.5779', '359.185', '-25.9099', '-187.41', '1003.55', '178.971', '17', '0', '0', '0', '0', '100', '75', '125', '15', '100', '3', '2', '10', '100', '20', '10', '1315.5', '-897.686', '39.5779', '359.185', '1322.58', '-871.277', '39.5781', '', '150', '200', '160', '60', '50', '5', '10', '5', '6', '13', '1');
INSERT INTO `businesses` VALUES ('8', 'Temple Gas Station', '0', 'Chua co', '6', '100000', '1000.6', '-919.96', '42.3279', '280.31', '-27.3383', '-57.6907', '1003.55', '0', '6', '0', '0', '0', '0', '100', '75', '115', '15', '90', '3', '2', '10', '90', '20', '10', '1000.6', '-919.96', '42.3279', '280.31', '1013.77', '-896.672', '42.243', '', '140', '150', '50', '40', '5', '10', '5', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('9', 'Maria Burger', '0', 'Chua co', '4', '100000', '810.485', '-1616.2', '13.5467', '89.7592', '363.34', '-74.6679', '1001.51', '315', '10', '0', '0', '0', '0', '100', '2', '5', '5', '10', '10', '15', '10', '0', '0', '0', '810.485', '-1616.2', '13.5467', '89.7592', '799.317', '-1599.15', '13.5528', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `businesses` VALUES ('10', 'Rodeo Dealership', '0', 'Chua co', '5', '100000', '538.877', '-1293.12', '17.242', '171.122', '1494.56', '1304.21', '1093.29', '0', '3', '0', '0', '0', '25', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '533.349', '-1282.81', '17.242', '30.6021', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `carID` int(12) NOT NULL AUTO_INCREMENT,
  `carModel` int(12) DEFAULT '0',
  `carOwner` int(12) DEFAULT '0',
  `carPosX` float DEFAULT '0',
  `carPosY` float DEFAULT '0',
  `carPosZ` float DEFAULT '0',
  `carPosR` float DEFAULT '0',
  `carColor1` int(12) DEFAULT '0',
  `carColor2` int(12) DEFAULT '0',
  `carPaintjob` int(12) DEFAULT '-1',
  `carLocked` int(4) DEFAULT '0',
  `carSpawned` int(12) DEFAULT NULL,
  `carPlates` varchar(32) DEFAULT NULL,
  `carMod1` int(12) DEFAULT '0',
  `carMod2` int(12) DEFAULT '0',
  `carMod3` int(12) DEFAULT '0',
  `carMod4` int(12) DEFAULT '0',
  `carMod5` int(12) DEFAULT '0',
  `carMod6` int(12) DEFAULT '0',
  `carMod7` int(12) DEFAULT '0',
  `carMod8` int(12) DEFAULT '0',
  `carMod9` int(12) DEFAULT '0',
  `carMod10` int(12) DEFAULT '0',
  `carMod11` int(12) DEFAULT '0',
  `carMod12` int(12) DEFAULT '0',
  `carMod13` int(12) DEFAULT '0',
  `carMod14` int(12) DEFAULT '0',
  `carImpounded` int(12) DEFAULT '0',
  `carWeapon1` int(12) DEFAULT '0',
  `carAmmo1` int(12) DEFAULT '0',
  `carWeapon2` int(12) DEFAULT '0',
  `carAmmo2` int(12) DEFAULT '0',
  `carWeapon3` int(12) DEFAULT '0',
  `carAmmo3` int(12) DEFAULT '0',
  `carWeapon4` int(12) DEFAULT '0',
  `carAmmo4` int(12) DEFAULT '0',
  `carWeapon5` int(12) DEFAULT '0',
  `carAmmo5` int(12) DEFAULT '0',
  `carImpoundPrice` int(12) DEFAULT '0',
  `carFaction` int(12) DEFAULT '0',
  `carSiren` int(12) DEFAULT '0',
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('1', '405', '1', '1295.93', '-2062.29', '58.3985', '268.666', '20', '92', '-1', '0', '1', 'LS9999', '0', '0', '0', '0', '0', '0', '0', '1080', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cars` VALUES ('2', '400', '1', '1289.35', '-2062.17', '58.7991', '269.066', '1', '1', '-1', '0', '1', '3TGP53', '0', '0', '0', '0', '0', '0', '0', '1080', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for carstorage
-- ----------------------------
DROP TABLE IF EXISTS `carstorage`;
CREATE TABLE `carstorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carstorage
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(24) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Created` int(4) DEFAULT '0',
  `Level` int(12) DEFAULT NULL,
  `Exp` int(12) DEFAULT NULL,
  `Gender` int(4) DEFAULT '0',
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int(12) DEFAULT '0',
  `Glasses` int(12) DEFAULT '0',
  `Hat` int(12) DEFAULT '0',
  `Bandana` int(12) DEFAULT '0',
  `Vest` int(12) DEFAULT '0',
  `PosX` float DEFAULT '0',
  `PosY` float DEFAULT '0',
  `PosZ` float DEFAULT '0',
  `PosA` float DEFAULT '0',
  `Interior` int(12) DEFAULT '0',
  `World` int(12) DEFAULT '0',
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Hospital` int(12) DEFAULT '-1',
  `HospitalInt` int(12) DEFAULT '0',
  `Money` int(12) DEFAULT '0',
  `BankMoney` int(12) DEFAULT '0',
  `OwnsBillboard` int(12) DEFAULT '-1',
  `Savings` int(12) DEFAULT '0',
  `Admin` int(12) DEFAULT '0',
  `JailTime` int(12) DEFAULT '0',
  `Muted` int(4) DEFAULT '0',
  `CreateDate` int(12) DEFAULT '0',
  `LastLogin` int(12) DEFAULT '0',
  `Helper` int(4) DEFAULT '0',
  `Gun1` int(12) DEFAULT '0',
  `Gun2` int(12) DEFAULT '0',
  `Gun3` int(12) DEFAULT '0',
  `Gun4` int(12) DEFAULT '0',
  `Gun5` int(12) DEFAULT '0',
  `Gun6` int(12) DEFAULT '0',
  `Gun7` int(12) DEFAULT '0',
  `Gun8` int(12) DEFAULT '0',
  `Gun9` int(12) DEFAULT '0',
  `Gun10` int(12) DEFAULT '0',
  `Gun11` int(12) DEFAULT '0',
  `Gun12` int(12) DEFAULT '0',
  `Gun13` int(12) DEFAULT '0',
  `Ammo1` int(12) DEFAULT '0',
  `Ammo2` int(12) DEFAULT '0',
  `Ammo3` int(12) DEFAULT '0',
  `Ammo4` int(12) DEFAULT '0',
  `Ammo5` int(12) DEFAULT '0',
  `Ammo6` int(12) DEFAULT '0',
  `Ammo7` int(12) DEFAULT '0',
  `Ammo8` int(12) DEFAULT '0',
  `Ammo9` int(12) DEFAULT '0',
  `Ammo10` int(12) DEFAULT '0',
  `Ammo11` int(12) DEFAULT '0',
  `Ammo12` int(12) DEFAULT '0',
  `Ammo13` int(12) DEFAULT '0',
  `House` int(12) DEFAULT '-1',
  `Business` int(12) DEFAULT '-1',
  `Phone` int(12) DEFAULT '0',
  `Lottery` int(12) DEFAULT '0',
  `Hunger` int(12) DEFAULT '100',
  `Thirst` int(12) DEFAULT '100',
  `PlayingHours` int(12) DEFAULT '0',
  `Minutes` int(12) DEFAULT '0',
  `ArmorStatus` float DEFAULT '0',
  `Entrance` int(12) DEFAULT '0',
  `Job` int(12) DEFAULT '0',
  `Faction` int(12) DEFAULT '-1',
  `Leader` int(12) DEFAULT '-1',
  `BadgeNumber` int(12) DEFAULT '-1',
  `FactionRank` int(12) DEFAULT '0',
  `FactionDivision` int(12) DEFAULT '0',
  `Prisoned` int(4) DEFAULT '0',
  `Warrants` int(12) DEFAULT '0',
  `Injured` int(4) DEFAULT '0',
  `Dead` int(4) DEFAULT '0',
  `DeathTime` int(12) DEFAULT '0',
  `Health` float DEFAULT '0',
  `Channel` int(12) DEFAULT '0',
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT '0',
  `Warnings` int(12) DEFAULT '0',
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `ForumName` varchar(30) DEFAULT NULL,
  `Donator` int(12) NOT NULL DEFAULT '0',
  `FightStyle` int(11) NOT NULL DEFAULT '4',
  `ChatStyle` int(11) NOT NULL,
  `WalkStyle` int(11) NOT NULL,
  `PaydayID` int(12) DEFAULT '-1',
  `MaskID` int(12) DEFAULT '0',
  `MaskIDEx` int(12) DEFAULT '0',
  `FactionMod` int(12) DEFAULT '0',
  `SwatMember` int(12) DEFAULT '0',
  `Capacity` int(12) DEFAULT '35',
  `Channel2` int(12) DEFAULT '0',
  `Channel3` int(12) DEFAULT '0',
  `Channel4` int(12) DEFAULT '0',
  `AdminHide` int(4) DEFAULT '0',
  `LotteryB` int(11) NOT NULL,
  `SpawnPoint` int(11) NOT NULL,
  `Clothes1` int(12) DEFAULT '0',
  `Clothes2` int(12) DEFAULT '0',
  `Clothes3` int(12) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', 'Nathaniel', 'Nathaniel_Domiguez', '1', '3', '15', '1', '4/5/1998', 'Los Santos', '25002', '0', '0', '18912', '0', '2889.86', '-1264.37', '10.875', '169.276', '0', '0', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0432|0.0241|-0.0049|81.3750|170.6775|94.4997|1.0000|1.0000|1.0000', '-1', '-1', '5885', '126594', '-1', '100', '6', '0', '0', '1512468627', '1515145089', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '-1', '42336', '0', '95', '77', '68', '83', '0', '-1', '0', '2', '1', '58288', '17', '1', '17', '1514646316', '0', '0', '1515143132', '100', '125', null, '0', '0', '', '', 'Nathaniel', '5', '7', '7', '7', '-1', '15971', '35', '0', '0', '35', '124', '0', '0', '0', '0', '0', '1', '1', '1');
INSERT INTO `characters` VALUES ('2', 'Nathaniel', 'Steven_Leffington', '1', '2', '5', '1', '4/5/1998', 'Los Santos', '21', '0', '0', '0', '0', '2159.69', '-1704.12', '15.0859', '159.553', '0', '0', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '-1', '-1', '250', '41150', '-1', '0', '6', '0', '0', '1513331149', '1515053088', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '-1', '85899', '0', '37', '34', '11', '38', '0', '2', '2', '2', '-1', '22572', '1', '1', '1', '0', '0', '0', '1514884604', '97', '1514461152', null, '0', '0', '', '', '', '0', '4', '1', '0', '-1', '15121', '76', '0', '0', '35', '124', '0', '0', '123', '0', '0', '1', '1', '1');
INSERT INTO `characters` VALUES ('3', 'Nathaniel', 'Brittany_Robinson', '1', '0', '1', '1', '4/5/1998', 'Los Santos', '22', '0', '0', '0', '0', '1642.41', '-2322.66', '13.3828', '24.6564', '0', '0', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '-1', '-1', '250', '4115', '-1', '0', '0', '0', '0', '1513661678', '1515137218', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '-1', '0', '0', '96', '100', '1', '4', '0', '-1', '0', '2', '-1', '-1', '16', '1', '0', '0', '0', '0', '0', '100', '0', null, '0', '0', '', '', 'Null', '0', '4', '0', '0', '-1', '44770', '91', '0', '0', '35', '0', '0', '0', '0', '0', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT '0',
  `contactID` int(12) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT '0',
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for crates
-- ----------------------------
DROP TABLE IF EXISTS `crates`;
CREATE TABLE `crates` (
  `crateID` int(12) NOT NULL AUTO_INCREMENT,
  `crateType` int(12) DEFAULT '0',
  `crateX` float DEFAULT '0',
  `crateY` float DEFAULT '0',
  `crateZ` float DEFAULT '0',
  `crateA` float DEFAULT '0',
  `crateInterior` int(12) DEFAULT '0',
  `crateWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`crateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crates
-- ----------------------------

-- ----------------------------
-- Table structure for dealervehicles
-- ----------------------------
DROP TABLE IF EXISTS `dealervehicles`;
CREATE TABLE `dealervehicles` (
  `ID` int(12) DEFAULT '0',
  `vehID` int(12) NOT NULL AUTO_INCREMENT,
  `vehModel` int(12) DEFAULT '0',
  `vehPrice` int(12) DEFAULT '0',
  PRIMARY KEY (`vehID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dealervehicles
-- ----------------------------
INSERT INTO `dealervehicles` VALUES ('11', '1', '400', '1');

-- ----------------------------
-- Table structure for detectors
-- ----------------------------
DROP TABLE IF EXISTS `detectors`;
CREATE TABLE `detectors` (
  `detectorID` int(12) NOT NULL AUTO_INCREMENT,
  `detectorX` float DEFAULT '0',
  `detectorY` float DEFAULT '0',
  `detectorZ` float DEFAULT '0',
  `detectorAngle` float DEFAULT '0',
  `detectorInterior` int(12) DEFAULT '0',
  `detectorWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`detectorID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detectors
-- ----------------------------

-- ----------------------------
-- Table structure for dropped
-- ----------------------------
DROP TABLE IF EXISTS `dropped`;
CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemX` float DEFAULT '0',
  `itemY` float DEFAULT '0',
  `itemZ` float DEFAULT '0',
  `itemInt` int(12) DEFAULT '0',
  `itemWorld` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  `itemAmmo` int(12) DEFAULT '0',
  `itemWeapon` int(12) DEFAULT '0',
  `itemPlayer` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dropped
-- ----------------------------

-- ----------------------------
-- Table structure for entrances
-- ----------------------------
DROP TABLE IF EXISTS `entrances`;
CREATE TABLE `entrances` (
  `entranceID` int(12) NOT NULL AUTO_INCREMENT,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT '0',
  `entrancePosX` float DEFAULT '0',
  `entrancePosY` float DEFAULT '0',
  `entrancePosZ` float DEFAULT '0',
  `entrancePosA` float DEFAULT '0',
  `entranceIntX` float DEFAULT '0',
  `entranceIntY` float DEFAULT '0',
  `entranceIntZ` float DEFAULT '0',
  `entranceIntA` float DEFAULT '0',
  `entranceInterior` int(12) DEFAULT '0',
  `entranceExterior` int(12) DEFAULT '0',
  `entranceExteriorVW` int(12) DEFAULT '0',
  `entranceType` int(12) DEFAULT '0',
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT '0',
  `entranceCustom` int(4) DEFAULT '0',
  `entranceWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`entranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entrances
-- ----------------------------
INSERT INTO `entrances` VALUES ('1', 'CityHall', '0', '1481.01', '-1772.31', '18.7957', '180.942', '390.169', '173.807', '1008.38', '90', '3', '0', '0', '4', '', '0', '0', '7001');
INSERT INTO `entrances` VALUES ('2', 'Bank Mulholland', '0', '1461.31', '-1020.52', '24.3022', '0', '1456.19', '-987.942', '996.105', '90', '6', '0', '0', '2', '', '0', '0', '7002');
INSERT INTO `entrances` VALUES ('3', 'Bank Rodeo', '0', '595.394', '-1250.1', '18.2728', '202.182', '1456.19', '-987.942', '996.105', '90', '6', '0', '0', '2', '', '0', '0', '7003');
INSERT INTO `entrances` VALUES ('4', 'DMV', '0', '1991.7', '-1991.51', '13.5467', '268.705', '-2029.76', '-119.625', '1035.17', '180.17', '3', '0', '0', '1', '', '0', '0', '7004');
INSERT INTO `entrances` VALUES ('5', 'Governemt San Andreas', '0', '1122.76', '-2036.92', '69.9942', '89.6501', '1481.29', '-1779.45', '1815.99', '268.733', '1', '0', '0', '4', '', '0', '0', '7005');
INSERT INTO `entrances` VALUES ('6', 'Los Santos Police Department', '0', '1555.51', '-1675.67', '16.2952', '270.237', '2313.71', '746.009', '1011.17', '262.584', '1', '0', '0', '6', '', '0', '0', '7006');
INSERT INTO `entrances` VALUES ('7', 'San Andreas Sheriff Department', '0', '624.946', '-565.399', '16.254', '90.0958', '-586.083', '-671.187', '1001.09', '87.7822', '1', '0', '0', '6', '', '0', '0', '7007');
INSERT INTO `entrances` VALUES ('8', 'San Andreas Network', '0', '649.324', '-1353.91', '13.5468', '270.051', '1143.3', '833.649', '1002.94', '267.779', '1', '0', '0', '4', '', '0', '1', '7008');
INSERT INTO `entrances` VALUES ('9', 'Taxi Company', '0', '1752.5', '-1903.04', '13.563', '92.3088', '29.9957', '42.7082', '1000.09', '358.935', '1', '0', '0', '4', '', '0', '0', '7009');

-- ----------------------------
-- Table structure for factions
-- ----------------------------
DROP TABLE IF EXISTS `factions`;
CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL AUTO_INCREMENT,
  `factionName` varchar(56) DEFAULT NULL,
  `factionColor` int(12) DEFAULT '0',
  `factionType` int(12) DEFAULT '0',
  `factionRanks` int(12) DEFAULT '0',
  `factionDivisions` int(12) DEFAULT '0',
  `factionLockerX` float DEFAULT '0',
  `factionLockerY` float DEFAULT '0',
  `factionLockerZ` float DEFAULT '0',
  `factionLockerInt` int(12) DEFAULT '0',
  `factionLockerWorld` int(12) DEFAULT '0',
  `factionWeapon1` int(12) DEFAULT '0',
  `factionAmmo1` int(12) DEFAULT '0',
  `factionWeapon2` int(12) DEFAULT '0',
  `factionAmmo2` int(12) DEFAULT '0',
  `factionWeapon3` int(12) DEFAULT '0',
  `factionAmmo3` int(12) DEFAULT '0',
  `factionWeapon4` int(12) DEFAULT '0',
  `factionAmmo4` int(12) DEFAULT '0',
  `factionWeapon5` int(12) DEFAULT '0',
  `factionAmmo5` int(12) DEFAULT '0',
  `factionWeapon6` int(12) DEFAULT '0',
  `factionAmmo6` int(12) DEFAULT '0',
  `factionWeapon7` int(12) DEFAULT '0',
  `factionAmmo7` int(12) DEFAULT '0',
  `factionWeapon8` int(12) DEFAULT '0',
  `factionAmmo8` int(12) DEFAULT '0',
  `factionWeapon9` int(12) DEFAULT '0',
  `factionAmmo9` int(12) DEFAULT '0',
  `factionWeapon10` int(12) DEFAULT '0',
  `factionAmmo10` int(12) DEFAULT '0',
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionRank16` varchar(32) DEFAULT NULL,
  `factionRank17` varchar(32) DEFAULT NULL,
  `factionRank18` varchar(32) DEFAULT NULL,
  `factionRank19` varchar(32) DEFAULT NULL,
  `factionRank20` varchar(32) DEFAULT NULL,
  `factionDivision1` varchar(32) DEFAULT NULL,
  `factionDivision2` varchar(32) DEFAULT NULL,
  `factionDivision3` varchar(32) DEFAULT NULL,
  `factionDivision4` varchar(32) DEFAULT NULL,
  `factionDivision5` varchar(32) DEFAULT NULL,
  `factionDivision6` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT '0',
  `factionSkin2` int(12) DEFAULT '0',
  `factionSkin3` int(12) DEFAULT '0',
  `factionSkin4` int(12) DEFAULT '0',
  `factionSkin5` int(12) DEFAULT '0',
  `factionSkin6` int(12) DEFAULT '0',
  `factionSkin7` int(12) DEFAULT '0',
  `factionSkin8` int(12) DEFAULT '0',
  `factionSkin9` int(12) DEFAULT NULL,
  `factionSkin10` int(12) DEFAULT NULL,
  `factionSkin11` int(12) DEFAULT NULL,
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL,
  PRIMARY KEY (`factionID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of factions
-- ----------------------------
INSERT INTO `factions` VALUES ('1', 'Governemt San Andreas', '-977618246', '4', '11', '6', '1451.56', '-1768.57', '1815.99', '1', '7005', '3', '0', '17', '10', '24', '300', '30', '300', '31', '300', '41', '500', '0', '0', '0', '0', '0', '0', '0', '0', 'Intern', 'Advisor', 'Senior Advisor', 'Ambassador', 'Security Advisor', 'Attorney General', 'Secretary', 'Chief of Staff', 'Rank 9', 'Vice President', 'President', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'ADM', 'Immigration', 'Security', 'State', 'Defense', '163', '164', '165', '166', '147', '0', '0', '0', '0', '0', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('2', 'Los Santos Police Department', '-1920073729', '1', '17', '6', '2307.16', '730.128', '1013.55', '1', '7006', '3', '0', '24', '100', '25', '100', '29', '100', '30', '100', '31', '100', '34', '100', '41', '500', '0', '0', '0', '0', 'Police Officer I', 'Police Officer II', 'Police Officer III', 'Police Officer III+1', 'Police Detective I', 'Police Detective II', 'Police Detective III', 'Police Sergeant I', 'Police Sergeant II', 'Police Lieutenant I', 'Police Lieutenant II', 'Police Captain I', 'Police Captain II', 'Commander', 'Deputy Chief of Police', 'Assistant Chief of Police', 'Chief of Police', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'IA', 'SWAT', 'HSIU', 'FTO', 'DUNC', '265', '266', '267', '280', '281', '284', '285', '300', '301', '306', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('3', 'Los Santos Fire Department', '-8224256', '3', '20', '6', '-196.351', '-1748.79', '675.769', '3', '5003', '6', '0', '42', '1000', '46', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'First Responder', 'EMT', 'Paramedic', 'Senior Paramedic', 'Lead Paramedic', 'Intern', 'Resident', 'Senior Resident', 'Attending Physician', 'Chief of Medicine', 'Probationary Firefighter', 'Firefighter I', 'Firefighter II', 'Engineer', 'Lieutenant', 'Captain', 'Battalion Chief', 'Division Chief', 'Deputy Commissioner', 'Commnissioner', 'G.D', 'CMD', 'Fire Inspector', 'HR', 'FIRE', 'EMS', '70', '274', '275', '276', '277', '278', '279', '308', '0', '0', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('4', 'San Andreas Sheriff Department', '533150719', '1', '11', '6', '-605.973', '-666.327', '1001.09', '1', '7007', '3', '0', '24', '100', '25', '100', '29', '100', '30', '100', '31', '100', '34', '100', '41', '500', '0', '0', '0', '0', 'Deputy Sheriff Generalist', 'Deputy Sheriff I', 'Deputy Sheriff II', 'Corporal', 'Sergeant', 'Staff Sergeant', 'Lieutenant', 'Captain', 'Assistant Sheriff', 'Undersheriff', 'Sheriff', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'HON', 'IA', 'FTO', 'PATROL', 'K9', '282', '283', '288', '302', '309', '310', '311', '0', '0', '0', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('5', 'San Andreas Network', '393023487', '2', '10', '6', '1142.59', '850.438', '1002.37', '1', '7008', '43', '500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Probationary Intern', 'Intern', 'Field Reporter', 'Anchorman', 'Supervisor', 'Asst. Director', 'Director', 'Asst. Network Producer', 'Network Producer', 'CEO', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'Journ', 'TRA', 'BC', 'TS', 'T&R', '23', '59', '60', '65', '141', '188', '250', '289', '0', '0', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('6', 'Los Santos Taxi Company', '-7265793', '6', '10', '3', '32.1913', '32.105', '1000.09', '1', '7009', '5', '0', '22', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Trainee', 'Taxi Rookie', 'Cabbie I', 'Cabbie II', 'Cabbie III', 'Dispatcher I', 'Dispatcher II', 'Dispatcher III', 'Deputy Taxi', 'Chief of Taxi', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'HR', 'FTO', '0', '0', '0', '61', '170', '171', '172', '184', '0', '0', '0', '0', '0', null, '0', '0', '0', '0', '0');
INSERT INTO `factions` VALUES ('7', 'San Andreas Department Of Corrections', '-1197133057', '1', '10', '4', '1239.43', '-1360.46', '800.388', '5', '10000', '3', '0', '24', '100', '25', '100', '29', '100', '30', '100', '31', '100', '41', '500', '0', '0', '0', '0', '0', '0', 'Correction Officer I', 'Correction Officer II', 'Corporak', 'Sergeant', 'Master Sergeant', 'Lieutenant', 'Captain', 'Major', 'Deputy Warden', 'Warden', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Rank 16', 'Rank 17', 'Rank 18', 'Rank 19', 'Rank 20', 'G.D', 'IA', 'ADM', 'SWAT', '0', '0', '71', '309', '310', '311', '0', '0', '0', '0', '0', '0', null, '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for furniture
-- ----------------------------
DROP TABLE IF EXISTS `furniture`;
CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT '0',
  `furnitureID` int(12) NOT NULL AUTO_INCREMENT,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT '0',
  `furnitureX` float DEFAULT '0',
  `furnitureY` float DEFAULT '0',
  `furnitureZ` float DEFAULT '0',
  `furnitureRX` float DEFAULT '0',
  `furnitureRY` float DEFAULT '0',
  `furnitureRZ` float DEFAULT '0',
  `furnitureType` int(12) DEFAULT '0',
  PRIMARY KEY (`furnitureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of furniture
-- ----------------------------

-- ----------------------------
-- Table structure for garbage
-- ----------------------------
DROP TABLE IF EXISTS `garbage`;
CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL AUTO_INCREMENT,
  `garbageModel` int(12) DEFAULT '1236',
  `garbageCapacity` int(12) DEFAULT '0',
  `garbageX` float DEFAULT '0',
  `garbageY` float DEFAULT '0',
  `garbageZ` float DEFAULT '0',
  `garbageA` float DEFAULT '0',
  `garbageInterior` int(12) DEFAULT '0',
  `garbageWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`garbageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of garbage
-- ----------------------------

-- ----------------------------
-- Table structure for gates
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL AUTO_INCREMENT,
  `gateModel` int(12) DEFAULT '0',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(12) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(12) DEFAULT '0',
  `gateWorld` int(12) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(12) DEFAULT '0',
  `gateFaction` int(12) DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0',
  PRIMARY KEY (`gateID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gates
-- ----------------------------
INSERT INTO `gates` VALUES ('1', '968', '3', '0', '1544.67', '-1630.98', '13.0838', '0.9999', '90', '89.9366', '0', '0', '1544.67', '-1630.98', '13.0838', '0.9999', '0.7999', '89.9366', '-1', '2', '', '5');

-- ----------------------------
-- Table structure for gps
-- ----------------------------
DROP TABLE IF EXISTS `gps`;
CREATE TABLE `gps` (
  `ID` int(12) DEFAULT '0',
  `locationID` int(12) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT '0',
  `locationY` float DEFAULT '0',
  `locationZ` float DEFAULT '0',
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gps
-- ----------------------------

-- ----------------------------
-- Table structure for graffiti
-- ----------------------------
DROP TABLE IF EXISTS `graffiti`;
CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL AUTO_INCREMENT,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`graffitiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of graffiti
-- ----------------------------

-- ----------------------------
-- Table structure for gunracks
-- ----------------------------
DROP TABLE IF EXISTS `gunracks`;
CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL AUTO_INCREMENT,
  `rackHouse` int(12) DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int(12) DEFAULT '0',
  `rackWorld` int(12) DEFAULT '0',
  `rackWeapon1` int(12) DEFAULT '0',
  `rackAmmo1` int(12) DEFAULT '0',
  `rackWeapon2` int(12) DEFAULT '0',
  `rackAmmo2` int(12) DEFAULT '0',
  `rackWeapon3` int(12) DEFAULT '0',
  `rackAmmo3` int(12) DEFAULT '0',
  `rackWeapon4` int(12) DEFAULT '0',
  `rackAmmo4` int(12) DEFAULT '0',
  PRIMARY KEY (`rackID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gunracks
-- ----------------------------
INSERT INTO `gunracks` VALUES ('1', '1', '2257.21', '-1223.17', '1048.58', '89.9999', '10', '5001', '24', '85', '25', '100', '31', '100', '30', '100');

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL AUTO_INCREMENT,
  `houseOwner` int(12) DEFAULT '0',
  `houseOwnerName` varchar(32) DEFAULT 'Chua co',
  `housePrice` int(12) DEFAULT '0',
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT '0',
  `housePosY` float DEFAULT '0',
  `housePosZ` float DEFAULT '0',
  `housePosA` float DEFAULT '0',
  `houseIntX` float DEFAULT '0',
  `houseIntY` float DEFAULT '0',
  `houseIntZ` float DEFAULT '0',
  `houseIntA` float DEFAULT '0',
  `houseInterior` int(12) DEFAULT '0',
  `houseExterior` int(12) DEFAULT '0',
  `houseExteriorVW` int(12) DEFAULT '0',
  `houseLocked` int(4) DEFAULT '0',
  `houseWeapon1` int(12) DEFAULT '0',
  `houseAmmo1` int(12) DEFAULT '0',
  `houseWeapon2` int(12) DEFAULT '0',
  `houseAmmo2` int(12) DEFAULT '0',
  `houseWeapon3` int(12) DEFAULT '0',
  `houseAmmo3` int(12) DEFAULT '0',
  `houseWeapon4` int(12) DEFAULT '0',
  `houseAmmo4` int(12) DEFAULT '0',
  `houseWeapon5` int(12) DEFAULT '0',
  `houseAmmo5` int(12) DEFAULT '0',
  `houseWeapon6` int(12) DEFAULT '0',
  `houseAmmo6` int(12) DEFAULT '0',
  `houseWeapon7` int(12) DEFAULT '0',
  `houseAmmo7` int(12) DEFAULT '0',
  `houseWeapon8` int(12) DEFAULT '0',
  `houseAmmo8` int(12) DEFAULT '0',
  `houseWeapon9` int(12) DEFAULT '0',
  `houseAmmo9` int(12) DEFAULT '0',
  `houseWeapon10` int(12) DEFAULT '0',
  `houseAmmo10` int(12) DEFAULT '0',
  `houseMoney` int(12) DEFAULT '0',
  PRIMARY KEY (`houseID`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of houses
-- ----------------------------
INSERT INTO `houses` VALUES ('1', '1', 'Nathaniel Domiguez', '0', '2065 Campanella Park', '2157.18', '-1709.21', '15.0859', '178.895', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('2', '0', 'Chua co', '100000', '424 Echo Parque', '2095.36', '-1145.09', '26.5928', '276.9', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('3', '0', 'Chua co', '100000', '300 Echo Parque', '2092.24', '-1166.35', '26.5858', '267.187', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('4', '0', 'Chua co', '100000', '625 Dead End, El Corona', '1804.15', '-2124.9', '13.9423', '183.404', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('5', '0', 'Chua co', '100000', '732 Richman Hills', '189.637', '-1308.13', '70.2491', '94.0185', '140.309', '1366.82', '1083.86', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('6', '0', 'Chua co', '100000', '527 Cardinal Park', '2150.92', '-1419.09', '25.9218', '279.49', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('7', '0', 'Chua co', '100000', '765 Richman Hills', '253.185', '-1270.02', '74.43', '216.22', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('8', '0', 'Chua co', '100000', '162 Temple Drive', '1325.95', '-1067.66', '31.5545', '92.6201', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('9', '0', 'Chua co', '100000', '1030 Idlewood', '2067.05', '-1731.53', '14.2066', '89.8861', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('10', '0', 'Chua co', '100000', '1031 Idlewood', '2066.24', '-1717.09', '14.1363', '91.6212', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('11', '0', 'Chua co', '100000', '1032 Idlewood', '2065.1', '-1703.57', '14.1484', '95.068', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('12', '0', 'Chua co', '100000', '1033 Idlewood', '2066.74', '-1656.6', '14.1328', '89.4279', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('13', '0', 'Chua co', '100000', '1034 Idlewood', '2067.56', '-1643.71', '14.1363', '85.9812', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('14', '0', 'Chua co', '100000', '1035 Idlewood', '2067.7', '-1628.86', '14.2066', '89.4279', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('15', '0', 'Chua co', '100000', '1036 Idlewood', '2018.05', '-1629.92', '14.0424', '269.283', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('16', '0', 'Chua co', '100000', '1037 Idlewood', '2016.54', '-1641.55', '14.1127', '272.416', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('17', '0', 'Chua co', '100000', '1038 Idlewood', '2013.58', '-1656.45', '14.1363', '267.863', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('18', '0', 'Chua co', '100000', '1039 Idlewood', '2018.24', '-1703.28', '14.2341', '274.296', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('19', '0', 'Chua co', '100000', '1040 Idlewood', '2016.2', '-1716.93', '14.125', '267.716', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('20', '0', 'Chua co', '100000', '1041 Idlewood', '2015.35', '-1732.63', '14.2341', '272.103', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('21', '0', 'Chua co', '100000', 'Campanella Park.', '2139.09', '-1697.51', '15.0859', '5.4773', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('22', '0', 'Chua co', '100000', '2064 Campanella Park.', '2140.62', '-1708.31', '15.0859', '185.309', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('23', '0', 'Chua co', '100000', '2066 Campanella Park.', '2155.62', '-1698.51', '15.0859', '7.044', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('24', '0', 'Chua co', '100000', '2067 Campanella Park.', '2165.9', '-1671.22', '15.0731', '44.6441', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('25', '0', 'Chua co', '100000', 'Ganton 1', '2326.99', '-1716.7', '14.2377', '14.0402', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('26', '0', 'Chua co', '100000', 'Ganton 2', '2308.83', '-1714.33', '14.9799', '353.673', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('27', '0', 'Chua co', '100000', 'Ganton 3', '2385.41', '-1711.66', '14.2419', '7.7733', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('28', '0', 'Chua co', '100000', 'Ganton 4', '2402.61', '-1715.15', '14.1328', '359.941', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('29', '0', 'Chua co', '100000', 'Ganton 5', '2409.04', '-1674.94', '14.375', '180.108', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('30', '0', 'Chua co', '100000', 'Ganton 6', '2384.81', '-1675.84', '15.2454', '212.141', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('31', '0', 'Chua co', '100000', 'Ganton 7', '2368.22', '-1675.34', '14.1681', '186.375', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('32', '0', 'Chua co', '100000', 'Ganton 8', '2362.79', '-1643.36', '14.3079', '326.87', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('33', '0', 'Chua co', '100000', 'Ganton 9', '2393.28', '-1646.03', '13.9048', '357.143', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('34', '0', 'Chua co', '100000', 'Ganton 10', '2413.98', '-1646.79', '14.0115', '5.6034', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('36', '0', 'Chua co', '100000', 'Ganton 11', '2459.45', '-1691.66', '13.5458', '180.758', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('37', '0', 'Chua co', '100000', 'Ganton 12', '2495.2', '-1691.14', '14.7656', '183.578', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('38', '0', 'Chua co', '100000', 'Ganton 13', '2514.37', '-1691.55', '14.0459', '222.745', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('39', '0', 'Chua co', '100000', 'Ganton 14', '2523.27', '-1679.44', '15.4968', '263.166', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('40', '0', 'Chua co', '100000', 'Ganton 15', '2513.81', '-1650.34', '14.3556', '338.366', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('41', '0', 'Chua co', '100000', 'Ganton 16', '2498.65', '-1642.26', '14.1127', '4.0598', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('42', '0', 'Chua co', '100000', 'Ganton 17', '2486.51', '-1644.53', '14.0768', '358.42', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('43', '0', 'Chua co', '100000', 'Ganton 18', '2469.58', '-1646.35', '13.7798', '41.0335', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('44', '0', 'Chua co', '100000', 'Ganton 19', '2451.92', '-1641.41', '14.0662', '349.647', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('45', '0', 'Chua co', '100000', '133 Cardinal Park', '2190.72', '-1470.33', '25.9139', '87.8824', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('46', '0', 'Chua co', '100000', '1 Jefferson', '2153.83', '-1243.71', '25.367', '180', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('47', '0', 'Chua co', '100000', '2 Jefferson', '2133.4', '-1233', '24.4218', '174.385', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('48', '0', 'Chua co', '100000', '3 Jefferson', '2191.62', '-1239.23', '24.4878', '174.555', '309.227', '313.337', '1003.3', '189.641', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('49', '0', 'Chua co', '100000', '4 Jefferson', '2209.73', '-1240.25', '24.4799', '183.015', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('50', '0', 'Chua co', '100000', '5 Jefferson', '2229.61', '-1241.61', '25.6562', '180.195', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('51', '0', 'Chua co', '100000', '6 Jefferson', '2249.86', '-1238.91', '25.8983', '180.822', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('52', '0', 'Chua co', '100000', '10 Jefferson', '2307.01', '-1679.16', '14.3316', '174.808', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('53', '0', 'Chua co', '100000', '11 Jefferson', '2132.25', '-1280.05', '25.8906', '353.37', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('54', '0', 'Chua co', '100000', '12 Jefferson', '2111.31', '-1278.98', '25.8358', '4', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('55', '0', 'Chua co', '100000', '14 Jefferson', '2100.94', '-1321.89', '25.9531', '172.552', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('56', '0', 'Chua co', '100000', '16 Jefferson', '2148.48', '-1320.08', '26.0736', '177.542', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('57', '0', 'Chua co', '100000', '17 Jefferson', '2191.58', '-1275.6', '25.1562', '0.2167', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('58', '0', 'Chua co', '100000', '18 Jefferson', '2208', '-1280.82', '25.1205', '359.591', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('59', '0', 'Chua co', '100000', '19 Jefferson', '2230.17', '-1280.06', '25.6284', '2.723', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('60', '0', 'Chua co', '100000', '20 Jefferson', '2250.27', '-1280.05', '25.4764', '1.8558', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('61', '0', 'Chua co', '100000', '21 Jefferson', '2185.07', '-1363.71', '26.1597', '8.0155', '225.646', '1022.84', '1084.01', '350.817', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('62', '0', 'Chua co', '100000', '22 Jefferson', '2202.83', '-1363.67', '26.1909', '8.0155', '225.646', '1022.84', '1084.01', '350.817', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('63', '0', 'Chua co', '100000', '23 Jefferson', '2129.65', '-1361.69', '26.1361', '7.0755', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('64', '0', 'Chua co', '100000', '24 Jefferson', '2147.7', '-1366.12', '25.9722', '356.422', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('65', '0', 'Chua co', '100000', '25 Jefferson', '2151.19', '-1400.68', '26.1284', '274.642', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('66', '0', 'Chua co', '100000', '26 Cardinal', '2149.86', '-1433.76', '26.0701', '276.835', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('67', '0', 'Chua co', '100000', '27 Cardinal', '2152.22', '-1446.29', '26.1049', '275.582', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('68', '0', 'Chua co', '100000', '28 Cardinal', '2146.8', '-1470.48', '26.0424', '270.882', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('69', '0', 'Chua co', '100000', '29 Cardinal', '2148.94', '-1485', '26.6238', '266.182', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('70', '0', 'Chua co', '100000', '1 Willowfield', '2238.12', '-1906.83', '14.9375', '186.338', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('71', '0', 'Chua co', '100000', '2 Willowfield', '2261.48', '-1906.76', '14.9375', '189.784', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('72', '0', 'Chua co', '100000', '3 Willowfield', '2284.53', '-1906.6', '14.9294', '182.264', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('73', '0', 'Chua co', '100000', '4 Willowfield', '2296.74', '-1882.01', '14.2341', '1.4687', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('74', '0', 'Chua co', '100000', '5 Willowfield', '2269.28', '-1882.01', '14.2341', '2.4089', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('75', '0', 'Chua co', '100000', '6 Willowfield', '2241.89', '-1882.01', '14.2341', '356.142', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('76', '0', 'Chua co', '100000', '1 Seville Boulevard', '2637.15', '-1991.63', '14.324', '45.0227', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('77', '0', 'Chua co', '100000', '2 Seville Boulevard', '2635.75', '-2013.13', '14.1443', '150.28', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('78', '0', 'Chua co', '100000', '3 Seville Boulevard', '2650.7', '-2021.75', '14.1766', '275.615', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('79', '0', 'Chua co', '100000', '4 Seville Boulevard', '2653.01', '-1989.42', '13.9988', '0.8421', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('80', '0', 'Chua co', '100000', '5 Seville Boulevard', '2672.77', '-1989.47', '14.324', '2.4089', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('81', '0', 'Chua co', '100000', '6 Seville Boulevard', '2673.07', '-2020.29', '14.1681', '172.527', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('82', '0', 'Chua co', '100000', '7 Seville Boulevard', '2695.25', '-2020.55', '14.0221', '191.328', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('83', '0', 'Chua co', '100000', '8 Seville Boulevard', '2696.31', '-1990.36', '14.2228', '358.649', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('84', '0', 'Chua co', '100000', '9 Seville Boulevard', '2751.5', '-1962.87', '13.5466', '91.7098', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('85', '0', 'Chua co', '100000', '10 Seville Boulevard', '2751.5', '-1936.4', '13.5389', '96.0967', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('86', '0', 'Chua co', '100000', '11 Seville Boulevard', '2787.08', '-1926.12', '13.5466', '274.675', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('87', '0', 'Chua co', '100000', '12 Seville Boulevard', '2787.07', '-1952.43', '13.5466', '275.302', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('88', '0', 'Chua co', '100000', '30 Willowfield', '2522.76', '-2018.99', '14.074', '218.999', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('89', '0', 'Chua co', '100000', '31 Willowfield', '2524.17', '-1998.12', '14.1127', '349.323', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('90', '0', 'Chua co', '100000', '32 Willowfield', '2508.49', '-1998.37', '13.9025', '7.8104', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('91', '0', 'Chua co', '100000', '33 Willowfield', '2483.48', '-1995.34', '13.8343', '356.217', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('92', '0', 'Chua co', '100000', '34 Willowfield', '2465.12', '-1995.75', '14.0193', '359.35', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('93', '0', 'Chua co', '100000', '35 Willowfield', '2437.92', '-2020.85', '13.9025', '182.663', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('94', '0', 'Chua co', '100000', '36 Willowfield', '2465.53', '-2020.79', '14.1239', '186.109', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('95', '0', 'Chua co', '100000', '37 Willowfield', '2486.39', '-2021.55', '13.9988', '187.363', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('96', '0', 'Chua co', '100000', '38 Willowfield', '2507.67', '-2021.05', '14.2101', '186.736', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('97', '0', 'Chua co', '100000', 'Apartment - B1', '2275.83', '-1785.77', '13.5466', '266.19', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('98', '0', 'Chua co', '100000', 'Apartment - B2', '2247.07', '-1795.85', '13.5466', '95.4216', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('99', '0', 'Chua co', '100000', 'Apartment C1', '1179.89', '-1260.87', '15.1795', '91.7779', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('100', '0', 'Chua co', '100000', 'Apartment C2', '1187.44', '-1260.92', '15.1794', '269.416', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('101', '0', 'Chua co', '100000', 'Apartment C3', '1187.36', '-1254.73', '15.1794', '270.356', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('102', '0', 'Chua co', '100000', 'Apartment C4', '1187.36', '-1254.9', '18.8906', '237.022', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('103', '0', 'Chua co', '100000', 'Apartment C5', '1179.8', '-1254.44', '18.8906', '86.4278', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('104', '0', 'Chua co', '100000', 'Apartment C6', '1179.89', '-1260.82', '18.8983', '95.5146', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('105', '0', 'Chua co', '100000', 'Apartment C7', '1187.44', '-1261.08', '18.8983', '273.49', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('106', '0', 'Chua co', '100000', 'Apartment C8', '1179.89', '-1233.32', '22.1406', '93.6578', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('107', '0', 'Chua co', '100000', 'Apartment C9', '1187.44', '-1233.35', '22.1406', '268.79', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('108', '0', 'Chua co', '100000', 'Apartment C10', '1187.36', '-1227.3', '22.1329', '274.743', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('109', '0', 'Chua co', '100000', 'Apartment C11', '1179.81', '-1227.07', '18.5545', '93.6578', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('110', '0', 'Chua co', '100000', 'Apartment C12', '1187.36', '-1227.32', '18.5545', '265.366', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('111', '0', 'Chua co', '100000', 'Apartment C13', '1187.45', '-1233.54', '18.5545', '256.906', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('112', '0', 'Chua co', '100000', 'Apartment C14', '1179.81', '-1254.62', '15.1795', '88.6446', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('113', '0', 'Chua co', '100000', 'El Corona 1', '1870.76', '-2019.6', '13.5466', '94.7565', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('114', '0', 'Chua co', '100000', 'El Corona 2', '1870.76', '-2021.43', '13.5466', '94.7565', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('115', '0', 'Chua co', '100000', 'El Corona 3', '1895.53', '-2021.63', '13.5466', '277.408', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('116', '0', 'Chua co', '100000', 'El Corona 4', '1895.53', '-2019.4', '13.5466', '277.408', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('117', '0', 'Chua co', '100000', 'El Corona 5', '1895.48', '-2068.92', '15.6688', '179.334', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('118', '0', 'Chua co', '100000', 'El Corona 6', '1873.35', '-2070.76', '15.4968', '181.527', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('119', '0', 'Chua co', '100000', 'El Corona 7', '1851.8', '-2070.45', '15.4812', '181.214', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('120', '0', 'Chua co', '100000', 'El Corona 8', '1857.16', '-2040.85', '13.5466', '351.982', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('121', '0', 'Chua co', '100000', 'El Corona 9', '1867.87', '-1985.4', '13.5466', '0.1764', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('122', '0', 'Chua co', '100000', 'El Corona 10', '1865.72', '-1998.09', '13.5466', '170.922', '2468.26', '-1698.24', '1013.51', '90', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('123', '0', 'Chua co', '100000', 'El Corona 11', '1900.32', '-1985.39', '13.5466', '359.551', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('124', '0', 'Chua co', '100000', 'El Corona 12', '1898.34', '-1998.06', '13.5466', '177.188', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('125', '0', 'Chua co', '100000', 'El Corona 13', '1913.95', '-1993.3', '13.5466', '275.576', '295.148', '1473.11', '1080.26', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('126', '0', 'Chua co', '100000', 'El Corona 14', '1852.28', '-1990.19', '13.5466', '91.9607', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('127', '0', 'Chua co', '100000', 'El Corona 15', '1853.99', '-1914.26', '15.2566', '359.926', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('128', '0', 'Chua co', '100000', 'El Corona 16', '1872.36', '-1911.79', '15.2566', '2.1149', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('129', '0', 'Chua co', '100000', 'El Corona 17', '1891.95', '-1914.39', '15.2566', '358.355', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('130', '0', 'Chua co', '100000', 'El Corona 18', '1913.58', '-1911.9', '15.2566', '1.1749', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('131', '0', 'Chua co', '100000', 'El Corona 19', '1928.74', '-1915.9', '15.2566', '3.3682', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('132', '0', 'Chua co', '100000', 'El Corona 20', '1938.54', '-1911.45', '15.2566', '273.754', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('133', '0', 'Chua co', '100000', '210 Vinewood Hills', '1258.68', '-785.378', '92.0298', '264.674', '1260.87', '-785.61', '1091.91', '279.859', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('134', '0', 'Chua co', '100000', 'LSPD TRAIN - HOUSE', '251.431', '-1220.21', '76.1023', '29.3019', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('135', '0', 'Chua co', '100000', 'Martin Luther King Apartment 1', '2228.43', '-1150.72', '1025.8', '276.194', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('136', '0', 'Chua co', '100000', '3 Martin Luther King Jr Apartme', '2242.52', '-1170.67', '1029.8', '283.478', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('137', '0', 'Chua co', '100000', '159 Dead End, El Corona', '1684.86', '-2098.53', '13.8343', '3.6054', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('138', '0', 'Chua co', '100000', '2 Martin Luther King Apartment', '2235.46', '-1162.57', '1029.8', '179.253', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('139', '0', 'Chua co', '100000', '472 Oak Hill Road', '2408', '-1106.97', '40.2957', '183.102', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('140', '0', 'Chua co', '100000', '473 Oak Hill Road', '2457.07', '-1102.5', '43.867', '216.606', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('141', '0', 'Chua co', '100000', '474 Oak Hill Road', '2470.72', '-1105.32', '44.4878', '95.2723', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('142', '0', 'Chua co', '100000', '473 Oak Hill Road', '2438.63', '-1105.28', '42.7509', '187.212', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('143', '0', 'Chua co', '100000', '475 Oak Hill Road', '2519.02', '-1112.73', '56.5924', '86.8846', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('144', '0', 'Chua co', '100000', '476 Oak Hill Road', '2572.29', '-1091.87', '67.2257', '234.443', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('145', '0', 'Chua co', '100000', '477 Oak Hill Road', '2576.68', '-1070.79', '69.8321', '269.536', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('146', '0', 'Chua co', '100000', '4 Martin Luther King Apartment', '2238.93', '-1192.74', '1033.8', '93.3809', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('147', '0', 'Chua co', '100000', '911 Vinewood Road', '1111.5', '-976.408', '42.7653', '189.737', '2496.08', '-1692.21', '1014.74', '176.409', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('148', '0', 'Chua co', '100000', '5 Martin Luther King Apartment', '2225.39', '-1189.96', '1029.8', '175.083', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('149', '0', 'Chua co', '100000', '632 Temple Drive', '993.813', '-1059.03', '33.6995', '179.87', '2807.42', '-1174.64', '1025.57', '2.9567', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('150', '0', 'Chua co', '100000', '424 Echo parque.', '2091.56', '-1184.29', '27.0569', '352.559', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('151', '0', 'Chua co', '100000', 'Echo parque.', '2093.99', '-1122.68', '27.6898', '353.186', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('152', '0', 'Chua co', '100000', 'Jefferson St.', '2090.62', '-1235.18', '26.0191', '181.832', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('153', '0', 'Chua co', '100000', '3030 Jefferson St', '2110.88', '-1244.4', '25.8514', '176.818', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('154', '0', 'Chua co', '100000', '3020 Jefferson St', '2230.37', '-1397.24', '24.5736', '186.532', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('155', '0', 'Chua co', '100000', '3010 Jefferson St', '2243.4', '-1397.24', '24.5736', '183.085', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('156', '0', 'Chua co', '100000', '3000 Jefferson St', '2256.42', '-1397.24', '24.5736', '181.205', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('157', '0', 'Chua co', '100000', 'Room 1.', '2228.43', '-1150.49', '1025.8', '271.822', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7020', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('158', '0', 'Chua co', '100000', 'Room 2.', '2242.52', '-1170.77', '1029.8', '267.122', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7020', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('159', '0', 'Chua co', '100000', 'Red County st.', '1451.69', '375.744', '19.4004', '343.424', '301.965', '301.119', '999.148', '329.847', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('160', '0', 'Chua co', '100000', 'El Corona - Room 1', '2228.41', '-1150.43', '1025.8', '268.166', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('161', '0', 'Chua co', '100000', 'El Corona - Room 2', '2242.52', '-1170.78', '1029.8', '264.72', '244.148', '304.842', '999.148', '79.818', '1', '15', '7021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('162', '0', 'Chua co', '100000', 'El Corona - Room 3', '2225.73', '-1189.96', '1029.8', '178.961', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('163', '0', 'Chua co', '100000', 'El Corona - Room 4', '2209.65', '-1187.37', '1029.8', '11.8807', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('164', '0', 'Chua co', '100000', 'El Corona - Room 5', '2191.89', '-1173.03', '1029.8', '82.6946', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('165', '0', 'Chua co', '100000', 'El Corona - Room 6', '2193.46', '-1138.62', '1029.8', '354.647', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('166', '0', 'Chua co', '100000', 'El Corona - Room 7', '2193.25', '-1147.67', '1033.8', '174.479', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('167', '0', 'Chua co', '100000', 'Apartment 27', '2228.43', '-1150.53', '1025.8', '272.112', '295.148', '1473.11', '1080.26', '0', '15', '15', '7053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('168', '0', 'Chua co', '100000', '786 Red County Hills', '980.31', '-677.371', '121.976', '218.824', '2324.42', '-1148.94', '1050.71', '0', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('169', '0', 'Chua co', '100000', '614 Brooksdale Avenue', '2551.12', '-1233.79', '49.3316', '1.1088', '235.292', '1187.37', '1080.26', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('170', '0', 'Chua co', '100000', '613 Brooksdale Avenue', '2536.83', '-1235.61', '43.7218', '183.085', '235.292', '1187.37', '1080.26', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('171', '0', 'Chua co', '100000', '467 Brooksdale Avenue', '2434', '-1274.96', '24.7565', '88.9494', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('172', '0', 'Chua co', '100000', 'Ganton 20', '2327.49', '-1681.84', '14.9294', '91.3973', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('173', '0', 'Chua co', '100000', '290 Vinewood Hills', '1540.41', '-851.46', '64.3358', '270.75', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('174', '0', 'Chua co', '100000', '289 Vinewood Hills', '1535.03', '-800.241', '72.8494', '271.812', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('175', '0', 'Chua co', '100000', '288 Vinewood Hills', '1527.82', '-772.586', '80.5781', '321.632', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('176', '0', 'Chua co', '100000', '291 Vinewood Hills', '1535.77', '-885.294', '57.6572', '133.63', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('177', '0', 'Chua co', '100000', '292 Vinewood Hills', '1468.6', '-906.169', '54.8358', '180.944', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('178', '0', 'Chua co', '100000', '293 Vinewood Hills', '1421.8', '-886.232', '50.6861', '179.691', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('179', '0', 'Chua co', '100000', '172 Vinewood Hills', '1045.15', '-642.707', '120.117', '254.866', '1260.64', '-785.275', '1091.91', '94.529', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('180', '0', 'Chua co', '100000', '13 Jefferson', '2090.91', '-1277.83', '26.1795', '213.122', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('181', '0', 'Chua co', '100000', '15 Jefferson', '2126.76', '-1320.75', '26.624', '359.239', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('182', '0', 'Chua co', '100000', '752 Vinewood Hills', '1095.13', '-647.43', '113.648', '144.842', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('183', '0', 'Chua co', '100000', '173 Willowfield', '2333.25', '-1883.56', '15', '176.716', '2495.87', '-1693.1', '1014.74', '180', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('184', '0', 'Chua co', '100000', '895 Richman Hills', '1496.84', '-687.898', '95.5633', '2.591', '1261.47', '-785.267', '1091.91', '267.014', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('185', '0', 'Chua co', '100000', '173 Vinewood Hills ', '1331.94', '-633.231', '109.135', '202.812', '2324.42', '-1148.94', '1050.71', '0', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('186', '0', 'Chua co', '100000', '27 Jefferson', '2050.72', '-1065.77', '25.7835', '51.9308', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('187', '0', 'Chua co', '100000', '4000', '2232.48', '-1469.34', '24.5816', '1.4982', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('188', '0', 'Chua co', '100000', '4010 Seville Bvld.', '2736.65', '-1952.56', '13.5467', '275.912', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('189', '0', 'Chua co', '100000', '4020 Jefferson St', '2263.88', '-1469.34', '24.3705', '2.1484', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('190', '0', 'Chua co', '100000', '107 Burbon Street', '497.411', '-1095.07', '82.3591', '179.813', '497.405', '-1094.55', '82.3591', '180.898', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('191', '0', 'Chua co', '100000', 'East Los Santos Car Wash', '2494.14', '-1464.71', '24.0254', '186.41', '1062.15', '2077.08', '10.8203', '187.71', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('192', '0', 'Chua co', '100000', '147 Suger Hill', '1106.55', '-299.86', '74.539', '264.17', '2317.8', '-1026.21', '1050.22', '0', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('193', '0', 'Chua co', '100000', '478 Oak Hill Road', '2579.67', '-1033.45', '69.58', '359.409', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('194', '0', 'Chua co', '100000', '479 Oak Hill Road', '2561.81', '-1034.28', '69.8692', '268.855', '2233.79', '-1114.27', '1050.88', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('195', '0', 'Chua co', '100000', '480 Oak Hill Road', '2549.41', '-1032.38', '69.5789', '183.482', '2233.79', '-1114.27', '1050.88', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('196', '0', 'Chua co', '100000', '481 Oak Hill Road', '2526.79', '-1033.52', '69.5792', '352.829', '223.162', '1287.52', '1082.14', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('197', '0', 'Chua co', '100000', '482 Oak Hill Road', '2512.75', '-1027.16', '70.0858', '352.202', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('198', '0', 'Chua co', '100000', '483 Oak Hill Road', '2534.48', '-1063.39', '69.5652', '264.782', '2233.79', '-1114.27', '1050.88', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('199', '0', 'Chua co', '100000', '484 Oak Hill Road', '2526.09', '-1060.61', '69.9707', '90.5895', '2233.79', '-1114.27', '1050.88', '0', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('200', '0', 'Chua co', '100000', '485 Oak Hill Road', '2499.75', '-1065.52', '70.2359', '254.465', '223.162', '1287.52', '1082.14', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('201', '0', 'Chua co', '100000', '1 Dillimore', '743.217', '-509.318', '18.0128', '0.7634', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('202', '0', 'Chua co', '100000', '2 Dillimore', '768.311', '-503.482', '18.0128', '1.077', '223.162', '1287.52', '1082.14', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('203', '0', 'Chua co', '100000', '3 Dillimore', '795.222', '-506.15', '18.0128', '0.7634', '225.7', '1022', '1084.02', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('204', '0', 'Chua co', '100000', '4 Dillimore', '818.277', '-509.318', '18.0128', '2.6435', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('205', '0', 'Chua co', '100000', '5 Dillimore', '766.636', '-556.784', '18.0128', '179.98', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('206', '0', 'Chua co', '100000', '6 Dillimore', '745.13', '-556.785', '18.0128', '181.535', '23.9584', '1340.61', '1084.38', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('207', '0', 'Chua co', '100000', '7 Dillimore', '745.673', '-591.091', '18.0128', '268.329', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('208', '0', 'Chua co', '100000', '57 Glen Park', '2023.03', '-1120.26', '26.4209', '1.5147', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('209', '0', 'Chua co', '100000', '56 Glen Park', '2045.57', '-1116.65', '26.3617', '174.622', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('210', '0', 'Chua co', '100000', '31 El Monte', '2459.45', '-948.157', '80.0822', '351.893', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('211', '0', 'Chua co', '100000', '32 El Monte', '2454.18', '-964.925', '80.0729', '98.7406', '318.754', '1116.47', '1083.88', '348.432', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('212', '0', 'Chua co', '100000', '58 Glen Park', '1999.94', '-1114.15', '27.125', '6.1142', '223.162', '1287.52', '1082.14', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('213', '0', 'Chua co', '100000', '59 Glen Park', '1955.44', '-1115.37', '27.8304', '91.4866', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('214', '0', 'Chua co', '100000', '60 Glen Park', '1939.1', '-1114.48', '27.4521', '2.354', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('215', '0', 'Chua co', '100000', '61 Glen Park', '1921.56', '-1115.1', '27.0883', '93.3666', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('216', '0', 'Chua co', '100000', '62 Glen Park', '1905.93', '-1113.1', '26.6639', '1.559', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('217', '0', 'Chua co', '100000', '63 Glen Park', '1886.15', '-1113.8', '26.2758', '89.9197', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('218', '0', 'Chua co', '100000', '64 Glen Park', '2035.81', '-1059.33', '25.6508', '58.5828', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('219', '0', 'Chua co', '100000', '1 Normandy Projects', '2468.45', '-1409.83', '28.8335', '177.269', '222.042', '1140.76', '1082.61', '0', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('220', '0', 'Chua co', '100000', '2 Normandy Projects', '2473.11', '-1410.01', '28.8337', '180.088', '22.9675', '1403.84', '1084.43', '0', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('221', '0', 'Chua co', '100000', '3 Normandy Projects', '2476.28', '-1410.02', '28.8337', '180.088', '222.042', '1140.76', '1082.61', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('222', '0', 'Chua co', '100000', '4 Normandy Projects', '2468.28', '-1399.11', '28.8281', '1.1741', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('223', '0', 'Chua co', '100000', '5 Normandy Projects', '2473.1', '-1399.07', '28.8339', '0.5475', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('224', '0', 'Chua co', '100000', '6 Normandy Projects', '2476.31', '-1399.09', '28.8346', '0.5475', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('225', '0', 'Chua co', '100000', '7 Normandy Projects', '2487.39', '-1399.1', '28.8374', '1.5104', '235.292', '1187.37', '1080.26', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('226', '0', 'Chua co', '100000', '8 Normandy Projects', '2492.25', '-1399.09', '28.8386', '359.944', '222.042', '1140.76', '1082.61', '0', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('227', '0', 'Chua co', '100000', '9 Normandy Projects', '2495.42', '-1399.08', '28.8393', '358.064', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('228', '0', 'Chua co', '100000', '10 Normandy Projects', '2495.37', '-1410.03', '28.8393', '177.896', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('229', '0', 'Chua co', '100000', '11 Normandy Projects', '2492.12', '-1410.04', '28.8386', '180.088', '2495.87', '-1693.1', '1014.74', '180', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('230', '0', 'Chua co', '100000', '12 Normandy Projects', '2487.32', '-1410.03', '28.8374', '179.776', '295.148', '1473.11', '1080.26', '0', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('231', '0', 'Chua co', '100000', '747 East Beach, Jacksonville', '2808.08', '-1175.92', '25.3801', '359.154', '2495.87', '-1693.1', '1014.74', '180', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('232', '0', 'Chua co', '100000', '746 East Beach, Jacksonville', '2808.06', '-1190.79', '25.3418', '180.793', '2495.87', '-1693.1', '1014.74', '180', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('233', '0', 'Chua co', '100000', '420 Idlewood Avenue', '1980.38', '-1719.04', '17.0303', '77.1138', '140.309', '1366.82', '1083.86', '0', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('234', '0', 'Chua co', '100000', '33 El Monte', '2472.3', '-962.44', '80.5252', '358.559', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('235', '0', 'Chua co', '100000', '468 Brooksdale Avenue', '2434.8', '-1289.36', '25.3477', '82.2798', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('236', '0', 'Chua co', '100000', '469 Brooksdale Avenue', '2434.25', '-1303.4', '24.9764', '87.2826', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('237', '0', 'Chua co', '100000', '170 Brooksdale Avenue', '2434.42', '-1320.64', '24.9337', '96.6595', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('238', '0', 'Chua co', '100000', '171 Brooksdale Avenue', '2439.94', '-1338.37', '24.1079', '176.247', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('239', '0', 'Chua co', '100000', '172 Brooksdale Avenue', '2439.94', '-1357.02', '24.1002', '89.0669', '318.708', '1115.47', '1083.88', '6.339', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('240', '0', 'Chua co', '100000', '164 Temple Drive', '1326.26', '-1090.75', '27.9765', '92.0129', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('241', '0', 'Chua co', '100000', '1 Brooksdale Avenue', '2594.82', '-1200.03', '59.2187', '88.3675', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('242', '0', 'Chua co', '100000', '2 Brooksdale Avenue', '2594.89', '-1203.07', '58.4375', '88.1104', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('243', '0', 'Chua co', '100000', '3 Brooksdale Avenue', '2594.8', '-1207.59', '57.5078', '86.5999', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('244', '0', 'Chua co', '100000', '4 Brooksdale Avenue', '2594.95', '-1211.89', '56.375', '89.4761', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('245', '0', 'Chua co', '100000', '5 Brooksdale Avenue', '2594.83', '-1216.26', '54.9765', '87.6523', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('246', '0', 'Chua co', '100000', '6 Brooksdale Avenue', '2594.96', '-1220.63', '53.6693', '85.8847', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('247', '0', 'Chua co', '100000', '7 Brooksdale Avenue', '2595.03', '-1224.64', '52.3763', '88.4476', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('248', '0', 'Chua co', '100000', '8 Brooksdale Avenue', '2594.76', '-1229.18', '51.0468', '93.1476', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('249', '0', 'Chua co', '100000', '9 Brooksdale Avenue', '2595.12', '-1233.49', '49.8203', '92.2638', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('250', '0', 'Chua co', '100000', '10 Brooksdale Avenue', '2594.7', '-1237.98', '48.4218', '91.9505', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('251', '0', 'Chua co', '100000', '11 Brooksdale Avenue', '2600.9', '-1238.14', '48.6836', '273.059', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('252', '0', 'Chua co', '100000', '12 Brooksdale Avenue', '2600.71', '-1233.47', '49.8203', '267.788', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('253', '0', 'Chua co', '100000', '13 Brooksdale Avenue', '2600.47', '-1229.22', '51.0468', '273.485', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('254', '0', 'Chua co', '100000', '14 Brooksdale Avenue', '2600.81', '-1224.69', '52.341', '272.858', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('255', '0', 'Chua co', '100000', '15 Brooksdale Avenue', '2600.67', '-1220.61', '53.6372', '273.798', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('256', '0', 'Chua co', '100000', '16 Brooksdale Avenue', '2600.38', '-1216.36', '54.9765', '271.604', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('257', '0', 'Chua co', '100000', '17 Brooksdale Avenue', '2600.89', '-1211.74', '56.6269', '269.467', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('258', '0', 'Chua co', '100000', '18 Brooksdale Avenue', '2600.71', '-1207.67', '57.5078', '274.481', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('259', '0', 'Chua co', '100000', '19 Brooksdale Avenue', '2600.58', '-1203.06', '58.4375', '268.27', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('260', '0', 'Chua co', '100000', '20 Brooksdale Avenue', '2600.83', '-1200.14', '59.2187', '268.013', '2269.88', '-1210.32', '1047.56', '90', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('261', '0', 'Chua co', '100000', 'Apartment 290', '2240.05', '-1170.63', '1029.8', '91.0041', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('262', '0', 'Chua co', '100000', 'Apartment 291', '2242.36', '-1170.67', '1029.8', '271.237', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('263', '0', 'Chua co', '100000', 'Apartment 289', '2239.89', '-1159.66', '1029.8', '95.564', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('264', '0', 'Chua co', '100000', 'Apartment 288', '2242.57', '-1159.86', '1029.8', '271.949', '2269.88', '-1210.32', '1047.56', '90', '10', '15', '7053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('265', '0', 'Chua co', '100000', '633 Dead End, El Corona', '1801.86', '-2099.41', '14.021', '352.112', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('266', '0', 'Chua co', '100000', '634 Dead End, El Corona', '1782.15', '-2126.17', '14.0678', '181.826', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('267', '0', 'Chua co', '100000', '636 Dead End, El Corona', '1761.19', '-2125.43', '14.0566', '180.572', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('268', '0', 'Chua co', '100000', '638 Dead End, El Corona', '1734.75', '-2130.19', '14.021', '178.547', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('269', '0', 'Chua co', '100000', '640 Dead End, El Corona', '1715.09', '-2125.15', '14.0566', '181.849', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('270', '0', 'Chua co', '100000', '642 Dead End, El Corona', '1695.56', '-2125.69', '13.81', '178.571', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `houses` VALUES ('271', '0', 'Chua co', '100000', '644 Dead End, El Corona', '1673.74', '-2122.34', '14.146', '133.619', '226.291', '1240.06', '1082.14', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for housestorage
-- ----------------------------
DROP TABLE IF EXISTS `housestorage`;
CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of housestorage
-- ----------------------------

-- ----------------------------
-- Table structure for impoundlots
-- ----------------------------
DROP TABLE IF EXISTS `impoundlots`;
CREATE TABLE `impoundlots` (
  `impoundID` int(12) NOT NULL AUTO_INCREMENT,
  `impoundLotX` float DEFAULT '0',
  `impoundLotY` float DEFAULT '0',
  `impoundLotZ` float DEFAULT '0',
  `impoundReleaseX` float DEFAULT '0',
  `impoundReleaseY` float DEFAULT '0',
  `impoundReleaseZ` float DEFAULT '0',
  `impoundReleaseInt` int(12) DEFAULT '0',
  `impoundReleaseWorld` int(12) DEFAULT '0',
  `impoundReleaseA` float DEFAULT '0',
  PRIMARY KEY (`impoundID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of impoundlots
-- ----------------------------
INSERT INTO `impoundlots` VALUES ('1', '2890.64', '-1263.47', '10.875', '2891.87', '-1259.97', '10.875', '0', '0', '104.793');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT '0',
  `invID` int(12) NOT NULL AUTO_INCREMENT,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT '0',
  `invQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`invID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('1', '3', 'The ngan hang', '1581', '1');
INSERT INTO `inventory` VALUES ('1', '5', 'Bang lai xe oto', '1581', '1');
INSERT INTO `inventory` VALUES ('1', '6', 'GPS', '18875', '1');
INSERT INTO `inventory` VALUES ('1', '7', 'Dien thoai', '330', '1');
INSERT INTO `inventory` VALUES ('3', '12', 'Mask', '19036', '1');
INSERT INTO `inventory` VALUES ('1', '13', 'Radio', '18868', '1');
INSERT INTO `inventory` VALUES ('4', '16', 'Radio', '18868', '1');
INSERT INTO `inventory` VALUES ('1', '18', 'Burger chua chin', '2768', '1');
INSERT INTO `inventory` VALUES ('2', '19', 'Dien thoai', '330', '1');
INSERT INTO `inventory` VALUES ('1', '21', 'Nuoc rong', '1484', '1');
INSERT INTO `inventory` VALUES ('1', '23', 'Bat lua', '19998', '1');
INSERT INTO `inventory` VALUES ('1', '24', 'Soda', '1543', '2');
INSERT INTO `inventory` VALUES ('1', '25', 'Tua vit', '18644', '1');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `jobID` int(12) NOT NULL AUTO_INCREMENT,
  `jobPosX` float DEFAULT '0',
  `jobPosY` float DEFAULT '0',
  `jobPosZ` float DEFAULT '0',
  `jobPointX` float DEFAULT '0',
  `jobPointY` float DEFAULT '0',
  `jobPointZ` float DEFAULT '0',
  `jobDeliverX` float DEFAULT '0',
  `jobDeliverY` float DEFAULT '0',
  `jobDeliverZ` float DEFAULT '0',
  `jobInterior` int(12) DEFAULT '0',
  `jobWorld` int(12) DEFAULT '0',
  `jobType` int(12) DEFAULT '0',
  `jobPointInt` int(12) DEFAULT '0',
  `jobPointWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', '2432.63', '-2123.35', '13.5468', '2460.88', '-2118.31', '13.5529', '2459.85', '-2113.59', '13.5468', '0', '0', '1', '0', '0');
INSERT INTO `jobs` VALUES ('2', '252.542', '27.0282', '2.4596', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `jobs` VALUES ('3', '1742.98', '-1864.46', '13.5738', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `jobs` VALUES ('4', '2165.81', '-2271.47', '13.3459', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `jobs` VALUES ('5', '265.923', '2891.8', '10.6491', '263.444', '2972.36', '10.5482', '263.79', '3001.2', '11.4355', '0', '0', '5', '0', '0');

-- ----------------------------
-- Table structure for namechanges
-- ----------------------------
DROP TABLE IF EXISTS `namechanges`;
CREATE TABLE `namechanges` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of namechanges
-- ----------------------------

-- ----------------------------
-- Table structure for plants
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants` (
  `plantID` int(12) NOT NULL AUTO_INCREMENT,
  `plantType` int(12) DEFAULT '0',
  `plantDrugs` int(12) DEFAULT '0',
  `plantX` float DEFAULT '0',
  `plantY` float DEFAULT '0',
  `plantZ` float DEFAULT '0',
  `plantA` float DEFAULT '0',
  `plantInterior` int(12) DEFAULT '0',
  `plantWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`plantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of plants
-- ----------------------------

-- ----------------------------
-- Table structure for pumps
-- ----------------------------
DROP TABLE IF EXISTS `pumps`;
CREATE TABLE `pumps` (
  `ID` int(12) DEFAULT '0',
  `pumpID` int(12) NOT NULL AUTO_INCREMENT,
  `pumpPosX` float DEFAULT '0',
  `pumpPosY` float DEFAULT '0',
  `pumpPosZ` float DEFAULT '0',
  `pumpPosA` float DEFAULT '0',
  `pumpFuel` int(12) DEFAULT '0',
  PRIMARY KEY (`pumpID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pumps
-- ----------------------------
INSERT INTO `pumps` VALUES ('2', '1', '1941.64', '-1778.61', '14.1506', '-91.3512', '2000');
INSERT INTO `pumps` VALUES ('2', '2', '1941.59', '-1774.17', '14.1506', '-89.1763', '2000');
INSERT INTO `pumps` VALUES ('2', '3', '1941.7', '-1771.57', '14.1506', '89.8436', '2000');
INSERT INTO `pumps` VALUES ('2', '4', '1941.83', '-1767.15', '14.1506', '-92.4832', '2000');
INSERT INTO `pumps` VALUES ('9', '5', '1009.57', '-936.079', '42.8181', '-171.175', '2000');
INSERT INTO `pumps` VALUES ('9', '6', '1005.26', '-936.627', '42.8281', '186.959', '2000');
INSERT INTO `pumps` VALUES ('9', '7', '1002.66', '-937.107', '42.8281', '189.634', '2000');
INSERT INTO `pumps` VALUES ('9', '8', '998.237', '-937.833', '42.8281', '189.321', '2000');

-- ----------------------------
-- Table structure for speedcameras
-- ----------------------------
DROP TABLE IF EXISTS `speedcameras`;
CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL AUTO_INCREMENT,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0',
  PRIMARY KEY (`speedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of speedcameras
-- ----------------------------

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT '0',
  `ticketID` int(12) NOT NULL AUTO_INCREMENT,
  `ticketFee` int(12) DEFAULT '0',
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL AUTO_INCREMENT,
  `vendorType` int(12) DEFAULT '0',
  `vendorX` float DEFAULT '0',
  `vendorY` float DEFAULT '0',
  `vendorZ` float DEFAULT '0',
  `vendorA` float DEFAULT '0',
  `vendorInterior` int(12) DEFAULT '0',
  `vendorWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vendors
-- ----------------------------

-- ----------------------------
-- Table structure for warrants
-- ----------------------------
DROP TABLE IF EXISTS `warrants`;
CREATE TABLE `warrants` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of warrants
-- ----------------------------
