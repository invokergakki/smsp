/*
Navicat MySQL Data Transfer

Source Server         : 10.5.5.225(MySQL)
Source Server Version : 50633
Source Host           : 10.5.5.225:3306
Source Database       : smsp

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2019-09-23 11:35:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_monitor_get
-- ----------------------------
DROP TABLE IF EXISTS `data_monitor_get`;
CREATE TABLE `data_monitor_get` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtCookie` varchar(512) NOT NULL,
  `bwstate` varchar(50) DEFAULT NULL,
  `unique` varchar(255) DEFAULT NULL,
  `flavor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_monitor_get
-- ----------------------------
INSERT INTO `data_monitor_get` VALUES ('7', 'JPJSR2I4I489U8IABEUHEUTUJ58E9UJ1', '0', '1559547013255', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('8', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', '0', '1559548549407', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('9', 'D21Q4L1CGSF7PLM5BVJQJAB9PMRL6CQ9', '0', '1559548909391', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('10', '9NH4V7KNGTD1P7N26AOAQ4CJHUF9I76F', '0', '1559550106455', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('11', '0JJDD14ER9D1DQ8S6OPNRO6NRU4QIUMF', '0', '1559552144020', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('12', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', '0', '1559552987402', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('13', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', '0', '1559628174215', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('14', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', '0', '1559630078536', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('15', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', '0', '1559632000283', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('16', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', '0', '1559633937425', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('17', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', '0', '1559635131560', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('18', 'DVI64BNG19BK4AIPKTTBFCVMMTH9ASBH', '0', '1559636724089', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('19', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', '0', '1559636931564', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('20', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', '0', '1559637918224', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('21', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', '0', '1559638699013', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('22', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', '0', '1559699112866', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('23', '556MPODLDET9R037EVN9ED2LN23FP0IL', '0', '1559699555703', 'bandwidth');
INSERT INTO `data_monitor_get` VALUES ('24', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', '0', '1559702914239', 'bandwidth');

-- ----------------------------
-- Table structure for data_monitor_post
-- ----------------------------
DROP TABLE IF EXISTS `data_monitor_post`;
CREATE TABLE `data_monitor_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `session` varchar(512) DEFAULT NULL,
  `flavor` varchar(255) DEFAULT NULL,
  `referer` varchar(1024) DEFAULT NULL,
  `a` varchar(512) DEFAULT NULL,
  `rId` varchar(255) DEFAULT NULL,
  `rpId` varchar(255) DEFAULT NULL,
  `domR` varchar(255) DEFAULT NULL,
  `w` varchar(255) DEFAULT NULL,
  `h` varchar(255) DEFAULT NULL,
  `sw` varchar(255) DEFAULT NULL,
  `sh` varchar(255) DEFAULT NULL,
  `nt` varchar(512) DEFAULT NULL,
  `V` varchar(255) DEFAULT NULL,
  `S` varchar(255) DEFAULT NULL,
  `p` varchar(1024) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `title` varchar(512) DEFAULT NULL,
  `latC` varchar(255) DEFAULT NULL,
  `fId` varchar(255) DEFAULT NULL,
  `vs` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_monitor_post
-- ----------------------------
INSERT INTO `data_monitor_post` VALUES ('4', 'js', 'JPJSR2I4I489U8IABEUHEUTUJ58E9UJ1', 'post', 'http://ipv6.companypage/news.aspx?p=2&amp;cId=57', '1|1|_load_|_load_|-|1559547008166|1559547011853|296|-|-|-|-|-|http://ipv6.companypage/art.aspx?cId=58&Id=932,2|2|_onload_|_load_|-|1559547011846|1559547011853|296', 'RID_2418', '732103659', '1559547011847', '1154', '936', '1920', '1080', 'a1b1559547008166e2f2g2h2i2k72l2167m2170n2194o2925p2989q3053r3681s3684t3684u28260v28142w28142', '0|c', '0', '3518|http://ipv6.companypage/Upload/20170815013009.jpg', 'http://ipv6.companypage/news.aspx?p=2&cId=57', '长城金点', '36', '147010410_262', '10139180531150406', '1559547013164');
INSERT INTO `data_monitor_post` VALUES ('5', 'js', 'JPJSR2I4I489U8IABEUHEUTUJ58E9UJ1', 'post', 'http://ipv6.companypage/news.aspx?p=2&amp;cId=57', '1|1|_load_|_load_|-|1559548512594|1559548516108|296|-|-|-|-|-|http://ipv6.companypage/art.aspx?cId=58&Id=932,2|2|_onload_|_load_|-|1559548516102|1559548516108|296', 'RID_2418', '732103659', '1559548516102', '1154', '936', '1920', '1080', 'a1b1559548512594e2f2g2h2i2k10l2091m2095n2136o2806p2853q2935r3508s3511t3511u28260v28142w28142', '0|c', '0', '3359|http://ipv6.companypage/Upload/20131108034052.jpg', 'http://ipv6.companypage/news.aspx?p=2&cId=57', '长城金点', '5', '148514765_781', '10139180531150406', '1559548517451');
INSERT INTO `data_monitor_post` VALUES ('6', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559548545955|1559548547428|314,2|2|_onload_|_load_|-|1559548547346|1559548547428|314', 'RID_2418', '732103659', '1559548547345', '1924', '890', '1920', '1080', 'a0b1559548545955e0f0g0h0i0k0l0m0n0o1204p1317q1344r1390s1397t1397', '1397|e', '0', '1298|http://ipv6.companypage/image/logo.jpg', 'http://ipv6.companypage/', '长城金点官网', null, '148547084_627', '10139180531150406', '1559548549388');
INSERT INTO `data_monitor_post` VALUES ('7', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559548561907|1559548564190|314,2|2|_onload_|_load_|-|1559548564184|1559548564190|314', 'RID_2418', '732103659', '1559548564184', '1924', '890', '1920', '1080', 'a1b1559548561907e41f41g41h41i41k859l859m862n859o1817p1872q1887r2277s2278t2278', '2278|e', '0', '2047|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '429', '148562776_679', '10139180531150406', '1559548565848');
INSERT INTO `data_monitor_post` VALUES ('8', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559548569085|1559548570950|314,2|2|_onload_|_load_|-|1559548570943|1559548570950|314', 'RID_2418', '732103659', '1559548570941', '1920', '886', '1920', '1080', 'a1b1559548569085e1f1g1h1i1k11l764m769n783o1145p1170q1243r1856s1858t1865u28967v28848w28848', '0|c', '0', '1379|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '5', '148569904_749', '10139180531150406', '1559548572278');
INSERT INTO `data_monitor_post` VALUES ('9', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/rzjd.aspx', '1|1|_load_|_load_|-|1559548722653|1559548724426|204|-|-|-|-|-|http://ipv6.companypage/,2|2|_onload_|_load_|-|1559548724425|1559548724426|204', 'RID_2418', '732103659', '1559548724424', '1920', '886', '1920', '1080', 'a0b1559548722653e0f29g29h29i31k31l564m567n568o875p936q961r1771s1772t1773u20922v20811w20811', '0|c', '0', '1455|http://ipv6.companypage/appUpdata/image/20131128/20131128100818_1093.jpg', 'http://ipv6.companypage/rzjd.aspx', '长城金点_金点文化', '15', '148723233_40', '10139180531150406', '1559548725614');
INSERT INTO `data_monitor_post` VALUES ('10', 'js', 'D21Q4L1CGSF7PLM5BVJQJAB9PMRL6CQ9', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559548904735|1559548907963|314,2|2|_onload_|_load_|-|1559548907953|1559548907963|314', 'RID_2418', '732103659', '1559548907954', '1920', '936', '1920', '1080', 'a0b1559548904735e1f7g31h31i32k32l1104m1121n1131o2476p2525q2760r3219s3224t3224u28967v28848w28848', '0|c', '0', '2522|http://ipv6.companypage/image/logo.jpg', 'http://ipv6.companypage/', '长城金点官网', '16', '148905901_590', '10139180531150406', '1559548909312');
INSERT INTO `data_monitor_post` VALUES ('11', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559549020783|1559549022949|314,2|2|_onload_|_load_|-|1559549022943|1559549022949|314', 'RID_2418', '732103659', '1559549022943', '1924', '890', '1920', '1080', 'a0b1559549020783e0f0g0h0i0k0l0m12n0o1229p1287q1304r2160s2163t2163', '2163|e', '0', '1406|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '15', '149021081_960', '10139180531150406', '1559549024546');
INSERT INTO `data_monitor_post` VALUES ('12', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', 'd|-1|股票代码：832653新浪微博微信联系方式English', 'RID_2418', '732103659', '1559549055880', '1924', '890', '1920', '1080', 'a1b1559549053486e228f228g228h228i228k1014l1015m1018n1015o1728p1784q1806r2394s2407t2407', '2407|e', '0', '1939|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '507', '149054512_335', '10139180531150406', '1559549056691');
INSERT INTO `data_monitor_post` VALUES ('13', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559549072432|1559549075137|314,2|2|_onload_|_load_|-|1559549075135|1559549075137|314', 'RID_2418', '732103659', '1559549075134', '1920', '886', '1920', '1080', 'a0b1559549072432e195f195g195h195i195k199l1165m1170n1170o1567p1590q1666r2702s2703t2705u28967v28848w28848', '0|c', '0', '2105|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '99', '149073633_677', '10139180531150406', '1559549077038');
INSERT INTO `data_monitor_post` VALUES ('14', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', 'd|-1|Page: http://ipv6.companypage/|KD116|-|149073633_677|1559549774893|http://ipv6.companypage/|长城金点官网,1|1|_load_|_load_|-|1559549774934|1559549777268|314,2|2|_onload_|_load_|-|1559549777267|1559549777268|314', 'RID_2418', '732103659', '1559549777265', '1920', '886', '1920', '1080', 'a1b1559549774934e0f0g0h0i0k8l827m830n844o1241p1271q1287r2331s2333t2334u28967v28848w28848', '0|c', '0', '1535|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '4', '149775793_582', '10139180531150406', '1559549779226');
INSERT INTO `data_monitor_post` VALUES ('15', 'js', 'T13F7IURPF45DLLUNLE8RPN9DG6AQCK5', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559550053872|1559550055602|314,2|2|_onload_|_load_|-|1559550055601|1559550055602|314', 'RID_2418', '732103659', '1559550055597', '1924', '890', '1920', '1080', 'a0b1559550053872e0f0g0h0i0k0l0m0n0o1122p1220q1241r1725s1729t1730', '1730|e', '0', '1298|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '4', '150054219_719', '10139180531150406', '1559550057163');
INSERT INTO `data_monitor_post` VALUES ('16', 'js', '9NH4V7KNGTD1P7N26AOAQ4CJHUF9I76F', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559550102817|1559550104437|314,2|2|_onload_|_load_|-|1559550104371|1559550104437|314', 'RID_2418', '732103659', '1559550104371', '1920', '985', '1920', '1080', 'a0b1559550102817e1f1g1h1i1k795l795m801n795o1475p1529q1548r1554s1555t1555', '1555|e', '0', '1526|http://ipv6.companypage/image/logo.jpg', 'http://ipv6.companypage/', '长城金点官网', '397', '150103951_861', '10139180531150406', '1559550106432');
INSERT INTO `data_monitor_post` VALUES ('17', 'js', '9NH4V7KNGTD1P7N26AOAQ4CJHUF9I76F', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559550245217|1559550248714|314,2|2|_onload_|_load_|-|1559550248705|1559550248714|314', 'RID_2418', '732103659', '1559550248695', '1920', '985', '1920', '1080', 'a1b1559550245217e80f80g80h80i80k961l962m966n962o1059p2388q2418r3478s3490t3490', null, null, '3137|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '480', '150246226_803', '10139180531150406', '1559550248725');
INSERT INTO `data_monitor_post` VALUES ('18', 'js', '9NH4V7KNGTD1P7N26AOAQ4CJHUF9I76F', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559551889676|1559551892785|314,2|2|_onload_|_load_|-|1559551892771|1559551892785|314', 'RID_2418', '732103659', '1559551892770', '1920', '985', '1920', '1080', 'a1b1559551889676e79f79g79h79i79k909l910m913n910o2234p2330q2372r3094s3097t3097', '3097|e', '0', '2574|http://ipv6.companypage/image/code.jpg', 'http://ipv6.companypage/', '长城金点官网', '454', '151890634_431', '10139180531150406', '1559551894125');
INSERT INTO `data_monitor_post` VALUES ('19', 'js', '9NH4V7KNGTD1P7N26AOAQ4CJHUF9I76F', 'post', 'http://ipv6.companypage/', '1|1|_load_|_load_|-|1559551917474|0|314,2|2|_onload_|_load_|-|1559551918532|1559551918571|314', 'RID_2418', '732103659', '1559551918532', '1920', '985', '1920', '1080', 'a1b1559551917474e52f52g52h52i52k879l879m882n879o962p1023q1048r1058s1059t1059', '948|c', '948', '1019|http://ipv6.companypage/image/logo.jpg', 'http://ipv6.companypage/', '长城金点官网', '439', '151918364_230', '10139180531150406', '1559551920402');
INSERT INTO `data_monitor_post` VALUES ('20', 'js', 'D21Q4L1CGSF7PLM5BVJQJAB9PMRL6CQ9', 'post', 'http://ipv6.companypage/', 'd|-1|Page: http://ipv6.companypage/|KD116|-|148905901_590|1559551923097|http://ipv6.companypage/|长城金点官网,1|1|_load_|_load_|-|1559551923180|1559551925482|314,2|2|_onload_|_load_|-|1559551925477|1559551925482|314', 'RID_2418', '732103659', '1559551925477', '1920', '936', '1920', '1080', 'a1b1559551923180e2f2g2h2i2k18l830m842n853o1551p1597q1657r2297s2299t2299u28967v28848w28848', '0|c', '0', '1595|http://ipv6.companypage/image/logo.jpg', 'http://ipv6.companypage/', '长城金点官网', '9', '151924047_909', '10139180531150406', '1559551926801');
INSERT INTO `data_monitor_post` VALUES ('21', 'js', '0JJDD14ER9D1DQ8S6OPNRO6NRU4QIUMF', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559552140790|1559552141941|79,2|2|_onload_|_load_|-|1559552141929|1559552141941|79', 'RID_2418', '732103659', '1559552141930', '1920', '892', '1920', '1080', 'a0b1559552140790e10f21g21h21i36k36l159m177n177o1107p1133q1135r1140s1143t1143u33599v33473w33473', '1143|e', '0', null, 'http://ipv6.dynatrace/', 'Dynatrace AppMon', '18', '152141005_10', '10139180531150406', '1559552142951');
INSERT INTO `data_monitor_post` VALUES ('22', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559552982174|1559552985322|79,2|2|_onload_|_load_|-|1559552985311|1559552985322|79', 'RID_2418', '732103659', '1559552985311', '1154', '936', '1920', '1080', 'a1b1559552982174e2f23g81h81i86k86l1995m2004n2021o3110p3131q3132r3137s3141t3141u33598v33472w33472', '3141|e', '0', null, 'http://ipv6.dynatrace/login', 'Dynatrace AppMon', '43', '152984277_184', '10139180531150406', '1559552986307');
INSERT INTO `data_monitor_post` VALUES ('23', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login', 'd|-1|Sign in|C|-|153161856_464|1559553204231|http://ipv6.dynatrace/login|Dynatrace AppMon,1|1|_load_|_load_|-|1559554351751|1559554354929|79,2|2|_onload_|_load_|-|1559554354920|1559554354929|79', 'RID_2418', '732103659', '1559554354920', '1154', '936', '1920', '1080', 'a1b1559554351751e1f7g7h7i39k39l1922m1926n1996o3142p3163q3164r3169s3171t3171u33599v33473w33473', '3171|e', '0', null, 'http://ipv6.dynatrace/login', 'Dynatrace AppMon', '19', '154353788_428', '10139180531150406', '1559554355921');
INSERT INTO `data_monitor_post` VALUES ('24', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559554656706|1559554658829|79,2|2|_onload_|_load_|-|1559554658821|1559554658829|79', 'RID_2418', '732103659', '1559554658821', '1154', '887', '1920', '1080', 'a1b1559554656706e0f16g16h16i36k36l1298m1303n1314o2091p2109q2110r2115s2117t2117u33599v33473w33473', '2117|e', '0', null, 'http://ipv6.dynatrace/login', 'Dynatrace AppMon', '18', '154658085_435', '10139180531150406', '1559554659830');
INSERT INTO `data_monitor_post` VALUES ('25', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login', 'd|-1|Page: login|KD116|-|154658085_435|1559554763140|http://ipv6.dynatrace/login|Dynatrace AppMon,1|1|_load_|_load_|-|1559554763178|1559554764087|79,2|2|_onload_|_load_|-|1559554764076|1559554764087|79', 'RID_2418', '732103659', '1559554764077', '1154', '936', '1920', '1080', 'a1b1559554763178e2f2g2h2i2k10l114m133n144o879p893q895r899s902t902u33598v33472w33472', '902|e', '0', null, 'http://ipv6.dynatrace/login', 'Dynatrace AppMon', '5', '154763357_655', '10139180531150406', '1559554765082');
INSERT INTO `data_monitor_post` VALUES ('26', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559554767027|1559554768012|79,2|2|_onload_|_load_|-|1559554768004|1559554768012|79', 'RID_2418', '732103659', '1559554768004', '1154', '936', '1920', '1080', 'a0b1559554767027e3f3g3h3i3k17l87m98n111o956p974q975r977s979t979u33598v33472w33472', '979|e', '0', null, 'http://ipv6.dynatrace/', 'Dynatrace AppMon', '8', '154767169_560', '10139180531150406', '1559554769019');
INSERT INTO `data_monitor_post` VALUES ('27', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login', 'd|-1|Sign in|C|-|154767169_560|1559554772965|http://ipv6.dynatrace/|Dynatrace AppMon,1|1|_load_|_load_|-|1559554871204|1559554874025|79,2|2|_onload_|_load_|-|1559554874016|1559554874025|79', 'RID_2418', '732103659', '1559554874016', '1154', '936', '1920', '1080', 'a1b1559554871204e1f26g58h58i100k100l1807m1830n1836o2783p2806q2807r2812s2815t2815u33599v33473w33473', '2815|e', '0', null, 'http://ipv6.dynatrace/login', 'Dynatrace AppMon', '50', '154873105_337', '10139180531150406', '1559554875021');
INSERT INTO `data_monitor_post` VALUES ('28', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login?username=admin&amp;password=admin', '1|1|_load_|_load_|-|1559554991100|1559554996291|79,2|2|_onload_|_load_|-|1559554996286|1559554996291|79', 'RID_2418', '732103659', '1559554996286', '1154', '887', '1920', '1080', 'a0b1559554991100e2f4414g4415h4415i4416k4416l4445m4456n4466o5161p5184q5184r5186s5189t5189u33599v33473w33473', '5189|e', '0', null, 'http://ipv6.dynatrace/login?username=admin&password=admin', 'Dynatrace AppMon', '2208', '154995591_677', '10139180531150406', '1559554997287');
INSERT INTO `data_monitor_post` VALUES ('29', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/login?username=admin&amp;password=admin', 'd|-1|Page: login?username=admin&password=admin|KD116|-|154995591_677|1559555045779|http://ipv6.dynatrace/login?username=admin&password=admin|Dynatrace AppMon,1|1|_load_|_load_|-|1559555045830|1559555046860|79,2|2|_onload_|_load_|-|1559555046850|1559555046860|79', 'RID_2418', '732103659', '1559555046851', '1154', '887', '1920', '1080', 'a1b1559555045830e3f3g3h3i3k12l107m117n136o986p1017q1018r1021s1023t1023u33599v33473w33473', '1023|e', '0', null, 'http://ipv6.dynatrace/login?username=admin&password=admin', 'Dynatrace AppMon', '6', '155046027_543', '10139180531150406', '1559555047849');
INSERT INTO `data_monitor_post` VALUES ('30', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559555052680|1559555053469|79,2|2|_onload_|_load_|-|1559555053464|1559555053469|79', 'RID_2418', '732103659', '1559555053464', '1154', '887', '1920', '1080', 'a0b1559555052680e2f2g2h2i2k15l88m105n121o767p781q782r784s787t787u33599v33473w33473', '787|e', '0', null, 'http://ipv6.dynatrace/', 'Dynatrace AppMon', '7', '155052840_321', '10139180531150406', '1559555054479');
INSERT INTO `data_monitor_post` VALUES ('31', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|Sign in|KD116|-|155052840_321|1559555223104|http://ipv6.dynatrace/|Dynatrace AppMon,1|1|_load_|_load_|-|1559555223129|1559555263057|79,2|2|_onload_|_load_|-|1559555263056|1559555263057|79', 'RID_2418', '732103659', '1559555263054', '1154', '887', '1920', '1080', 'a1b1559555223129e1f1g1h1i1k9l34294m34301n34331o39899p39922q39923r39925s39927t39928u33598v33472w33472', '39928|e', '0', null, 'http://ipv6.dynatrace/', 'Dynatrace AppMon', '4', '155257477_601', '10139180531150406', '1559555264061');
INSERT INTO `data_monitor_post` VALUES ('32', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|Page: http://ipv6.dynatrace/|KD116|-|155257477_601|1559555293284|http://ipv6.dynatrace/|Dynatrace AppMon,1|1|_load_|_load_|-|1559555293318|1559555300061|52,2|2|_onload_|_load_|-|1559555300055|1559555300061|52', 'RID_2418', '732103659', '1559555300056', '1154', '887', '1920', '1080', 'a1b1559555293318e2f2g2h2i2k9l4882m4897n4925o6616p6640q6656r6738s6740t6740u26019v25901w25901', '6545|c', '6545', '6737|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/', '测试质量查询平台', '4', '155298277_577', '10139180531150406', '1559555301959');
INSERT INTO `data_monitor_post` VALUES ('33', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559555536846|1559555537643|52,2|2|_onload_|_load_|-|1559555537642|1559555537643|52', 'RID_2418', '732103659', '1559555537637', '915', '936', '1920', '1080', 'a0b1559555536846e7f7g7h7i7k18l150m155n174o717p754q784r791s796t797u26019v25901w25901', '499|c', '486', '740|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '9', '155537035_24', '10139180531150406', '1559555539604');
INSERT INTO `data_monitor_post` VALUES ('34', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559555860116|1559555860754|52,2|2|_onload_|_load_|-|1559555860753|1559555860754|52', 'RID_2418', '732103659', '1559555860750', '915', '936', '1920', '1080', 'a0b1559555860116e12f12g12h12i12k17l136m147n167o578p611q632r634s637t638u26020v25902w25902', '494|c', '490', '600|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '8', '155860300_457', '10139180531150406', '1559555862728');
INSERT INTO `data_monitor_post` VALUES ('35', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|155860300_457|1559555865351|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559610757807|1559610761549|52,2|2|_onload_|_load_|-|1559610761538|1559610761549|52', 'RID_2418', '732103659', '1559610761538', '915', '936', '1920', '1080', 'a0b1559610757807e1f12g72h72i90k90l3031m3038n3053o3642p3691q3717r3731s3738t3738u26019v25901w25901', '3703|c', '3697', '3731|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/', '测试质量查询平台', '45', '210760914_528', '10139180531150406', '1559610763492');
INSERT INTO `data_monitor_post` VALUES ('36', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|210760914_528|1559610766602|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559611086937|1559611087472|52,2|2|_onload_|_load_|-|1559611087452|1559611087472|52', 'RID_2418', '732103659', '1559611087451', '915', '936', '1920', '1080', 'a0b1559611086937e11f11g11h11i11k15l87m94n105o447p488q513r514s517t517u26019v25901w25901', '409|c', '409', '465|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '7', '211087056_548', '10139180531150406', '1559611089414');
INSERT INTO `data_monitor_post` VALUES ('37', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|211087056_548|1559611092288|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559611687427|1559611689023|52,2|2|_onload_|_load_|-|1559611689012|1559611689023|52', 'RID_2418', '732103659', '1559611689012', '915', '936', '1920', '1080', 'a0b1559611687427e5f32g44h44i62k62l1144m1147n1158o1519p1564q1582r1585s1588t1588u26019v25901w25901', '1478|c', '1466', '1551|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '31', '211688597_860', '10139180531150406', '1559611690989');
INSERT INTO `data_monitor_post` VALUES ('38', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|211688597_860|1559611692557|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559613094875|1559613096735|52,2|2|_onload_|_load_|-|1559613096715|1559613096735|52', 'RID_2418', '732103659', '1559613096715', '915', '936', '1920', '1080', 'a0b1559613094875e9f9g9h9i9k54l1292m1295n1308o1791p1821q1837r1840s1842t1842u26020v25902w25902', '1663|c', '1663', '1812|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '27', '213096198_432', '10139180531150406', '1559613098701');
INSERT INTO `data_monitor_post` VALUES ('39', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|password|KD|-|213096198_432|1559613989921|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559613989966|1559613994851|52,2|2|_onload_|_load_|-|1559613994840|1559613994851|52', 'RID_2418', '732103659', '1559613994840', '915', '936', '1920', '1080', 'a1b1559613989966e1f9g17h17i33k33l4381m4384n4406o4817p4854q4872r4874s4877t4877u26019v25901w25901', '4794|c', '4794', '4844|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '16', '213994395_323', '10139180531150406', '1559613996828');
INSERT INTO `data_monitor_post` VALUES ('40', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|Page: http://ipv6.dynatrace/|KD116|-|213994395_323|1559613998069|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559613998087|1559613998596|52,2|2|_onload_|_load_|-|1559613998586|1559613998596|52', 'RID_2418', '732103659', '1559613998586', '915', '936', '1920', '1080', 'a1b1559613998087e2f2g2h2i2k8l36m40n52o447p483q498r499s502t502u26018v25900w25900', '389|c', '389', '473|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '4', '213998147_471', '10139180531150406', '1559614000576');
INSERT INTO `data_monitor_post` VALUES ('41', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|213998147_471|1559614003052|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559614411006|1559614412588|52,2|2|_onload_|_load_|-|1559614412579|1559614412588|52', 'RID_2418', '732103659', '1559614412579', '915', '936', '1920', '1080', 'a0b1559614411006e10f21g35h35i57k58l1094m1099n1111o1489p1543q1567r1573s1575t1575u26020v25902w25902', '1462|c', '1462', '1523|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '29', '214412134_287', '10139180531150406', '1559614414549');
INSERT INTO `data_monitor_post` VALUES ('42', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|214412134_287|1559614417146|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559614949453|1559614951144|52,2|2|_onload_|_load_|-|1559614951132|1559614951144|52', 'RID_2418', '732103659', '1559614951130', '915', '936', '1920', '1080', 'a0b1559614949453e9f23g34h34i42k43l1188m1190n1201o1616p1655q1675r1677s1684t1684u26017v25899w25899', '1564|c', '1563', '1643|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '21', '214950665_418', '10139180531150406', '1559614953110');
INSERT INTO `data_monitor_post` VALUES ('43', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|214950665_418|1559614958533|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559617587849|1559617589658|52,2|2|_onload_|_load_|-|1559617589649|1559617589658|52', 'RID_2418', '732103659', '1559617589649', '915', '887', '1920', '1080', 'a0b1559617587849e11f11g11h11i11k41l1315m1320n1330o1729p1774q1794r1800s1804t1804u26018v25900w25900', '1782|c', '1782', '1800|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/', '测试质量查询平台', '20', '217589193_223', '10139180531150406', '1559617591615');
INSERT INTO `data_monitor_post` VALUES ('44', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|217589193_223|1559617597228|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559618982303|1559618984904|52,2|2|_onload_|_load_|-|1559618984903|1559618984904|52', 'RID_2418', '732103659', '1559618984899', '915', '887', '1920', '1080', 'a0b1559618982303e15f27g27h27i58k58l2015m2018n2029o2512p2573q2593r2596s2600t2601u26019v25901w25901', '2495|c', '2495', '2555|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '29', '218984357_807', '10139180531150406', '1559618986866');
INSERT INTO `data_monitor_post` VALUES ('45', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|218984357_807|1559618988729|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559619281216|0|52,2|2|_onload_|_load_|-|1559619281551|1559619281560|52', 'RID_2418', '732103659', '1559619281551', '915', '887', '1920', '1080', 'a2b1559619281216e3f3g3h3i3k10l11m17n30o279p312q330r335s338t338v25901w25901', '110|c', '110', '297|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '5', '219281255_806', '10139180531150406', '1559619283153');
INSERT INTO `data_monitor_post` VALUES ('46', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 's|1|_load_|_load_|-|219281255_806|1559619281216,1|1|_load_|_load_|-|1559619283162|0|52,2|2|_onload_|_load_|-|1559619283714|1559619283727|52', 'RID_2418', '732103659', '1559619283713', '915', '887', '1920', '1080', 'a1b1559619283162e2f2g2h2i2k12l77m80n98o496p527q544r551s556t556u26020v25902w25902', '480|f', '480', '516|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '6', '219283273_119', '10139180531150406', '1559619283794');
INSERT INTO `data_monitor_post` VALUES ('47', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|Page: http://ipv6.dynatrace/|KD116|-|219283273_119|1559619283741|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559619283798|0|52,2|2|_onload_|_load_|-|1559619284172|1559619284178|52', 'RID_2418', '732103659', '1559619284172', '915', '887', '1920', '1080', 'a1b1559619283798e3f3g3h3i3k7l61m70n86o337p356q369r374u26020v25902w25902', '314|f', '301', '377|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/', '测试质量查询平台', '3', '219283900_578', '10139180531150406', '1559619284202');
INSERT INTO `data_monitor_post` VALUES ('48', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559619283991|1559619284602|52,2|2|_onload_|_load_|-|1559619284587|1559619284602|52', 'RID_2418', '732103659', '1559619284587', '915', '887', '1920', '1080', 'a1b1559619283991e2f11g11h11i38k38l118m122n227o504p569q592r596s601t601u26019v25901w25901', '469|c', '469', '557|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '19', '219284232_929', '10139180531150406', '1559619286551');
INSERT INTO `data_monitor_post` VALUES ('49', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|219284232_929|1559619288791|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559619304568|1559619304794|52,2|2|_onload_|_load_|-|1559619304780|1559619304794|52', 'RID_2418', '732103659', '1559619304781', '915', '887', '1920', '1080', 'a2b1559619304568e3f3g3h3i3k11l13m17n26o137p178q206r213s215t215v25901w25901', '28|c', '27', '155|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '5', '219304598_690', '10139180531150406', '1559619306738');
INSERT INTO `data_monitor_post` VALUES ('50', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559619915153|1559619916841|52,2|2|_onload_|_load_|-|1559619916834|1559619916841|52', 'RID_2418', '732103659', '1559619916834', '915', '887', '1920', '1080', 'a1b1559619915153e1f1g1h1i1k27l1108m1116n1130o1620p1663q1679r1681s1684t1684u26019v25901w25901', '1562|c', '1562', '1645|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '13', '219916297_391', '10139180531150406', '1559619918816');
INSERT INTO `data_monitor_post` VALUES ('51', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/', 'd|-1|登录|C|-|219916297_391|1559619921139|http://ipv6.dynatrace/|测试质量查询平台,1|1|_load_|_load_|-|1559619988241|1559620000350|52,2|2|_onload_|_load_|-|1559620000344|1559620000350|52', 'RID_2418', '732103659', '1559620000344', '915', '887', '1920', '1080', 'a0b1559619988241e7f7g7h7i7k14l11570m11575n11624o12031p12076q12093r12103s12106t12106u26018v25900w25900', '11996|c', '11972', '12102|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/', '测试质量查询平台', '7', '219999889_144', '10139180531150406', '1559620002328');
INSERT INTO `data_monitor_post` VALUES ('52', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|220014496_993|1559625334997|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559625335130|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625335608|1559625335622|52', 'RID_2418', '732103659', '1559625335609', '1920', '887', '1920', '1080', 'a0b1559625335130e7f7g7h7i7k24l113m117n125o419p461q478r479s483t483u26020v25902w25902', '376|f', '365', '452|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '12', '225335262_14', '10139180531150406', '1559625336397');
INSERT INTO `data_monitor_post` VALUES ('53', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/loginOut', '1|1|_load_|_load_|-|1559625336402|1559625337081|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625337078|1559625337081|52', 'RID_2418', '732103659', '1559625337079', '1920', '887', '1920', '1080', 'a1b1559625336402e2f2g2h2i2k11l65m73n136o654p669q675r677s678t678u26019v25901w25901', '649|c', '648', '665|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '5', '225336548_446', '10139180531150406', '1559625339075');
INSERT INTO `data_monitor_post` VALUES ('54', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/index?applicationList=TAP&amp;theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&amp;publicState=1', 'd|-1|TAP|C|-|225354067_672|1559625367275|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559625367287|1559625367653|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625367644|1559625367653|52', 'RID_2418', '732103659', '1559625367645', '1920', '887', '1920', '1080', 'a0b1559625367287e5f5g5h5i5k19l56m65n70o328p343q356r358s359t359u26019v25901w25901', '263|c', '237', '338|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/index?applicationList=TAP&theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&publicState=1', '测试质量查询平台', '9', '225367363_908', '10139180531150406', '1559625369639');
INSERT INTO `data_monitor_post` VALUES ('55', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/index?applicationList=TAP&amp;theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&amp;publicState=1', '1|1|_load_|_load_|-|1559625373173|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625373508|1559625373512|52', 'RID_2418', '732103659', '1559625373509', '1920', '887', '1920', '1080', 'a1b1559625373173e1f1g1h1i1k5l34m38n47o304p329q335r336s337t337u26019v25901w25901', '284|f', '283', '326|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/index?applicationList=TAP&theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&publicState=1', '测试质量查询平台', '2', '225373226_10', '10139180531150406', '1559625374094');
INSERT INTO `data_monitor_post` VALUES ('56', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/index?applicationList=TAP&amp;theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&amp;publicState=1', '1|1|_load_|_load_|-|1559625374097|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625374369|1559625374374|52', 'RID_2418', '732103659', '1559625374370', '1920', '887', '1920', '1080', 'a1b1559625374097e2f2g2h2i2k6l37m39n49o253p265q272r273s274t274u26019v25901w25901', '219|f', '218', '261|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/index?applicationList=TAP&theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&publicState=1', '测试质量查询平台', '3', '225374151_210', '10139180531150406', '1559625374914');
INSERT INTO `data_monitor_post` VALUES ('57', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/index?applicationList=TAP&amp;theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&amp;publicState=1', '1|1|_load_|_load_|-|1559625374916|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625375172|1559625375178|52', 'RID_2418', '732103659', '1559625375172', '1920', '887', '1920', '1080', 'a1b1559625374916e1f1g1h1i1k8l26m29n37o237p248q255r256s258t258u26019v25901w25901', '203|f', '202', '244|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/index?applicationList=TAP&theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&publicState=1', '测试质量查询平台', '4', '225374959_875', '10139180531150406', '1559625375432');
INSERT INTO `data_monitor_post` VALUES ('58', 'js', 'TT2UOQ5GPU46JRKFUL7F07OMH1TKFN7M', 'post', 'http://ipv6.dynatrace/index?applicationList=TAP&amp;theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&amp;publicState=1', '1|1|_load_|_load_|-|1559625375611|1559625375953|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559625375948|1559625375953|52', 'RID_2418', '732103659', '1559625375949', '1920', '887', '1920', '1080', 'a1b1559625375611e3f3g3h3i3k25l105m115n132o301p325q334r338s340t340u26020v25902w25902', '287|c', '264', '321|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/index?applicationList=TAP&theTime=2019-04-01%2000:00:00%20-%202019-04-26%2000:00:00&publicState=1', '测试质量查询平台', '12', '225375750_10', '10139180531150406', '1559625377936');
INSERT INTO `data_monitor_post` VALUES ('59', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559628153415|1559628172173|52,2|2|_onload_|_load_|-|1559628172132|1559628172173|52', 'RID_2418', '732103659', '1559628172132', '1536', '723', '1536', '864', 'a0b1559628153415e1f2g5h5i10k11l5794m6820n5807o18688p18705q18716r18717s18719t18719u26019v25901w25901', '18578|c', '18517', '18698|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '228159245_310', '10139180531150406', '1559628174147');
INSERT INTO `data_monitor_post` VALUES ('60', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559628191984|1559628192424|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559628192417|1559628192424|52', 'RID_2418', '732103659', '1559628192417', '1536', '723', '1536', '864', 'a0b1559628191984e4f4g4h4i4k7l260m262n271o411p426q433r433s435t435u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '3', '228192259_996', '10139180531150406', '1559628192429');
INSERT INTO `data_monitor_post` VALUES ('61', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|228192259_996|1559628306801|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559628306813|1559628307057|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559628307053|1559628307057|52', 'RID_2418', '732103659', '1559628307053', '1536', '723', '1536', '864', 'a0b1559628306813e2f4g10h10i14k14l62m65n69o207p227q237r240s241t241u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '7', '228306887_221', '10139180531150406', '1559628307064');
INSERT INTO `data_monitor_post` VALUES ('62', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|228306887_221|1559628307832|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|7|_load_|_load_|-|1559628307845|1559628308050|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559628308045|1559628308050|52', 'RID_2418', '732103659', '1559628308046', '1536', '723', '1536', '864', 'a0b1559628307845e2f2g2h2i2k6l45m48n53o183p196q200r201s202t202u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '3', '228307909_711', '10139180531150406', '1559628308054');
INSERT INTO `data_monitor_post` VALUES ('63', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|228307909_711|1559628308848|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|9|_load_|_load_|-|1559628308854|1559628309028|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559628309025|1559628309028|52', 'RID_2418', '732103659', '1559628309026', '1536', '723', '1536', '864', 'a0b1559628308854e1f1g1h1i1k2l31m34n42o159p167q171r172s173t173u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '228308907_657', '10139180531150406', '1559628309033');
INSERT INTO `data_monitor_post` VALUES ('64', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|228308907_657|1559628321208|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|11|_load_|_load_|-|1559628321217|1559628321435|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559628321433|1559628321435|52', 'RID_2418', '732103659', '1559628321433', '1536', '723', '1536', '864', 'a0b1559628321217e1f1g1h1i1k2l45m47n57o194p206q214r216s217t217u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '228321286_649', '10139180531150406', '1559628321440');
INSERT INTO `data_monitor_post` VALUES ('65', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|角色菜单授权|C|-|228333938_873|1559628334808|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|15|_load_|_load_|-|1559628335573|1559628344046|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|16|_onload_|_load_|-|1559628344040|1559628344046|52', 'RID_2418', '732103659', '1559628344040', '1536', '723', '1536', '864', 'a0b1559628335573e0f0g0h0i0k2l6336m6373n6360o8438p8456q8465r8467s8469t8469u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '228341939_830', '10139180531150406', '1559628344064');
INSERT INTO `data_monitor_post` VALUES ('66', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|228321286_649|1559628333857|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|13|_load_|_load_|-|1559628333865|1559628334078|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559628334073|1559628334078|52', 'RID_2418', '732103659', '1559628334073', '1536', '723', '1536', '864', 'a0b1559628333865e2f2g2h2i2k4l53m56n63o192p203q208r208s210t210u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '2', '228333938_873', '10139180531150406', '1559628334083');
INSERT INTO `data_monitor_post` VALUES ('67', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|228341939_830|1559628353192|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|17|_load_|_load_|-|1559628353199|1559628353423|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|18|_onload_|_load_|-|1559628353420|1559628353423|52', 'RID_2418', '732103659', '1559628353420', '1536', '723', '1536', '864', 'a0b1559628353199e1f1g1h1i1k3l44m46n51o207p216q220r221s222t222u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '228353260_837', '10139180531150406', '1559628353429');
INSERT INTO `data_monitor_post` VALUES ('68', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|基线管理|C|-|228353260_837|1559628361777|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|19|_load_|_load_|-|1559628361789|1559628362003|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|20|_onload_|_load_|-|1559628361999|1559628362003|52', 'RID_2418', '732103659', '1559628362000', '1536', '723', '1536', '864', 'a0b1559628361789e2f2g2h2i2k5l50m56n67o194p204q208r211s212t212u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '228361871_447', '10139180531150406', '1559628362008');
INSERT INTO `data_monitor_post` VALUES ('69', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|基线管理|C|-|228361871_447|1559628364744|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|21|_load_|_load_|-|1559628364750|1559628364934|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|22|_onload_|_load_|-|1559628364930|1559628364934|52', 'RID_2418', '732103659', '1559628364930', '1536', '723', '1536', '864', 'a0b1559628364750e1f1g1h1i1k2l37m41n48o159p173q179r180s182t182u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '228364804_481', '10139180531150406', '1559628364939');
INSERT INTO `data_monitor_post` VALUES ('70', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559628578265|1559628579275|52,2|2|_onload_|_load_|-|1559628579274|1559628579275|52', 'RID_2418', '732103659', '1559628579273', '1536', '723', '1536', '864', 'a0b1559628578265e1f3g4h4i10k10l746m748n760o992p1001q1006r1008s1009t1010u26017v25899w25899', '994|c', '924', '1008|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '228579033_143', '10139180531150406', '1559628581271');
INSERT INTO `data_monitor_post` VALUES ('71', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559629226807|1559629228308|52,2|2|_onload_|_load_|-|1559629228307|1559629228308|52', 'RID_2418', '732103659', '1559629228299', '1536', '723', '1536', '864', 'a0b1559629226807e2f4g8h8i14k31l1040m1044n1047o1435p1470q1489r1492s1500t1501u26020v25902w25902', '1269|c', '1227', '1458|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '15', '229227873_844', '10139180531150406', '1559629230334');
INSERT INTO `data_monitor_post` VALUES ('72', 'js', 'KCAUJ41C30FS2H77NDHMFBO07GI3ODN2', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559629976804|0|52,2|2|_onload_|_load_|-|1559629977764|1559629977776|52', 'RID_2418', '732103659', '1559629977765', '1536', '723', '1536', '864', 'a0b1559629976804e2f9g13h13i15k15l717m720n729o925p949q960r961s967t967u26018v25900w25900', '893|c', '874', '942|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '7', '229977541_931', '10139180531150406', '1559629979201');
INSERT INTO `data_monitor_post` VALUES ('73', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559630075271|0|52,2|2|_onload_|_load_|-|1559630076463|1559630076475|52', 'RID_2418', '732103659', '1559630076462', '1536', '723', '1536', '864', 'a0b1559630075271e2f6g9h9i21k21l767m770n773o1145p1173q1189r1191s1194t1194u26020v25902w25902', '985|f', '979', '1164|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '10', '230076061_719', '10139180531150406', '1559630077255');
INSERT INTO `data_monitor_post` VALUES ('74', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|230076061_719|1559630077242|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559630266793|0|52,2|2|_onload_|_load_|-|1559630267903|1559630267904|52', 'RID_2418', '732103659', '1559630267901', '1536', '723', '1536', '864', 'a1b1559630266793e17f17g17h17i17k20l234m242n462o1007p1074q1104r1108s1110t1111u26018v25900w25900', '807|f', '773', '1053|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '10', '230267362_423', '10139180531150406', '1559630268904');
INSERT INTO `data_monitor_post` VALUES ('75', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559630408039|1559630409014|52,2|2|_onload_|_load_|-|1559630409007|1559630409014|52', 'RID_2418', '732103659', '1559630409007', '1536', '723', '1536', '864', 'a0b1559630408039e1f2g7h7i10k10l739m742n751o934p953q963r968s970t970u26019v25901w25901', '955|c', '917', '968|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '230408804_82', '10139180531150406', '1559630411003');
INSERT INTO `data_monitor_post` VALUES ('76', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|230408804_82|1559630412866|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559631531621|0|52,2|2|_onload_|_load_|-|1559631531947|1559631531954|52', 'RID_2418', '732103659', '1559631531948', '1536', '723', '1536', '864', 'a0b1559631531621e1f4g8h8i9k9l48m55n68o273p308q326r327s328t328u26019v25901w25901', '257|f', '256', '296|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '231531703_861', '10139180531150406', '1559631532871');
INSERT INTO `data_monitor_post` VALUES ('77', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|231531703_861|1559631532859|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559631679965|0|52,2|2|_onload_|_load_|-|1559631680931|1559631680952|52', 'RID_2418', '732103659', '1559631680932', '1536', '723', '1536', '864', 'a0b1559631679965e5f10g12h12i22k22l721m729n739o916p945q965r967s979t979u26019v25901w25901', '951|f', '870', '966|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '11', '231680712_138', '10139180531150406', '1559631681818');
INSERT INTO `data_monitor_post` VALUES ('78', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '0|1|_load_|S,1|3|_load_|_load_|-|1559631706520|1559631706726|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559631706720|1559631706726|52', 'RID_2418', '732103659', '1559631706720', '1536', '723', '1536', '864', 'a0b1559631706520e1f1g1h1i1k3l44m46n49o182p192q199r200s202t202u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '231706582_417', '10139180531150406', '1559631706730');
INSERT INTO `data_monitor_post` VALUES ('79', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|231706582_417|1559631714322|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559631714327|1559631714543|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559631714537|1559631714543|52', 'RID_2418', '732103659', '1559631714538', '1536', '723', '1536', '864', 'a0b1559631714327e3f3g3h3i3k5l39m42n47o192p204q210r211s212t212u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '2', '231714383_880', '10139180531150406', '1559631714551');
INSERT INTO `data_monitor_post` VALUES ('80', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|231714383_880|1559631728786|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|7|_load_|_load_|-|1559631728792|1559631729044|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559631729033|1559631729044|52', 'RID_2418', '732103659', '1559631729034', '1536', '723', '1536', '864', 'a0b1559631728792e1f1g1h1i1k2l40m43n50o220p231q240r242s246t246u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '231728852_630', '10139180531150406', '1559631729056');
INSERT INTO `data_monitor_post` VALUES ('81', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|基线管理|C|-|231728852_630|1559631730227|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|9|_load_|_load_|-|1559631730239|1559631730468|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559631730463|1559631730468|52', 'RID_2418', '732103659', '1559631730464', '1536', '723', '1536', '864', 'a0b1559631730239e3f3g3h3i3k10l40m43n52o199p218q224r225s227t227u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '5', '231730302_827', '10139180531150406', '1559631730477');
INSERT INTO `data_monitor_post` VALUES ('82', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|231730302_827|1559631733819|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|11|_load_|_load_|-|1559631733824|1559631734027|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559631734022|1559631734027|52', 'RID_2418', '732103659', '1559631734023', '1536', '723', '1536', '864', 'a0b1559631733824e1f1g1h1i1k3l56m58n67o183p193q197r199s200t200u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '231733907_126', '10139180531150406', '1559631734031');
INSERT INTO `data_monitor_post` VALUES ('83', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|231733907_126|1559631736451|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|13|_load_|_load_|-|1559631736459|1559631736646|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559631736643|1559631736646|52', 'RID_2418', '732103659', '1559631736643', '1536', '723', '1536', '864', 'a0b1559631736459e1f1g1h1i1k3l32m35n42o163p176q183r184s185t185u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '231736510_82', '10139180531150406', '1559631736653');
INSERT INTO `data_monitor_post` VALUES ('84', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|231736510_82|1559631745380|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|15|_load_|_load_|-|1559631745392|1559631745581|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|16|_onload_|_load_|-|1559631745579|1559631745581|52', 'RID_2418', '732103659', '1559631745579', '1536', '723', '1536', '864', 'a0b1559631745392e1f1g1h1i1k2l33m37n44o174p182q186r187s188t188u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '231745446_220', '10139180531150406', '1559631745588');
INSERT INTO `data_monitor_post` VALUES ('85', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|231745446_220|1559631772002|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|17|_load_|_load_|-|1559631772008|1559631772210|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|18|_onload_|_load_|-|1559631772207|1559631772210|52', 'RID_2418', '732103659', '1559631772207', '1536', '723', '1536', '864', 'a0b1559631772008e1f1g1h1i1k2l43m48n55o186p193q198r199s200t200u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '231772073_103', '10139180531150406', '1559631772215');
INSERT INTO `data_monitor_post` VALUES ('86', 'js', 'HU5EL8RJEL60JA54SJJHN6648VMVJV3V', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559631797796|0|52,2|2|_onload_|_load_|-|1559631802871|1559631802882|52', 'RID_2418', '732103659', '1559631802871', '1536', '723', '1536', '864', 'a0b1559631797796e3f3g3h3i3k8l4795m4815n4837o5025p5043q5066r5075s5084t5084u26019v25901w25901', '5027|c', '5027', '5074|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '231802648_351', '10139180531150406', '1559631804367');
INSERT INTO `data_monitor_post` VALUES ('87', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559631860397|0|52,2|2|_onload_|_load_|-|1559631861455|1559631861463|52', 'RID_2418', '732103659', '1559631861455', '1536', '723', '1536', '864', 'a0b1559631860397e2f17g38h38i50k50l753m757n757o1019p1040q1055r1058s1061t1061u26018v25900w25900', '922|f', '921', '1032|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '25', '231861167_801', '10139180531150406', '1559631862318');
INSERT INTO `data_monitor_post` VALUES ('88', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559631865205|1559631865396|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559631865389|1559631865396|52', 'RID_2418', '732103659', '1559631865389', '1536', '723', '1536', '864', 'a0b1559631865205e1f1g1h1i1k2l28m32n36o163p177q183r184s186t186u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '231865247_463', '10139180531150406', '1559631865401');
INSERT INTO `data_monitor_post` VALUES ('89', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|231866833_209|1559631869907|http://ipv6.dynatrace/loginPost|报表系统,1|7|_load_|_load_|-|1559631869929|1559631871356|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559631871350|1559631871356|52', 'RID_2418', '732103659', '1559631871351', '1536', '723', '1536', '864', 'a0b1559631869929e6f6g6h6i6k9l1246m1249n1260o1392p1410q1421r1422s1423t1423u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '4', '231871200_491', '10139180531150406', '1559631871364');
INSERT INTO `data_monitor_post` VALUES ('90', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|password|KU|-|231862482_324|1559631871354|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559631871489|0|52,2|2|_onload_|_load_|-|1559631871667|1559631871672|52', 'RID_2418', '732103659', '1559631871667', '1536', '723', '1536', '864', 'a0b1559631871489e5f5g5h5i5k9l33m36n51o163p172q177r178s180t180u26018v25900w25900', '153|f', '152', '169|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '231871551_673', '10139180531150406', '1559631872623');
INSERT INTO `data_monitor_post` VALUES ('91', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559631874925|1559631875125|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559631875120|1559631875125|52', 'RID_2418', '732103659', '1559631875120', '1536', '723', '1536', '864', 'a0b1559631874925e2f2g2h2i2k9l43m48n54o175p189q194r195s197t197u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '4', '231874985_477', '10139180531150406', '1559631875131');
INSERT INTO `data_monitor_post` VALUES ('92', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|231874985_477|1559631893340|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559631893347|1559631894475|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559631894471|1559631894475|52', 'RID_2418', '732103659', '1559631894471', '1536', '723', '1536', '864', 'a0b1559631893347e1f1g1h1i1k3l955m961n965o1097p1114q1123r1124s1125t1125u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '231894321_561', '10139180531150406', '1559631894481');
INSERT INTO `data_monitor_post` VALUES ('93', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|231894321_561|1559631911747|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|7|_load_|_load_|-|1559631911760|1559631912196|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559631912189|1559631912196|52', 'RID_2418', '732103659', '1559631912189', '1536', '723', '1536', '864', 'a0b1559631911760e1f1g1h1i1k3l98m101n110o399p419q424r429s430t430u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '231911881_277', '10139180531150406', '1559631912211');
INSERT INTO `data_monitor_post` VALUES ('94', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|231911881_277|1559631924081|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|9|_load_|_load_|-|1559631924087|1559631924289|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559631924288|1559631924289|52', 'RID_2418', '732103659', '1559631924287', '1536', '723', '1536', '864', 'a0b1559631924087e2f2g2h2i2k3l40m45n51o182p194q199r200s201t202u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '231924146_857', '10139180531150406', '1559631924303');
INSERT INTO `data_monitor_post` VALUES ('95', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|231924146_857|1559631944561|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|11|_load_|_load_|-|1559631944567|1559631944795|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559631944791|1559631944795|52', 'RID_2418', '732103659', '1559631944792', '1536', '723', '1536', '864', 'a0b1559631944567e1f1g1h1i1k3l40m42n52o200p217q222r225s226t226u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '231944623_749', '10139180531150406', '1559631944802');
INSERT INTO `data_monitor_post` VALUES ('96', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559631997970|0|52,2|2|_onload_|_load_|-|1559631998194|1559631998200|52', 'RID_2418', '732103659', '1559631998194', '1536', '723', '1536', '864', 'a0b1559631997970e0f0g0h0i0k2l43m47n62o200p214q222r224s226t226u26019v25901w25901', '180|c', '179', '211|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '1', '231998043_28', '10139180531150406', '1559631999531');
INSERT INTO `data_monitor_post` VALUES ('97', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632107248|0|52,2|2|_onload_|_load_|-|1559632108319|1559632108325|52', 'RID_2418', '732103659', '1559632108319', '1536', '723', '1536', '864', 'a0b1559632107248e2f6g7h7i17k18l748m753n760o1044p1055q1070r1071s1072t1072u26020v25902w25902', '980|f', '876', '1052|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '9', '232108014_377', '10139180531150406', '1559632109191');
INSERT INTO `data_monitor_post` VALUES ('98', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559632275695|1559632275955|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559632275950|1559632275955|52', 'RID_2418', '732103659', '1559632275951', '1536', '723', '1536', '864', 'a0b1559632275695e4f9g12h12i14k14l72m76n82o234p245q255r256s257t257u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '7', '232275785_218', '10139180531150406', '1559632275959');
INSERT INTO `data_monitor_post` VALUES ('99', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|232275785_218|1559632277060|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559632277068|1559632277281|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559632277280|1559632277281|52', 'RID_2418', '732103659', '1559632277279', '1536', '723', '1536', '864', 'a0b1559632277068e1f1g1h1i1k2l36m39n49o196p206q211r211s212t213u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '232277131_666', '10139180531150406', '1559632277289');
INSERT INTO `data_monitor_post` VALUES ('100', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|232277131_666|1559632354101|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559632354109|1559632354341|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559632354336|1559632354341|52', 'RID_2418', '732103659', '1559632354337', '1536', '723', '1536', '864', 'a0b1559632354109e1f2g3h3i3k3l47m51n58o210p221q227r228s229t229u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '232354174_675', '10139180531150406', '1559632354347');
INSERT INTO `data_monitor_post` VALUES ('101', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|基线管理|C|-|232354174_675|1559632355945|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559632355954|1559632356141|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559632356137|1559632356141|52', 'RID_2418', '732103659', '1559632356138', '1536', '723', '1536', '864', 'a0b1559632355954e1f1g1h1i1k3l39m43n49o170p178q183r184s185t185u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232356015_30', '10139180531150406', '1559632356144');
INSERT INTO `data_monitor_post` VALUES ('102', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|232356015_30|1559632356553|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|11|_load_|_load_|-|1559632356560|1559632356755|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559632356747|1559632356755|52', 'RID_2418', '732103659', '1559632356748', '1536', '723', '1536', '864', 'a0b1559632356560e1f1g1h1i1k3l29m33n41o172p183q187r188s189t189u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '232356609_241', '10139180531150406', '1559632356760');
INSERT INTO `data_monitor_post` VALUES ('103', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|232356609_241|1559632357041|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|13|_load_|_load_|-|1559632357050|1559632357249|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559632357247|1559632357249|52', 'RID_2418', '732103659', '1559632357247', '1536', '723', '1536', '864', 'a0b1559632357050e0f0g0h0i0k3l38m41n50o177p188q196r197s197t197u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '232357109_844', '10139180531150406', '1559632357256');
INSERT INTO `data_monitor_post` VALUES ('104', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632391821|1559632392068|52,2|2|_onload_|_load_|-|1559632392064|1559632392068|52', 'RID_2418', '732103659', '1559632392064', '1536', '723', '1536', '864', 'a0b1559632391821e1f1g1h1i1k8l53m61n72o224p236q242r243s245t245u26018v25900w25900', '205|c', '204', '234|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '232391899_409', '10139180531150406', '1559632394063');
INSERT INTO `data_monitor_post` VALUES ('105', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559632432933|1559632433470|52,2|2|_onload_|_load_|-|1559632433459|1559632433470|52', 'RID_2418', '732103659', '1559632433459', '1536', '723', '1536', '864', 'a0b1559632432933e2f2g2h2i2k20l94m105n125o471p496q522r526s534t534u26019v25901w25901', '302|c', '301', '488|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/', '测试质量查询平台', '10', '232433092_848', '10139180531150406', '1559632435423');
INSERT INTO `data_monitor_post` VALUES ('106', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559632459358|0|314,2|2|_onload_|_load_|-|1559632461034|1559632461037|314', 'RID_2418', '732103659', '1559632461035', '1536', '723', '1536', '864', 'a1b1559632459358e1f1g1h1i1k3l706m711n718o1321p1336q1371r1677s1678t1678u28967v28848w28848', '1602|c', '1493', '1334|http://ipv6.dynatrace/image/logo.jpg', 'http://ipv6.dynatrace/', '长城金点官网', '1', '232460090_8', '10139180531150406', '1559632462621');
INSERT INTO `data_monitor_post` VALUES ('107', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/about.aspx', 'd|-1|关于金点|C|-|232460090_8|1559632462588|http://ipv6.dynatrace/|长城金点官网,1|1|_load_|_load_|-|1559632462624|0|214|-|-|-|-|-|http://ipv6.dynatrace/,2|2|_onload_|_load_|-|1559632463573|1559632463577|214', 'RID_2418', '732103659', '1559632463573', '1536', '723', '1536', '864', 'a0b1559632462624e5f5g5h5i5k16l490m494n501o654p672q749r949s951t951u21263v21152w21152', '948|c', '865', '834|http://ipv6.dynatrace/image/code.jpg', 'http://ipv6.dynatrace/about.aspx', '关于金点_长城金点网站', '8', '232463134_959', '10139180531150406', '1559632464705');
INSERT INTO `data_monitor_post` VALUES ('108', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/news.aspx', 'd|-1|新闻中心|C|-|232463134_959|1559632464697|http://ipv6.dynatrace/about.aspx|关于金点_长城金点网站,1|1|_load_|_load_|-|1559632464708|0|296|-|-|-|-|-|http://ipv6.dynatrace/about.aspx,2|2|_onload_|_load_|-|1559632466084|1559632466087|296', 'RID_2418', '732103659', '1559632466084', '1536', '723', '1536', '864', 'a0b1559632464708e2f2g2h2i2k12l576m594n585o774p783q801r1376s1378t1378u28260v28142w28142', '1374|f', '1110', '1376|http://ipv6.dynatrace/Upload/20131108034013.jpg', 'http://ipv6.dynatrace/news.aspx', '长城金点', '6', '232465299_821', '10139180531150406', '1559632466405');
INSERT INTO `data_monitor_post` VALUES ('109', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/zdxm.aspx', 'd|-1|重大项目|C|-|232465299_821|1559632466386|http://ipv6.dynatrace/news.aspx|长城金点,1|1|_load_|_load_|-|1559632466409|0|219|-|-|-|-|-|http://ipv6.dynatrace/news.aspx,2|2|_onload_|_load_|-|1559632467281|1559632467285|219', 'RID_2418', '732103659', '1559632467282', '1536', '723', '1536', '864', 'a0b1559632466409e5f5g5h5i5k28l462m464n471o580p594q650r873s874t874u21981v21870w21870', '865|f', '820', '744|http://ipv6.dynatrace/image/code.jpg', 'http://ipv6.dynatrace/zdxm.aspx', '长城金点_60周年国庆', '14', '232466892_458', '10139180531150406', '1559632468050');
INSERT INTO `data_monitor_post` VALUES ('110', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/zhfa.aspx', 'd|-1|物联方案|C|-|232466892_458|1559632468026|http://ipv6.dynatrace/zdxm.aspx|长城金点_60周年国庆,1|1|_load_|_load_|-|1559632468053|0|411|-|-|-|-|-|http://ipv6.dynatrace/zdxm.aspx,2|2|_onload_|_load_|-|1559632469577|1559632469582|411', 'RID_2418', '732103659', '1559632469578', '1536', '723', '1536', '864', 'a0b1559632468053e4f4g4h4i4k12l1119m1127n1138o1252p1268q1307r1525s1526t1526u28003v27885w27885', '1487|f', '1406', '1342|http://ipv6.dynatrace/Upload/20131115044147.jpg', 'http://ipv6.dynatrace/zhfa.aspx', '长城金点_物联方案', '6', '232469204_749', '10139180531150406', '1559632470140');
INSERT INTO `data_monitor_post` VALUES ('111', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/rjzx.aspx', 'd|-1|投资关系|C|-|232469204_749|1559632470107|http://ipv6.dynatrace/zhfa.aspx|长城金点_物联方案,1|1|_load_|_load_|-|1559632470147|0|214|-|-|-|-|-|http://ipv6.dynatrace/zhfa.aspx', 'RID_2418', '732103659', '1559632470927', '1536', '723', '1536', '864', 'a0b1559632470147e3f3g3h3i3k13l519m523n538o740p752q781u21410v21299w21299', '1329|f', '857', '1090|http://ipv6.dynatrace/appUpdata/image/20170906/20170906092807_5312.png', 'http://ipv6.dynatrace/rjzx.aspx', '投资关系_长城金点', '6', '232470696_59', '10139180531150406', '1559632471685');
INSERT INTO `data_monitor_post` VALUES ('112', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/ywfw.aspx', 'd|-1|下属公司|C|-|232470696_59|1559632471658|http://ipv6.dynatrace/rjzx.aspx|投资关系_长城金点,1|1|_load_|_load_|-|1559632471691|1559632473667|212|-|-|-|-|-|http://ipv6.dynatrace/rjzx.aspx,2|2|_onload_|_load_|-|1559632473665|1559632473667|212', 'RID_2418', '732103659', '1559632473665', '1536', '723', '1536', '864', 'a0b1559632471691e1f1g1h1i1k3l592m598n618o1324p1331q1373r1974s1975t1975u21163v21052w21052', '0|c', '0', '1330|http://ipv6.dynatrace/image/logo.jpg', 'http://ipv6.dynatrace/ywfw.aspx', '长城金点_下属公司', '1', '232472319_545', '10139180531150406', '1559632475042');
INSERT INTO `data_monitor_post` VALUES ('113', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/ywfw.aspx?id=776', 'd|-1|长城金点软件（北京）有限公司|C|-|232472319_545|1559632475066|http://ipv6.dynatrace/ywfw.aspx|长城金点_下属公司,1|1|_load_|_load_|-|1559632475072|1559632477338|212|-|-|-|-|-|http://ipv6.dynatrace/ywfw.aspx,2|2|_onload_|_load_|-|1559632477333|1559632477338|212', 'RID_2418', '732103659', '1559632477333', '1536', '723', '1536', '864', 'a0b1559632475072e3f3g3h3i3k10l867m871n880o1532p1542q1561r2261s2264t2264u21163v21052w21052', '0|c', '0', '2071|http://ipv6.dynatrace/image/code.jpg', 'http://ipv6.dynatrace/ywfw.aspx?id=776', '长城金点_下属公司', '5', '232475969_71', '10139180531150406', '1559632478639');
INSERT INTO `data_monitor_post` VALUES ('114', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/ReadingParty.aspx', 'd|-1|金点文化|C|-|232475969_71|1559632480851|http://ipv6.dynatrace/ywfw.aspx?id=776|长城金点_下属公司,1|1|_load_|_load_|-|1559632480861|1559632483839|231|-|-|-|-|-|http://ipv6.dynatrace/ywfw.aspx?id=776,2|2|_onload_|_load_|-|1559632483838|1559632483839|231', 'RID_2418', '732103659', '1559632483832', '1536', '723', '1536', '864', 'a0b1559632480861e4f4g4h4i4k16l652m657n663o806p815q852r2971s2977t2978u22254v22143w22143', '0|c', '0', '2717|http://ipv6.dynatrace/appUpdata/image/20180122/20180122150246_3812.png', 'http://ipv6.dynatrace/ReadingParty.aspx', '长城金点', '8', '232481535_522', '10139180531150406', '1559632484699');
INSERT INTO `data_monitor_post` VALUES ('115', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632494381|0|52,2|2|_onload_|_load_|-|1559632494611|1559632494621|52', 'RID_2418', '732103659', '1559632494611', '1536', '723', '1536', '864', 'a0b1559632494381e2f2g2h2i2k4l32m38n46o199p215q229r230s236t236u26018v25900w25900', '181|c', '180', '212|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '232494439_861', '10139180531150406', '1559632496042');
INSERT INTO `data_monitor_post` VALUES ('116', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', '0|1|_load_|S,1|3|_load_|_load_|-|1559632498253|1559632498448|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559632498441|1559632498448|52', 'RID_2418', '732103659', '1559632498442', '1536', '723', '1536', '864', 'a0b1559632498253e3f3g3h3i3k6l44m51n56o168p182q188r189s190t190u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '3', '232498322_62', '10139180531150406', '1559632498452');
INSERT INTO `data_monitor_post` VALUES ('117', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|232498322_62|1559632510420|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559632510430|1559632510718|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559632510713|1559632510718|52', 'RID_2418', '732103659', '1559632510714', '1536', '723', '1536', '864', 'a0b1559632510430e1f1g1h1i1k5l62m65n76o259p274q283r284s285t285u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '2', '232510516_943', '10139180531150406', '1559632510723');
INSERT INTO `data_monitor_post` VALUES ('118', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|232510516_943|1559632511490|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559632511496|1559632511675|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559632511671|1559632511675|52', 'RID_2418', '732103659', '1559632511671', '1536', '723', '1536', '864', 'a0b1559632511496e1f1g1h1i1k2l25m28n36o160p168q175r175s176t176u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '232511537_591', '10139180531150406', '1559632511680');
INSERT INTO `data_monitor_post` VALUES ('119', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|基线管理|C|-|232511537_591|1559632512730|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559632512735|1559632512919|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559632512915|1559632512919|52', 'RID_2418', '732103659', '1559632512916', '1536', '723', '1536', '864', 'a0b1559632512735e1f1g1h1i1k2l31m34n41o166p175q180r181s182t182u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232512788_584', '10139180531150406', '1559632512924');
INSERT INTO `data_monitor_post` VALUES ('120', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|232512788_584|1559632513273|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|11|_load_|_load_|-|1559632513280|1559632513466|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559632513458|1559632513466|52', 'RID_2418', '732103659', '1559632513458', '1536', '723', '1536', '864', 'a0b1559632513280e1f1g1h1i1k2l27m32n40o163p174q178r178s180t180u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '232513334_199', '10139180531150406', '1559632513472');
INSERT INTO `data_monitor_post` VALUES ('121', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632592640|0|52|-|-|-|-|-|http://ipv6.dynatrace/login,2|2|_onload_|_load_|-|1559632592869|1559632592878|52', 'RID_2418', '732103659', '1559632592869', '1536', '723', '1536', '864', 'a1b1559632592640e4f4g4h4i4k10l34m41n46o187p207q228r229s232t232u26020v25902w25902', '167|c', '140', '196|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '232592694_73', '10139180531150406', '1559632594664');
INSERT INTO `data_monitor_post` VALUES ('122', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559632600206|1559632600442|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559632600437|1559632600442|52', 'RID_2418', '732103659', '1559632600437', '1536', '723', '1536', '864', 'a0b1559632600206e0f0g0h0i0k2l29m32n35o217p225q230r231s232t232u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232600261_307', '10139180531150406', '1559632600447');
INSERT INTO `data_monitor_post` VALUES ('123', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|优化建议总览|C|-|232600261_307|1559632602929|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559632618351|1559632618596|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559632618590|1559632618596|52', 'RID_2418', '732103659', '1559632618590', '1536', '723', '1536', '864', 'a0b1559632618351e0f0g0h0i0k2l46m50n54o215p228q238r239s240t240u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232618429_672', '10139180531150406', '1559632618604');
INSERT INTO `data_monitor_post` VALUES ('124', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|优化建议总览|C|-|232618429_672|1559632623465|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|7|_load_|_load_|-|1559632626914|1559632627125|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559632627119|1559632627125|52', 'RID_2418', '732103659', '1559632627120', '1536', '723', '1536', '864', 'a0b1559632626914e1f1g1h1i1k2l33m37n39o191p200q204r206s208t208u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232626976_16', '10139180531150406', '1559632627132');
INSERT INTO `data_monitor_post` VALUES ('125', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', '1|11|_load_|_load_|-|1559632631132|1559632631307|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559632631301|1559632631307|52', 'RID_2418', '732103659', '1559632631302', '1536', '723', '1536', '864', 'a0b1559632631132e4f4g4h4i4k7l38m41n51o147p163q168r170s171t171u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '3', '232631194_580', '10139180531150406', '1559632631312');
INSERT INTO `data_monitor_post` VALUES ('126', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|232629429_126|1559632633609|http://ipv6.dynatrace/loginPost|报表系统,1|13|_load_|_load_|-|1559632633618|1559632633791|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559632633787|1559632633791|52', 'RID_2418', '732103659', '1559632633788', '1536', '723', '1536', '864', 'a0b1559632633618e1f1g1h1i1k2l28m29n43o155p164q169r170s171t171u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '232633676_628', '10139180531150406', '1559632633795');
INSERT INTO `data_monitor_post` VALUES ('127', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', 'd|-1|优化建议总览|C|-|232633676_628|1559632635537|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|15|_load_|_load_|-|1559632637440|1559632637642|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|16|_onload_|_load_|-|1559632637639|1559632637642|52', 'RID_2418', '732103659', '1559632637639', '1536', '723', '1536', '864', 'a0b1559632637440e0f0g0h0i0k2l33m35n40o179p191q198r199s200t200u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232637494_916', '10139180531150406', '1559632637648');
INSERT INTO `data_monitor_post` VALUES ('128', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632708306|1559632777167|52,2|2|_onload_|_load_|-|1559632777161|1559632777167|52', 'RID_2418', '732103659', '1559632777162', '1536', '723', '1536', '864', 'a0b1559632708306e2f3g7h7i13k13l64611m64615n64632o68841p68850q68855r68856s68858t68858u26019v25901w25901', '68803|c', '68780', '68846|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '6', '232772945_10', '10139180531150406', '1559632779161');
INSERT INTO `data_monitor_post` VALUES ('129', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559632794842|1559632843569|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559632843562|1559632843569|52', 'RID_2418', '732103659', '1559632843563', '1536', '723', '1536', '864', 'a0b1559632794842e2f2g2h2i2k5l40790m40795n40801o48696p48710q48720r48721s48722t48722u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '232835668_923', '10139180531150406', '1559632843582');
INSERT INTO `data_monitor_post` VALUES ('130', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|基线管理|KU9|-|232784202_894|1559632844345|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559632846321|1559632846531|52,2|2|_onload_|_load_|-|1559632846526|1559632846531|52', 'RID_2418', '732103659', '1559632846526', '1536', '723', '1536', '864', 'a0b1559632846321e1f1g1h1i1k6l35m39n50o187p197q204r205s207t207u26020v25902w25902', '175|c', '175', '194|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '232846379_680', '10139180531150406', '1559632848524');
INSERT INTO `data_monitor_post` VALUES ('131', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632879039|0|52,2|2|_onload_|_load_|-|1559632879304|1559632879308|52', 'RID_2418', '732103659', '1559632879304', '1536', '723', '1536', '864', 'a0b1559632879039e11f11g11h11i11k12l51m54n60o247p260q265r265s267t267u26019v25901w25901', '213|c', '212', '257|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '6', '232879104_582', '10139180531150406', '1559632880795');
INSERT INTO `data_monitor_post` VALUES ('132', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559632882944|1559632883130|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559632883121|1559632883130|52', 'RID_2418', '732103659', '1559632883121', '1536', '723', '1536', '864', 'a0b1559632882944e1f1g1h1i1k3l32m35n40o165p172q176r177s180t180u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '232882996_242', '10139180531150406', '1559632883139');
INSERT INTO `data_monitor_post` VALUES ('133', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559632925617|0|52,2|2|_onload_|_load_|-|1559632926016|1559632926022|52', 'RID_2418', '732103659', '1559632926017', '1536', '723', '1536', '864', 'a0b1559632925617e2f2g2h2i2k9l78m80n90o372p385q398r400s403t403u26019v25901w25901', '349|c', '348', '381|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '232925715_69', '10139180531150406', '1559632927517');
INSERT INTO `data_monitor_post` VALUES ('134', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633048767|0|52,2|2|_onload_|_load_|-|1559633049205|1559633049219|52', 'RID_2418', '732103659', '1559633049204', '1536', '723', '1536', '864', 'a0b1559633048767e2f6g7h7i12k12l66m87n83o398p418q435r437s444t444u26019v25901w25901', '236|c', '235', '412|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '6', '233048891_990', '10139180531150406', '1559633050446');
INSERT INTO `data_monitor_post` VALUES ('135', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559633056892|1559633057151|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633057145|1559633057151|52', 'RID_2418', '732103659', '1559633057145', '1536', '723', '1536', '864', 'a0b1559633056892e1f1g1h1i1k3l47m51n57o234p243q252r253s254t254u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '233056963_725', '10139180531150406', '1559633057157');
INSERT INTO `data_monitor_post` VALUES ('136', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|233056963_725|1559633057699|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559633057709|1559633057896|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559633057893|1559633057896|52', 'RID_2418', '732103659', '1559633057893', '1536', '723', '1536', '864', 'a0b1559633057709e1f1g1h1i1k2l36m38n51o161p178q183r184s185t185u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '233057769_355', '10139180531150406', '1559633057904');
INSERT INTO `data_monitor_post` VALUES ('137', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|233057769_355|1559633058378|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|7|_load_|_load_|-|1559633058392|1559633058580|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559633058576|1559633058580|52', 'RID_2418', '732103659', '1559633058577', '1536', '723', '1536', '864', 'a0b1559633058392e2f2g2h2i2k4l34m37n48o168p178q184r185s186t186u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '2', '233058453_266', '10139180531150406', '1559633058584');
INSERT INTO `data_monitor_post` VALUES ('138', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|233050564_901|1559633072121|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559633073414|1559633082235|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559633082231|1559633082235|52', 'RID_2418', '732103659', '1559633082231', '1536', '723', '1536', '864', 'a0b1559633073414e1f1g1h1i1k3l2562m2566n2588o8792p8804q8815r8817s8820t8820u26020v25902w25902', '8785|c', '8784', '8800|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '1', '233076011_560', '10139180531150406', '1559633084220');
INSERT INTO `data_monitor_post` VALUES ('139', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559633139546|1559633139770|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633139765|1559633139770|52', 'RID_2418', '732103659', '1559633139765', '1536', '723', '1536', '864', 'a0b1559633139546e2f2g2h2i2k4l37m45n54o190p204q217r219s220t220u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '233139607_508', '10139180531150406', '1559633139776');
INSERT INTO `data_monitor_post` VALUES ('140', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633157810|0|52,2|2|_onload_|_load_|-|1559633158047|1559633158048|52', 'RID_2418', '732103659', '1559633158046', '1536', '723', '1536', '864', 'a0b1559633157810e0f0g0h0i0k2l36m45n73o213p225q235r236s237t238u26019v25901w25901', '199|c', '198', '220|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '1', '233157892_724', '10139180531150406', '1559633159104');
INSERT INTO `data_monitor_post` VALUES ('141', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633236890|1559633246285|52,2|2|_onload_|_load_|-|1559633246280|1559633246285|52', 'RID_2418', '732103659', '1559633246281', '1536', '723', '1536', '864', 'a0b1559633236890e1f1g1h1i1k5l3917m3919n3931o9336p9378q9389r9391s9392t9392u26020v25902w25902', '9313|c', '9312', '9373|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '233240827_98', '10139180531150406', '1559633248268');
INSERT INTO `data_monitor_post` VALUES ('142', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', '1|3|_load_|_load_|-|1559633282069|1559633301469|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633301464|1559633301469|52', 'RID_2418', '732103659', '1559633301465', '1536', '723', '1536', '864', 'a0b1559633282069e2f2g2h2i2k5l15640m15643n15647o19367p19386q19395r19396s19397t19397u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '2', '233297721_560', '10139180531150406', '1559633301475');
INSERT INTO `data_monitor_post` VALUES ('143', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|233297721_560|1559633313768|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|5|_load_|_load_|-|1559633313939|1559633326802|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559633326796|1559633326802|52', 'RID_2418', '732103659', '1559633326796', '1536', '723', '1536', '864', 'a0b1559633313939e26f26g26h26i26k185l3892m3895n3975o12833p12844q12849r12857s12861t12861u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '92', '233317943_473', '10139180531150406', '1559633326810');
INSERT INTO `data_monitor_post` VALUES ('144', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|233317943_473|1559633328706|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|7|_load_|_load_|-|1559633328714|1559633390092|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559633390089|1559633390092|52', 'RID_2418', '732103659', '1559633390089', '1536', '723', '1536', '864', 'a0b1559633328714e1f1g1h1i1k2l59648m59653n59666o61360p61369q61373r61375s61377t61377u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '233388394_315', '10139180531150406', '1559633390098');
INSERT INTO `data_monitor_post` VALUES ('145', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|233388394_315|1559633441744|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|9|_load_|_load_|-|1559633441751|1559633441978|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559633441973|1559633441978|52', 'RID_2418', '732103659', '1559633441973', '1536', '723', '1536', '864', 'a0b1559633441751e1f1g1h1i1k2l39m43n52o200p215q221r222s224t224u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '233441812_106', '10139180531150406', '1559633441986');
INSERT INTO `data_monitor_post` VALUES ('146', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633459737|1559633468911|52,2|2|_onload_|_load_|-|1559633468907|1559633468911|52', 'RID_2418', '732103659', '1559633468907', '1536', '723', '1536', '864', 'a0b1559633459737e1f1g1h1i1k4l7112m7115n7129o9144p9159q9166r9170s9171t9171u26018v25900w25900', '9146|c', '9137', '9170|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '233466883_595', '10139180531150406', '1559633470897');
INSERT INTO `data_monitor_post` VALUES ('147', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559633525536|1559633530297|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633530293|1559633530297|52', 'RID_2418', '732103659', '1559633530293', '1536', '723', '1536', '864', 'a0b1559633525536e1f1g1h1i1k4l3308m3315n3319o4734p4745q4754r4757s4759t4759u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '2', '233528877_273', '10139180531150406', '1559633530301');
INSERT INTO `data_monitor_post` VALUES ('148', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|233528877_273|1559633593281|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559633593289|1559633675141|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559633675134|1559633675141|52', 'RID_2418', '732103659', '1559633675135', '1536', '723', '1536', '864', 'a0b1559633593289e2f3g4h4i4k4l81647m81656n81667o81827p81839q81845r81846s81847t81847u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '2', '233674962_609', '10139180531150406', '1559633675149');
INSERT INTO `data_monitor_post` VALUES ('149', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|233674962_609|1559633679471|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559633679482|1559633695235|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559633695232|1559633695235|52', 'RID_2418', '732103659', '1559633695232', '1536', '723', '1536', '864', 'a0b1559633679482e1f1g1h1i1k2l15543m15547n15558o15731p15742q15749r15750s15751t15751u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '233695051_88', '10139180531150406', '1559633695241');
INSERT INTO `data_monitor_post` VALUES ('150', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|233695051_88|1559633701303|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559633701315|1559633701507|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559633701502|1559633701507|52', 'RID_2418', '732103659', '1559633701502', '1536', '723', '1536', '864', 'a0b1559633701315e1f1g1h1i1k2l27m33n43o166p178q186r187s190t190u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '233701369_54', '10139180531150406', '1559633701515');
INSERT INTO `data_monitor_post` VALUES ('151', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633706143|0|52,2|2|_onload_|_load_|-|1559633706360|1559633706369|52', 'RID_2418', '732103659', '1559633706361', '1536', '723', '1536', '864', 'a0b1559633706143e1f1g1h1i1k11l38m42n52o191p212q217r218s221t221u26019v25901w25901', '160|f', '159', '208|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '233706203_289', '10139180531150406', '1559633707189');
INSERT INTO `data_monitor_post` VALUES ('152', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '0|1|_load_|S,1|3|_load_|_load_|-|1559633709262|1559633709433|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633709425|1559633709433|52', 'RID_2418', '732103659', '1559633709426', '1536', '723', '1536', '864', 'a0b1559633709262e2f2g2h2i2k5l31m35n39o146p158q162r164s166t166u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '233709313_782', '10139180531150406', '1559633709439');
INSERT INTO `data_monitor_post` VALUES ('153', 'js', 'B70GM0P52Q64PO4E99RCMENMUR98EUUL', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|233709313_782|1559633717330|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559633717338|1559633754312|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559633754302|1559633754312|52', 'RID_2418', '732103659', '1559633754303', '1536', '723', '1536', '864', 'a0b1559633717338e2f2g2h2i2k4l32942m32954n32967o36666p36684q36693r36965s36973t36973u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '2', '233750318_67', '10139180531150406', '1559633754328');
INSERT INTO `data_monitor_post` VALUES ('154', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559633935092|1559633935336|52,2|2|_onload_|_load_|-|1559633935335|1559633935336|52', 'RID_2418', '732103659', '1559633935332', '1536', '723', '1536', '864', 'a1b1559633935092e2f2g2h2i2k4l33m35n49o208p227q239r240s243t244u26020v25902w25902', '161|c', '160', '218|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '233935150_297', '10139180531150406', '1559633937318');
INSERT INTO `data_monitor_post` VALUES ('155', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/userListJsp', '0|1|_load_|S,1|3|_load_|_load_|-|1559633949813|1559633950032|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559633950026|1559633950032|52', 'RID_2418', '732103659', '1559633950026', '1536', '723', '1536', '864', 'a0b1559633949813e1f1g1h1i1k3l36m40n41o199p207q212r213s215t215u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '233949871_659', '10139180531150406', '1559633950036');
INSERT INTO `data_monitor_post` VALUES ('156', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|233949871_659|1559633957898|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559633957909|1559634073808|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559634073409|1559634073808|52', 'RID_2418', '732103659', '1559634073410', '1536', '723', '1536', '864', 'a0b1559633957909e1f1g1h1i1k3l102810m102819n102839o110897p110919q110933r115501s115503t115503u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '234060758_761', '10139180531150406', '1559634073829');
INSERT INTO `data_monitor_post` VALUES ('157', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|234060758_761|1559634076337|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559634076345|1559634084906|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559634084905|1559634084906|52', 'RID_2418', '732103659', '1559634084903', '1536', '723', '1536', '864', 'a0b1559634076345e1f1g1h1i1k2l5112m5119n5142o8499p8513q8520r8558s8560t8561u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '234081496_261', '10139180531150406', '1559634084911');
INSERT INTO `data_monitor_post` VALUES ('158', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|234081496_261|1559634088977|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559634088985|1559634089233|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559634089227|1559634089233|52', 'RID_2418', '732103659', '1559634089227', '1536', '723', '1536', '864', 'a0b1559634088985e0f0g0h0i0k2l78m82n94o222p235q241r242s243t243u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '234089087_558', '10139180531150406', '1559634089243');
INSERT INTO `data_monitor_post` VALUES ('159', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|234089087_558|1559634100817|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|11|_load_|_load_|-|1559634100824|1559634130378|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559634130374|1559634130378|52', 'RID_2418', '732103659', '1559634130374', '1536', '723', '1536', '864', 'a0b1559634100824e1f1g1h1i1k2l28305m28309n28325o29522p29538q29548r29550s29553t29553u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '234129163_70', '10139180531150406', '1559634130384');
INSERT INTO `data_monitor_post` VALUES ('160', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559634168855|1559634202980|52,2|2|_onload_|_load_|-|1559634202972|1559634202980|52', 'RID_2418', '732103659', '1559634202973', '1536', '723', '1536', '864', 'a0b1559634168855e1f2g9h9i12k12l17954m17963n17977o33139p33154q33171r34118s34122t34122u26017v25899w25899', '34114|c', '34099', '34117|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '6', '234186843_693', '10139180531150406', '1559634204021');
INSERT INTO `data_monitor_post` VALUES ('161', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559634247205|1559634266934|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559634266923|1559634266934|52', 'RID_2418', '732103659', '1559634266923', '1536', '723', '1536', '864', 'a0b1559634247205e0f0g0h0i0k2l18635m18653n18657o19622p19651q19671r19718s19721t19721u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '234265870_187', '10139180531150406', '1559634266945');
INSERT INTO `data_monitor_post` VALUES ('162', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|234265870_187|1559634268962|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559634268975|1559634287141|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559634287137|1559634287141|52', 'RID_2418', '732103659', '1559634287137', '1536', '723', '1536', '864', 'a0b1559634268975e1f1g1h1i1k2l13681m13686n13695o17846p17854q17860r18162s18164t18164u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '234282680_11', '10139180531150406', '1559634287149');
INSERT INTO `data_monitor_post` VALUES ('163', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|234282680_11|1559634306145|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559634306152|1559634405687|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559634405684|1559634405687|52', 'RID_2418', '732103659', '1559634405684', '1536', '723', '1536', '864', 'a0b1559634306152e2f2g2h2i2k3l95525m95531n95552o99089p99103q99109r99532s99534t99534u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '234401710_867', '10139180531150406', '1559634405695');
INSERT INTO `data_monitor_post` VALUES ('164', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559634517692|0|52,2|2|_onload_|_load_|-|1559634517970|1559634517975|52', 'RID_2418', '732103659', '1559634517971', '1536', '723', '1536', '864', 'a0b1559634517692e1f3g3h3i6k6l42m46n65o261p271q278r279s280t280u26019v25901w25901', '222|c', '221', '268|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '234517766_411', '10139180531150406', '1559634519186');
INSERT INTO `data_monitor_post` VALUES ('165', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559634736013|0|52,2|2|_onload_|_load_|-|1559634736257|1559634736264|52', 'RID_2418', '732103659', '1559634736258', '1536', '723', '1536', '864', 'a0b1559634736013e2f2g2h2i2k4l39m42n51o213p231q242r245s248t248u26019v25901w25901', '202|c', '199', '222|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '234736073_553', '10139180531150406', '1559634737446');
INSERT INTO `data_monitor_post` VALUES ('166', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559634797536|0|52,2|2|_onload_|_load_|-|1559634798780|1559634798792|52', 'RID_2418', '732103659', '1559634798780', '1536', '723', '1536', '864', 'a0b1559634797536e1f5g6h6i9k9l899m901n906o1203p1227q1241r1244s1249t1249u26019v25901w25901', '1134|f', '1071', '1215|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '234798458_319', '10139180531150406', '1559634799631');
INSERT INTO `data_monitor_post` VALUES ('167', 'js', 'CE8243FCFM3UNQM8GEM2MEMHOPUSLQQ3', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559634806889|1559634811542|52,2|2|_onload_|_load_|-|1559634811537|1559634811542|52', 'RID_2418', '732103659', '1559634811537', '1536', '723', '1536', '864', 'a0b1559634806889e0f0g0h0i0k4l4435m4440n4452o4619p4634q4647r4648s4649t4649u26019v25901w25901', '4596|c', '4595', '4629|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '234811349_78', '10139180531150406', '1559634813525');
INSERT INTO `data_monitor_post` VALUES ('168', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559635119156|1559635130264|52,2|2|_onload_|_load_|-|1559635130257|1559635130264|52', 'RID_2418', '732103659', '1559635130257', '1536', '723', '1536', '864', 'a1b1559635119156e8f12g12h12i26k33l8153m8156n8164o10269p10437q10453r11101s11106t11106u26019v25901w25901', '11099|c', '10036', '11100|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '16', '235127330_402', '10139180531150406', '1559635131451');
INSERT INTO `data_monitor_post` VALUES ('169', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559635146926|1559635177197|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559635177188|1559635177197|52', 'RID_2418', '732103659', '1559635177188', '1536', '723', '1536', '864', 'a0b1559635146926e1f1g1h1i1k3l27061m27068n27086o30226p30247q30260r30262s30264t30264u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '235174025_182', '10139180531150406', '1559635177204');
INSERT INTO `data_monitor_post` VALUES ('170', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|235174025_182|1559635336487|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559635336501|1559635384058|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559635384053|1559635384058|52', 'RID_2418', '732103659', '1559635384054', '1536', '723', '1536', '864', 'a0b1559635336501e2f3g4h4i5k5l47314m47320n47333o47539p47548q47552r47553s47554t47554u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '2', '235383886_253', '10139180531150406', '1559635384063');
INSERT INTO `data_monitor_post` VALUES ('171', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559635494239|1559635503099|52,2|2|_onload_|_load_|-|1559635503095|1559635503099|52', 'RID_2418', '732103659', '1559635503095', '1536', '723', '1536', '864', 'a0b1559635494239e1f5g22h22i27k27l8562m8567n8584o8843p8851q8855r8856s8857t8857u26019v25901w25901', '8771|c', '8742', '8849|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '13', '235502835_577', '10139180531150406', '1559635505098');
INSERT INTO `data_monitor_post` VALUES ('172', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559635511717|1559635533392|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559635533381|1559635533392|52', 'RID_2418', '732103659', '1559635533382', '1536', '723', '1536', '864', 'a0b1559635511717e1f1g1h1i1k2l18083m18086n18101o21632p21649q21664r21665s21666t21666u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '235529826_796', '10139180531150406', '1559635533401');
INSERT INTO `data_monitor_post` VALUES ('173', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559635609218|0|52,2|2|_onload_|_load_|-|1559635610324|1559635610356|52', 'RID_2418', '732103659', '1559635610323', '1536', '723', '1536', '864', 'a0b1559635609218e2f7g18h18i19k19l809m812n828o1040p1070q1090r1105s1126t1126u26019v25901w25901', '1079|f', '1031', '1105|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '9', '235610057_16', '10139180531150406', '1559635611224');
INSERT INTO `data_monitor_post` VALUES ('174', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559635613617|1559635613818|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559635613812|1559635613818|52', 'RID_2418', '732103659', '1559635613813', '1536', '723', '1536', '864', 'a0b1559635613617e2f2g2h2i2k5l43m48n56o178p190q194r196s197t197u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '235613683_154', '10139180531150406', '1559635613826');
INSERT INTO `data_monitor_post` VALUES ('175', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|235613683_154|1559635619218|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559635619228|1559635656663|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559635656656|1559635656663|52', 'RID_2418', '732103659', '1559635656656', '1536', '723', '1536', '864', 'a0b1559635619228e0f0g0h0i0k2l37142m37151n37160o37387p37409q37426r37428s37430t37430u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '235656400_909', '10139180531150406', '1559635656671');
INSERT INTO `data_monitor_post` VALUES ('176', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559635692959|1559635699586|52,2|2|_onload_|_load_|-|1559635699573|1559635699586|52', 'RID_2418', '732103659', '1559635699573', '1536', '723', '1536', '864', 'a0b1559635692959e1f2g3h3i4k4l5125m5130n5146o6182p6301q6321r6614s6618t6618u26019v25901w25901', '6607|c', '6445', '6613|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '235698116_275', '10139180531150406', '1559635701163');
INSERT INTO `data_monitor_post` VALUES ('177', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559635718341|1559635882612|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559635882599|1559635882612|52', 'RID_2418', '732103659', '1559635882600', '1536', '723', '1536', '864', 'a0b1559635718341e3f3g3h3i3k5l163984m163992n164004o164221p164242q164257r164259s164263t164263u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '235882356_801', '10139180531150406', '1559635882622');
INSERT INTO `data_monitor_post` VALUES ('178', 'js', '97A5HRMM5MU1EIL77LG8908OQIK9FLRS', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559635994729|0|52,2|2|_onload_|_load_|-|1559635995759|1559635995766|52', 'RID_2418', '732103659', '1559635995759', '1536', '723', '1536', '864', 'a0b1559635994729e2f8g10h10i16k16l723m726n733o1005p1018q1029r1030s1032t1032u26019v25901w25901', '932|f', '867', '1015|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '8', '235995469_872', '10139180531150406', '1559635996435');
INSERT INTO `data_monitor_post` VALUES ('179', 'js', 'DVI64BNG19BK4AIPKTTBFCVMMTH9ASBH', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559636705126|1559636722280|52,2|2|_onload_|_load_|-|1559636722274|1559636722280|52', 'RID_2418', '732103659', '1559636722274', '1536', '723', '1536', '864', 'a1b1559636705126e3f3g3h3i3k4l15659m15660n15672o16811p16832q16849r17148s17150t17150u26019v25901w25901', '17147|c', '17144', '17148|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '236720808_174', '10139180531150406', '1559636723970');
INSERT INTO `data_monitor_post` VALUES ('180', 'js', 'DVI64BNG19BK4AIPKTTBFCVMMTH9ASBH', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559636751007|1559636793585|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559636793579|1559636793585|52', 'RID_2418', '732103659', '1559636793579', '1536', '723', '1536', '864', 'a0b1559636751007e1f1g1h1i1k2l39991m40008n40013o42544p42561q42571r42572s42573t42573u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '236791039_550', '10139180531150406', '1559636793593');
INSERT INTO `data_monitor_post` VALUES ('181', 'js', 'DVI64BNG19BK4AIPKTTBFCVMMTH9ASBH', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|236791039_550|1559636800569|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559636800756|1559636853148|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559636853143|1559636853148|52', 'RID_2418', '732103659', '1559636853143', '1536', '723', '1536', '864', 'a0b1559636800756e8f34g57h57i59k59l26719m26722n26731o52353p52376q52384r52387s52389t52389u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '29', '236827498_8', '10139180531150406', '1559636853157');
INSERT INTO `data_monitor_post` VALUES ('182', 'js', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559636918910|1559636929464|52,2|2|_onload_|_load_|-|1559636929442|1559636929464|52', 'RID_2418', '732103659', '1559636929442', '1536', '723', '1536', '864', 'a0b1559636918910e1f2g20h20i21k24l10090m10092n10099o10483p10515q10529r10532s10548t10548u26020v25902w25902', '10399|c', '10316', '10506|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '12', '236929036_584', '10139180531150406', '1559636931434');
INSERT INTO `data_monitor_post` VALUES ('183', 'js', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '1|3|_load_|_load_|-|1559636940311|1559637009005|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559637008999|1559637009005|52', 'RID_2418', '732103659', '1559637008999', '1536', '723', '1536', '864', 'a0b1559636940311e1f1g1h1i1k3l59062m59068n59074o68668p68682q68687r68688s68689t68689u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '1', '236999399_588', '10139180531150406', '1559637009010');
INSERT INTO `data_monitor_post` VALUES ('184', 'js', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|236999399_588|1559637017945|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559637017957|1559637039067|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559637039064|1559637039067|52', 'RID_2418', '732103659', '1559637039064', '1536', '723', '1536', '864', 'a0b1559637017957e2f2g2h2i2k4l19290m19293n19300o21087p21099q21104r21107s21108t21108u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '2', '237037271_457', '10139180531150406', '1559637039072');
INSERT INTO `data_monitor_post` VALUES ('185', 'js', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|237037271_457|1559637050817|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|7|_load_|_load_|-|1559637050830|1559637110090|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559637110086|1559637110090|52', 'RID_2418', '732103659', '1559637110087', '1536', '723', '1536', '864', 'a0b1559637050830e1f1g1h1i1k3l49820m49822n49837o58381p58400q58408r59257s59258t59258u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '237100681_681', '10139180531150406', '1559637110096');
INSERT INTO `data_monitor_post` VALUES ('186', 'js', 'VBFF0QHR879RFNAFBS51AJPUALGF72UV', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|237100681_681|1559637112346|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559637112356|1559637238570|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559637238569|1559637238570|52', 'RID_2418', '732103659', '1559637238567', '1536', '723', '1536', '864', 'a0b1559637112356e2f2g2h2i2k51l125863m125874n125893o126153p126194q126210r126211s126213t126214u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '25', '237238256_497', '10139180531150406', '1559637238603');
INSERT INTO `data_monitor_post` VALUES ('187', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559637279248|0|52,2|2|_onload_|_load_|-|1559637281185|1559637281197|52', 'RID_2418', '732103659', '1559637281185', '1536', '723', '1536', '864', 'a0b1559637279248e3f121g121h121i123k123l1291m1293n1300o1858p1885q1933r1937s1940t1940u26018v25900w25900', '1590|c', '1588', '1876|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '61', '237280593_142', '10139180531150406', '1559637282254');
INSERT INTO `data_monitor_post` VALUES ('188', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559637297771|1559637349198|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559637349190|1559637349198|52', 'RID_2418', '732103659', '1559637349191', '1536', '723', '1536', '864', 'a0b1559637297771e8f8g8h8i8k25l50224m50226n50231o51396p51412q51419r51420s51422t51422u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '12', '237348014_970', '10139180531150406', '1559637349202');
INSERT INTO `data_monitor_post` VALUES ('189', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559637421043|0|52,2|2|_onload_|_load_|-|1559637422366|1559637422375|52', 'RID_2418', '732103659', '1559637422367', '1536', '723', '1536', '864', 'a1b1559637421043e7f7g7h7i7k14l923m926n930o1284p1304q1321r1324s1326t1326u26018v25900w25900', '1176|c', '1098', '1296|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '7', '237421990_548', '10139180531150406', '1559637423679');
INSERT INTO `data_monitor_post` VALUES ('190', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559637431026|1559637505074|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559637505067|1559637505074|52', 'RID_2418', '732103659', '1559637505067', '1536', '723', '1536', '864', 'a0b1559637431026e2f2g2h2i2k4l66543m66548n66555o73997p74024q74033r74041s74044t74044u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '2', '237497589_853', '10139180531150406', '1559637505097');
INSERT INTO `data_monitor_post` VALUES ('191', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|237497589_853|1559637506577|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559637506586|1559637506778|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559637506774|1559637506778|52', 'RID_2418', '732103659', '1559637506775', '1536', '723', '1536', '864', 'a0b1559637506586e1f1g1h1i1k2l34m38n43o173p184q188r189s190t190u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '237506639_988', '10139180531150406', '1559637506781');
INSERT INTO `data_monitor_post` VALUES ('192', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|237506639_988|1559637519627|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559637519635|1559637557321|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559637557317|1559637557321|52', 'RID_2418', '732103659', '1559637557318', '1536', '723', '1536', '864', 'a0b1559637519635e1f1g1h1i1k2l37432m37441n37457o37671p37678q37682r37683s37684t37684u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '237557103_169', '10139180531150406', '1559637557325');
INSERT INTO `data_monitor_post` VALUES ('193', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|237557103_169|1559637558675|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559637558684|1559637558901|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559637558898|1559637558901|52', 'RID_2418', '732103659', '1559637558898', '1536', '723', '1536', '864', 'a0b1559637558684e1f1g1h1i1k3l48m53n60o198p208q214r214s215t215u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '237558753_338', '10139180531150406', '1559637558911');
INSERT INTO `data_monitor_post` VALUES ('194', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|237558753_338|1559637568129|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|11|_load_|_load_|-|1559637568137|1559637593001|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559637592994|1559637593001|52', 'RID_2418', '732103659', '1559637592994', '1536', '723', '1536', '864', 'a0b1559637568137e1f1g1h1i1k2l20416m20420n20435o24833p24849q24855r24857s24862t24862u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '237588580_62', '10139180531150406', '1559637593006');
INSERT INTO `data_monitor_post` VALUES ('195', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559637843604|0|52,2|2|_onload_|_load_|-|1559637855147|1559637855150|52', 'RID_2418', '732103659', '1559637855147', '1536', '723', '1536', '864', 'a0b1559637843604e1f5g7h7i14k14l11242m11247n11264o11522p11536q11541r11543s11545t11545u26019v25901w25901', '11528|c', '11443', '11543|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '7', '237854878_791', '10139180531150406', '1559637856226');
INSERT INTO `data_monitor_post` VALUES ('196', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559637867326|1559637883198|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559637883192|1559637883198|52', 'RID_2418', '732103659', '1559637883192', '1536', '723', '1536', '864', 'a0b1559637867326e1f1g1h1i1k3l15615m15633n15637o15829p15853q15865r15866s15868t15868u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '237882974_693', '10139180531150406', '1559637883206');
INSERT INTO `data_monitor_post` VALUES ('197', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559637914961|1559637916561|312,2|2|_onload_|_load_|-|1559637916560|1559637916561|312', 'RID_2418', '732103659', '1559637916559', '1536', '723', '1536', '864', 'a0b1559637914961e3f3g3h3i3k12l717m720n724o1149p1159q1329r1598s1599t1600u28934v28815w28815', '0|c', '0', '1158|http://ipv6.dynatrace/image/logo.jpg', 'http://ipv6.dynatrace/', '长城金点官网', '6', '237915702_368', '10139180531150406', '1559637918144');
INSERT INTO `data_monitor_post` VALUES ('198', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/', '1|1|_load_|_load_|-|1559637921654|0|312', 'RID_2418', '732103659', null, null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/', '长城金点官网', '1', '237927984_151', '10139180531150406', '1559637940459');
INSERT INTO `data_monitor_post` VALUES ('199', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/', 'd|-1|Page: http://ipv6.dynatrace/|KU9|-|237915702_368|1559637919455|http://ipv6.dynatrace/|长城金点官网,1|1|_load_|_load_|-|1559637921654|1559637950538|312,2|2|_onload_|_load_|-|1559637950535|1559637950538|312', 'RID_2418', '732103659', '1559637950535', '1536', '723', '1536', '864', 'a1b1559637921654e1f1g1h1i1k3l6302m6306n6319o13757p13813q13840r28881s28882t28882u28934v28815w28815', '0|c', '0', '13811|http://ipv6.dynatrace/image/logo.jpg', 'http://ipv6.dynatrace/', '长城金点官网', '1', '237927984_151', '10139180531150406', '1559637951500');
INSERT INTO `data_monitor_post` VALUES ('200', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/about.aspx', '1|1|_load_|_load_|-|1559637955055|0|212|-|-|-|-|-|http://ipv6.dynatrace/,2|2|_onload_|_load_|-|1559637972424|1559637972428|212', 'RID_2418', '732103659', null, null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/about.aspx', '关于金点_长城金点网站', '2', '237962874_934', '10139180531150406', '1559637972771');
INSERT INTO `data_monitor_post` VALUES ('201', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/about.aspx', 'd|-1|关于金点|C|-|237927984_151|1559637955050|http://ipv6.dynatrace/|长城金点官网,1|1|_load_|_load_|-|1559637955055|1559637972428|212|-|-|-|-|-|http://ipv6.dynatrace/,2|2|_onload_|_load_|-|1559637972424|1559637972428|212', 'RID_2418', '732103659', '1559637972424', '1536', '723', '1536', '864', 'a0b1559637955055e3f3g3h3i3k5l7795m7799n7808o12696p12718q12779r17369s17371t17371u21230v21119w21119', '0|c', '0', '15707|http://ipv6.dynatrace/appUpdata/image/20131104/20131104114154_8437.jpg', 'http://ipv6.dynatrace/about.aspx', '关于金点_长城金点网站', '2', '237962874_934', '10139180531150406', '1559637972792');
INSERT INTO `data_monitor_post` VALUES ('202', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559637987079|1559638001769|52,2|2|_onload_|_load_|-|1559638001766|1559638001769|52', 'RID_2418', '732103659', '1559638001766', '1536', '723', '1536', '864', 'a0b1559637987079e1f1g1h1i1k3l8962m8966n8984o14663p14677q14686r14687s14688t14688u26018v25900w25900', '14649|c', '14648', '14674|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '1', '237996080_363', '10139180531150406', '1559638003761');
INSERT INTO `data_monitor_post` VALUES ('203', 'js', 'THVVUI49L0UAKJS7ST0UIDD59HV11B7H', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559638024515|1559638067427|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559638067421|1559638067427|52', 'RID_2418', '732103659', '1559638067422', '1536', '723', '1536', '864', 'a0b1559638024515e2f2g2h2i2k15l42686m42703n42710o42883p42895q42906r42907s42908t42908u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '7', '238067233_370', '10139180531150406', '1559638067433');
INSERT INTO `data_monitor_post` VALUES ('204', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559638366601|0|52,2|2|_onload_|_load_|-|1559638367860|1559638367867|52', 'RID_2418', '732103659', '1559638367860', '1536', '723', '1536', '864', 'a0b1559638366601e1f4g5h5i16k17l875m879n881o1216p1238q1256r1259s1260t1260u26020v25902w25902', '1107|f', '1071', '1229|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '8', '238367510_674', '10139180531150406', '1559638368771');
INSERT INTO `data_monitor_post` VALUES ('205', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559638375103|1559638443070|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559638443064|1559638443070|52', 'RID_2418', '732103659', '1559638443064', '1536', '723', '1536', '864', 'a0b1559638375103e2f2g2h2i2k3l64577m64612n64597o67842p67864q67878r67961s67963t67963u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '238439717_51', '10139180531150406', '1559638443077');
INSERT INTO `data_monitor_post` VALUES ('206', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|238439717_51|1559638446594|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559638446602|1559638462312|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559638462304|1559638462312|52', 'RID_2418', '732103659', '1559638462305', '1536', '723', '1536', '864', 'a0b1559638446602e1f1g1h1i1k2l11767m11771n11791o15422p15448q15452r15703s15705t15705u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '238458399_458', '10139180531150406', '1559638462323');
INSERT INTO `data_monitor_post` VALUES ('207', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559638695911|1559638696927|52,2|2|_onload_|_load_|-|1559638696921|1559638696927|52', 'RID_2418', '732103659', '1559638696921', '1536', '723', '1536', '864', 'a0b1559638695911e1f6g8h8i13k13l770m773n784o989p1003q1009r1010s1012t1012u26019v25901w25901', '968|c', '967', '1000|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '6', '238696714_306', '10139180531150406', '1559638698920');
INSERT INTO `data_monitor_post` VALUES ('208', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559638704283|1559638807087|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559638807078|1559638807087|52', 'RID_2418', '732103659', '1559638807078', '1536', '723', '1536', '864', 'a0b1559638704283e3f3g3h3i3k6l102489m102502n102508o102761p102780q102794r102795s102797t102797u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '3', '238806817_985', '10139180531150406', '1559638807097');
INSERT INTO `data_monitor_post` VALUES ('209', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', 'd|-1|用户角色/应用授权|KU9|-|238699110_166|1559638853715|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559638855367|0|52,2|2|_onload_|_load_|-|1559638856375|1559638856382|52', 'RID_2418', '732103659', '1559638856375', '1536', '723', '1536', '864', 'a0b1559638855367e1f1g1h1i1k14l735m743n760o995p1003q1008r1008s1010t1010u26019v25901w25901', '928|f', '927', '1000|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '7', '238856135_714', '10139180531150406', '1559638857198');
INSERT INTO `data_monitor_post` VALUES ('210', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559638864342|1559638874415|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559638874402|1559638874415|52', 'RID_2418', '732103659', '1559638874402', '1536', '723', '1536', '864', 'a0b1559638864342e2f2g2h2i2k3l8118m8123n8132o9472p9493q9510r10060s10065t10065u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '238872480_850', '10139180531150406', '1559638874423');
INSERT INTO `data_monitor_post` VALUES ('211', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|238872480_850|1559638906713|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559638906722|1559638911112|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559638911109|1559638911112|52', 'RID_2418', '732103659', '1559638911109', '1536', '723', '1536', '864', 'a0b1559638906722e0f0g0h0i0k2l4163m4168n4177o4371p4380q4384r4387s4388t4388u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '238910909_984', '10139180531150406', '1559638911119');
INSERT INTO `data_monitor_post` VALUES ('212', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|238910909_984|1559638915729|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559638915736|1559638984985|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559638984977|1559638984985|52', 'RID_2418', '732103659', '1559638984977', '1536', '723', '1536', '864', 'a0b1559638915736e1f1g1h1i1k2l60734m60741n60754o68286p68299q68304r69241s69244t69244u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '238976498_138', '10139180531150406', '1559638984991');
INSERT INTO `data_monitor_post` VALUES ('213', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|238976498_138|1559639005609|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559639005625|1559639010370|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559639010366|1559639010370|52', 'RID_2418', '732103659', '1559639010366', '1536', '723', '1536', '864', 'a0b1559639005625e1f1g1h1i1k5l4531m4534n4545o4713p4729q4740r4741s4742t4742u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '2', '239010177_4', '10139180531150406', '1559639010380');
INSERT INTO `data_monitor_post` VALUES ('214', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239010177_4|1559639019167|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|11|_load_|_load_|-|1559639019178|1559639076727|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559639076722|1559639076727|52', 'RID_2418', '732103659', '1559639076722', '1536', '723', '1536', '864', 'a0b1559639019178e0f0g0h0i0k2l48968m48975n48987o57507p57532q57542r57544s57546t57546u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239068178_904', '10139180531150406', '1559639076739');
INSERT INTO `data_monitor_post` VALUES ('215', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239068178_904|1559639078831|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|13|_load_|_load_|-|1559639078840|1559639079025|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559639079022|1559639079025|52', 'RID_2418', '732103659', '1559639079023', '1536', '723', '1536', '864', 'a0b1559639078840e1f1g1h1i1k2l31m35n42o169p177q182r183s184t184u26017v25899w25899', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239078891_426', '10139180531150406', '1559639079031');
INSERT INTO `data_monitor_post` VALUES ('216', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239078891_426|1559639086399|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|15|_load_|_load_|-|1559639086409|1559639232855|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|16|_onload_|_load_|-|1559639231922|1559639232855|52', 'RID_2418', '732103659', '1559639231923', '1536', '723', '1536', '864', 'a0b1559639086409e1f1g1h1i1k2l145353m145357n145368o145473p145484q145490r145514s145514t145514u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239231798_645', '10139180531150406', '1559639232868');
INSERT INTO `data_monitor_post` VALUES ('217', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559639234665|1559639234892|52,2|2|_onload_|_load_|-|1559639234885|1559639234892|52', 'RID_2418', '732103659', '1559639234885', '1536', '723', '1536', '864', 'a0b1559639234665e0f0g0h0i0k2l37m40n52o202p212q217r220s222t222u26020v25902w25902', '194|c', '193', '209|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '1', '239234730_577', '10139180531150406', '1559639236896');
INSERT INTO `data_monitor_post` VALUES ('218', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', '1|3|_load_|_load_|-|1559639277205|1559639287862|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559639287857|1559639287862|52', 'RID_2418', '732103659', '1559639287857', '1536', '723', '1536', '864', 'a0b1559639277205e1f1g1h1i1k3l10369m10376n10388o10628p10639q10651r10652s10654t10654u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239287626_885', '10139180531150406', '1559639287869');
INSERT INTO `data_monitor_post` VALUES ('219', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239287626_885|1559639289562|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|5|_load_|_load_|-|1559639289571|1559639300366|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559639300362|1559639300366|52', 'RID_2418', '732103659', '1559639300362', '1536', '723', '1536', '864', 'a0b1559639289571e1f1g1h1i1k2l10582m10585n10595o10770p10786q10791r10791s10792t10792u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239300181_286', '10139180531150406', '1559639300370');
INSERT INTO `data_monitor_post` VALUES ('220', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239300181_286|1559639322862|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|7|_load_|_load_|-|1559639322872|1559639378091|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559639378086|1559639378091|52', 'RID_2418', '732103659', '1559639378086', '1536', '723', '1536', '864', 'a0b1559639322872e1f1g1h1i1k2l48610m48616n48629o55187p55203q55213r55214s55217t55217u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239371512_726', '10139180531150406', '1559639378101');
INSERT INTO `data_monitor_post` VALUES ('221', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239371512_726|1559639380275|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|9|_load_|_load_|-|1559639380288|1559639380462|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559639380456|1559639380462|52', 'RID_2418', '732103659', '1559639380456', '1536', '723', '1536', '864', 'a0b1559639380288e1f1g1h1i1k2l29m32n41o145p161q167r168s170t170u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239380336_862', '10139180531150406', '1559639380468');
INSERT INTO `data_monitor_post` VALUES ('222', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239380336_862|1559639382848|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|11|_load_|_load_|-|1559639382858|1559639383086|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|12|_onload_|_load_|-|1559639383080|1559639383086|52', 'RID_2418', '732103659', '1559639383080', '1536', '723', '1536', '864', 'a0b1559639382858e1f1g1h1i1k2l35m51n55o200p215q222r222s223t223u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239382926_13', '10139180531150406', '1559639383092');
INSERT INTO `data_monitor_post` VALUES ('223', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239382926_13|1559639388840|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|13|_load_|_load_|-|1559639388849|1559639430887|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|14|_onload_|_load_|-|1559639430883|1559639430887|52', 'RID_2418', '732103659', '1559639430884', '1536', '723', '1536', '864', 'a0b1559639388849e1f1g1h1i1k2l37538m37547n37559o40753p40767q40775r42035s42036t42036u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239426413_110', '10139180531150406', '1559639430895');
INSERT INTO `data_monitor_post` VALUES ('224', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239426413_110|1559639434153|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|15|_load_|_load_|-|1559639434170|1559639543962|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|16|_onload_|_load_|-|1559639543958|1559639543962|52', 'RID_2418', '732103659', '1559639543958', '1536', '723', '1536', '864', 'a0b1559639434170e6f6g6h6i6k8l103478m103485n103497o109773p109782q109787r109788s109789t109789u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '4', '239537672_294', '10139180531150406', '1559639543969');
INSERT INTO `data_monitor_post` VALUES ('225', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239537672_294|1559639553138|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|17|_load_|_load_|-|1559639553149|1559639614963|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|18|_onload_|_load_|-|1559639614959|1559639614963|52', 'RID_2418', '732103659', '1559639614959', '1536', '723', '1536', '864', 'a0b1559639553149e0f0g0h0i0k2l58388m58393n58414o61790p61801q61808r61810s61811t61811u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '239611573_706', '10139180531150406', '1559639614968');
INSERT INTO `data_monitor_post` VALUES ('226', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239611573_706|1559639634366|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|19|_load_|_load_|-|1559639634381|1559639771542|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|20|_onload_|_load_|-|1559639771539|1559639771542|52', 'RID_2418', '732103659', '1559639771539', '1536', '723', '1536', '864', 'a0b1559639634381e0f0g0h0i0k2l136951m136955n136969o137135p137150q137157r137158s137159t137159u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239771358_419', '10139180531150406', '1559639771547');
INSERT INTO `data_monitor_post` VALUES ('227', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|239771358_419|1559639773502|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|21|_load_|_load_|-|1559639773516|1559639801692|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|22|_onload_|_load_|-|1559639801687|1559639801692|52', 'RID_2418', '732103659', '1559639801688', '1536', '723', '1536', '864', 'a0b1559639773516e1f1g1h1i1k6l12143m12148n12157o24054p28159q28169r28172s28174t28174u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '3', '239785680_515', '10139180531150406', '1559639801702');
INSERT INTO `data_monitor_post` VALUES ('228', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|239785680_515|1559639804524|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|23|_load_|_load_|-|1559639804537|1559639854173|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|24|_onload_|_load_|-|1559639854170|1559639854173|52', 'RID_2418', '732103659', '1559639854171', '1536', '723', '1536', '864', 'a0b1559639804537e1f1g1h1i1k2l49432m49437n49457o49615p49628q49633r49634s49634t49634u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '239854003_375', '10139180531150406', '1559639854179');
INSERT INTO `data_monitor_post` VALUES ('229', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559640034716|0|52,2|2|_onload_|_load_|-|1559640042969|1559640042980|52', 'RID_2418', '732103659', '1559640042970', '1536', '723', '1536', '864', 'a1b1559640034716e4f10g23h23i30k30l7980m7982n7990o8206p8233q8250r8254s8255t8255u26019v25901w25901', '8239|c', '8121', '8253|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '15', '240042711_743', '10139180531150406', '1559640044166');
INSERT INTO `data_monitor_post` VALUES ('230', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559640545933|1559640554320|52,2|2|_onload_|_load_|-|1559640554317|1559640554320|52', 'RID_2418', '732103659', '1559640554318', '1536', '723', '1536', '864', 'a0b1559640545933e2f2g2h2i2k11l8050m8060n8138o8349p8370q8377r8385s8386t8386u26019v25901w25901', '8367|c', '8361', '8384|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '240554091_204', '10139180531150406', '1559640556303');
INSERT INTO `data_monitor_post` VALUES ('231', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toShowBaseLine?application=', '0|1|_load_|S,1|3|_load_|_load_|-|1559640560323|1559640560531|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559640560521|1559640560531|52', 'RID_2418', '732103659', '1559640560522', '1536', '723', '1536', '864', 'a0b1559640560323e2f2g2h2i2k4l39m42n45o184p194q198r199s201t201u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/toShowBaseLine?application', '测试质量查询平台', '2', '240560388_34', '10139180531150406', '1559640560536');
INSERT INTO `data_monitor_post` VALUES ('232', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toCliQueryPage?application=', 'd|-1|报表管理|C|-|240560388_34|1559640567202|http://ipv6.dynatrace/toShowBaseLine?application=|测试质量查询平台,1|5|_load_|_load_|-|1559640567207|1559640567435|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559640567427|1559640567435|52', 'RID_2418', '732103659', '1559640567428', '1536', '723', '1536', '864', 'a0b1559640567207e1f1g1h1i1k3l36m38n44o194p210q220r221s222t222u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toCliQueryPage?application', '测试质量查询平台', '1', '240567265_148', '10139180531150406', '1559640567447');
INSERT INTO `data_monitor_post` VALUES ('233', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/toLabelQueryPage?application=', 'd|-1|设置标签|C|-|240567265_148|1559640568067|http://ipv6.dynatrace/toCliQueryPage?application=|测试质量查询平台,1|7|_load_|_load_|-|1559640568080|1559640568272|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559640568267|1559640568272|52', 'RID_2418', '732103659', '1559640568268', '1536', '723', '1536', '864', 'a0b1559640568080e1f1g1h1i1k2l33m36n45o166p182q187r188s189t189u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/toLabelQueryPage?application', '测试质量查询平台', '1', '240568134_744', '10139180531150406', '1559640568279');
INSERT INTO `data_monitor_post` VALUES ('234', 'js', 'II402NR77AD6BDPAD7MC4TPD4ODG7S5C', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|240568134_744|1559640760032|http://ipv6.dynatrace/toLabelQueryPage?application=|测试质量查询平台,1|9|_load_|_load_|-|1559640760042|1559640835312|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559640835306|1559640835312|52', 'RID_2418', '732103659', '1559640835307', '1536', '723', '1536', '864', 'a0b1559640760042e1f3g3h3i3k3l22200m22210n22227o75251p75263q75264r75265s75267t75267u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '240782278_53', '10139180531150406', '1559640835321');
INSERT INTO `data_monitor_post` VALUES ('235', 'js', '38R59NH2VFQF85DH4HR84OCUMJEHFR8T', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559696539884|0|52,2|2|_onload_|_load_|-|1559696540312|1559696540313|52', 'RID_2418', '732103659', '1559696540311', '1536', '723', '1536', '864', 'a1b1559696539884e5f5g5h5i5k39l141m159n168o375p403q423r427s428t429u26020v25902w25902', '296|c', '293', '396|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '19', '296540060_662', '10139180531150406', '1559696542092');
INSERT INTO `data_monitor_post` VALUES ('236', 'js', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559699100452|0|52,2|2|_onload_|_load_|-|1559699101799|1559699101810|52', 'RID_2418', '732103659', '1559699101799', '1536', '723', '1536', '864', 'a0b1559699100452e1f2g5h5i10k11l942m944n949o1300p1325q1344r1347s1351t1351u26019v25901w25901', '1199|c', '1164', '1313|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '299101419_576', '10139180531150406', '1559699103174');
INSERT INTO `data_monitor_post` VALUES ('237', 'js', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|299103330_862|1559699110541|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559699110563|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559699110782|1559699110786|52', 'RID_2418', '732103659', '1559699110782', '1536', '723', '1536', '864', 'a0b1559699110563e2f2g2h2i2k8l43m45n51o193p208q214r219s221t221u26019v25901w25901', '197|c', '196', '219|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '4', '299110632_952', '10139180531150406', '1559699111856');
INSERT INTO `data_monitor_post` VALUES ('238', 'js', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|299139584_383|1559699194065|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559699194083|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559699195096|1559699195101|52', 'RID_2418', '732103659', '1559699195097', '1536', '723', '1536', '864', 'a0b1559699194083e4f6g6h6i25k26l765m768n776o991p1003q1013r1014s1015t1015u26019v25901w25901', '912|f', '907', '1000|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '13', '299194866_389', '10139180531150406', '1559699196072');
INSERT INTO `data_monitor_post` VALUES ('239', 'js', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|299238305_3|1559699367543|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559699367550|1559699368503|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559699368498|1559699368503|52', 'RID_2418', '732103659', '1559699368499', '1536', '723', '1536', '864', 'a0b1559699367550e4f7g7h7i17k17l707m710n728o928p938q948r949s950t950u26021v25903w25903', '896|c', '847', '935|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '8', '299368290_378', '10139180531150406', '1559699370492');
INSERT INTO `data_monitor_post` VALUES ('240', 'js', '5636EN5TOMQ0VE8T1D4SJFR7278E32AE', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299368290_378|1559699370945|http://ipv6.dynatrace/loginOut|测试质量查询平台,1|1|_load_|_load_|-|1559699501604|0|52,2|2|_onload_|_load_|-|1559699502614|1559699502619|52', 'RID_2418', '732103659', '1559699502615', '1536', '723', '1536', '864', 'a0b1559699501604e5f9g17h17i31k31l760m763n772o950p1000q1009r1011s1013t1013u26018v25900w25900', '936|c', '930', '994|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '15', '299502384_765', '10139180531150406', '1559699503626');
INSERT INTO `data_monitor_post` VALUES ('241', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559699552106|0|52,2|2|_onload_|_load_|-|1559699553628|1559699553637|52', 'RID_2418', '732103659', '1559699553628', '1536', '723', '1536', '864', 'a0b1559699552106e4f7g7h7i9k10l975m977n982o1482p1503q1519r1522s1525t1525u26020v25902w25902', '1272|c', '1263', '1496|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '299553106_729', '10139180531150406', '1559699555175');
INSERT INTO `data_monitor_post` VALUES ('242', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299553106_729|1559699555162|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699750837|0|52,2|2|_onload_|_load_|-|1559699753163|1559699753182|52', 'RID_2418', '732103659', '1559699753163', '1536', '723', '1536', '864', 'a0b1559699750837e3f13g16h16i1022k1022l1916m1921n1925o2268p2304q2322r2326s2335t2335u26019v25901w25901', '2121|f', '2120', '2292|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '511', '299752785_304', '10139180531150406', '1559699754072');
INSERT INTO `data_monitor_post` VALUES ('243', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299752785_304|1559699754049|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699763115|0|52,2|2|_onload_|_load_|-|1559699763428|1559699763434|52', 'RID_2418', '732103659', '1559699763428', '1536', '723', '1536', '864', 'a0b1559699763115e3f3g3h3i3k7l46m48n54o291p303q312r313s315t315u26018v25900w25900', '202|c', '201', '300|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '299763176_17', '10139180531150406', '1559699764555');
INSERT INTO `data_monitor_post` VALUES ('244', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299763176_17|1559699764546|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699768434|0|52,2|2|_onload_|_load_|-|1559699768626|1559699768631|52', 'RID_2418', '732103659', '1559699768627', '1536', '723', '1536', '864', 'a0b1559699768434e3f3g3h3i3k4l43m45n53o178p187q192r193s195t195u26018v25900w25900', '170|f', '169', '184|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '299768498_319', '10139180531150406', '1559699769481');
INSERT INTO `data_monitor_post` VALUES ('245', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299768498_319|1559699769473|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699854890|0|52,2|2|_onload_|_load_|-|1559699855831|1559699855837|52', 'RID_2418', '732103659', '1559699855832', '1536', '723', '1536', '864', 'a0b1559699854890e3f4g5h5i6k6l722m725n736o898p914q933r942s944t944u26017v25899w25899', '927|f', '855', '941|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '299855638_223', '10139180531150406', '1559699856704');
INSERT INTO `data_monitor_post` VALUES ('246', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299855638_223|1559699856682|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699897786|0|52,2|2|_onload_|_load_|-|1559699898065|1559699898072|52', 'RID_2418', '732103659', '1559699898065', '1536', '723', '1536', '864', 'a0b1559699897786e3f3g3h3i3k5l48m50n58o240p264q277r279s283t283u26019v25901w25901', '192|c', '187', '258|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '299897852_96', '10139180531150406', '1559699899141');
INSERT INTO `data_monitor_post` VALUES ('247', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299897852_96|1559699899123|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559699911626|0|52,2|2|_onload_|_load_|-|1559699911884|1559699911889|52', 'RID_2418', '732103659', '1559699911884', '1536', '723', '1536', '864', 'a0b1559699911626e3f3g3h3i3k4l39m43n47o219p248q257r258s259t259u26020v25902w25902', '179|c', '172', '245|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '299911684_777', '10139180531150406', '1559699913315');
INSERT INTO `data_monitor_post` VALUES ('248', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|299911684_777|1559699913305|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700003730|0|52,2|2|_onload_|_load_|-|1559700003990|1559700003991|52', 'RID_2418', '732103659', '1559700003989', '1536', '723', '1536', '864', 'a0b1559700003730e2f2g2h2i2k4l34m36n45o208p241q258r259s260t261u26020v25902w25902', '174|f', '170', '234|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '300003786_171', '10139180531150406', '1559700004822');
INSERT INTO `data_monitor_post` VALUES ('249', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300003786_171|1559700004809|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700090347|0|52,2|2|_onload_|_load_|-|1559700090584|1559700090592|52', 'RID_2418', '732103659', '1559700090584', '1536', '723', '1536', '864', 'a0b1559700090347e6f6g6h6i6k8l45m49n54o210p231q237r237s240t240u26019v25901w25901', '180|f', '168', '228|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '300090411_674', '10139180531150406', '1559700091432');
INSERT INTO `data_monitor_post` VALUES ('250', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300090411_674|1559700091425|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700173307|0|52,2|2|_onload_|_load_|-|1559700173552|1559700173560|52', 'RID_2418', '732103659', '1559700173551', '1536', '723', '1536', '864', 'a0b1559700173307e3f4g5h5i6k6l40m43n53o201p225q244r244s246t246u26018v25900w25900', '182|f', '181', '218|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '300173367_746', '10139180531150406', '1559700174510');
INSERT INTO `data_monitor_post` VALUES ('251', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300173367_746|1559700174490|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700195970|0|52,2|2|_onload_|_load_|-|1559700196206|1559700196222|52', 'RID_2418', '732103659', '1559700196207', '1536', '723', '1536', '864', 'a0b1559700195970e3f3g3h3i3k6l38m43n49o197p212q236r237s239t239u26019v25901w25901', '181|f', '181', '206|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '300196027_534', '10139180531150406', '1559700196854');
INSERT INTO `data_monitor_post` VALUES ('252', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300196027_534|1559700196841|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700235764|1559700243379|52,2|2|_onload_|_load_|-|1559700243375|1559700243379|52', 'RID_2418', '732103659', '1559700243376', '1536', '723', '1536', '864', 'a0b1559700235764e4f4g4h4i4k6l5910m5915n5921o7250p7261q7273r7612s7613t7613u26018v25900w25900', '7609|c', '7184', '7611|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '300241694_558', '10139180531150406', '1559700245031');
INSERT INTO `data_monitor_post` VALUES ('253', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300241694_558|1559700245409|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700679458|1559700687515|52,2|2|_onload_|_load_|-|1559700687508|1559700687515|52', 'RID_2418', '732103659', '1559700687508', '1536', '723', '1536', '864', 'a0b1559700679458e2f4g8h8i14k14l7780m7784n7791o7996p8030q8047r8050s8052t8052u26019v25901w25901', '7967|c', '7966', '8024|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '7', '300687255_916', '10139180531150406', '1559700689492');
INSERT INTO `data_monitor_post` VALUES ('254', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300687255_916|1559700689833|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700700810|0|52,2|2|_onload_|_load_|-|1559700701060|1559700701061|52', 'RID_2418', '732103659', '1559700701059', '1536', '723', '1536', '864', 'a0b1559700700810e4f4g4h4i4k5l37m40n49o225p239q244r249s250t251u26020v25902w25902', '232|f', '204', '249|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '2', '300700865_28', '10139180531150406', '1559700701804');
INSERT INTO `data_monitor_post` VALUES ('255', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300700865_28|1559700701795|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559700919250|0|52,2|2|_onload_|_load_|-|1559700920268|1559700920274|52', 'RID_2418', '732103659', '1559700920269', '1536', '723', '1536', '864', 'a0b1559700919250e3f4g5h5i9k9l784m787n795o979p1004q1018r1019s1020t1020u26018v25900w25900', '930|f', '920', '990|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '300920052_847', '10139180531150406', '1559700920895');
INSERT INTO `data_monitor_post` VALUES ('256', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|300920052_847|1559700920882|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701080435|0|52,2|2|_onload_|_load_|-|1559701080709|1559701080717|52', 'RID_2418', '732103659', '1559701080710', '1536', '723', '1536', '864', 'a0b1559701080435e3f7g9h9i9k9l57m59n66o246p257q268r275s276t276u26019v25901w25901', '224|f', '223', '274|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '301080508_921', '10139180531150406', '1559701081512');
INSERT INTO `data_monitor_post` VALUES ('257', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301080508_921|1559701081490|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701208682|1559701214696|52,2|2|_onload_|_load_|-|1559701214691|1559701214696|52', 'RID_2418', '732103659', '1559701214691', '1536', '723', '1536', '864', 'a0b1559701208682e2f2g2h2i2k3l5399m5402n5416o5922p5942q5958r6009s6012t6012u26020v25902w25902', '6008|c', '5907', '6009|http://ipv6.dynatrace/tpez_4_qd/img/page1_1.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '1', '301214103_717', '10139180531150406', '1559701216624');
INSERT INTO `data_monitor_post` VALUES ('258', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301214103_717|1559701218393|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701290674|0|52,2|2|_onload_|_load_|-|1559701291539|1559701291545|52', 'RID_2418', '732103659', '1559701291540', '1536', '723', '1536', '864', 'a0b1559701290674e3f5g14h14i28k28l682m686n691o834p854q860r866s867t867u26019v25901w25901', '845|f', '825', '865|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '14', '301291374_493', '10139180531150406', '1559701292233');
INSERT INTO `data_monitor_post` VALUES ('259', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301291374_493|1559701292218|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701316510|0|52,2|2|_onload_|_load_|-|1559701316757|1559701316758|52', 'RID_2418', '732103659', '1559701316756', '1536', '723', '1536', '864', 'a0b1559701316510e2f2g2h2i2k8l42m45n54o220p234q245r246s247t248u26018v25900w25900', '182|f', '181', '230|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '4', '301316576_172', '10139180531150406', '1559701317425');
INSERT INTO `data_monitor_post` VALUES ('260', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301316576_172|1559701317417|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701435107|0|52,2|2|_onload_|_load_|-|1559701436247|1559701436248|52', 'RID_2418', '732103659', '1559701436245', '1536', '723', '1536', '864', 'a0b1559701435107e3f5g6h6i10k11l794m798n808o1102p1120q1137r1138s1140t1141u26020v25902w25902', '1089|f', '1087', '1116|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '5', '301435928_803', '10139180531150406', '1559701436727');
INSERT INTO `data_monitor_post` VALUES ('261', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301435928_803|1559701436712|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701505722|0|52,2|2|_onload_|_load_|-|1559701506639|1559701506648|52', 'RID_2418', '732103659', '1559701506640', '1536', '723', '1536', '864', 'a0b1559701505722e3f5g6h6i6k7l678m682n689o837p854q862r918s921t921u26018v25900w25900', '911|f', '909', '917|http://ipv6.dynatrace/tpez_4_qd/img/page1_3.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '301506417_400', '10139180531150406', '1559701507370');
INSERT INTO `data_monitor_post` VALUES ('262', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|C|-|301506417_400|1559701507361|http://ipv6.dynatrace/login|测试质量查询平台,1|1|_load_|_load_|-|1559701651579|0|52,2|2|_onload_|_load_|-|1559701652846|1559701652854|52', 'RID_2418', '732103659', '1559701652847', '1536', '723', '1536', '864', 'a0b1559701651579e3f7g17h17i32k32l1004m1007n1014o1216p1255q1266r1268s1270t1270u26018v25900w25900', '1174|f', '1145', '1240|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '16', '301652599_931', '10139180531150406', '1559701653615');
INSERT INTO `data_monitor_post` VALUES ('263', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559701678274|1559701682281|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559701682274|1559701682281|52', 'RID_2418', '732103659', '1559701682274', '1536', '723', '1536', '864', 'a0b1559701678274e1f1g1h1i1k6l3800m3802n3806o3984p3995q4000r4000s4002t4002u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '3', '301682086_240', '10139180531150406', '1559701682287');
INSERT INTO `data_monitor_post` VALUES ('264', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/loginOut', 'd|-1|退出|C|-|301674387_635|1559701691459|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559701691467|0|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|2|_onload_|_load_|-|1559701691700|1559701691708|52', 'RID_2418', '732103659', '1559701691700', '1536', '723', '1536', '864', 'a0b1559701691467e1f1g1h1i1k3l41m44n54o198p225q233r233s237t237u26017v25899w25899', '186|c', '171', '213|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/loginOut', '测试质量查询平台', '1', '301691528_884', '10139180531150406', '1559701692789');
INSERT INTO `data_monitor_post` VALUES ('265', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/login', 'd|-1|退出|C|-|301720601_246|1559701819312|http://ipv6.dynatrace/loginPost|报表系统,1|1|_load_|_load_|-|1559701911842|0|52,2|2|_onload_|_load_|-|1559701919226|1559701919247|52', 'RID_2418', '732103659', '1559701919226', '1536', '723', '1536', '864', 'a1b1559701911842e2f5g8h8i20k24l7125m7129n7137o7347p7362q7382r7384s7386t7386u26020v25902w25902', '7280|c', '7279', '7358|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '12', '301918983_836', '10139180531150406', '1559701920754');
INSERT INTO `data_monitor_post` VALUES ('266', 'js', '556MPODLDET9R037EVN9ED2LN23FP0IL', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559701932184|1559701953440|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559701953433|1559701953440|52', 'RID_2418', '732103659', '1559701953433', '1536', '723', '1536', '864', 'a0b1559701932184e2f2g2h2i2k15l21002m21021n21029o21229p21239q21248r21249s21250t21250u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '7', '301953219_178', '10139180531150406', '1559701953451');
INSERT INTO `data_monitor_post` VALUES ('267', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559702023923|0|52,2|2|_onload_|_load_|-|1559702024252|1559702024264|52', 'RID_2418', '732103659', '1559702024251', '1536', '723', '1536', '864', 'a1b1559702023923e2f2g2h2i2k6l59m60n68o285p306q327r328s331t331u26019v25901w25901', '243|c', '242', '298|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '3', '302024000_271', '10139180531150406', '1559702025570');
INSERT INTO `data_monitor_post` VALUES ('268', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559702027746|1559702028002|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559702027983|1559702028002|52', 'RID_2418', '732103659', '1559702027983', '1536', '723', '1536', '864', 'a0b1559702027746e2f2g2h2i2k5l53m55n63o218p227q235r237s240t240u26020v25902w25902', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '2', '302027829_986', '10139180531150406', '1559702028013');
INSERT INTO `data_monitor_post` VALUES ('269', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/toRoleListTwoJsp', 'd|-1|角色菜单授权|C|-|302027829_986|1559702029050|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|5|_load_|_load_|-|1559702029056|1559702029232|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|6|_onload_|_load_|-|1559702029227|1559702029232|52', 'RID_2418', '732103659', '1559702029228', '1536', '723', '1536', '864', 'a0b1559702029056e1f1g1h1i1k3l27m29n36o153p166q171r172s173t173u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/toRoleListTwoJsp', '测试质量查询平台', '1', '302029100_450', '10139180531150406', '1559702029241');
INSERT INTO `data_monitor_post` VALUES ('270', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|用户角色/应用授权|C|-|302029100_450|1559702029744|http://ipv6.dynatrace/toRoleListTwoJsp|测试质量查询平台,1|7|_load_|_load_|-|1559702030204|1559702030401|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|8|_onload_|_load_|-|1559702030397|1559702030401|52', 'RID_2418', '732103659', '1559702030398', '1536', '723', '1536', '864', 'a0b1559702030204e5f5g5h5i5k7l54m56n65o173p186q193r194s195t195u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '3', '302030279_853', '10139180531150406', '1559702030411');
INSERT INTO `data_monitor_post` VALUES ('271', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/userListJsp', 'd|-1|优化建议总览|C|-|302030279_853|1559702033970|http://ipv6.dynatrace/userListJsp|测试质量查询平台,1|9|_load_|_load_|-|1559702060005|1559702061020|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|10|_onload_|_load_|-|1559702061015|1559702061020|52', 'RID_2418', '732103659', '1559702061015', '1536', '723', '1536', '864', 'a0b1559702060005e0f0g0h0i0k3l788m795n797o988p1000q1009r1010s1011t1011u26018v25900w25900', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '302060830_364', '10139180531150406', '1559702061027');
INSERT INTO `data_monitor_post` VALUES ('272', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559702889164|1559702912431|52,2|2|_onload_|_load_|-|1559702912428|1559702912431|52', 'RID_2418', '732103659', '1559702912428', '1536', '723', '1536', '864', 'a0b1559702889164e1f4g5h5i1108k1108l16361m16366n16387o22926p22965q23017r23264s23265t23265u26019v25901w25901', '23262|c', '21885', '23264|http://ipv6.dynatrace/tpez_4_qd/img/logo.jpg', 'http://ipv6.dynatrace/login', '测试质量查询平台', '554', '302905569_23', '10139180531150406', '1559702914128');
INSERT INTO `data_monitor_post` VALUES ('273', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559702982879|1559703014722|52,2|2|_onload_|_load_|-|1559703014718|1559703014722|52', 'RID_2418', '732103659', '1559703014719', '1536', '723', '1536', '864', 'a0b1559702982879e1f3g3h3i17k18l23365m23371n23388o29771p29794q29813r31840s31841t31841u26019v25901w25901', '31838|c', '31248', '31839|http://ipv6.dynatrace/tpez_4_qd/img/page1_0.png', 'http://ipv6.dynatrace/login', '测试质量查询平台', '9', '303006279_299', '10139180531150406', '1559703015680');
INSERT INTO `data_monitor_post` VALUES ('274', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/userListJsp', '1|3|_load_|_load_|-|1559703058562|1559703084463|52|-|-|-|-|-|http://ipv6.dynatrace/loginPost,2|4|_onload_|_load_|-|1559703084457|1559703084463|52', 'RID_2418', '732103659', '1559703084458', '1536', '723', '1536', '864', 'a0b1559703058562e0f0g0h0i0k2l15598m15603n15609o25873p25886q25895r25896s25897t25897u26019v25901w25901', null, null, null, 'http://ipv6.dynatrace/userListJsp', '测试质量查询平台', '1', '303074193_675', '10139180531150406', '1559703084471');
INSERT INTO `data_monitor_post` VALUES ('275', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|1|_load_|_load_|-|1559703162987|1559703171426|47,2|2|_onload_|_load_|-|1559703171424|1559703171426|47', 'RID_2418', '732103659', '1559703171421', '1536', '723', '1536', '864', 'a0b1559703162987e1f4g8h8i13k13l7764m7767n7783o8398p8418q8430r8434s8437t8439u14242v14139w14139', '8439|e', '0', null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '6', '303170783_697', '10139180531150406', '1559703172414');
INSERT INTO `data_monitor_post` VALUES ('276', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|3|登录|C|x|1559703180916|1559703185185|56|-|-|/sys/login|-|-|-|4269|4269|4269', 'RID_2418', '732103659', '1559703171421', null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '6', '303170783_697', '10139180531150406', '1559703185249');
INSERT INTO `data_monitor_post` VALUES ('277', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|4|登录|C|x|1559703188539|0|53|-|-|/sys/login', 'RID_2418', '732103659', '1559703171421', null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '6', '303170783_697', '10139180531150406', '1559703190210');
INSERT INTO `data_monitor_post` VALUES ('278', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', 'd|-1|登录|KU9|-|303170783_697|1559703186757|http://ipv6.dynatrace/login|长城金典管理系统,1|1|_load_|_load_|-|1559703188201|1559703208366|47|-|-|-|-|-|http://ipv6.dynatrace/login,2|2|_onload_|_load_|-|1559703208365|1559703208366|47', 'RID_2418', '732103659', '1559703208363', '1536', '723', '1536', '864', 'a1b1559703188201e12f12g12h12i12k40l16150m16156n16179o20121p20129q20133r20162s20164t20165u14242v14139w14139', '20165|e', '0', null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '20', '303204392_779', '10139180531150406', '1559703209339');
INSERT INTO `data_monitor_post` VALUES ('279', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|3|登录|C|x|1559703224984|0|52|-|-|/sys/login', 'RID_2418', '732103659', null, null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '20', '303204392_779', '10139180531150406', '1559703235020');
INSERT INTO `data_monitor_post` VALUES ('280', 'js', 'G46PGF84PUTL53B1N4GQ03UVVJ047SS4', 'post', 'http://ipv6.dynatrace/login', '1|3|登录|C|x|1559703224984|1559703244494|56|-|-|/sys/login|-|-|-|19510|19510|19510', 'RID_2418', '732103659', '1559703208363', null, null, null, null, null, null, null, null, 'http://ipv6.dynatrace/login', '长城金典管理系统', '20', '303204392_779', '10139180531150406', '1559703244558');

-- ----------------------------
-- Table structure for sms_sending_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_sending_log`;
CREATE TABLE `sms_sending_log` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module` varchar(100) COMMENT '模块信息',
  `account` varchar(50) COMMENT '创蓝253短信发送 用户平台API账号',
  `password` varchar(50) COMMENT '创蓝253短信发送 用户平台API密码',
  `msg` varchar(255) COMMENT '短信模板',
  `params` varchar(255) COMMENT '机号码和变量参数，多组参数使用英文分号;区分',
  `request_url` varchar(255) COMMENT '发送短信平台地址',
  `report_status` varchar(10) COMMENT '是否需要返回状态报告（默认false）',
  `status` varchar(50) DEFAULT '0' COMMENT '响应状态(0 失败   1 成功)',
  `response_msg` varchar(255) COMMENT '响应返回信息',
  `msg_id` varchar(50) COMMENT '响应id',
  `response_time` varchar(50) COMMENT '响应时间',
  `failNum` bigint(10) COMMENT '失败个数',
  `successNum` bigint(10) COMMENT '成功的个数',
  `create_by` varchar(50) COMMENT '创建人',
  `create_time` datetime COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_sending_log
-- ----------------------------
INSERT INTO `sms_sending_log` VALUES ('26', '烟雾报警', 'N6664837', '123456aaabbb', '【253云通讯】{$var}{$var}{$var}的烟雾报警器发出{{$var}}（设备名称：{$var}，设备编号：{$var}），请及时处理！', '15712831281,烟雾报警,121212,1212,烟雾报警,121212,1212;', 'https://smssh1.253.com/msg/variable/json', 'true', '0', '余额不足', '109', '2019-08-28 16:07:27', null, null, 'admin', '2019-08-28 16:07:27');

-- ----------------------------
-- Table structure for sys_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_name` varchar(255) DEFAULT NULL,
  `code_key` varchar(150) DEFAULT NULL,
  `code_group` varchar(150) DEFAULT NULL,
  `enable` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code
-- ----------------------------
INSERT INTO `sys_code` VALUES ('1', '报警', '1', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('2', '静音', '2', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('3', '保留', '3', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('4', '低压', '4', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('5', '故障', '5', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('6', '保留', '6', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('7', '正常', '7', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('8', '设备收到单次静音指令', '8', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('9', '设备收到连续静音指令', '9', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('10', '拆卸报警', '10', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('11', '拆卸恢复', '11', 'alarm', '1');
INSERT INTO `sys_code` VALUES ('12', '模拟报警', '14', 'alarm', '1');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COMMENT '负责人',
  `phone` varchar(11) COMMENT '联系电话',
  `email` varchar(50) COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=592 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('10', '0', '0', '全国', '1', '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-13 10:59:48');
INSERT INTO `sys_dept` VALUES ('101', '0', '0', '山东', '2', '', '', 'qiudp5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-13 10:59:48');
INSERT INTO `sys_dept` VALUES ('102', '101', '101', '济南', '1', '', '', 'xieaj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-19 16:52:18');
INSERT INTO `sys_dept` VALUES ('103', '101', '101', '青岛', '2', '', '', 'wangchao15@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('104', '101', '101', '淄博', '3', '', '', 'suocn@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('105', '101', '101', '济宁', '4', '', '', 'sundq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-13 13:45:18');
INSERT INTO `sys_dept` VALUES ('106', '101', '101', '东营', '5', '', '', 'duancl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '101', '菏泽', '6', '', '', 'zhangli25@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '101', '101', '聊城', '7', '', '', 'liuyc7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '101', '101', '泰安', '8', '', '', 'sunfh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('110', '101', '101', '莱芜', '9', '', '', 'gaoym@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('111', '101', '101', '滨州', '10', '', '', 'lianzw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('112', '101', '101', '烟台', '11', '', '', 'fudw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('113', '101', '101', '潍坊', '12', '', '', 'yusx@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('114', '101', '101', '枣庄', '13', '', '', 'ligan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('115', '101', '101', '日照', '14', '', '', 'chenyuan6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('116', '101', '101', '临沂', '15', '', '', 'jinxin@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('117', '101', '101', '威海', '16', '', '', 'lining9@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('121', '0', '0', '安徽', '3', '', '', 'liusw3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-13 10:59:48');
INSERT INTO `sys_dept` VALUES ('122', '121', '121', '安庆', '1', '', '', 'chenrui6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('123', '121', '121', '蚌埠', '2', '', '', 'yangyi9@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('124', '121', '121', '亳州', '3', '', '', 'tanwh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('125', '121', '121', '池州', '4', '', '', 'zhoupf3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('126', '121', '121', '滁州', '5', '', '', 'dongxq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('127', '121', '121', '阜阳', '6', '', '', 'xuyl6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('128', '121', '121', '合肥', '7', '', '', 'chengcheng6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('129', '121', '121', '淮南', '8', '', '', 'shipx@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('130', '121', '121', '黄山', '9', '', '', 'panpan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('131', '121', '121', '六安', '10', '', '', ' huanghao@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('132', '121', '121', '马鞍山市', '11', '', '', 'ouqi3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('133', '121', '121', '铜陵', '12', '', '', 'wanglq5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('134', '121', '121', '宣城', '13', '', '', 'linghq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('135', '121', '121', '芜湖', '14', '', '', 'zhouqp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('136', '121', '121', '宿州', '15', '', '', 'xutl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('137', '121', '121', '淮北', '16', '', '', 'liudc3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('141', '0', '0', '福建', '4', '', '', 'linhc@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('151', '0', '0', '甘肃', '5', '', '', 'zhanglei30@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('152', '151', '151', '兰州', '1', '', '', 'baiyan3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('153', '151', '151', '白银', '2', '', '', 'miaock@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('154', '151', '151', '定西', '3', '', '', 'zhangwp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('155', '151', '151', '天水', '4', '', '', 'yehj3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('156', '151', '151', '陇南', '5', '', '', 'songqy@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('157', '151', '151', '平凉', '6', '', '', 'baigang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('158', '151', '151', '庆阳', '7', '', '', 'zhangxj7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('159', '151', '151', '临夏', '8', '', '', 'yanglei12684@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('160', '151', '151', '甘南', '9', '', '', 'changyd@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('161', '151', '151', '武威', '10', '', '', 'wangjq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('162', '151', '151', '金昌', '11', '', '', 'songmei@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('163', '151', '151', '张掖', '12', '', '', 'liqiang11@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('164', '151', '151', '酒泉', '13', '', '', 'manhd@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('165', '151', '151', '嘉峪关', '14', '', '', 'zhangkai5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('171', '0', '0', '广东', '6', '', '', 'zengli2@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('172', '171', '171', '广州', '1', '', '', 'yuwh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('173', '171', '171', '深圳', '2', '', '', 'tanhuan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('174', '171', '171', '东莞', '3', '', '', 'chenhong@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('175', '171', '171', '佛山', '4', '', '', 'maizf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('176', '171', '171', '惠州', '5', '', '', 'yinzhe@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('177', '171', '171', '江门', '6', '', '', 'tanzz@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('178', '171', '171', '湛江', '7', '', '', ' chenzf3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('179', '171', '171', '肇庆', '8', '', '', 'chenwg3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('180', '171', '171', '清远', '9', '', '', 'chenhl3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('181', '171', '171', '韶关', '10', '', '', 'lugj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('182', '171', '171', '茂名', '11', '', '', 'zhangdl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('183', '171', '171', '河源', '12', '', '', 'huangyq3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('184', '171', '171', '梅州', '13', '', '', 'zhengxp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('185', '171', '171', '珠海', '14', '', '', 'wened@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('186', '171', '171', '中山', '15', '', '', 'caizh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('187', '171', '171', '汕头', '16', '', '', 'xieyj8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('188', '171', '171', '揭阳', '17', '', '', 'chencj5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('189', '171', '171', '潮州', '18', '', '', 'suzh3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('190', '171', '171', '汕尾', '19', '', '', 'zhangjx3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('191', '171', '171', '阳江', '20', '', '', 'aojq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('192', '171', '171', '云浮', '21', '', '', 'ouyz@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('201', '0', '0', '河北', '7', '', '', 'hujl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('202', '201', '201', '唐山', '1', '', '', 'yangyu@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('203', '201', '201', '秦皇岛', '2', '', '', 'chenty6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('204', '201', '201', '石家庄', '3', '', '', 'dujm@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('205', '201', '201', '邯郸', '4', '', '', 'liujiao@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('206', '201', '201', '承德', '5', '', '', 'zhangcx6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('207', '201', '201', '雄安', '6', '', '', 'lizan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('208', '201', '201', '衡水', '7', '', '', 'sunyt5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('209', '201', '201', '廊坊', '8', '', '', 'wangqian11@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('210', '201', '201', '沧州', '9', '', '', 'yangjw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('211', '201', '201', '邢台', '10', '', '', 'lifp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('212', '201', '201', '张家口', '11', '', '', 'wuzl3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('213', '201', '201', '保定', '12', '', '', 'liuxue5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('221', '0', '0', '黑龙江', '8', '', '', 'liqiang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('222', '221', '221', '鸡西', '1', '', '', 'liuying9@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('223', '221', '221', '鹤岗', '2', '', '', 'liangxb@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('224', '221', '221', '大兴安岭', '3', '', '', 'guowen@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('225', '221', '221', '牡丹江', '4', '', '', 'pengjl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('226', '221', '221', '佳木斯', '5', '', '', 'sunping@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('227', '221', '221', '伊春', '6', '', '', 'zhaichao@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('228', '221', '221', '双鸭山', '7', '', '', 'qiaozh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('229', '221', '221', '大庆', '8', '', '', 'wangll6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('230', '221', '221', '齐齐哈尔', '9', '', '', 'fanyu@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('231', '221', '221', '绥化', '10', '', '', 'liyang19@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('232', '221', '221', '哈尔滨', '11', '', '', 'gengfeng@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('241', '0', '0', '江西', '9', '', '', 'longli@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('251', '0', '0', '宁夏', '10', '', '', 'lirui8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('252', '251', '251', '银川', '1', '', '', 'yuning3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('253', '251', '251', '石嘴山', '2', '', '', 'chenhj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('254', '251', '251', '吴忠', '3', '', '', 'baihao3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('255', '251', '251', '固原', '4', '', '', 'pangjw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('256', '251', '251', '中卫', '5', '', '', 'zhangxiao@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('261', '0', '0', '山西', '11', '', '', 'linw3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('262', '261', '261', '大同 ', '1', '', '', 'lixl13@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('263', '261', '261', '晋城', '2', '', '', 'kangqq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('264', '261', '261', '临汾', '3', '', '', 'liqiang5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('265', '261', '261', '吕梁', '4', '', '', 'mizw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('266', '261', '261', '朔州', '5', '', '', 'wangkai8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('267', '261', '261', '太原', '6', '', '', 'guopeng8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('268', '261', '261', '阳泉', '7', '', '', 'shiyang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('269', '261', '261', '运城', '8', '', '', 'songjw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('270', '261', '261', '长治', '9', '', '', 'niuhui@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('271', '261', '261', '忻州', '10', '', '', 'yanlei6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('272', '261', '261', '晋中', '11', '', '', 'liyf7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('281', '0', '0', '西藏', '12', '', '', 'liuwei17@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('291', '0', '0', '重庆', '13', '', '', 'chuhh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('301', '0', '0', '河南', '14', '', '', 'yujing5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('302', '301', '301', '信阳', '1', '', '', 'zhaoyan3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('303', '301', '301', '新乡', '2', '', '', 'leigj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('304', '301', '301', '漯河', '3', '', '', 'linxi3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('305', '301', '301', '周口', '4', '', '', 'shizy@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('306', '301', '301', '鹤壁', '5', '', '', 'lies3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('307', '301', '301', '郑州', '6', '', '', 'jiaocy@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('308', '301', '301', '平顶山', '7', '', '', 'wanghy13@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('309', '301', '301', '商丘', '8', '', '', 'caijw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('310', '301', '301', '济源', '9', '', '', 'lijc5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('311', '301', '301', '焦作', '10', '', '', 'zhaomm@chinatowercom', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('312', '301', '301', '洛阳', '11', '', '', 'shenzs@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('313', '301', '301', '安阳', '12', '', '', 'xuhuan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('314', '301', '301', '濮阳', '13', '', '', 'liugq3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('315', '301', '301', '南阳', '14', '', '', 'wumt@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('316', '301', '301', '三门峡', '15', '', '', 'zhanglei11@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('317', '301', '301', '许昌', '16', '', '', 'yangxh6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('318', '301', '301', '开封', '17', '', '', 'liyy6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('319', '301', '301', '驻马店', '18', '', '', 'yujy@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('321', '0', '0', '新疆', '15', '', '', 'fengcc3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('322', '321', '321', '奎屯', '1', '', '', 'sibw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('323', '321', '321', '石河子', '2', '', '', 'gaoyb5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('324', '321', '321', '乌鲁木齐', '3', '', '', 'zhaixh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('325', '321', '321', '巴州', '4', '', '', 'gaofeng6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('326', '321', '321', '吐鲁番', '5', '', '', 'zhugc@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('327', '321', '321', '阿勒泰', '6', '', '', 'yangbin8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('328', '321', '321', '克拉玛依', '7', '', '', 'yinbf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('329', '321', '321', '哈密', '8', '', '', 'lidan5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('330', '321', '321', '昌吉', '9', '', '', 'wangjq8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('331', '321', '321', '喀什', '10', '', '', 'niah@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('332', '321', '321', '塔城', '11', '', '', 'yuliang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('333', '321', '321', '克州', '12', '', '', 'pubo@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('334', '321', '321', '伊犁', '13', '', '', 'liuyan7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('335', '321', '321', '和田', '14', '', '', 'yanghua3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('336', '321', '321', '阿克苏', '15', '', '', 'songwei6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('337', '321', '321', '博州', '16', '', '', 'zhouyin@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('341', '0', '0', '湖北', '16', '', '', 'zhangjing3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('342', '341', '341', '鄂州', '1', '', '', 'tanyf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('343', '341', '341', '恩施', '2', '', '', 'jiangsc@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('344', '341', '341', '黄冈', '3', '', '', 'qinyh3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('345', '341', '341', '黄石', '4', '', '', 'cailing5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('346', '341', '341', '江汉', '5', '', '', 'zhaoyh5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('347', '341', '341', '荆门', '6', '', '', 'zuoxg@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('348', '341', '341', '十堰', '7', '', '', 'chenyao3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('349', '341', '341', '随州', '8', '', '', 'pancw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('350', '341', '341', '武汉', '9', '', '', 'guoxing5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('351', '341', '341', '咸宁', '10', '', '', 'luozf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('352', '341', '341', '襄阳', '11', '', '', 'dengxj3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('353', '341', '341', '孝感', '12', '', '', 'gaotx@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('354', '341', '341', '宜昌', '13', '', '', 'songxf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('361', '0', '0', '广西', '17', '', '', 'zhangchi8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('362', '361', '361', '南宁', '1', '', '', 'songrj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('363', '361', '361', '柳州', '2', '', '', 'huangying@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('364', '361', '361', '桂林', '3', '', '', 'xiongjp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('365', '361', '361', '玉林', '4', '', '', 'renxm@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('366', '361', '361', '贵港', '5', '', '', 'pangzh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('367', '361', '361', '百色', '6', '', '', 'tianlf3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('368', '361', '361', '河池', '7', '', '', 'weicy@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('369', '361', '361', '钦州', '8', '', '', 'hezh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('370', '361', '361', '梧州', '9', '', '', 'wangqh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('371', '361', '361', '北海', '10', '', '', 'wangzh11@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('372', '361', '361', '崇左', '11', '', '', 'zhengjia@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('373', '361', '361', '来宾', '12', '', '', 'liaofx@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('374', '361', '361', '贺州', '13', '', '', 'wenlei@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('375', '361', '361', '防城港', '14', '', '', 'lirong@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('381', '0', '0', '北京', '18', '', '', 'xuqiang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('391', '0', '0', '湖南', '19', '', '', 'guowei3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('392', '391', '391', '长沙', '1', '', '', 'yiyi@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('393', '391', '391', '株洲', '2', '', '', 'chenyu7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('394', '391', '391', '湘潭', '3', '', '', 'wangyj5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('395', '391', '391', '衡阳', '4', '', '', 'yanjie@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('396', '391', '391', '邵阳', '5', '', '', 'ronggz@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('397', '391', '391', '岳阳', '6', '', '', 'chenlh3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('398', '391', '391', '常德', '7', '', '', 'zhangzh3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('399', '391', '391', '张家界', '8', '', '', 'tanfang@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('400', '391', '391', '益阳', '9', '', '', 'lijun3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('402', '391', '391', '郴州', '10', '', '', 'caoyingv@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('403', '391', '391', '永州', '11', '', '', 'tanglh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('404', '391', '391', '怀化', '12', '', '', 'luoky3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('405', '391', '391', '娄底', '13', '', '', 'liuyh8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('406', '391', '391', '湘西自治州', '14', '', '', 'wangjy5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('411', '0', '0', '青海', '20', '', '', 'gaoxl3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('412', '301', '301', '西宁市', '1', '', '', 'niuht@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('413', '301', '301', '海东市', '2', '', '', 'baozc@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('414', '301', '301', '海南州', '3', '', '', 'chaiwl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('415', '301', '301', '海西州', '4', '', '', 'zhangsy3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('416', '301', '301', '海北州', '5', '', '', 'handan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('417', '301', '301', '黄南州', '6', '', '', 'wangjc5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('418', '301', '301', '果洛州', '7', '', '', 'huoch@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('419', '301', '301', '玉树州', '8', '', '', 'nacj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('420', '301', '301', '格尔木市', '9', '', '', 'zhangzp5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('421', '0', '0', '内蒙古', '21', '', '', 'pangxf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('422', '421', '421', '呼伦贝尔', '1', '', '', 'zhangzp5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('423', '421', '421', '巴彦淖尔市', '2', '', '', 'wuhan5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('424', '421', '421', '呼和浩特市', '3', '', '', 'jiale@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('425', '421', '421', '兴安盟', '4', '', '', 'caoxm3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('426', '421', '421', '通辽', '5', '', '', 'lity3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('427', '421', '421', '鄂尔多斯市', '6', '', '', 'mengxm@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('428', '421', '421', '乌海市', '7', '', '', 'wubf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('429', '421', '421', '锡林郭勒盟', '8', '', '', 'wangxh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('430', '421', '421', '阿拉善盟', '9', '', '', 'chenrj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('431', '421', '421', '包头', '10', '', '', ' zhangxh3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('432', '421', '421', '乌兰察布市', '11', '', '', 'liuyi10@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('433', '421', '421', '赤峰', '12', '', '', 'lidong6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('441', '0', '0', '浙江', '22', '', '', 'hualei@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('442', '441', '441', '舟山', '7', '', '', 'weiwq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('451', '0', '0', '四川', '23', '', '', 'xiaoyu@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('461', '0', '0', '上海', '24', '', '', 'zhangliang3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('462', '461', '461', '浦东', '1', '', '', 'yangyj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('463', '461', '461', '南区', '2', '', '', 'chenchao3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('464', '461', '461', '西区', '3', '', '', 'zhangsheng@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('465', '461', '461', '北区', '4', '', '', 'yugui@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('466', '461', '461', '闵行', '5', '', '', 'jixj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('467', '461', '461', '宝山', '6', '', '', 'gulw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('468', '461', '461', '松江', '7', '', '', 'songcq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('469', '461', '461', '嘉定', '8', '', '', 'huangfeng@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('470', '461', '461', '青浦', '9', '', '', 'gongzhen@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('471', '461', '461', '奉贤', '10', '', '', 'chenys3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('472', '461', '461', '金山', '11', '', '', 'shenjf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('473', '461', '461', '崇明', '12', '', '', 'chenbo5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('481', '0', '0', '吉林', '25', '', '', 'wangcong5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('491', '0', '0', '贵州', '26', '', '', 'maxc5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('492', '491', '491', '贵阳', '1', '', '', 'yangmu@chinatower', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('493', '491', '491', '遵义', '2', '', '', 'chenchen@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('494', '491', '491', '安顺', '3', '', '', 'zhouxw@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('495', '491', '491', '黔南', '4', '', '', 'daiyuan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('496', '491', '491', '黔东南', '5', '', '', 'shupx@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('497', '491', '491', '铜仁市', '6', '', '', 'huanglf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('498', '491', '491', '毕节', '7', '', '', 'mali3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('499', '491', '491', '黔西南州', '8', '', '', 'macr3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('501', '0', '0', '海南省', '27', '', '', 'zhangtr@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('511', '0', '0', '天津', '28', '', '', 'lijt3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('512', '511', '511', '市区分公司', '1', '', '', 'lins6@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('513', '511', '511', '河北河东分公司', '2', '', '', 'liuyu10@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('514', '511', '511', '滨海分公司', '3', '', '', 'chenst3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('515', '511', '511', '北区分公司', '4', '', '', 'huwf@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('516', '511', '511', '西青津南分公司', '5', '', '', 'zhanghui3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('517', '511', '511', '静海分公司', '6', '', '', 'wanglin5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('518', '511', '511', '宝坻分公司', '7', '', '', 'liujq8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('519', '511', '511', '蓟州分公司', '8', '', '', 'beijz@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('521', '0', '0', '陕西', '29', '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('522', '521', '521', '西安', '1', '', '', 'wencheng@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('523', '521', '521', '咸阳', '2', '', '', 'yangkd@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('524', '521', '521', '汉中', '3', '', '', 'heyang5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('531', '0', '0', '江西', '30', '', '', 'longli@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('532', '531', '531', '南昌', '1', '', '', 'yufs@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('533', '531', '531', '九江', '2', '', '', 'tongqing@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('534', '531', '531', '上饶', '3', '', '', 'shenxu@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('535', '531', '531', '抚州', '4', '', '', 'zhousn@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('536', '531', '531', '宜春', '5', '', '', 'yuanming3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('537', '531', '531', '吉安', '6', '', '', 'liuzm3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('538', '531', '531', '赣州', '7', '', '', 'luchen@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('539', '531', '531', '景德镇', '8', '', '', 'sunzq@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('540', '531', '531', '萍乡', '9', '', '', 'lihao5@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('542', '531', '531', '新余', '10', '', '', 'zengmz@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('543', '531', '531', '鹰潭', '11', '', '', 'songyan3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('551', '0', '0', '四川', '31', '', '', 'xiaoyu@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('552', '551', '551', '泸州', '1', '', '', 'wangly@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('553', '551', '551', '广元', '2', '', '', 'liangbo3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('554', '551', '551', '成都', '3', '', '', 'xiangbo@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('555', '551', '551', '乐山', '4', '', '', 'hedan@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('556', '551', '551', '南充', '5', '', '', 'lilz3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('557', '551', '551', '阿坝州', '6', '', '', 'shenll@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('558', '551', '551', '遂宁', '7', '', '', 'zengzh@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('559', '551', '551', '资阳市', '8', '', '', 'ligao@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('560', '551', '551', '甘孜', '9', '', '', 'wuwei10@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('561', '551', '551', '眉山', '10', '', '', 'liyj17@chinatowercom.cn ', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('562', '551', '551', '攀枝花', '11', '', '', 'liuyong8@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('563', '551', '551', '雅安', '12', '', '', 'lixwj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('564', '551', '551', '自贡', '13', '', '', 'wangyu13@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('565', '551', '551', '德阳', '14', '', '', 'chenqiang7@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('566', '551', '551', '广安', '15', '', '', 'wangsong3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('567', '551', '551', '广元', '16', '', '', 'limou@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('568', '551', '551', '绵阳', '17', '', '', 'sunsc@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('569', '551', '551', '内江', '18', '', '', 'leijing@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('570', '551', '551', '凉山', '19', '', '', 'songxin3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('571', '551', '551', '巴中', '20', '', '', 'chentao3@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-03 16:34:30');
INSERT INTO `sys_dept` VALUES ('572', '551', '551', '达州', '21', '', '', 'licj@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('573', '551', '551', '宜宾', '22', '', '', 'lirui9@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-06-18 14:58:01');
INSERT INTO `sys_dept` VALUES ('581', '0', '0', '辽宁', '32', '', '', 'xuesl@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('591', '0', '0', '云南', '33', '', '', 'xiaoyp@chinatowercom.cn', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(500) COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', null, '0', '水压表', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('2', null, '1', '液位表', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('3', null, '2', '烟雾报警器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('4', null, '3', '燃气报警器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('5', null, '4', '电气火灾探测器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('6', null, '5', '消火栓', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('7', null, '6', '温湿度传感器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('8', null, '7', '漏保插座', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('9', null, '8', '漏电保护器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('10', null, '9', '电器保护终端', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('11', null, '10', '水浸传感器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('12', null, '11', '门窗传感器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('13', null, '12', '故障电弧探测器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('14', null, '13', '手动报警器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('15', null, '14', '紧急报警按钮', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('16', null, '15', '声光报警器', 'device_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('17', null, '0', '电信NBIOT', 'sensor_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('18', null, '1', '移动NBIOT', 'sensor_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('19', null, '2', 'LORA', 'sensor_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('20', null, '3', 'GSM', 'sensor_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('21', null, '4', 'WIFI', 'sensor_type', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('22', '0', '1', '报警', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('23', '0', '2', '静音', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('24', '0', '3', '保留', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('25', '0', '4', '低压', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('26', '0', '5', '故障', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('27', '0', '6', '保留', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('28', '0', '7', '正常', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('29', '0', '8', '其他', 'facility_status', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '0', '0', '在线', 'running_state', null, null, 'N', '0', '', null, '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '0', '1', '不在线', 'running_state', null, null, 'N', '0', '', null, '', null, null);

-- ----------------------------
-- Table structure for sys_domain
-- ----------------------------
DROP TABLE IF EXISTS `sys_domain`;
CREATE TABLE `sys_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_address` varchar(512) COMMENT '请求地址',
  `target_address` varchar(512) COMMENT '目标地址',
  `inject_status` tinyint(1) COMMENT ' 注入状态\r\n 0 ：true\r\n 1 ：false\r\n',
  `create_by` varchar(64) COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(255) COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_domain
-- ----------------------------
INSERT INTO `sys_domain` VALUES ('2', 'companypage', 'http://www.goldenetbj.cn', '0', 'admin21', '2019-05-17 16:10:52', 'admin21', '2019-06-05 13:21:22', '12');
INSERT INTO `sys_domain` VALUES ('3', 'dynatrace', 'http://10.5.5.245:8081', '0', 'admin', '2019-05-17 16:19:51', 'admin', '2019-06-05 13:21:04', '0201');
INSERT INTO `sys_domain` VALUES ('4', 'http://10.5.5.242', 'http://www.goldenetbj.cn', '0', 'admin21', '2019-05-17 17:21:55', 'admin21', '2019-06-05 13:21:25', '12');
INSERT INTO `sys_domain` VALUES ('40', '23', '23', '0', 'admin', '2019-06-04 11:16:00', 'admin', '2019-06-05 13:21:07', '0');
INSERT INTO `sys_domain` VALUES ('41', 'dynatrace2', 'http://10.5.5.242:8092', '0', 'admin21', '2019-06-04 11:16:34', 'admin21', '2019-06-05 13:21:28', '01');
INSERT INTO `sys_domain` VALUES ('42', '12', '12', '0', 'admin1', '2019-06-05 09:11:49', 'admin', '2019-06-05 17:26:32', '1');

-- ----------------------------
-- Table structure for sys_fault_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_fault_log`;
CREATE TABLE `sys_fault_log` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '显示顺序',
  `IMEI` varchar(255) NOT NULL COMMENT '故障设备ID',
  `imei_name` varchar(50) COMMENT '故障设备名称',
  `status` char(4) DEFAULT '8' COMMENT '警报状态（1在线0停止）',
  `fault_time` datetime COMMENT '离线时间',
  `restore_time` datetime COMMENT '恢复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fault_log
-- ----------------------------
INSERT INTO `sys_fault_log` VALUES ('1', '867726034908246', '测试设备', '1', '2019-07-08 10:24:21', '2019-07-08 10:25:00');
INSERT INTO `sys_fault_log` VALUES ('2', '867726034908246', '测试设备', '1', '2019-07-24 17:37:11', '2019-07-25 02:26:17');
INSERT INTO `sys_fault_log` VALUES ('3', '867726034908246', '测试设备', '1', '2019-07-25 02:56:19', '2019-07-25 10:39:06');
INSERT INTO `sys_fault_log` VALUES ('4', '867726034908246', '测试设备', '1', '2019-07-25 11:40:11', '2019-07-25 13:39:17');
INSERT INTO `sys_fault_log` VALUES ('5', '867726034908246', '测试设备', '1', '2019-07-25 14:09:38', '2019-07-25 17:02:00');
INSERT INTO `sys_fault_log` VALUES ('6', '867726034908246', '测试设备', '1', '2019-07-25 17:46:44', '2019-07-30 16:22:57');
INSERT INTO `sys_fault_log` VALUES ('7', '867726034908246', '测试设备', '1', '2019-08-01 12:05:21', '2019-08-02 16:12:05');
INSERT INTO `sys_fault_log` VALUES ('8', '867726034908246', '测试设备', '1', '2019-08-29 22:27:00', '2019-08-30 11:32:00');
INSERT INTO `sys_fault_log` VALUES ('9', '867726034908246', '测试设备', '1', '2019-08-29 22:27:00', '2019-08-30 11:32:00');
INSERT INTO `sys_fault_log` VALUES ('10', '867726034456592', 'GS524N会展测试', '0', '2019-09-03 16:47:50', null);
INSERT INTO `sys_fault_log` VALUES ('11', '867726034415994', 'GS524N会展测试3', '0', '2019-09-03 16:48:00', null);
INSERT INTO `sys_fault_log` VALUES ('12', '867726034415994', 'GS524N会展测试3', '0', '2019-09-03 16:48:00', null);
INSERT INTO `sys_fault_log` VALUES ('13', '867726034415499', 'GS524N会展测试2', '0', '2019-09-03 16:48:00', null);
INSERT INTO `sys_fault_log` VALUES ('14', '867726034415499', 'GS524N会展测试2', '0', '2019-09-03 16:48:00', null);
INSERT INTO `sys_fault_log` VALUES ('15', '867726034414104', 'GS524N会展测试5', '0', '2019-09-03 16:48:50', null);
INSERT INTO `sys_fault_log` VALUES ('16', '867726034375354', 'GS524N会展测试4', '0', '2019-09-03 16:48:50', null);
INSERT INTO `sys_fault_log` VALUES ('17', '867726034545394', 'GS524N会展测试9', '1', '2019-09-04 15:15:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('18', '867726034545394', 'GS524N会展测试9', '1', '2019-09-04 15:15:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('19', '867726034493363', 'GS524N会展测试10', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('20', '867726034493363', 'GS524N会展测试10', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('21', '867726034374100', 'GS524N会展测试8', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('22', '867726034521478', 'GS524N会展测试7', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('23', '867726034374100', 'GS524N会展测试8', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('24', '867726034409872', 'GS524N会展测试6', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('25', '867726034521478', 'GS524N会展测试7', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('26', '867726034409872', 'GS524N会展测试6', '1', '2019-09-04 15:17:00', '2019-09-05 10:00:00');
INSERT INTO `sys_fault_log` VALUES ('27', '867726034493363', 'GS524N会展测试10', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('28', '867726034493363', 'GS524N会展测试10', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('29', '867726034545394', 'GS524N会展测试9', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('30', '867726034545394', 'GS524N会展测试9', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('31', '867726034374100', 'GS524N会展测试8', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('32', '867726034374100', 'GS524N会展测试8', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('33', '867726034521478', 'GS524N会展测试7', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('34', '867726034521478', 'GS524N会展测试7', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('35', '867726034409872', 'GS524N会展测试6', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('36', '867726034409872', 'GS524N会展测试6', '1', '2019-09-08 19:05:00', '2019-09-10 12:05:00');
INSERT INTO `sys_fault_log` VALUES ('37', '867726034493363', 'GS524N会展测试10', '1', '2019-09-13 21:05:55', '2019-09-16 10:05:55');
INSERT INTO `sys_fault_log` VALUES ('38', '867726034545394', 'GS524N会展测试9', '1', '2019-09-13 21:05:55', '2019-09-16 10:05:55');
INSERT INTO `sys_fault_log` VALUES ('39', '867726034374100', 'GS524N会展测试8', '1', '2019-09-13 21:05:55', '2019-09-16 10:05:55');
INSERT INTO `sys_fault_log` VALUES ('40', '867726034521478', 'GS524N会展测试7', '1', '2019-09-13 21:05:55', '2019-09-16 10:05:55');
INSERT INTO `sys_fault_log` VALUES ('41', '867726034409872', 'GS524N会展测试6', '1', '2019-09-13 21:05:55', '2019-09-16 10:05:55');
INSERT INTO `sys_fault_log` VALUES ('42', '867726034908246', 'GS524N测试设备', '1', '2019-09-18 11:50:56', '2019-09-18 22:28:00');

-- ----------------------------
-- Table structure for sys_library
-- ----------------------------
DROP TABLE IF EXISTS `sys_library`;
CREATE TABLE `sys_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapping_id` int(11) COMMENT '关联id',
  `mapping_table` varchar(20) COMMENT '关联表名',
  `state` tinyint(1) COMMENT '  1 ： true(启用)\r\n  2 ： false(停止)',
  `create_time` datetime COMMENT '创建时间',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(255) COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_library
-- ----------------------------
INSERT INTO `sys_library` VALUES ('1', '1', 'tb_domain', '2', '2019-05-16 15:09:37', '2019-05-16 15:09:24', null);
INSERT INTO `sys_library` VALUES ('2', '2', 'tb_domain', '1', '2019-05-17 16:13:54', '2019-05-17 16:13:58', null);
INSERT INTO `sys_library` VALUES ('3', '3', 'tb_domain', '2', '2019-05-17 16:20:20', '2019-05-17 16:20:23', null);
INSERT INTO `sys_library` VALUES ('4', '4', 'tb_domain', '1', '2019-05-17 17:22:16', '2019-05-17 17:22:20', null);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `dept_id` bigint(50) COMMENT '单位ID',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1386 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('726', 'yuzhe', '110.19.101.196', null, null, null, '10', '0', '登陆成功', '2019-08-14 09:19:47');
INSERT INTO `sys_logininfor` VALUES ('727', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-14 14:11:39');
INSERT INTO `sys_logininfor` VALUES ('728', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-14 15:30:58');
INSERT INTO `sys_logininfor` VALUES ('729', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-14 15:31:56');
INSERT INTO `sys_logininfor` VALUES ('730', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-14 15:39:55');
INSERT INTO `sys_logininfor` VALUES ('731', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-14 15:51:25');
INSERT INTO `sys_logininfor` VALUES ('732', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-14 15:51:57');
INSERT INTO `sys_logininfor` VALUES ('733', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-14 15:51:58');
INSERT INTO `sys_logininfor` VALUES ('734', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-14 15:52:03');
INSERT INTO `sys_logininfor` VALUES ('735', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 15:06:53');
INSERT INTO `sys_logininfor` VALUES ('736', 'admin', '10.5.5.40', null, null, null, '10', '0', '登陆成功', '2019-08-15 15:07:06');
INSERT INTO `sys_logininfor` VALUES ('737', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:05:40');
INSERT INTO `sys_logininfor` VALUES ('738', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:05:51');
INSERT INTO `sys_logininfor` VALUES ('739', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:06:02');
INSERT INTO `sys_logininfor` VALUES ('740', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:06:11');
INSERT INTO `sys_logininfor` VALUES ('741', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:06:30');
INSERT INTO `sys_logininfor` VALUES ('742', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:06:40');
INSERT INTO `sys_logininfor` VALUES ('743', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:07:03');
INSERT INTO `sys_logininfor` VALUES ('744', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:07:14');
INSERT INTO `sys_logininfor` VALUES ('745', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:07:35');
INSERT INTO `sys_logininfor` VALUES ('746', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:07:50');
INSERT INTO `sys_logininfor` VALUES ('747', 'admin1', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:08:05');
INSERT INTO `sys_logininfor` VALUES ('748', 'admin2', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-15 16:08:16');
INSERT INTO `sys_logininfor` VALUES ('749', 'admin', '10.5.5.15', null, null, null, '10', '0', '登陆成功', '2019-08-15 16:08:39');
INSERT INTO `sys_logininfor` VALUES ('750', 'admin', '10.5.5.15', null, null, null, '10', '0', '退出登陆成功', '2019-08-15 16:08:52');
INSERT INTO `sys_logininfor` VALUES ('751', 'admin', '10.5.5.51', null, null, null, '10', '0', '登陆成功', '2019-08-15 16:09:14');
INSERT INTO `sys_logininfor` VALUES ('752', 'admin', '10.5.5.15', null, null, null, '10', '0', '登陆成功', '2019-08-16 09:15:59');
INSERT INTO `sys_logininfor` VALUES ('753', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-16 09:17:01');
INSERT INTO `sys_logininfor` VALUES ('754', 'admin', '113.246.119.193', null, null, null, null, '1', '登陆失败', '2019-08-18 21:17:37');
INSERT INTO `sys_logininfor` VALUES ('755', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 11:05:34');
INSERT INTO `sys_logininfor` VALUES ('756', 'xiaoyp', '39.129.4.251', null, null, null, '591', '0', '登陆成功', '2019-08-19 11:53:06');
INSERT INTO `sys_logininfor` VALUES ('757', 'admin', '10.5.5.7', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-19 12:16:23');
INSERT INTO `sys_logininfor` VALUES ('758', 'admin', '10.5.5.7', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-19 12:16:24');
INSERT INTO `sys_logininfor` VALUES ('759', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 13:37:40');
INSERT INTO `sys_logininfor` VALUES ('760', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 13:58:25');
INSERT INTO `sys_logininfor` VALUES ('761', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:01:12');
INSERT INTO `sys_logininfor` VALUES ('762', 'admin', '10.5.5.7', null, null, null, '10', '0', '退出登陆成功', '2019-08-19 14:10:18');
INSERT INTO `sys_logininfor` VALUES ('763', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:10:27');
INSERT INTO `sys_logininfor` VALUES ('764', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:13:58');
INSERT INTO `sys_logininfor` VALUES ('765', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:21:56');
INSERT INTO `sys_logininfor` VALUES ('766', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:24:01');
INSERT INTO `sys_logininfor` VALUES ('767', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:35:41');
INSERT INTO `sys_logininfor` VALUES ('768', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:38:31');
INSERT INTO `sys_logininfor` VALUES ('769', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:45:29');
INSERT INTO `sys_logininfor` VALUES ('770', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:48:18');
INSERT INTO `sys_logininfor` VALUES ('771', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:57:08');
INSERT INTO `sys_logininfor` VALUES ('772', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:58:32');
INSERT INTO `sys_logininfor` VALUES ('773', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 14:59:34');
INSERT INTO `sys_logininfor` VALUES ('774', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:02:56');
INSERT INTO `sys_logininfor` VALUES ('775', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:12:13');
INSERT INTO `sys_logininfor` VALUES ('776', 'admin', '10.5.5.7', null, null, null, '10', '1', '登录失败验证码不正确', '2019-08-19 15:16:34');
INSERT INTO `sys_logininfor` VALUES ('777', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:26:03');
INSERT INTO `sys_logininfor` VALUES ('778', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:26:29');
INSERT INTO `sys_logininfor` VALUES ('779', 'admin', '10.5.5.46', null, null, null, '10', '0', '退出登陆成功', '2019-08-19 15:26:44');
INSERT INTO `sys_logininfor` VALUES ('780', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:28:50');
INSERT INTO `sys_logininfor` VALUES ('781', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:35:09');
INSERT INTO `sys_logininfor` VALUES ('782', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:36:39');
INSERT INTO `sys_logininfor` VALUES ('783', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-19 15:36:56');
INSERT INTO `sys_logininfor` VALUES ('784', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:43:03');
INSERT INTO `sys_logininfor` VALUES ('785', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:43:54');
INSERT INTO `sys_logininfor` VALUES ('786', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:48:18');
INSERT INTO `sys_logininfor` VALUES ('787', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:50:49');
INSERT INTO `sys_logininfor` VALUES ('788', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 15:52:47');
INSERT INTO `sys_logininfor` VALUES ('789', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:00:23');
INSERT INTO `sys_logininfor` VALUES ('790', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:01:36');
INSERT INTO `sys_logininfor` VALUES ('791', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:04:14');
INSERT INTO `sys_logininfor` VALUES ('792', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:05:20');
INSERT INTO `sys_logininfor` VALUES ('793', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:05:29');
INSERT INTO `sys_logininfor` VALUES ('794', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:08:19');
INSERT INTO `sys_logininfor` VALUES ('795', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:15:43');
INSERT INTO `sys_logininfor` VALUES ('796', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:47:51');
INSERT INTO `sys_logininfor` VALUES ('797', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 16:51:07');
INSERT INTO `sys_logininfor` VALUES ('798', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:17:55');
INSERT INTO `sys_logininfor` VALUES ('799', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-19 17:19:25');
INSERT INTO `sys_logininfor` VALUES ('800', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:19:38');
INSERT INTO `sys_logininfor` VALUES ('801', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:24:42');
INSERT INTO `sys_logininfor` VALUES ('802', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:26:12');
INSERT INTO `sys_logininfor` VALUES ('803', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:29:31');
INSERT INTO `sys_logininfor` VALUES ('804', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:30:35');
INSERT INTO `sys_logininfor` VALUES ('805', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:38:10');
INSERT INTO `sys_logininfor` VALUES ('806', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:41:58');
INSERT INTO `sys_logininfor` VALUES ('807', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:44:32');
INSERT INTO `sys_logininfor` VALUES ('808', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:47:50');
INSERT INTO `sys_logininfor` VALUES ('809', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:50:49');
INSERT INTO `sys_logininfor` VALUES ('810', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:53:10');
INSERT INTO `sys_logininfor` VALUES ('811', 'admin', '10.5.5.7', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:57:36');
INSERT INTO `sys_logininfor` VALUES ('812', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-19 17:58:41');
INSERT INTO `sys_logininfor` VALUES ('813', 'admin', '10.5.5.18', null, null, null, null, '1', '登陆失败', '2019-08-20 09:13:40');
INSERT INTO `sys_logininfor` VALUES ('814', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 09:15:03');
INSERT INTO `sys_logininfor` VALUES ('815', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 09:24:17');
INSERT INTO `sys_logininfor` VALUES ('816', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 09:44:44');
INSERT INTO `sys_logininfor` VALUES ('817', 'admin', '10.5.5.18', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 10:09:16');
INSERT INTO `sys_logininfor` VALUES ('818', 'admin', '10.5.5.18', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 10:09:27');
INSERT INTO `sys_logininfor` VALUES ('819', 'admin', '10.5.5.18', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 10:09:46');
INSERT INTO `sys_logininfor` VALUES ('820', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 10:10:05');
INSERT INTO `sys_logininfor` VALUES ('821', 'admin', '10.5.5.18', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 10:40:22');
INSERT INTO `sys_logininfor` VALUES ('822', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 10:40:31');
INSERT INTO `sys_logininfor` VALUES ('823', 'admin', '10.5.5.18', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 10:41:11');
INSERT INTO `sys_logininfor` VALUES ('824', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 10:41:17');
INSERT INTO `sys_logininfor` VALUES ('825', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-20 10:50:07');
INSERT INTO `sys_logininfor` VALUES ('826', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:05:38');
INSERT INTO `sys_logininfor` VALUES ('827', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:09:10');
INSERT INTO `sys_logininfor` VALUES ('828', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:26:49');
INSERT INTO `sys_logininfor` VALUES ('829', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:30:10');
INSERT INTO `sys_logininfor` VALUES ('830', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:49:00');
INSERT INTO `sys_logininfor` VALUES ('831', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 11:52:01');
INSERT INTO `sys_logininfor` VALUES ('832', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 11:59:58');
INSERT INTO `sys_logininfor` VALUES ('833', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 12:00:08');
INSERT INTO `sys_logininfor` VALUES ('834', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 12:01:56');
INSERT INTO `sys_logininfor` VALUES ('835', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 12:02:16');
INSERT INTO `sys_logininfor` VALUES ('836', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 12:02:35');
INSERT INTO `sys_logininfor` VALUES ('837', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 12:05:37');
INSERT INTO `sys_logininfor` VALUES ('838', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-20 13:17:46');
INSERT INTO `sys_logininfor` VALUES ('839', 'admin', '10.5.5.18', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 13:31:19');
INSERT INTO `sys_logininfor` VALUES ('840', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 13:31:30');
INSERT INTO `sys_logininfor` VALUES ('841', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 13:31:50');
INSERT INTO `sys_logininfor` VALUES ('842', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 13:32:54');
INSERT INTO `sys_logininfor` VALUES ('843', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 14:02:06');
INSERT INTO `sys_logininfor` VALUES ('844', 'admin', '10.5.5.18', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 14:02:42');
INSERT INTO `sys_logininfor` VALUES ('845', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 14:02:51');
INSERT INTO `sys_logininfor` VALUES ('846', 'admin', '10.5.5.18', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 14:32:58');
INSERT INTO `sys_logininfor` VALUES ('847', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 14:51:39');
INSERT INTO `sys_logininfor` VALUES ('848', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-20 16:52:41');
INSERT INTO `sys_logininfor` VALUES ('849', 'admin', '106.38.36.98', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-20 17:08:03');
INSERT INTO `sys_logininfor` VALUES ('850', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:08:17');
INSERT INTO `sys_logininfor` VALUES ('851', 'admin', '10.5.5.18', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:15:43');
INSERT INTO `sys_logininfor` VALUES ('852', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:21:39');
INSERT INTO `sys_logininfor` VALUES ('853', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:31:22');
INSERT INTO `sys_logininfor` VALUES ('854', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:33:42');
INSERT INTO `sys_logininfor` VALUES ('855', 'admin', '10.5.5.46', null, null, null, '10', '0', '退出登陆成功', '2019-08-20 17:34:26');
INSERT INTO `sys_logininfor` VALUES ('856', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-20 17:38:49');
INSERT INTO `sys_logininfor` VALUES ('857', 'admin', '10.5.5.22', null, null, null, '10', '0', '登陆成功', '2019-08-21 08:44:40');
INSERT INTO `sys_logininfor` VALUES ('858', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:06:34');
INSERT INTO `sys_logininfor` VALUES ('859', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:34:31');
INSERT INTO `sys_logininfor` VALUES ('860', 'admin', '10.5.5.46', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-21 09:36:11');
INSERT INTO `sys_logininfor` VALUES ('861', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:36:29');
INSERT INTO `sys_logininfor` VALUES ('862', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-21 09:38:54');
INSERT INTO `sys_logininfor` VALUES ('863', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:39:04');
INSERT INTO `sys_logininfor` VALUES ('864', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:39:31');
INSERT INTO `sys_logininfor` VALUES ('865', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:43:23');
INSERT INTO `sys_logininfor` VALUES ('866', 'hujl', '110.229.125.16', null, null, null, '201', '0', '登陆成功', '2019-08-21 09:43:54');
INSERT INTO `sys_logininfor` VALUES ('867', 'admin', '10.5.5.46', null, null, null, '10', '0', '退出登陆成功', '2019-08-21 09:43:56');
INSERT INTO `sys_logininfor` VALUES ('868', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 09:45:21');
INSERT INTO `sys_logininfor` VALUES ('869', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:00:18');
INSERT INTO `sys_logininfor` VALUES ('870', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:03:05');
INSERT INTO `sys_logininfor` VALUES ('871', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:20:57');
INSERT INTO `sys_logininfor` VALUES ('872', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:22:35');
INSERT INTO `sys_logininfor` VALUES ('873', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:39:58');
INSERT INTO `sys_logininfor` VALUES ('874', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:40:51');
INSERT INTO `sys_logininfor` VALUES ('875', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 10:55:09');
INSERT INTO `sys_logininfor` VALUES ('876', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-21 11:12:43');
INSERT INTO `sys_logininfor` VALUES ('877', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 11:14:45');
INSERT INTO `sys_logininfor` VALUES ('878', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 11:23:46');
INSERT INTO `sys_logininfor` VALUES ('879', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 12:01:26');
INSERT INTO `sys_logininfor` VALUES ('880', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 13:38:16');
INSERT INTO `sys_logininfor` VALUES ('881', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 13:40:09');
INSERT INTO `sys_logininfor` VALUES ('882', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 13:41:58');
INSERT INTO `sys_logininfor` VALUES ('883', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 14:56:11');
INSERT INTO `sys_logininfor` VALUES ('884', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:04:55');
INSERT INTO `sys_logininfor` VALUES ('885', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:05:18');
INSERT INTO `sys_logininfor` VALUES ('886', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:05:47');
INSERT INTO `sys_logininfor` VALUES ('887', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:06:33');
INSERT INTO `sys_logininfor` VALUES ('888', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:10:28');
INSERT INTO `sys_logininfor` VALUES ('889', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:11:28');
INSERT INTO `sys_logininfor` VALUES ('890', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 15:11:46');
INSERT INTO `sys_logininfor` VALUES ('891', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-21 16:51:01');
INSERT INTO `sys_logininfor` VALUES ('892', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-22 08:51:43');
INSERT INTO `sys_logininfor` VALUES ('893', 'admin', '114.250.24.210', null, null, null, '10', '0', '登陆成功', '2019-08-22 08:52:22');
INSERT INTO `sys_logininfor` VALUES ('894', 'admin', '10.5.5.34', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-22 08:53:50');
INSERT INTO `sys_logininfor` VALUES ('895', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-22 09:31:35');
INSERT INTO `sys_logininfor` VALUES ('896', 'admin', '10.5.5.46', null, null, null, '10', '0', '退出登陆成功', '2019-08-22 09:31:39');
INSERT INTO `sys_logininfor` VALUES ('897', 'admin', '10.5.5.34', null, null, null, '10', '0', '登陆成功', '2019-08-22 09:42:59');
INSERT INTO `sys_logininfor` VALUES ('898', 'admin', '114.250.24.210', null, null, null, '10', '0', '登陆成功', '2019-08-22 10:52:28');
INSERT INTO `sys_logininfor` VALUES ('899', 'admin', '114.250.24.210', null, null, null, '10', '0', '登陆成功', '2019-08-22 10:52:48');
INSERT INTO `sys_logininfor` VALUES ('900', 'admin', '114.250.24.210', null, null, null, '10', '0', '退出登陆成功', '2019-08-22 10:53:39');
INSERT INTO `sys_logininfor` VALUES ('901', 'admin', '114.250.24.210', null, null, null, '10', '0', '登陆成功', '2019-08-22 10:55:10');
INSERT INTO `sys_logininfor` VALUES ('902', 'admin', '114.250.24.210', null, null, null, '10', '0', '退出登陆成功', '2019-08-22 11:18:18');
INSERT INTO `sys_logininfor` VALUES ('903', 'admin', '114.250.24.210', null, null, null, '10', '0', '登陆成功', '2019-08-22 11:48:46');
INSERT INTO `sys_logininfor` VALUES ('904', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-22 12:47:17');
INSERT INTO `sys_logininfor` VALUES ('905', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-23 10:11:33');
INSERT INTO `sys_logininfor` VALUES ('906', 'admin', '10.5.5.42', null, null, null, '10', '0', '登陆成功', '2019-08-23 10:24:24');
INSERT INTO `sys_logininfor` VALUES ('907', 'admin', '10.5.5.40', null, null, null, '10', '0', '登陆成功', '2019-08-23 10:57:33');
INSERT INTO `sys_logininfor` VALUES ('908', 'admin', '10.5.5.40', null, null, null, '10', '0', '登陆成功', '2019-08-23 11:12:43');
INSERT INTO `sys_logininfor` VALUES ('909', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-23 11:47:16');
INSERT INTO `sys_logininfor` VALUES ('910', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-23 12:03:51');
INSERT INTO `sys_logininfor` VALUES ('911', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-23 13:52:17');
INSERT INTO `sys_logininfor` VALUES ('912', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-23 17:39:57');
INSERT INTO `sys_logininfor` VALUES ('913', 'admin', '10.5.5.45', null, null, null, '10', '0', '登陆成功', '2019-08-26 09:14:29');
INSERT INTO `sys_logininfor` VALUES ('914', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-26 09:20:58');
INSERT INTO `sys_logininfor` VALUES ('915', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-26 11:07:44');
INSERT INTO `sys_logininfor` VALUES ('916', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-26 11:39:58');
INSERT INTO `sys_logininfor` VALUES ('917', 'liqiang3', '61.167.105.250', null, null, null, '221', '0', '登陆成功', '2019-08-26 11:47:52');
INSERT INTO `sys_logininfor` VALUES ('918', 'admin', '10.5.5.45', null, null, null, '10', '0', '登陆成功', '2019-08-26 13:01:51');
INSERT INTO `sys_logininfor` VALUES ('919', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-26 14:19:32');
INSERT INTO `sys_logininfor` VALUES ('920', 'liqiang3', '61.167.105.250', null, null, null, '221', '0', '登陆成功', '2019-08-26 14:22:34');
INSERT INTO `sys_logininfor` VALUES ('921', 'admin', '106.38.36.98', null, null, null, '10', '0', '退出登陆成功', '2019-08-26 14:25:17');
INSERT INTO `sys_logininfor` VALUES ('922', 'admin', '10.5.5.47', null, null, null, '10', '0', '登陆成功', '2019-08-26 15:24:28');
INSERT INTO `sys_logininfor` VALUES ('923', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-27 09:22:43');
INSERT INTO `sys_logininfor` VALUES ('924', 'admin', '10.5.5.12', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-27 09:28:12');
INSERT INTO `sys_logininfor` VALUES ('925', 'admin', '10.5.5.12', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-27 09:28:15');
INSERT INTO `sys_logininfor` VALUES ('926', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-27 09:28:21');
INSERT INTO `sys_logininfor` VALUES ('927', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-27 09:28:29');
INSERT INTO `sys_logininfor` VALUES ('928', 'admin', '10.5.5.12', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-27 11:13:46');
INSERT INTO `sys_logininfor` VALUES ('929', 'admin', '10.5.5.12', null, null, null, '10', '0', '登陆成功', '2019-08-27 11:38:59');
INSERT INTO `sys_logininfor` VALUES ('930', 'admin', '106.38.36.98', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-27 16:07:29');
INSERT INTO `sys_logininfor` VALUES ('931', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-27 16:07:39');
INSERT INTO `sys_logininfor` VALUES ('932', 'liqiang3', '61.167.105.250', null, null, null, '221', '0', '登陆成功', '2019-08-28 08:35:59');
INSERT INTO `sys_logininfor` VALUES ('933', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-28 09:03:30');
INSERT INTO `sys_logininfor` VALUES ('934', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:05:18');
INSERT INTO `sys_logininfor` VALUES ('935', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:12:20');
INSERT INTO `sys_logininfor` VALUES ('936', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:15:46');
INSERT INTO `sys_logininfor` VALUES ('937', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:46:39');
INSERT INTO `sys_logininfor` VALUES ('938', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:48:00');
INSERT INTO `sys_logininfor` VALUES ('939', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:48:11');
INSERT INTO `sys_logininfor` VALUES ('940', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:52:31');
INSERT INTO `sys_logininfor` VALUES ('941', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 09:59:19');
INSERT INTO `sys_logininfor` VALUES ('942', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 10:01:57');
INSERT INTO `sys_logininfor` VALUES ('943', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 10:05:38');
INSERT INTO `sys_logininfor` VALUES ('944', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 10:08:54');
INSERT INTO `sys_logininfor` VALUES ('945', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-28 10:14:57');
INSERT INTO `sys_logininfor` VALUES ('946', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 11:59:37');
INSERT INTO `sys_logininfor` VALUES ('947', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 12:00:57');
INSERT INTO `sys_logininfor` VALUES ('948', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-28 14:24:01');
INSERT INTO `sys_logininfor` VALUES ('949', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-28 14:32:28');
INSERT INTO `sys_logininfor` VALUES ('950', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 14:32:47');
INSERT INTO `sys_logininfor` VALUES ('951', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 14:44:00');
INSERT INTO `sys_logininfor` VALUES ('952', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 14:55:56');
INSERT INTO `sys_logininfor` VALUES ('953', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:03:21');
INSERT INTO `sys_logininfor` VALUES ('954', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:06:37');
INSERT INTO `sys_logininfor` VALUES ('955', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:09:53');
INSERT INTO `sys_logininfor` VALUES ('956', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:14:15');
INSERT INTO `sys_logininfor` VALUES ('957', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:17:00');
INSERT INTO `sys_logininfor` VALUES ('958', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:18:21');
INSERT INTO `sys_logininfor` VALUES ('959', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:19:52');
INSERT INTO `sys_logininfor` VALUES ('960', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:26:00');
INSERT INTO `sys_logininfor` VALUES ('961', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:49:14');
INSERT INTO `sys_logininfor` VALUES ('962', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 15:58:06');
INSERT INTO `sys_logininfor` VALUES ('963', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 16:04:37');
INSERT INTO `sys_logininfor` VALUES ('964', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 16:07:23');
INSERT INTO `sys_logininfor` VALUES ('965', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-28 16:58:19');
INSERT INTO `sys_logininfor` VALUES ('966', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 17:02:03');
INSERT INTO `sys_logininfor` VALUES ('967', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 17:03:07');
INSERT INTO `sys_logininfor` VALUES ('968', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 17:04:02');
INSERT INTO `sys_logininfor` VALUES ('969', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 17:04:23');
INSERT INTO `sys_logininfor` VALUES ('970', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-28 17:05:56');
INSERT INTO `sys_logininfor` VALUES ('971', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-29 09:27:39');
INSERT INTO `sys_logininfor` VALUES ('972', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-29 09:28:20');
INSERT INTO `sys_logininfor` VALUES ('973', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 09:53:10');
INSERT INTO `sys_logininfor` VALUES ('974', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 09:59:53');
INSERT INTO `sys_logininfor` VALUES ('975', 'admin', '10.5.5.31', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:13:44');
INSERT INTO `sys_logininfor` VALUES ('976', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:20:32');
INSERT INTO `sys_logininfor` VALUES ('977', 'admin', '10.5.5.46', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-29 13:28:09');
INSERT INTO `sys_logininfor` VALUES ('978', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:28:21');
INSERT INTO `sys_logininfor` VALUES ('979', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:31:57');
INSERT INTO `sys_logininfor` VALUES ('980', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:34:03');
INSERT INTO `sys_logininfor` VALUES ('981', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:39:50');
INSERT INTO `sys_logininfor` VALUES ('982', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:41:51');
INSERT INTO `sys_logininfor` VALUES ('983', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:43:34');
INSERT INTO `sys_logininfor` VALUES ('984', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:47:44');
INSERT INTO `sys_logininfor` VALUES ('985', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 13:55:12');
INSERT INTO `sys_logininfor` VALUES ('986', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:01:40');
INSERT INTO `sys_logininfor` VALUES ('987', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:02:05');
INSERT INTO `sys_logininfor` VALUES ('988', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:12:30');
INSERT INTO `sys_logininfor` VALUES ('989', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:14:28');
INSERT INTO `sys_logininfor` VALUES ('990', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:17:35');
INSERT INTO `sys_logininfor` VALUES ('991', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:22:25');
INSERT INTO `sys_logininfor` VALUES ('992', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:23:51');
INSERT INTO `sys_logininfor` VALUES ('993', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:25:58');
INSERT INTO `sys_logininfor` VALUES ('994', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:27:07');
INSERT INTO `sys_logininfor` VALUES ('995', 'wangjq', '125.75.132.29', null, null, null, '161', '0', '登陆成功', '2019-08-29 14:27:22');
INSERT INTO `sys_logininfor` VALUES ('996', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:27:51');
INSERT INTO `sys_logininfor` VALUES ('997', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:28:28');
INSERT INTO `sys_logininfor` VALUES ('998', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:30:48');
INSERT INTO `sys_logininfor` VALUES ('999', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-29 14:31:22');
INSERT INTO `sys_logininfor` VALUES ('1000', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:35:11');
INSERT INTO `sys_logininfor` VALUES ('1001', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:44:30');
INSERT INTO `sys_logininfor` VALUES ('1002', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:54:34');
INSERT INTO `sys_logininfor` VALUES ('1003', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:56:28');
INSERT INTO `sys_logininfor` VALUES ('1004', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:57:34');
INSERT INTO `sys_logininfor` VALUES ('1005', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 14:58:21');
INSERT INTO `sys_logininfor` VALUES ('1006', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:01:18');
INSERT INTO `sys_logininfor` VALUES ('1007', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:02:50');
INSERT INTO `sys_logininfor` VALUES ('1008', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:04:15');
INSERT INTO `sys_logininfor` VALUES ('1009', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:05:06');
INSERT INTO `sys_logininfor` VALUES ('1010', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:07:30');
INSERT INTO `sys_logininfor` VALUES ('1011', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:16:52');
INSERT INTO `sys_logininfor` VALUES ('1012', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:18:24');
INSERT INTO `sys_logininfor` VALUES ('1013', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:19:24');
INSERT INTO `sys_logininfor` VALUES ('1014', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:20:08');
INSERT INTO `sys_logininfor` VALUES ('1015', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:20:57');
INSERT INTO `sys_logininfor` VALUES ('1016', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:21:43');
INSERT INTO `sys_logininfor` VALUES ('1017', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:22:48');
INSERT INTO `sys_logininfor` VALUES ('1018', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:24:26');
INSERT INTO `sys_logininfor` VALUES ('1019', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:25:32');
INSERT INTO `sys_logininfor` VALUES ('1020', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:26:44');
INSERT INTO `sys_logininfor` VALUES ('1021', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:27:49');
INSERT INTO `sys_logininfor` VALUES ('1022', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:28:31');
INSERT INTO `sys_logininfor` VALUES ('1023', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:31:22');
INSERT INTO `sys_logininfor` VALUES ('1024', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:32:27');
INSERT INTO `sys_logininfor` VALUES ('1025', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:33:58');
INSERT INTO `sys_logininfor` VALUES ('1026', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:35:30');
INSERT INTO `sys_logininfor` VALUES ('1027', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:39:08');
INSERT INTO `sys_logininfor` VALUES ('1028', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:45:09');
INSERT INTO `sys_logininfor` VALUES ('1029', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 15:53:55');
INSERT INTO `sys_logininfor` VALUES ('1030', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:09:25');
INSERT INTO `sys_logininfor` VALUES ('1031', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:10:15');
INSERT INTO `sys_logininfor` VALUES ('1032', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:11:11');
INSERT INTO `sys_logininfor` VALUES ('1033', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:12:08');
INSERT INTO `sys_logininfor` VALUES ('1034', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:21:12');
INSERT INTO `sys_logininfor` VALUES ('1035', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:23:34');
INSERT INTO `sys_logininfor` VALUES ('1036', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:27:07');
INSERT INTO `sys_logininfor` VALUES ('1037', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 16:28:58');
INSERT INTO `sys_logininfor` VALUES ('1038', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:00:45');
INSERT INTO `sys_logininfor` VALUES ('1039', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:21:00');
INSERT INTO `sys_logininfor` VALUES ('1040', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:26:21');
INSERT INTO `sys_logininfor` VALUES ('1041', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:27:43');
INSERT INTO `sys_logininfor` VALUES ('1042', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:30:06');
INSERT INTO `sys_logininfor` VALUES ('1043', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-29 17:31:17');
INSERT INTO `sys_logininfor` VALUES ('1044', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-08-30 09:09:28');
INSERT INTO `sys_logininfor` VALUES ('1045', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 09:11:35');
INSERT INTO `sys_logininfor` VALUES ('1046', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 09:42:26');
INSERT INTO `sys_logininfor` VALUES ('1047', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:19:56');
INSERT INTO `sys_logininfor` VALUES ('1048', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:21:45');
INSERT INTO `sys_logininfor` VALUES ('1049', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:22:41');
INSERT INTO `sys_logininfor` VALUES ('1050', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:25:10');
INSERT INTO `sys_logininfor` VALUES ('1051', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:26:04');
INSERT INTO `sys_logininfor` VALUES ('1052', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:27:53');
INSERT INTO `sys_logininfor` VALUES ('1053', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:29:27');
INSERT INTO `sys_logininfor` VALUES ('1054', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:38:37');
INSERT INTO `sys_logininfor` VALUES ('1055', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:42:27');
INSERT INTO `sys_logininfor` VALUES ('1056', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:49:34');
INSERT INTO `sys_logininfor` VALUES ('1057', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:53:35');
INSERT INTO `sys_logininfor` VALUES ('1058', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-30 10:54:45');
INSERT INTO `sys_logininfor` VALUES ('1059', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:01:06');
INSERT INTO `sys_logininfor` VALUES ('1060', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:04:25');
INSERT INTO `sys_logininfor` VALUES ('1061', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:05:21');
INSERT INTO `sys_logininfor` VALUES ('1062', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:09:58');
INSERT INTO `sys_logininfor` VALUES ('1063', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:11:02');
INSERT INTO `sys_logininfor` VALUES ('1064', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:11:57');
INSERT INTO `sys_logininfor` VALUES ('1065', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:13:56');
INSERT INTO `sys_logininfor` VALUES ('1066', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:14:58');
INSERT INTO `sys_logininfor` VALUES ('1067', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:21:36');
INSERT INTO `sys_logininfor` VALUES ('1068', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:24:27');
INSERT INTO `sys_logininfor` VALUES ('1069', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:26:54');
INSERT INTO `sys_logininfor` VALUES ('1070', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 11:29:09');
INSERT INTO `sys_logininfor` VALUES ('1071', 'admin', '106.38.36.98', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-30 13:52:04');
INSERT INTO `sys_logininfor` VALUES ('1072', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-08-30 14:18:18');
INSERT INTO `sys_logininfor` VALUES ('1073', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-30 14:21:25');
INSERT INTO `sys_logininfor` VALUES ('1074', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 14:21:35');
INSERT INTO `sys_logininfor` VALUES ('1075', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:25:59');
INSERT INTO `sys_logininfor` VALUES ('1076', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:27:52');
INSERT INTO `sys_logininfor` VALUES ('1077', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:29:28');
INSERT INTO `sys_logininfor` VALUES ('1078', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-30 15:31:24');
INSERT INTO `sys_logininfor` VALUES ('1079', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:31:33');
INSERT INTO `sys_logininfor` VALUES ('1080', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:46:47');
INSERT INTO `sys_logininfor` VALUES ('1081', 'admin', '127.1.1.0', null, null, null, '10', '0', '退出登陆成功', '2019-08-30 15:47:19');
INSERT INTO `sys_logininfor` VALUES ('1082', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:47:26');
INSERT INTO `sys_logininfor` VALUES ('1083', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-08-30 15:48:25');
INSERT INTO `sys_logininfor` VALUES ('1084', 'admin', '10.5.5.40', null, null, null, null, '1', '登录失败验证码不正确', '2019-08-30 17:13:55');
INSERT INTO `sys_logininfor` VALUES ('1085', 'admin', '10.5.5.40', null, null, null, '10', '0', '登陆成功', '2019-08-30 17:14:07');
INSERT INTO `sys_logininfor` VALUES ('1086', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-02 10:30:28');
INSERT INTO `sys_logininfor` VALUES ('1087', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-02 11:35:09');
INSERT INTO `sys_logininfor` VALUES ('1088', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-02 11:39:30');
INSERT INTO `sys_logininfor` VALUES ('1089', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-02 11:41:57');
INSERT INTO `sys_logininfor` VALUES ('1090', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-02 13:37:33');
INSERT INTO `sys_logininfor` VALUES ('1091', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-02 15:25:01');
INSERT INTO `sys_logininfor` VALUES ('1092', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-03 09:17:09');
INSERT INTO `sys_logininfor` VALUES ('1093', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-03 14:45:06');
INSERT INTO `sys_logininfor` VALUES ('1094', 'admin', '106.38.36.98', null, null, null, '10', '0', '退出登陆成功', '2019-09-03 16:14:01');
INSERT INTO `sys_logininfor` VALUES ('1095', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-03 16:14:07');
INSERT INTO `sys_logininfor` VALUES ('1096', 'admin', '106.38.36.98', null, null, null, null, '1', '登陆失败', '2019-09-03 17:05:46');
INSERT INTO `sys_logininfor` VALUES ('1097', 'admin', '106.38.36.98', null, null, null, null, '1', '登陆失败', '2019-09-03 17:06:01');
INSERT INTO `sys_logininfor` VALUES ('1098', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-03 17:06:14');
INSERT INTO `sys_logininfor` VALUES ('1099', 'admin', '114.225.17.91', null, null, null, null, '1', '登陆失败', '2019-09-03 17:34:52');
INSERT INTO `sys_logininfor` VALUES ('1100', 'admin', '114.225.17.91', null, null, null, '10', '0', '登陆成功', '2019-09-03 17:41:22');
INSERT INTO `sys_logininfor` VALUES ('1101', 'admin', '10.5.5.22', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-04 10:01:50');
INSERT INTO `sys_logininfor` VALUES ('1102', 'admin', '106.38.36.98', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-04 10:02:04');
INSERT INTO `sys_logininfor` VALUES ('1103', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-04 10:02:13');
INSERT INTO `sys_logininfor` VALUES ('1104', 'admin', '10.5.5.22', null, null, null, '10', '0', '登陆成功', '2019-09-04 10:03:42');
INSERT INTO `sys_logininfor` VALUES ('1105', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-05 09:43:45');
INSERT INTO `sys_logininfor` VALUES ('1106', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-05 11:00:19');
INSERT INTO `sys_logininfor` VALUES ('1107', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-05 11:21:35');
INSERT INTO `sys_logininfor` VALUES ('1108', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-05 13:44:20');
INSERT INTO `sys_logininfor` VALUES ('1109', 'admin', '10.5.5.46', null, null, null, '10', '1', '登录失败验证码不正确', '2019-09-05 14:55:00');
INSERT INTO `sys_logininfor` VALUES ('1110', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-05 14:55:09');
INSERT INTO `sys_logininfor` VALUES ('1111', 'admin', '36.149.143.174', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-05 15:33:26');
INSERT INTO `sys_logininfor` VALUES ('1112', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-05 15:33:51');
INSERT INTO `sys_logininfor` VALUES ('1113', 'admin', '10.5.5.46', null, null, null, '10', '0', '登陆成功', '2019-09-05 17:06:08');
INSERT INTO `sys_logininfor` VALUES ('1114', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-06 09:04:50');
INSERT INTO `sys_logininfor` VALUES ('1115', 'admin', '36.149.143.174', null, null, null, null, '1', '登陆失败', '2019-09-06 14:20:44');
INSERT INTO `sys_logininfor` VALUES ('1116', 'admin', '36.149.143.174', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-06 14:21:05');
INSERT INTO `sys_logininfor` VALUES ('1117', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-06 14:21:34');
INSERT INTO `sys_logininfor` VALUES ('1118', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-06 16:08:20');
INSERT INTO `sys_logininfor` VALUES ('1119', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-07 09:19:04');
INSERT INTO `sys_logininfor` VALUES ('1120', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-07 14:41:53');
INSERT INTO `sys_logininfor` VALUES ('1121', 'admin', '10.5.5.40', null, null, null, '10', '0', '登陆成功', '2019-09-07 14:42:02');
INSERT INTO `sys_logininfor` VALUES ('1122', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-07 14:50:02');
INSERT INTO `sys_logininfor` VALUES ('1123', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-07 15:42:02');
INSERT INTO `sys_logininfor` VALUES ('1124', 'admin', '106.38.36.98', null, null, null, null, '1', '登陆失败', '2019-09-07 19:21:58');
INSERT INTO `sys_logininfor` VALUES ('1125', 'admin', '36.149.143.174', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-08 08:45:57');
INSERT INTO `sys_logininfor` VALUES ('1126', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-08 08:46:12');
INSERT INTO `sys_logininfor` VALUES ('1127', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-08 12:15:32');
INSERT INTO `sys_logininfor` VALUES ('1128', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-08 13:55:42');
INSERT INTO `sys_logininfor` VALUES ('1129', 'admin', '114.225.17.160', null, null, null, '10', '0', '登陆成功', '2019-09-08 22:47:29');
INSERT INTO `sys_logininfor` VALUES ('1130', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-09 08:53:59');
INSERT INTO `sys_logininfor` VALUES ('1131', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-09 10:14:47');
INSERT INTO `sys_logininfor` VALUES ('1132', 'admin', '36.149.143.174', null, null, null, '10', '0', '登陆成功', '2019-09-09 13:22:15');
INSERT INTO `sys_logininfor` VALUES ('1133', 'liqiang3', '221.208.64.42', null, null, null, '221', '0', '登陆成功', '2019-09-10 08:42:00');
INSERT INTO `sys_logininfor` VALUES ('1134', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-10 11:20:26');
INSERT INTO `sys_logininfor` VALUES ('1135', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-10 11:24:12');
INSERT INTO `sys_logininfor` VALUES ('1136', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 11:24:22');
INSERT INTO `sys_logininfor` VALUES ('1137', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-10 13:00:35');
INSERT INTO `sys_logininfor` VALUES ('1138', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 13:00:48');
INSERT INTO `sys_logininfor` VALUES ('1139', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 14:48:45');
INSERT INTO `sys_logininfor` VALUES ('1140', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:18:57');
INSERT INTO `sys_logininfor` VALUES ('1141', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:36:15');
INSERT INTO `sys_logininfor` VALUES ('1142', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:38:03');
INSERT INTO `sys_logininfor` VALUES ('1143', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:47:07');
INSERT INTO `sys_logininfor` VALUES ('1144', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:54:07');
INSERT INTO `sys_logininfor` VALUES ('1145', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 15:57:25');
INSERT INTO `sys_logininfor` VALUES ('1146', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-10 16:08:48');
INSERT INTO `sys_logininfor` VALUES ('1147', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 16:08:58');
INSERT INTO `sys_logininfor` VALUES ('1148', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-10 16:10:56');
INSERT INTO `sys_logininfor` VALUES ('1149', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 16:19:03');
INSERT INTO `sys_logininfor` VALUES ('1150', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-10 16:59:33');
INSERT INTO `sys_logininfor` VALUES ('1151', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 17:05:46');
INSERT INTO `sys_logininfor` VALUES ('1152', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 17:07:42');
INSERT INTO `sys_logininfor` VALUES ('1153', 'admin', '127.1.1.0', null, null, null, '10', '1', '登录失败验证码不正确', '2019-09-10 17:10:11');
INSERT INTO `sys_logininfor` VALUES ('1154', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 17:10:21');
INSERT INTO `sys_logininfor` VALUES ('1155', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-10 17:40:22');
INSERT INTO `sys_logininfor` VALUES ('1156', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 09:16:56');
INSERT INTO `sys_logininfor` VALUES ('1157', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 09:26:42');
INSERT INTO `sys_logininfor` VALUES ('1158', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 10:23:22');
INSERT INTO `sys_logininfor` VALUES ('1159', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:24:53');
INSERT INTO `sys_logininfor` VALUES ('1160', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:40:33');
INSERT INTO `sys_logininfor` VALUES ('1161', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:42:40');
INSERT INTO `sys_logininfor` VALUES ('1162', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:47:33');
INSERT INTO `sys_logininfor` VALUES ('1163', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:53:26');
INSERT INTO `sys_logininfor` VALUES ('1164', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:55:31');
INSERT INTO `sys_logininfor` VALUES ('1165', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 11:57:11');
INSERT INTO `sys_logininfor` VALUES ('1166', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-11 13:34:07');
INSERT INTO `sys_logininfor` VALUES ('1167', 'admin', '10.5.5.11', null, null, null, '10', '0', '登陆成功', '2019-09-11 14:45:26');
INSERT INTO `sys_logininfor` VALUES ('1168', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:17:14');
INSERT INTO `sys_logininfor` VALUES ('1169', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:39:32');
INSERT INTO `sys_logininfor` VALUES ('1170', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:42:06');
INSERT INTO `sys_logininfor` VALUES ('1171', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:43:41');
INSERT INTO `sys_logininfor` VALUES ('1172', 'admin', '10.5.5.48', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:44:38');
INSERT INTO `sys_logininfor` VALUES ('1173', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:54:18');
INSERT INTO `sys_logininfor` VALUES ('1174', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 10:58:37');
INSERT INTO `sys_logininfor` VALUES ('1175', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:01:41');
INSERT INTO `sys_logininfor` VALUES ('1176', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:05:22');
INSERT INTO `sys_logininfor` VALUES ('1177', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:12:05');
INSERT INTO `sys_logininfor` VALUES ('1178', 'admin', '127.0.0.1', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-12 11:23:40');
INSERT INTO `sys_logininfor` VALUES ('1179', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:23:52');
INSERT INTO `sys_logininfor` VALUES ('1180', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:26:51');
INSERT INTO `sys_logininfor` VALUES ('1181', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-12 11:50:27');
INSERT INTO `sys_logininfor` VALUES ('1182', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 11:50:37');
INSERT INTO `sys_logininfor` VALUES ('1183', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-12 12:49:10');
INSERT INTO `sys_logininfor` VALUES ('1184', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 12:49:20');
INSERT INTO `sys_logininfor` VALUES ('1185', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 12:54:07');
INSERT INTO `sys_logininfor` VALUES ('1186', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 12:58:12');
INSERT INTO `sys_logininfor` VALUES ('1187', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 12:59:44');
INSERT INTO `sys_logininfor` VALUES ('1188', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:01:21');
INSERT INTO `sys_logininfor` VALUES ('1189', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:04:55');
INSERT INTO `sys_logininfor` VALUES ('1190', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:12:15');
INSERT INTO `sys_logininfor` VALUES ('1191', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:27:03');
INSERT INTO `sys_logininfor` VALUES ('1192', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:36:41');
INSERT INTO `sys_logininfor` VALUES ('1193', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:41:01');
INSERT INTO `sys_logininfor` VALUES ('1194', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:50:13');
INSERT INTO `sys_logininfor` VALUES ('1195', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:53:05');
INSERT INTO `sys_logininfor` VALUES ('1196', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-12 13:58:53');
INSERT INTO `sys_logininfor` VALUES ('1197', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 09:08:39');
INSERT INTO `sys_logininfor` VALUES ('1198', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 09:47:53');
INSERT INTO `sys_logininfor` VALUES ('1199', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 10:43:40');
INSERT INTO `sys_logininfor` VALUES ('1200', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 10:46:49');
INSERT INTO `sys_logininfor` VALUES ('1201', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 10:48:53');
INSERT INTO `sys_logininfor` VALUES ('1202', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-16 10:51:09');
INSERT INTO `sys_logininfor` VALUES ('1203', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 10:51:21');
INSERT INTO `sys_logininfor` VALUES ('1204', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:13:04');
INSERT INTO `sys_logininfor` VALUES ('1205', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:14:37');
INSERT INTO `sys_logininfor` VALUES ('1206', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:17:49');
INSERT INTO `sys_logininfor` VALUES ('1207', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:19:37');
INSERT INTO `sys_logininfor` VALUES ('1208', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:25:38');
INSERT INTO `sys_logininfor` VALUES ('1209', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:38:28');
INSERT INTO `sys_logininfor` VALUES ('1210', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:46:27');
INSERT INTO `sys_logininfor` VALUES ('1211', 'admin', '127.0.0.1', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-16 11:52:59');
INSERT INTO `sys_logininfor` VALUES ('1212', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-16 11:53:10');
INSERT INTO `sys_logininfor` VALUES ('1213', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 13:17:37');
INSERT INTO `sys_logininfor` VALUES ('1214', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:04:40');
INSERT INTO `sys_logininfor` VALUES ('1215', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:12:01');
INSERT INTO `sys_logininfor` VALUES ('1216', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:13:00');
INSERT INTO `sys_logininfor` VALUES ('1217', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:17:31');
INSERT INTO `sys_logininfor` VALUES ('1218', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:40:15');
INSERT INTO `sys_logininfor` VALUES ('1219', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:42:44');
INSERT INTO `sys_logininfor` VALUES ('1220', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 14:44:17');
INSERT INTO `sys_logininfor` VALUES ('1221', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:35:03');
INSERT INTO `sys_logininfor` VALUES ('1222', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:36:44');
INSERT INTO `sys_logininfor` VALUES ('1223', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-16 15:38:15');
INSERT INTO `sys_logininfor` VALUES ('1224', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:38:32');
INSERT INTO `sys_logininfor` VALUES ('1225', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:43:36');
INSERT INTO `sys_logininfor` VALUES ('1226', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:49:20');
INSERT INTO `sys_logininfor` VALUES ('1227', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:51:59');
INSERT INTO `sys_logininfor` VALUES ('1228', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 15:54:48');
INSERT INTO `sys_logininfor` VALUES ('1229', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:05:17');
INSERT INTO `sys_logininfor` VALUES ('1230', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:27:37');
INSERT INTO `sys_logininfor` VALUES ('1231', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:29:35');
INSERT INTO `sys_logininfor` VALUES ('1232', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:36:23');
INSERT INTO `sys_logininfor` VALUES ('1233', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:38:21');
INSERT INTO `sys_logininfor` VALUES ('1234', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 17:46:49');
INSERT INTO `sys_logininfor` VALUES ('1235', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 18:04:56');
INSERT INTO `sys_logininfor` VALUES ('1236', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-16 18:13:19');
INSERT INTO `sys_logininfor` VALUES ('1237', 'admin', '223.72.80.69', null, null, null, '10', '0', '登陆成功', '2019-09-16 22:59:00');
INSERT INTO `sys_logininfor` VALUES ('1238', 'admin', '221.192.179.64', null, null, null, '10', '0', '登陆成功', '2019-09-17 09:16:08');
INSERT INTO `sys_logininfor` VALUES ('1239', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 09:55:36');
INSERT INTO `sys_logininfor` VALUES ('1240', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 10:33:11');
INSERT INTO `sys_logininfor` VALUES ('1241', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 10:35:15');
INSERT INTO `sys_logininfor` VALUES ('1242', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 10:35:23');
INSERT INTO `sys_logininfor` VALUES ('1243', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-17 10:43:18');
INSERT INTO `sys_logininfor` VALUES ('1244', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:16:23');
INSERT INTO `sys_logininfor` VALUES ('1245', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:21:26');
INSERT INTO `sys_logininfor` VALUES ('1246', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 11:32:17');
INSERT INTO `sys_logininfor` VALUES ('1247', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:32:25');
INSERT INTO `sys_logininfor` VALUES ('1248', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 11:35:22');
INSERT INTO `sys_logininfor` VALUES ('1249', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:35:37');
INSERT INTO `sys_logininfor` VALUES ('1250', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:40:05');
INSERT INTO `sys_logininfor` VALUES ('1251', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:43:51');
INSERT INTO `sys_logininfor` VALUES ('1252', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:47:50');
INSERT INTO `sys_logininfor` VALUES ('1253', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 11:55:55');
INSERT INTO `sys_logininfor` VALUES ('1254', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 12:11:55');
INSERT INTO `sys_logininfor` VALUES ('1255', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 12:15:29');
INSERT INTO `sys_logininfor` VALUES ('1256', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 12:59:19');
INSERT INTO `sys_logininfor` VALUES ('1257', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 12:59:28');
INSERT INTO `sys_logininfor` VALUES ('1258', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:02:17');
INSERT INTO `sys_logininfor` VALUES ('1259', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:04:27');
INSERT INTO `sys_logininfor` VALUES ('1260', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:06:34');
INSERT INTO `sys_logininfor` VALUES ('1261', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:09:20');
INSERT INTO `sys_logininfor` VALUES ('1262', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:12:13');
INSERT INTO `sys_logininfor` VALUES ('1263', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:13:16');
INSERT INTO `sys_logininfor` VALUES ('1264', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:14:43');
INSERT INTO `sys_logininfor` VALUES ('1265', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:15:00');
INSERT INTO `sys_logininfor` VALUES ('1266', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:16:45');
INSERT INTO `sys_logininfor` VALUES ('1267', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:18:24');
INSERT INTO `sys_logininfor` VALUES ('1268', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 13:20:38');
INSERT INTO `sys_logininfor` VALUES ('1269', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:20:46');
INSERT INTO `sys_logininfor` VALUES ('1270', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:31:13');
INSERT INTO `sys_logininfor` VALUES ('1271', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:34:24');
INSERT INTO `sys_logininfor` VALUES ('1272', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:35:46');
INSERT INTO `sys_logininfor` VALUES ('1273', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:43:44');
INSERT INTO `sys_logininfor` VALUES ('1274', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 13:46:40');
INSERT INTO `sys_logininfor` VALUES ('1275', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:46:48');
INSERT INTO `sys_logininfor` VALUES ('1276', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:48:05');
INSERT INTO `sys_logininfor` VALUES ('1277', 'admin', '10.5.5.48', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:48:34');
INSERT INTO `sys_logininfor` VALUES ('1278', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:49:26');
INSERT INTO `sys_logininfor` VALUES ('1279', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:50:01');
INSERT INTO `sys_logininfor` VALUES ('1280', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:50:25');
INSERT INTO `sys_logininfor` VALUES ('1281', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:51:49');
INSERT INTO `sys_logininfor` VALUES ('1282', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:52:04');
INSERT INTO `sys_logininfor` VALUES ('1283', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:52:50');
INSERT INTO `sys_logininfor` VALUES ('1284', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:53:59');
INSERT INTO `sys_logininfor` VALUES ('1285', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:56:37');
INSERT INTO `sys_logininfor` VALUES ('1286', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:57:21');
INSERT INTO `sys_logininfor` VALUES ('1287', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:58:11');
INSERT INTO `sys_logininfor` VALUES ('1288', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 13:59:30');
INSERT INTO `sys_logininfor` VALUES ('1289', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 14:00:18');
INSERT INTO `sys_logininfor` VALUES ('1290', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 14:00:21');
INSERT INTO `sys_logininfor` VALUES ('1291', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 14:00:28');
INSERT INTO `sys_logininfor` VALUES ('1292', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 14:32:04');
INSERT INTO `sys_logininfor` VALUES ('1293', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 14:34:06');
INSERT INTO `sys_logininfor` VALUES ('1294', 'admin', '127.0.0.1', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 14:55:00');
INSERT INTO `sys_logininfor` VALUES ('1295', 'admin', '127.0.0.1', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 14:55:09');
INSERT INTO `sys_logininfor` VALUES ('1296', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-17 14:55:21');
INSERT INTO `sys_logininfor` VALUES ('1297', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 14:58:37');
INSERT INTO `sys_logininfor` VALUES ('1298', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:00:38');
INSERT INTO `sys_logininfor` VALUES ('1299', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 15:03:25');
INSERT INTO `sys_logininfor` VALUES ('1300', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:03:36');
INSERT INTO `sys_logininfor` VALUES ('1301', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:16:32');
INSERT INTO `sys_logininfor` VALUES ('1302', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:20:57');
INSERT INTO `sys_logininfor` VALUES ('1303', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:26:25');
INSERT INTO `sys_logininfor` VALUES ('1304', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:30:11');
INSERT INTO `sys_logininfor` VALUES ('1305', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:32:26');
INSERT INTO `sys_logininfor` VALUES ('1306', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:38:10');
INSERT INTO `sys_logininfor` VALUES ('1307', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:42:17');
INSERT INTO `sys_logininfor` VALUES ('1308', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:47:57');
INSERT INTO `sys_logininfor` VALUES ('1309', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:50:53');
INSERT INTO `sys_logininfor` VALUES ('1310', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:52:25');
INSERT INTO `sys_logininfor` VALUES ('1311', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:54:47');
INSERT INTO `sys_logininfor` VALUES ('1312', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 15:57:05');
INSERT INTO `sys_logininfor` VALUES ('1313', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:00:19');
INSERT INTO `sys_logininfor` VALUES ('1314', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:00:49');
INSERT INTO `sys_logininfor` VALUES ('1315', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:02:47');
INSERT INTO `sys_logininfor` VALUES ('1316', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:05:36');
INSERT INTO `sys_logininfor` VALUES ('1317', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:05:37');
INSERT INTO `sys_logininfor` VALUES ('1318', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:06:29');
INSERT INTO `sys_logininfor` VALUES ('1319', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:08:28');
INSERT INTO `sys_logininfor` VALUES ('1320', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:08:58');
INSERT INTO `sys_logininfor` VALUES ('1321', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:11:39');
INSERT INTO `sys_logininfor` VALUES ('1322', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:14:48');
INSERT INTO `sys_logininfor` VALUES ('1323', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:26:00');
INSERT INTO `sys_logininfor` VALUES ('1324', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:27:56');
INSERT INTO `sys_logininfor` VALUES ('1325', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:31:56');
INSERT INTO `sys_logininfor` VALUES ('1326', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:34:12');
INSERT INTO `sys_logininfor` VALUES ('1327', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:35:52');
INSERT INTO `sys_logininfor` VALUES ('1328', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:40:39');
INSERT INTO `sys_logininfor` VALUES ('1329', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-17 16:43:23');
INSERT INTO `sys_logininfor` VALUES ('1330', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:43:34');
INSERT INTO `sys_logininfor` VALUES ('1331', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:47:26');
INSERT INTO `sys_logininfor` VALUES ('1332', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:56:30');
INSERT INTO `sys_logininfor` VALUES ('1333', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 16:59:54');
INSERT INTO `sys_logininfor` VALUES ('1334', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 17:02:06');
INSERT INTO `sys_logininfor` VALUES ('1335', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 17:04:30');
INSERT INTO `sys_logininfor` VALUES ('1336', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 17:07:34');
INSERT INTO `sys_logininfor` VALUES ('1337', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-17 17:09:51');
INSERT INTO `sys_logininfor` VALUES ('1338', 'admin', '124.67.107.62', null, null, null, '10', '0', '登陆成功', '2019-09-18 08:43:37');
INSERT INTO `sys_logininfor` VALUES ('1339', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-18 09:19:46');
INSERT INTO `sys_logininfor` VALUES ('1340', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:19:57');
INSERT INTO `sys_logininfor` VALUES ('1341', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:28:44');
INSERT INTO `sys_logininfor` VALUES ('1342', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:33:24');
INSERT INTO `sys_logininfor` VALUES ('1343', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:38:48');
INSERT INTO `sys_logininfor` VALUES ('1344', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:42:13');
INSERT INTO `sys_logininfor` VALUES ('1345', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 09:44:44');
INSERT INTO `sys_logininfor` VALUES ('1346', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:14:00');
INSERT INTO `sys_logininfor` VALUES ('1347', 'admin', '10.5.5.51', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:25:10');
INSERT INTO `sys_logininfor` VALUES ('1348', 'admin', '10.5.5.51', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-18 10:26:48');
INSERT INTO `sys_logininfor` VALUES ('1349', 'admin', '10.5.5.51', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:27:02');
INSERT INTO `sys_logininfor` VALUES ('1350', 'admin', '10.5.5.51', null, null, null, '10', '0', '退出登陆成功', '2019-09-18 10:27:25');
INSERT INTO `sys_logininfor` VALUES ('1351', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:27:37');
INSERT INTO `sys_logininfor` VALUES ('1352', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:36:44');
INSERT INTO `sys_logininfor` VALUES ('1353', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:40:48');
INSERT INTO `sys_logininfor` VALUES ('1354', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:42:01');
INSERT INTO `sys_logininfor` VALUES ('1355', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:44:02');
INSERT INTO `sys_logininfor` VALUES ('1356', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:46:00');
INSERT INTO `sys_logininfor` VALUES ('1357', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:47:12');
INSERT INTO `sys_logininfor` VALUES ('1358', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:47:28');
INSERT INTO `sys_logininfor` VALUES ('1359', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:49:20');
INSERT INTO `sys_logininfor` VALUES ('1360', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:51:54');
INSERT INTO `sys_logininfor` VALUES ('1361', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:53:46');
INSERT INTO `sys_logininfor` VALUES ('1362', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:56:00');
INSERT INTO `sys_logininfor` VALUES ('1363', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 10:57:56');
INSERT INTO `sys_logininfor` VALUES ('1364', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 11:00:00');
INSERT INTO `sys_logininfor` VALUES ('1365', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 11:01:39');
INSERT INTO `sys_logininfor` VALUES ('1366', 'admin', '127.0.0.1', null, null, null, '10', '0', '登陆成功', '2019-09-18 11:02:39');
INSERT INTO `sys_logininfor` VALUES ('1367', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 11:03:51');
INSERT INTO `sys_logininfor` VALUES ('1368', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-18 13:08:01');
INSERT INTO `sys_logininfor` VALUES ('1369', 'admin', '127.1.1.0', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-19 14:07:49');
INSERT INTO `sys_logininfor` VALUES ('1370', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-19 14:08:00');
INSERT INTO `sys_logininfor` VALUES ('1371', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-19 14:10:20');
INSERT INTO `sys_logininfor` VALUES ('1372', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-19 14:17:36');
INSERT INTO `sys_logininfor` VALUES ('1373', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-19 17:39:21');
INSERT INTO `sys_logininfor` VALUES ('1374', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-19 17:45:14');
INSERT INTO `sys_logininfor` VALUES ('1375', 'admin', '111.196.247.238', null, null, null, '10', '0', '登陆成功', '2019-09-20 00:12:30');
INSERT INTO `sys_logininfor` VALUES ('1376', 'admin', '223.104.3.200', null, null, null, '10', '0', '登陆成功', '2019-09-20 09:16:55');
INSERT INTO `sys_logininfor` VALUES ('1377', 'admin', '223.104.3.200', null, null, null, '10', '0', '退出登陆成功', '2019-09-20 10:02:15');
INSERT INTO `sys_logininfor` VALUES ('1378', 'admin', '223.104.3.200', null, null, null, null, '1', '登录失败验证码不正确', '2019-09-20 10:03:15');
INSERT INTO `sys_logininfor` VALUES ('1379', 'admin', '223.104.3.200', null, null, null, '10', '0', '登陆成功', '2019-09-20 10:03:26');
INSERT INTO `sys_logininfor` VALUES ('1380', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-20 11:26:33');
INSERT INTO `sys_logininfor` VALUES ('1381', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-20 11:33:03');
INSERT INTO `sys_logininfor` VALUES ('1382', 'admin', '106.38.36.98', null, null, null, '10', '0', '登陆成功', '2019-09-20 15:07:17');
INSERT INTO `sys_logininfor` VALUES ('1383', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-20 15:42:47');
INSERT INTO `sys_logininfor` VALUES ('1384', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-23 09:28:18');
INSERT INTO `sys_logininfor` VALUES ('1385', 'admin', '127.1.1.0', null, null, null, '10', '0', '登陆成功', '2019-09-23 09:33:43');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('99', '统计中心', '0', '0', 'http://123.127.52.238:3000/d/tPhE4hFZk/wu-lian-wang-xiao-fang-guan-li-ping-tai?orgId=1&amp;from=now-30d&amp;to=now', 'C', '0', '', 'fa fa-calculator', 'admin', '2019-08-29 10:19:28', 'admin', '2019-08-29 17:06:20', '');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '0', '5', '/sys/user/user', 'C', '0', '', 'fa fa-user-plus', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-26 11:40:39', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '0', '6', '/sys/role/role', 'C', '0', '', 'fa fa-user-secret', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-26 11:40:29', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '0', '7', '/sys/menu/menu', 'C', '0', '', 'fa fa-reorder', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-26 11:40:33', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '单位管理', '0', '8', '/sys/dept/dept', 'C', '0', '', 'fa fa-university', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-26 11:40:25', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('215', '日志管理', '0', '9', '', 'M', '0', '', 'glyphicon glyphicon-log-in', 'admin', '2019-05-30 15:27:09', 'admin', '2019-08-26 11:40:19', '');
INSERT INTO `sys_menu` VALUES ('216', '操作日志', '215', '1', '/sys/log/operlog', 'C', '0', '', '#', 'admin', '2019-05-30 15:28:04', 'admin', '2019-06-17 16:14:06', '');
INSERT INTO `sys_menu` VALUES ('217', '登录日志', '215', '2', '/sys/log/logininfor', 'C', '0', '', '#', 'admin', '2019-05-30 15:28:20', 'admin', '2019-05-31 09:55:44', '');
INSERT INTO `sys_menu` VALUES ('238', '设备注册管理', '0', '1', '/sys/sensor/sensor', 'C', '0', '', 'fa fa-wrench', 'admin', '2019-06-11 09:08:16', 'admin', '2019-08-20 10:00:57', '');
INSERT INTO `sys_menu` VALUES ('239', '报警日志', '0', '2', '/sys/warning', 'C', '0', '', 'fa fa-exclamation-triangle', 'admin', '2019-06-11 11:01:01', 'admin', '2019-08-13 13:49:17', '');
INSERT INTO `sys_menu` VALUES ('241', '离线日志', '0', '3', '/sys/offline', 'C', '0', '', 'glyphicon glyphicon-link', 'admin', '2019-06-27 09:30:00', 'admin', '2019-08-09 13:51:26', '');
INSERT INTO `sys_menu` VALUES ('254', '系统设置', '0', '10', null, 'M', '0', null, 'fa fa-envelope-o', 'admin', '2019-08-28 09:09:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('255', '短信模板', '254', '1', '/sys/sms/template', 'C', '0', null, 'fa fa-envelope-square', 'admin', '2019-08-28 09:09:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('256', '短信平台', '254', '2', '/sys/sms/send', 'C', '0', null, 'fa fa-envelope', 'admin', '2019-08-28 09:10:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('257', '短信发送日志', '254', '3', '/sys/sms/smsSendingLog', 'C', '0', '', '#', 'admin', '2019-08-28 09:10:25', 'admin', '2019-09-17 13:44:49', '');
INSERT INTO `sys_menu` VALUES ('258', '指令下发', '0', '12', null, 'C', '0', '', '#', 'admin', '2019-09-20 09:44:00', 'admin', '2019-09-20 09:46:16', '');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_id` bigint(50) COMMENT '单位ID',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('138', '单位管理-部门修改', '2', '/sys/dept/edit', '1', 'admin', '10', null, '10.5.5.242', null, null, '0', null, '2019-08-13 16:46:37');
INSERT INTO `sys_oper_log` VALUES ('139', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.20', null, null, '0', null, '2019-08-13 16:55:27');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理-用户状态修改', '0', '/sys/user/changeStatus', '1', 'admin', '10', null, '10.5.5.20', null, null, '0', null, '2019-08-13 16:55:31');
INSERT INTO `sys_oper_log` VALUES ('141', '用户管理-用户状态修改', '0', '/sys/user/changeStatus', '1', 'admin', '10', null, '10.5.5.20', null, null, '0', null, '2019-08-13 16:55:33');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理-菜单新增', '1', '/sys/menu/add', '1', 'admin', '10', null, '10.5.5.242', null, null, '0', null, '2019-08-13 16:56:50');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理-菜单删除', '3', '/sys/menu/remove/253', '1', 'admin', '10', null, '10.5.5.242', null, null, '0', null, '2019-08-13 16:56:56');
INSERT INTO `sys_oper_log` VALUES ('144', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 11:19:59');
INSERT INTO `sys_oper_log` VALUES ('145', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 14:22:04');
INSERT INTO `sys_oper_log` VALUES ('146', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 14:22:07');
INSERT INTO `sys_oper_log` VALUES ('147', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 14:22:13');
INSERT INTO `sys_oper_log` VALUES ('148', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 14:23:27');
INSERT INTO `sys_oper_log` VALUES ('149', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 14:24:14');
INSERT INTO `sys_oper_log` VALUES ('150', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 14:24:21');
INSERT INTO `sys_oper_log` VALUES ('151', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:04:43');
INSERT INTO `sys_oper_log` VALUES ('152', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:04:48');
INSERT INTO `sys_oper_log` VALUES ('153', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:04:53');
INSERT INTO `sys_oper_log` VALUES ('154', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:04:56');
INSERT INTO `sys_oper_log` VALUES ('155', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:05:06');
INSERT INTO `sys_oper_log` VALUES ('156', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:05:10');
INSERT INTO `sys_oper_log` VALUES ('157', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:05:21');
INSERT INTO `sys_oper_log` VALUES ('158', '设备管理器-设备删除', '3', '/sys/sensor/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 15:05:24');
INSERT INTO `sys_oper_log` VALUES ('159', '单位管理-部门修改', '2', '/sys/dept/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 16:51:49');
INSERT INTO `sys_oper_log` VALUES ('160', '单位管理-部门修改', '2', '/sys/dept/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 16:52:01');
INSERT INTO `sys_oper_log` VALUES ('161', '单位管理-部门修改', '2', '/sys/dept/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 16:52:10');
INSERT INTO `sys_oper_log` VALUES ('162', '单位管理-部门修改', '2', '/sys/dept/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 16:52:18');
INSERT INTO `sys_oper_log` VALUES ('163', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 17:18:30');
INSERT INTO `sys_oper_log` VALUES ('164', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 17:19:14');
INSERT INTO `sys_oper_log` VALUES ('165', '设备管理器-设备删除', '3', '/sys/sensor/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-19 17:19:16');
INSERT INTO `sys_oper_log` VALUES ('166', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:11');
INSERT INTO `sys_oper_log` VALUES ('167', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:14');
INSERT INTO `sys_oper_log` VALUES ('168', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:24');
INSERT INTO `sys_oper_log` VALUES ('169', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:34');
INSERT INTO `sys_oper_log` VALUES ('170', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:40');
INSERT INTO `sys_oper_log` VALUES ('171', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:51:45');
INSERT INTO `sys_oper_log` VALUES ('172', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.7', null, null, '0', null, '2019-08-19 17:58:00');
INSERT INTO `sys_oper_log` VALUES ('173', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 17:59:13');
INSERT INTO `sys_oper_log` VALUES ('174', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 17:59:19');
INSERT INTO `sys_oper_log` VALUES ('175', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 17:59:56');
INSERT INTO `sys_oper_log` VALUES ('176', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 18:00:03');
INSERT INTO `sys_oper_log` VALUES ('177', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 18:00:07');
INSERT INTO `sys_oper_log` VALUES ('178', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 18:00:14');
INSERT INTO `sys_oper_log` VALUES ('179', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '1', '数据异常，请刷新后重试...', '2019-08-19 18:01:05');
INSERT INTO `sys_oper_log` VALUES ('180', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 18:01:15');
INSERT INTO `sys_oper_log` VALUES ('181', '设备管理器-设备删除', '3', '/sys/sensor/remove', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-19 18:01:18');
INSERT INTO `sys_oper_log` VALUES ('182', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:47:07');
INSERT INTO `sys_oper_log` VALUES ('183', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:47:47');
INSERT INTO `sys_oper_log` VALUES ('184', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:54:14');
INSERT INTO `sys_oper_log` VALUES ('185', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:54:34');
INSERT INTO `sys_oper_log` VALUES ('186', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:54:42');
INSERT INTO `sys_oper_log` VALUES ('187', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:54:55');
INSERT INTO `sys_oper_log` VALUES ('188', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:58:23');
INSERT INTO `sys_oper_log` VALUES ('189', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:58:42');
INSERT INTO `sys_oper_log` VALUES ('190', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 09:58:54');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:00:17');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:00:31');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:00:46');
INSERT INTO `sys_oper_log` VALUES ('195', '用户管理-用户信息修改', '0', '/sys/user/profile/update', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:09:08');
INSERT INTO `sys_oper_log` VALUES ('196', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:16:07');
INSERT INTO `sys_oper_log` VALUES ('197', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:16:50');
INSERT INTO `sys_oper_log` VALUES ('198', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:17:34');
INSERT INTO `sys_oper_log` VALUES ('199', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:17:46');
INSERT INTO `sys_oper_log` VALUES ('200', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:17:58');
INSERT INTO `sys_oper_log` VALUES ('201', '用户管理-用户信息修改', '0', '/sys/user/profile/update', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:39:35');
INSERT INTO `sys_oper_log` VALUES ('202', '用户管理-用户信息修改', '0', '/sys/user/profile/update', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:43:11');
INSERT INTO `sys_oper_log` VALUES ('203', '用户管理-用户信息修改', '0', '/sys/user/profile/update', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:43:27');
INSERT INTO `sys_oper_log` VALUES ('204', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:49:19');
INSERT INTO `sys_oper_log` VALUES ('205', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:49:32');
INSERT INTO `sys_oper_log` VALUES ('206', '用户管理-用户修改', '2', '/sys/user/edit', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 10:49:47');
INSERT INTO `sys_oper_log` VALUES ('207', '用户管理-密码重置', '0', '/sys/user/resetPwd', '1', 'admin', '10', null, '10.5.5.18', null, null, '0', null, '2019-08-20 11:19:48');
INSERT INTO `sys_oper_log` VALUES ('208', '设备管理器-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:00:41');
INSERT INTO `sys_oper_log` VALUES ('209', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:01:17');
INSERT INTO `sys_oper_log` VALUES ('210', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:01:32');
INSERT INTO `sys_oper_log` VALUES ('211', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:02:26');
INSERT INTO `sys_oper_log` VALUES ('212', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:03:22');
INSERT INTO `sys_oper_log` VALUES ('213', '设备管理器-设备删除', '3', '/sys/sensor/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-21 10:03:30');
INSERT INTO `sys_oper_log` VALUES ('214', '设备管理器-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 10:41:03');
INSERT INTO `sys_oper_log` VALUES ('215', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 10:46:43');
INSERT INTO `sys_oper_log` VALUES ('216', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 13:42:32');
INSERT INTO `sys_oper_log` VALUES ('217', '设备管理器-导入数据', '0', '/sys/sensor/importData', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 13:54:38');
INSERT INTO `sys_oper_log` VALUES ('218', '设备管理器-设备删除', '3', '/sys/sensor/remove', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 13:54:50');
INSERT INTO `sys_oper_log` VALUES ('219', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 15:05:31');
INSERT INTO `sys_oper_log` VALUES ('220', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '10.5.5.12', null, null, '0', null, '2019-08-21 16:52:16');
INSERT INTO `sys_oper_log` VALUES ('221', '用户管理-用户信息修改', '0', '/sys/user/profile/update', '1', 'admin', '10', null, '114.250.24.210', null, null, '0', null, '2019-08-22 10:53:17');
INSERT INTO `sys_oper_log` VALUES ('222', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '114.250.24.210', null, null, '0', null, '2019-08-22 11:51:41');
INSERT INTO `sys_oper_log` VALUES ('223', '用户管理-用户状态修改', '0', '/sys/user/changeStatus', '1', 'admin', '10', null, '10.5.5.45', null, null, '0', null, '2019-08-26 10:44:29');
INSERT INTO `sys_oper_log` VALUES ('224', '用户管理-用户状态修改', '0', '/sys/user/changeStatus', '1', 'admin', '10', null, '10.5.5.45', null, null, '0', null, '2019-08-26 10:44:38');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-26 11:40:19');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-26 11:40:25');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-26 11:40:29');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-26 11:40:33');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '10.5.5.46', null, null, '0', null, '2019-08-26 11:40:39');
INSERT INTO `sys_oper_log` VALUES ('230', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-28 09:14:00');
INSERT INTO `sys_oper_log` VALUES ('231', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:07');
INSERT INTO `sys_oper_log` VALUES ('232', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:12');
INSERT INTO `sys_oper_log` VALUES ('233', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:21');
INSERT INTO `sys_oper_log` VALUES ('234', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '1', '数据异常，请刷新后重试...', '2019-08-28 09:16:28');
INSERT INTO `sys_oper_log` VALUES ('235', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:34');
INSERT INTO `sys_oper_log` VALUES ('236', '短信模板-短信模板删除', '3', '/sys/sms/template/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:37');
INSERT INTO `sys_oper_log` VALUES ('237', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:42');
INSERT INTO `sys_oper_log` VALUES ('238', '短信模板-短信模板状态修改', '0', '/sys/sms/template/changeTemplateStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:45');
INSERT INTO `sys_oper_log` VALUES ('239', '短信模板-短信模板状态修改', '0', '/sys/sms/template/changeTemplateStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:47');
INSERT INTO `sys_oper_log` VALUES ('240', '短信模板-短信模板删除', '3', '/sys/sms/template/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:16:52');
INSERT INTO `sys_oper_log` VALUES ('241', '短信平台-新增短信平台', '1', '/sys/sms/send/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:18:52');
INSERT INTO `sys_oper_log` VALUES ('242', '短信平台-新增短信平台', '1', '/sys/sms/send/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:02');
INSERT INTO `sys_oper_log` VALUES ('243', '短信平台-新增短信平台', '1', '/sys/sms/send/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:07');
INSERT INTO `sys_oper_log` VALUES ('244', '短信平台-新增短信平台', '1', '/sys/sms/send/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:13');
INSERT INTO `sys_oper_log` VALUES ('245', '短信平台-短信平台修改', '2', '/sys/sms/send/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:16');
INSERT INTO `sys_oper_log` VALUES ('246', '短信平台-短信平台状态修改', '0', '/sys/sms/send/changeSendStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:20');
INSERT INTO `sys_oper_log` VALUES ('247', '短信平台-短信平台删除', '3', '/sys/sms/send/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:25');
INSERT INTO `sys_oper_log` VALUES ('248', '短信平台-短信平台状态修改', '0', '/sys/sms/send/changeSendStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:27');
INSERT INTO `sys_oper_log` VALUES ('249', '短信平台-短信平台状态修改', '0', '/sys/sms/send/changeSendStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:29');
INSERT INTO `sys_oper_log` VALUES ('250', '短信平台-短信平台删除', '3', '/sys/sms/send/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:19:33');
INSERT INTO `sys_oper_log` VALUES ('251', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:52:52');
INSERT INTO `sys_oper_log` VALUES ('252', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:53:09');
INSERT INTO `sys_oper_log` VALUES ('253', '短信模板-短信模板状态修改', '0', '/sys/sms/template/changeTemplateStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:53:12');
INSERT INTO `sys_oper_log` VALUES ('254', '短信模板-短信模板删除', '3', '/sys/sms/template/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 09:53:48');
INSERT INTO `sys_oper_log` VALUES ('255', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:03:02');
INSERT INTO `sys_oper_log` VALUES ('256', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:12:06');
INSERT INTO `sys_oper_log` VALUES ('257', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:12:19');
INSERT INTO `sys_oper_log` VALUES ('258', '短信平台-短信平台修改', '2', '/sys/sms/send/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:12:33');
INSERT INTO `sys_oper_log` VALUES ('259', '短信平台-短信平台修改', '2', '/sys/sms/send/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:13:15');
INSERT INTO `sys_oper_log` VALUES ('260', '短信平台-短信平台修改', '2', '/sys/sms/send/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:13:35');
INSERT INTO `sys_oper_log` VALUES ('261', '短信平台-短信平台状态修改', '0', '/sys/sms/send/changeSendStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 10:13:40');
INSERT INTO `sys_oper_log` VALUES ('262', '短信模板-短信模板状态修改', '0', '/sys/sms/template/changeTemplateStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 14:32:53');
INSERT INTO `sys_oper_log` VALUES ('263', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 14:33:20');
INSERT INTO `sys_oper_log` VALUES ('264', '短信模板-短信模板状态修改', '0', '/sys/sms/template/changeTemplateStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 14:33:25');
INSERT INTO `sys_oper_log` VALUES ('265', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 15:49:42');
INSERT INTO `sys_oper_log` VALUES ('266', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 15:49:47');
INSERT INTO `sys_oper_log` VALUES ('267', '短信模板-短信模板删除', '3', '/sys/sms/template/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 16:05:04');
INSERT INTO `sys_oper_log` VALUES ('268', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 16:05:11');
INSERT INTO `sys_oper_log` VALUES ('269', '短信模板-新增短信模板', '1', '/sys/sms/template/add', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 16:05:19');
INSERT INTO `sys_oper_log` VALUES ('270', '短信模板-短信模板删除', '3', '/sys/sms/template/remove', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 16:05:21');
INSERT INTO `sys_oper_log` VALUES ('271', '短信模板-短信模板修改', '2', '/sys/sms/template/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-28 16:06:15');
INSERT INTO `sys_oper_log` VALUES ('272', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.0.0.1', null, null, '0', null, '2019-08-30 11:27:16');
INSERT INTO `sys_oper_log` VALUES ('273', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.0.0.1', null, null, '0', null, '2019-08-30 11:27:18');
INSERT INTO `sys_oper_log` VALUES ('274', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 11:29:11');
INSERT INTO `sys_oper_log` VALUES ('275', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 11:29:26');
INSERT INTO `sys_oper_log` VALUES ('276', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 11:29:44');
INSERT INTO `sys_oper_log` VALUES ('277', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-08-30 11:33:27');
INSERT INTO `sys_oper_log` VALUES ('278', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 15:31:41');
INSERT INTO `sys_oper_log` VALUES ('279', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 15:31:47');
INSERT INTO `sys_oper_log` VALUES ('280', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 15:46:52');
INSERT INTO `sys_oper_log` VALUES ('281', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-08-30 15:48:30');
INSERT INTO `sys_oper_log` VALUES ('282', '设备注册管理-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:14:16');
INSERT INTO `sys_oper_log` VALUES ('283', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:14:54');
INSERT INTO `sys_oper_log` VALUES ('284', '设备注册管理-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:16:42');
INSERT INTO `sys_oper_log` VALUES ('285', '设备注册管理-设备新增', '1', '/sys/sensor/add', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:16:55');
INSERT INTO `sys_oper_log` VALUES ('286', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:32:23');
INSERT INTO `sys_oper_log` VALUES ('287', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:32:32');
INSERT INTO `sys_oper_log` VALUES ('288', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:32:40');
INSERT INTO `sys_oper_log` VALUES ('289', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:36:49');
INSERT INTO `sys_oper_log` VALUES ('290', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:37:01');
INSERT INTO `sys_oper_log` VALUES ('291', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:37:33');
INSERT INTO `sys_oper_log` VALUES ('292', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:37:49');
INSERT INTO `sys_oper_log` VALUES ('293', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:49:44');
INSERT INTO `sys_oper_log` VALUES ('294', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:50:10');
INSERT INTO `sys_oper_log` VALUES ('295', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:50:28');
INSERT INTO `sys_oper_log` VALUES ('296', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:50:45');
INSERT INTO `sys_oper_log` VALUES ('297', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:51:03');
INSERT INTO `sys_oper_log` VALUES ('298', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:51:28');
INSERT INTO `sys_oper_log` VALUES ('299', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 15:56:34');
INSERT INTO `sys_oper_log` VALUES ('300', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 16:12:47');
INSERT INTO `sys_oper_log` VALUES ('301', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 16:12:57');
INSERT INTO `sys_oper_log` VALUES ('302', '设备注册管理-设备修改', '2', '/sys/sensor/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 16:31:10');
INSERT INTO `sys_oper_log` VALUES ('303', '角色管理-角色修改', '2', '/sys/role/edit', '1', 'admin', '10', null, '106.38.36.98', null, null, '0', null, '2019-09-03 17:07:14');
INSERT INTO `sys_oper_log` VALUES ('304', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '114.225.17.91', null, null, '0', null, '2019-09-03 17:55:59');
INSERT INTO `sys_oper_log` VALUES ('305', '角色管理-角色修改', '2', '/sys/role/edit', '1', 'admin', '10', null, '114.225.17.91', null, null, '0', null, '2019-09-03 18:02:27');
INSERT INTO `sys_oper_log` VALUES ('306', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-05 11:01:53');
INSERT INTO `sys_oper_log` VALUES ('307', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '36.149.143.174', null, null, '0', null, '2019-09-07 15:42:19');
INSERT INTO `sys_oper_log` VALUES ('308', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 11:24:36');
INSERT INTO `sys_oper_log` VALUES ('309', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 11:24:37');
INSERT INTO `sys_oper_log` VALUES ('310', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 11:24:37');
INSERT INTO `sys_oper_log` VALUES ('311', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 11:24:40');
INSERT INTO `sys_oper_log` VALUES ('312', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 11:52:23');
INSERT INTO `sys_oper_log` VALUES ('313', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 15:47:45');
INSERT INTO `sys_oper_log` VALUES ('314', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 16:26:05');
INSERT INTO `sys_oper_log` VALUES ('315', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 16:57:00');
INSERT INTO `sys_oper_log` VALUES ('316', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:51');
INSERT INTO `sys_oper_log` VALUES ('317', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:52');
INSERT INTO `sys_oper_log` VALUES ('318', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:52');
INSERT INTO `sys_oper_log` VALUES ('319', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:52');
INSERT INTO `sys_oper_log` VALUES ('320', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:53');
INSERT INTO `sys_oper_log` VALUES ('321', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:54');
INSERT INTO `sys_oper_log` VALUES ('322', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:54');
INSERT INTO `sys_oper_log` VALUES ('323', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:54');
INSERT INTO `sys_oper_log` VALUES ('324', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:54');
INSERT INTO `sys_oper_log` VALUES ('325', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:05:58');
INSERT INTO `sys_oper_log` VALUES ('326', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-10 17:40:32');
INSERT INTO `sys_oper_log` VALUES ('327', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 09:26:59');
INSERT INTO `sys_oper_log` VALUES ('328', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 09:27:06');
INSERT INTO `sys_oper_log` VALUES ('329', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:30');
INSERT INTO `sys_oper_log` VALUES ('330', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:31');
INSERT INTO `sys_oper_log` VALUES ('331', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:31');
INSERT INTO `sys_oper_log` VALUES ('332', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:32');
INSERT INTO `sys_oper_log` VALUES ('333', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:34');
INSERT INTO `sys_oper_log` VALUES ('334', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:37');
INSERT INTO `sys_oper_log` VALUES ('335', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 11:53:39');
INSERT INTO `sys_oper_log` VALUES ('336', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-11 13:34:15');
INSERT INTO `sys_oper_log` VALUES ('337', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 10:18:12');
INSERT INTO `sys_oper_log` VALUES ('338', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 11:05:26');
INSERT INTO `sys_oper_log` VALUES ('339', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 11:05:27');
INSERT INTO `sys_oper_log` VALUES ('340', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 11:05:49');
INSERT INTO `sys_oper_log` VALUES ('341', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 12:54:39');
INSERT INTO `sys_oper_log` VALUES ('342', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 12:57:32');
INSERT INTO `sys_oper_log` VALUES ('343', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:01:41');
INSERT INTO `sys_oper_log` VALUES ('344', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:02:31');
INSERT INTO `sys_oper_log` VALUES ('345', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:02:41');
INSERT INTO `sys_oper_log` VALUES ('346', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:02:46');
INSERT INTO `sys_oper_log` VALUES ('347', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:02:50');
INSERT INTO `sys_oper_log` VALUES ('348', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:05:10');
INSERT INTO `sys_oper_log` VALUES ('349', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:05:16');
INSERT INTO `sys_oper_log` VALUES ('350', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:12:31');
INSERT INTO `sys_oper_log` VALUES ('351', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-12 13:12:31');
INSERT INTO `sys_oper_log` VALUES ('352', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-16 17:47:03');
INSERT INTO `sys_oper_log` VALUES ('353', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-16 17:47:03');
INSERT INTO `sys_oper_log` VALUES ('354', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '221.192.179.64', null, null, '0', null, '2019-09-17 10:04:26');
INSERT INTO `sys_oper_log` VALUES ('355', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-17 13:44:36');
INSERT INTO `sys_oper_log` VALUES ('356', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-17 13:44:49');
INSERT INTO `sys_oper_log` VALUES ('357', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-17 17:33:48');
INSERT INTO `sys_oper_log` VALUES ('358', '报警日志-报警状态修改', '0', '/sys/warning/changeStatus', '1', 'admin', '10', null, '127.1.1.0', null, null, '0', null, '2019-09-17 17:33:48');
INSERT INTO `sys_oper_log` VALUES ('359', '菜单管理-菜单新增', '1', '/sys/menu/add', '1', 'admin', '10', null, '223.104.3.200', null, null, '0', null, '2019-09-20 09:44:00');
INSERT INTO `sys_oper_log` VALUES ('360', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '223.104.3.200', null, null, '0', null, '2019-09-20 09:45:44');
INSERT INTO `sys_oper_log` VALUES ('361', '菜单管理-菜单修改', '2', '/sys/menu/edit', '1', 'admin', '10', null, '223.104.3.200', null, null, '0', null, '2019-09-20 09:46:16');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(500) COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-03 18:02:27', '管理员');
INSERT INTO `sys_role` VALUES ('2', '领导角色', 'common', '2', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-29 14:53:11', '领导角色');
INSERT INTO `sys_role` VALUES ('3', '员工角色', 'common', '3', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-29 14:53:14', '员工角色');
INSERT INTO `sys_role` VALUES ('4', '测试角色', null, '4', '1', '0', '0', 'admin', '2019-07-03 09:13:44', 'admin', '2019-08-29 14:53:17', '测试角色');
INSERT INTO `sys_role` VALUES ('5', '测试', null, '5', '1', '0', '2', 'admin', '2019-07-03 09:15:26', '', null, '测试');
INSERT INTO `sys_role` VALUES ('6', 'testa', null, '5', '1', '0', '2', 'admin', '2019-07-10 15:47:37', '', null, null);
INSERT INTO `sys_role` VALUES ('7', '一般人', null, '5', '1', '0', '2', 'admin', '2019-08-09 16:33:48', '', null, null);
INSERT INTO `sys_role` VALUES ('8', '外援', null, '5', '1', '0', '2', 'admin', '2019-08-13 15:26:09', '', null, null);
INSERT INTO `sys_role` VALUES ('9', '北京分公司', null, '5', '1', '0', '2', 'admin', '2019-08-13 15:55:19', '', null, null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('1', '100');
INSERT INTO `sys_role_dept` VALUES ('1', '101');
INSERT INTO `sys_role_dept` VALUES ('1', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '99');
INSERT INTO `sys_role_menu` VALUES ('1', '100');
INSERT INTO `sys_role_menu` VALUES ('1', '101');
INSERT INTO `sys_role_menu` VALUES ('1', '102');
INSERT INTO `sys_role_menu` VALUES ('1', '103');
INSERT INTO `sys_role_menu` VALUES ('1', '215');
INSERT INTO `sys_role_menu` VALUES ('1', '216');
INSERT INTO `sys_role_menu` VALUES ('1', '217');
INSERT INTO `sys_role_menu` VALUES ('1', '238');
INSERT INTO `sys_role_menu` VALUES ('1', '239');
INSERT INTO `sys_role_menu` VALUES ('1', '241');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '215');
INSERT INTO `sys_role_menu` VALUES ('2', '216');
INSERT INTO `sys_role_menu` VALUES ('2', '217');
INSERT INTO `sys_role_menu` VALUES ('2', '238');
INSERT INTO `sys_role_menu` VALUES ('2', '239');
INSERT INTO `sys_role_menu` VALUES ('2', '241');
INSERT INTO `sys_role_menu` VALUES ('3', '238');
INSERT INTO `sys_role_menu` VALUES ('3', '239');
INSERT INTO `sys_role_menu` VALUES ('3', '241');
INSERT INTO `sys_role_menu` VALUES ('4', '100');
INSERT INTO `sys_role_menu` VALUES ('4', '101');
INSERT INTO `sys_role_menu` VALUES ('4', '102');
INSERT INTO `sys_role_menu` VALUES ('4', '103');
INSERT INTO `sys_role_menu` VALUES ('4', '215');
INSERT INTO `sys_role_menu` VALUES ('4', '216');
INSERT INTO `sys_role_menu` VALUES ('4', '217');
INSERT INTO `sys_role_menu` VALUES ('4', '238');
INSERT INTO `sys_role_menu` VALUES ('4', '239');
INSERT INTO `sys_role_menu` VALUES ('4', '241');
INSERT INTO `sys_role_menu` VALUES ('4', '254');
INSERT INTO `sys_role_menu` VALUES ('4', '255');
INSERT INTO `sys_role_menu` VALUES ('4', '256');
INSERT INTO `sys_role_menu` VALUES ('4', '257');
INSERT INTO `sys_role_menu` VALUES ('5', '102');
INSERT INTO `sys_role_menu` VALUES ('5', '215');
INSERT INTO `sys_role_menu` VALUES ('5', '216');
INSERT INTO `sys_role_menu` VALUES ('5', '217');
INSERT INTO `sys_role_menu` VALUES ('5', '238');
INSERT INTO `sys_role_menu` VALUES ('5', '239');
INSERT INTO `sys_role_menu` VALUES ('5', '241');
INSERT INTO `sys_role_menu` VALUES ('6', '238');
INSERT INTO `sys_role_menu` VALUES ('6', '239');
INSERT INTO `sys_role_menu` VALUES ('6', '241');
INSERT INTO `sys_role_menu` VALUES ('8', '100');
INSERT INTO `sys_role_menu` VALUES ('8', '101');
INSERT INTO `sys_role_menu` VALUES ('8', '102');
INSERT INTO `sys_role_menu` VALUES ('8', '103');
INSERT INTO `sys_role_menu` VALUES ('8', '215');
INSERT INTO `sys_role_menu` VALUES ('8', '216');
INSERT INTO `sys_role_menu` VALUES ('8', '217');
INSERT INTO `sys_role_menu` VALUES ('8', '238');
INSERT INTO `sys_role_menu` VALUES ('8', '239');
INSERT INTO `sys_role_menu` VALUES ('8', '241');
INSERT INTO `sys_role_menu` VALUES ('62', '100');
INSERT INTO `sys_role_menu` VALUES ('62', '102');
INSERT INTO `sys_role_menu` VALUES ('62', '215');
INSERT INTO `sys_role_menu` VALUES ('62', '216');
INSERT INTO `sys_role_menu` VALUES ('62', '217');
INSERT INTO `sys_role_menu` VALUES ('62', '238');
INSERT INTO `sys_role_menu` VALUES ('62', '239');
INSERT INTO `sys_role_menu` VALUES ('62', '241');

-- ----------------------------
-- Table structure for sys_sensor
-- ----------------------------
DROP TABLE IF EXISTS `sys_sensor`;
CREATE TABLE `sys_sensor` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '显示顺序',
  `IMEI` varchar(150) NOT NULL COMMENT '设备ID',
  `imei_name` varchar(150) COMMENT '设备名称',
  `dept_id` varchar(50) COMMENT '绑定部门',
  `masg_id` varchar(2) COMMENT '地址域 0x01',
  `manufacturer` varchar(2) COMMENT '产商名称 SW',
  `device_type` varchar(2) COMMENT '设备类型{ \r\n	0  水压表  \r\n	1  液位表  \r\n	2  烟雾报警器  \r\n	3  燃气报警器  \r\n	4  电气火灾探测器  \r\n	5  消火栓  \r\n	6  温湿度传感器  \r\n	7  漏保插座  \r\n	8  漏电保护器  \r\n	9  电器保护终端   \r\n	10  水浸传感器  \r\n	11  门窗传感器  \r\n	12  故障电弧探测器  \r\n	13  手动报警器  \r\n	14  紧急报警按钮  \r\n	15  声光报警器  \r\n}',
  `IMSI` varchar(20) COMMENT 'IMSI 号 string 类型',
  `hardware_version` varchar(4) COMMENT '硬件版本号 string 类型',
  `firmware_version` varchar(4) COMMENT '固件版本号 string 类型',
  `sensor_type` char(2) COMMENT '设备通信类型{\r\n  0 - 电信NBIOT\r\n  1 - 移动NBIOT\r\n  2 - LORA\r\n  3 - GSM\r\n  4 -  WIFI\r\n}',
  `state` char(4) DEFAULT '8' COMMENT '设备状态（\r\n1：报警 \r\n2：静音\r\n3：保留\r\n4：低压\r\n5：故障\r\n6：保留\r\n7：正常 \r\n8：其他\r\n9：删除）',
  `running_state` char(2) DEFAULT '1' COMMENT '设备运行状态（0在线 1停止）',
  `phone` varchar(20) COMMENT '电话',
  `sensor_accounts` varchar(50) COMMENT '设备帐号',
  `sensor_password` varchar(50) COMMENT '设备密码',
  `maintenance` bigint(10) COMMENT '维保(天数)',
  `x_coordinates` varchar(50) COMMENT '地图横坐标',
  `y_coordinates` varchar(50) COMMENT '地图纵坐标',
  `heartbeat` datetime COMMENT '心跳(分钟)',
  `battery_Level` varchar(50) COMMENT '电量',
  `alarm_Level` varchar(50) COMMENT '离报警点的浓度百分比',
  `video` varchar(50) COMMENT '视频',
  `sensor_location` varchar(50) COMMENT '设备安装地址',
  `sensor_picture` varchar(50) COMMENT '设备图片',
  `user_id` varchar(50) COMMENT '绑定用户',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sensor
-- ----------------------------
INSERT INTO `sys_sensor` VALUES ('1', '867726034908246', 'GS524N测试设备', '102', null, null, '0', null, null, null, '1', '11', '0', '15801113995', null, null, null, '117.02709', '36.674412', '2019-09-23 02:11:16', '100', '0', null, '济南市历下区省府前街1号', null, null, 'admin', '2019-06-28 10:59:55', 'admin', '2019-09-18 22:28:00', '');
INSERT INTO `sys_sensor` VALUES ('44', '867726034493363', 'GS524N会展测试10', '381', null, null, '2', null, null, null, '0', '8', '0', '13230150145', null, null, null, '120.291548', '31.53464', '2019-09-23 11:05:18', '100', '0', null, '无锡市滨湖区', null, null, 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-16 10:05:55', '');
INSERT INTO `sys_sensor` VALUES ('45', '867726034545394', 'GS524N会展测试9', '381', null, null, '2', null, null, null, '0', '8', '0', '13230150145', null, null, null, '120.331782', '31.482705', '2019-09-23 11:05:18', '100', '0', null, '无锡市滨湖区震泽路', null, null, 'admin', '2019-09-03 15:14:16', 'admin', '2019-09-16 10:05:55', '');
INSERT INTO `sys_sensor` VALUES ('46', '867726034374100', 'GS524N会展测试8', '381', '', '', '2', '', '', '', '0', '8', '0', '13230150145', '', '', null, '120.349855', '31.549688', '2019-09-23 11:05:18', '100', '0', '', '无锡市新吴区兴源路18号', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-16 10:05:55', '');
INSERT INTO `sys_sensor` VALUES ('47', '867726034521478', 'GS524N会展测试7', '381', '', '', '2', '', '', '', '0', '8', '0', '13230150145', '', '', null, '120.291272', '31.537137', '2019-09-23 11:05:18', '100', '0', '', '无锡市滨湖区金蠡路', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-16 10:05:55', '');
INSERT INTO `sys_sensor` VALUES ('48', '867726034409872', 'GS524N会展测试6', '381', '', '', '2', '', '', '', '0', '8', '0', '13230150145', '', '', null, '120.291548', '31.53464', '2019-09-23 11:05:18', '100', '0', '', '无锡市滨湖区谈旺道', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-16 10:05:55', '');
INSERT INTO `sys_sensor` VALUES ('49', '867726034414104', 'GS524N会展测试5', '381', '', '', '2', '', '', '', '0', '8', '1', '13230150145', '', '', null, '120.288559', '31.531224', '2019-09-01 15:16:55', '100', '0', '', '无锡市滨湖区金水路', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-03 16:48:50', '');
INSERT INTO `sys_sensor` VALUES ('50', '867726034375354', 'GS524N会展测试4', '381', '', '', '2', '', '', '', '0', '8', '1', '13230150145', '', '', null, '120.316802', '31.532385', '2019-09-01 15:16:55', '100', '0', '', '无锡市梁溪区中南路888号', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-03 16:48:50', '');
INSERT INTO `sys_sensor` VALUES ('51', '867726034415994', 'GS524N会展测试3', '381', '', '', '2', '', '', '', '0', '8', '1', '13230150145', '', '', null, '120.288559', '31.531224', '2019-09-01 15:16:55', '100', '0', '', '无锡市滨湖区金水路', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-03 16:48:00', '');
INSERT INTO `sys_sensor` VALUES ('52', '867726034415499', 'GS524N会展测试2', '381', '', '', '2', '', '', '', '0', '8', '1', '13230150145', '', '', null, '120.288559', '31.531224', '2019-09-01 15:16:55', '100', '0', '', '无锡市滨湖区金水路', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-03 16:48:00', '');
INSERT INTO `sys_sensor` VALUES ('53', '867726034456592', 'GS524N会展测试', '381', '', '', '2', '', '', '', '0', '8', '1', '13230150145', '', '', null, '120.288559', '31.531224', '2019-09-01 15:16:55', '100', '0', '', '无锡市滨湖区金水路', '', '', 'admin', '2019-09-03 15:16:55', 'admin', '2019-09-03 16:47:50', '');

-- ----------------------------
-- Table structure for sys_sms_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_send`;
CREATE TABLE `sys_sms_send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '平台ID',
  `account` varchar(20) COMMENT '平台账号',
  `password` varchar(30) COMMENT '平台密码',
  `sms_variable_request_url` varchar(255) COMMENT '短信平台发送请求Url',
  `status` bigint(10) DEFAULT '0' COMMENT '状态 0 停用  1 启用',
  `template_id` bigint(20) COMMENT '短信模板ID',
  `create_by` varchar(30) COMMENT '创建人',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(30) COMMENT '更新人',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(255) COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sms_send
-- ----------------------------
INSERT INTO `sys_sms_send` VALUES ('1', 'N6664837', '123456aaabbb', 'https://smssh1.253.com/msg/variable/json', '1', '1', 'admin', '2019-08-28 10:13:35', 'admin', '2019-08-28 10:13:40', null);

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `mobile` varchar(30) COMMENT '手机号',
  `module` varchar(30) COMMENT '模块标题',
  `template_msg` varchar(255) COMMENT '模板格式',
  `variable` varchar(255) COMMENT '模板变量',
  `status` bigint(10) DEFAULT '0' COMMENT '状态 0 停用  1 启用',
  `create_by` varchar(30) COMMENT '创建人',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(30) COMMENT '更新人',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(255) COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------
INSERT INTO `sys_sms_template` VALUES ('1', '15712831281', '烟雾报警', '【253云通讯】{$var}{$var}{$var}的烟雾报警器发出{{$var}}（设备名称：{$var}，设备编号：{$var}），请及时处理！', null, '1', 'admin', '2019-08-28 10:12:19', 'admin', '2019-08-28 16:06:15', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) COMMENT '部门ID',
  `login_name` varchar(30) COMMENT '登录账号',
  `user_name` varchar(30) COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1禁用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '10', '系统管理员', 'admin', '00', 'ry1@qq.com', '15888888888', '1', '10_admin_d12f83cda2a9189e0e6a63ecc7bb7102.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '127.0.0.1', '2019-05-27 17:40:34', 'admin', '2018-03-16 11:33:00', 'admin2', '2019-08-22 10:53:17', '全国');
INSERT INTO `sys_user` VALUES ('2', '205', '中国铁塔', 'admin1', '00', 'ry@qq.com', '15666666666', '0', '1561625577101blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin1', '2018-03-16 11:33:00', 'admin', '2019-06-27 16:52:57', '邯郸');
INSERT INTO `sys_user` VALUES ('3', '102', '中国铁塔', 'admin2', '00', 'ry2@qq.com', '15666666667', '0', 'E:\\workspace\\smsp\\uploadPictures\\101/102/admin2\\00c91ecc3b5d2f96dbfd991482645d50.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin2', '2018-03-16 11:33:00', 'admin', '2019-08-13 16:55:27', '济南');
INSERT INTO `sys_user` VALUES ('4', '10', '管理员', 'yuzhe', '00', 'yuzhe@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yuzhe', '2018-03-16 11:33:00', '', null, '全国');
INSERT INTO `sys_user` VALUES ('5', '10', '管理员', 'qiaolin', '00', 'qiaolin@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'qiaolin', '2018-03-16 11:33:00', 'admin', '2019-07-01 08:59:46', '全国');
INSERT INTO `sys_user` VALUES ('6', '10', '管理员', 'heyi', '00', 'heyi@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'heyi', '2018-03-16 11:33:00', '', null, '全国');
INSERT INTO `sys_user` VALUES ('7', '10', '普通用户', 'Guest', '00', 'guest@chinatower.com', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'Guest', '2018-03-16 11:33:00', 'admin', '2019-08-20 10:49:47', '全国');
INSERT INTO `sys_user` VALUES ('8', '10', '普通用户', 'qiudp5', '00', 'qiudp5@chinatowercom.cn', '15666666667', '1', 'E:\\workspace\\smsp\\uploadPictures\\101/qiudp5\\0d3afe2b2b932c1fd5ed290ba03a1bee.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'qiudp5', '2018-03-16 11:33:00', 'admin', '2019-08-13 16:04:31', '山东');
INSERT INTO `sys_user` VALUES ('9', '102', '普通用户', 'xieaj', '00', 'xieaj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xieaj', '2018-03-16 11:33:00', '', null, '济南');
INSERT INTO `sys_user` VALUES ('10', '103', '普通用户', 'wangchao15', '00', 'wangchao15@chinatowercom.cn', '15666666667', '0', '101/103/wangchao15/b6ee1c5845df98ec3d6be9325dbe875f.png', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangchao15', '2018-03-16 11:33:00', '', '2019-08-02 15:58:09', '青岛');
INSERT INTO `sys_user` VALUES ('11', '104', '普通用户', 'suocn', '00', 'suocn@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'suocn', '2018-03-16 11:33:00', '', null, '淄博');
INSERT INTO `sys_user` VALUES ('12', '105', '普通用户', 'sundq', '00', 'sundq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sundq', '2018-03-16 11:33:00', '', '2019-07-01 16:41:32', '济宁');
INSERT INTO `sys_user` VALUES ('13', '106', '普通用户', 'duancl', '00', 'duancl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'duancl', '2018-03-16 11:33:00', '', null, '东营');
INSERT INTO `sys_user` VALUES ('14', '107', '普通用户', 'zhangli25', '00', 'zhangli25@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangli25', '2018-03-16 11:33:00', '', null, '菏泽');
INSERT INTO `sys_user` VALUES ('15', '108', '普通用户', 'liuyc7', '00', 'liuyc7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyc7', '2018-03-16 11:33:00', '', null, '聊城');
INSERT INTO `sys_user` VALUES ('16', '109', '普通用户', 'sunfh', '00', 'sunfh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sunfh', '2018-03-16 11:33:00', '', null, '泰安');
INSERT INTO `sys_user` VALUES ('17', '110', '普通用户', 'gaoym', '00', 'gaoym@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gaoym', '2018-03-16 11:33:00', '', null, '莱芜');
INSERT INTO `sys_user` VALUES ('18', '111', '普通用户', 'lianzw', '00', 'lianzw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lianzw', '2018-03-16 11:33:00', '', null, '滨州');
INSERT INTO `sys_user` VALUES ('19', '112', '普通用户', 'fudw', '00', 'fudw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'fudw', '2018-03-16 11:33:00', '', null, '烟台');
INSERT INTO `sys_user` VALUES ('20', '113', '普通用户', 'yusx', '00', 'yusx@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yusx', '2018-03-16 11:33:00', '', null, '潍坊');
INSERT INTO `sys_user` VALUES ('21', '114', '普通用户', 'ligan', '00', 'ligan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'ligan', '2018-03-16 11:33:00', '', null, '枣庄');
INSERT INTO `sys_user` VALUES ('22', '115', '普通用户', 'chenyuan6', '00', 'chenyuan6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenyuan6', '2018-03-16 11:33:00', '', null, '日照');
INSERT INTO `sys_user` VALUES ('23', '116', '普通用户', 'jinxin', '00', 'jinxin@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'jinxin', '2018-03-16 11:33:00', '', null, '临沂');
INSERT INTO `sys_user` VALUES ('24', '117', '普通用户', 'lining9', '00', 'lining9@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lining9', '2018-03-16 11:33:00', '', null, '威海');
INSERT INTO `sys_user` VALUES ('25', '121', '普通用户', 'liusw3', '00', 'liusw3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liusw3', '2018-03-16 11:33:00', '', null, '安徽');
INSERT INTO `sys_user` VALUES ('26', '122', '普通用户', 'chenrui6', '00', 'chenrui6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenrui6', '2018-03-16 11:33:00', '', null, '安庆');
INSERT INTO `sys_user` VALUES ('27', '123', '普通用户', 'yangyi9', '00', 'yangyi9@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangyi9', '2018-03-16 11:33:00', '', null, '蚌埠');
INSERT INTO `sys_user` VALUES ('28', '124', '普通用户', 'tanwh', '00', 'tanwh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanwh', '2018-03-16 11:33:00', '', null, '亳州');
INSERT INTO `sys_user` VALUES ('29', '125', '普通用户', 'zhoupf3', '00', 'zhoupf3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhoupf3', '2018-03-16 11:33:00', '', null, '池州');
INSERT INTO `sys_user` VALUES ('30', '126', '普通用户', 'dongxq', '00', 'dongxq@chinatowercom', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'dongxq', '2018-03-16 11:33:00', 'admin', '2019-08-20 09:54:55', '滁州');
INSERT INTO `sys_user` VALUES ('31', '127', '普通用户', 'xuyl6', '00', 'xuyl6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xuyl6', '2018-03-16 11:33:00', '', null, '阜阳');
INSERT INTO `sys_user` VALUES ('32', '128', '普通用户', 'chengcheng6', '00', 'chengcheng6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chengcheng6', '2018-03-16 11:33:00', '', null, '合肥');
INSERT INTO `sys_user` VALUES ('33', '129', '普通用户', 'shipx', '00', 'shipx@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shipx', '2018-03-16 11:33:00', '', null, '淮南');
INSERT INTO `sys_user` VALUES ('34', '130', '普通用户', 'panpan', '00', 'panpan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'panpan', '2018-03-16 11:33:00', '', null, '黄山');
INSERT INTO `sys_user` VALUES ('35', '131', '普通用户', ' huanghao', '00', ' huanghao@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', ' huanghao', '2018-03-16 11:33:00', '', null, '六安');
INSERT INTO `sys_user` VALUES ('36', '132', '普通用户', 'ouqi3', '00', 'ouqi3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'ouqi3', '2018-03-16 11:33:00', '', null, '马鞍山市');
INSERT INTO `sys_user` VALUES ('37', '133', '普通用户', 'wanglq5', '00', 'wanglq5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wanglq5', '2018-03-16 11:33:00', '', null, '铜陵');
INSERT INTO `sys_user` VALUES ('38', '134', '普通用户', 'linghq', '00', 'linghq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'linghq', '2018-03-16 11:33:00', '', null, '宣城');
INSERT INTO `sys_user` VALUES ('39', '135', '普通用户', 'zhouqp', '00', 'zhouqp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhouqp', '2018-03-16 11:33:00', '', null, '芜湖');
INSERT INTO `sys_user` VALUES ('40', '136', '普通用户', 'xutl', '00', 'xutl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xutl', '2018-03-16 11:33:00', '', null, '宿州');
INSERT INTO `sys_user` VALUES ('41', '137', '普通用户', 'liudc3', '00', 'liudc3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liudc3', '2018-03-16 11:33:00', '', null, '淮北');
INSERT INTO `sys_user` VALUES ('42', '141', '普通用户', 'linhc', '00', 'linhc@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'linhc', '2018-03-16 11:33:00', '', null, '福建');
INSERT INTO `sys_user` VALUES ('43', '151', '普通用户', 'zhanglei30', '00', 'zhanglei30@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhanglei30', '2018-03-16 11:33:00', '', null, '甘肃');
INSERT INTO `sys_user` VALUES ('44', '152', '普通用户', 'baiyan3', '00', 'baiyan3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'baiyan3', '2018-03-16 11:33:00', '', null, '兰州');
INSERT INTO `sys_user` VALUES ('45', '153', '普通用户', 'miaock', '00', 'miaock@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'miaock', '2018-03-16 11:33:00', '', null, '白银');
INSERT INTO `sys_user` VALUES ('46', '154', '普通用户', 'zhangwp', '00', 'zhangwp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangwp', '2018-03-16 11:33:00', '', null, '定西');
INSERT INTO `sys_user` VALUES ('47', '155', '普通用户', 'yehj3', '00', 'yehj3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yehj3', '2018-03-16 11:33:00', '', null, '天水');
INSERT INTO `sys_user` VALUES ('48', '156', '普通用户', 'songqy', '00', 'songqy@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songqy', '2018-03-16 11:33:00', '', null, '陇南');
INSERT INTO `sys_user` VALUES ('49', '157', '普通用户', 'baigang3', '00', 'baigang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'baigang3', '2018-03-16 11:33:00', '', null, '平凉');
INSERT INTO `sys_user` VALUES ('50', '158', '普通用户', 'zhangxj7', '00', 'zhangxj7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangxj7', '2018-03-16 11:33:00', '', null, '庆阳');
INSERT INTO `sys_user` VALUES ('51', '159', '普通用户', 'yanglei12684', '00', 'yanglei12684@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yanglei12684', '2018-03-16 11:33:00', '', null, '临夏');
INSERT INTO `sys_user` VALUES ('52', '160', '普通用户', 'changyd', '00', 'changyd@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'changyd', '2018-03-16 11:33:00', '', null, '甘南');
INSERT INTO `sys_user` VALUES ('53', '161', '普通用户', 'wangjq', '00', 'wangjq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangjq', '2018-03-16 11:33:00', '', null, '武威');
INSERT INTO `sys_user` VALUES ('54', '162', '普通用户', 'songmei', '00', 'songmei@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songmei', '2018-03-16 11:33:00', '', null, '金昌');
INSERT INTO `sys_user` VALUES ('55', '163', '普通用户', 'liqiang11', '00', 'liqiang11@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liqiang11', '2018-03-16 11:33:00', '', null, '张掖');
INSERT INTO `sys_user` VALUES ('56', '164', '普通用户', 'manhd', '00', 'manhd@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'manhd', '2018-03-16 11:33:00', '', null, '酒泉');
INSERT INTO `sys_user` VALUES ('57', '165', '普通用户', 'zhangkai5', '00', 'zhangkai5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangkai5', '2018-03-16 11:33:00', '', null, '嘉峪关');
INSERT INTO `sys_user` VALUES ('58', '171', '普通用户', 'zengli2', '00', 'zengli2@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zengli2', '2018-03-16 11:33:00', '', null, '广东');
INSERT INTO `sys_user` VALUES ('59', '172', '普通用户', 'yuwh', '00', 'yuwh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yuwh', '2018-03-16 11:33:00', '', null, '广州');
INSERT INTO `sys_user` VALUES ('60', '173', '普通用户', 'tanhuan', '00', 'tanhuan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanhuan', '2018-03-16 11:33:00', '', null, '深圳');
INSERT INTO `sys_user` VALUES ('61', '174', '普通用户', 'chenhong', '00', 'chenhong@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenhong', '2018-03-16 11:33:00', '', null, '东莞');
INSERT INTO `sys_user` VALUES ('62', '175', '普通用户', 'maizf', '00', 'maizf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'maizf', '2018-03-16 11:33:00', '', null, '佛山');
INSERT INTO `sys_user` VALUES ('63', '176', '普通用户', 'yinzhe', '00', 'yinzhe@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yinzhe', '2018-03-16 11:33:00', '', null, '惠州');
INSERT INTO `sys_user` VALUES ('64', '177', '普通用户', 'tanzz', '00', 'tanzz@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanzz', '2018-03-16 11:33:00', '', null, '江门');
INSERT INTO `sys_user` VALUES ('65', '178', '普通用户', ' chenzf3', '00', ' chenzf3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', ' chenzf3', '2018-03-16 11:33:00', '', null, '湛江');
INSERT INTO `sys_user` VALUES ('66', '179', '普通用户', 'chenwg3', '00', 'chenwg3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenwg3', '2018-03-16 11:33:00', '', null, '肇庆');
INSERT INTO `sys_user` VALUES ('67', '180', '普通用户', 'chenhl3', '00', 'chenhl3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenhl3', '2018-03-16 11:33:00', '', null, '清远');
INSERT INTO `sys_user` VALUES ('68', '181', '普通用户', 'lugj', '00', 'lugj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lugj', '2018-03-16 11:33:00', '', null, '韶关');
INSERT INTO `sys_user` VALUES ('69', '182', '普通用户', 'zhangdl', '00', 'zhangdl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangdl', '2018-03-16 11:33:00', '', null, '茂名');
INSERT INTO `sys_user` VALUES ('70', '183', '普通用户', 'huangyq3', '00', 'huangyq3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huangyq3', '2018-03-16 11:33:00', '', null, '河源');
INSERT INTO `sys_user` VALUES ('71', '184', '普通用户', 'zhengxp', '00', 'zhengxp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhengxp', '2018-03-16 11:33:00', '', null, '梅州');
INSERT INTO `sys_user` VALUES ('72', '185', '普通用户', 'wened', '00', 'wened@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wened', '2018-03-16 11:33:00', '', null, '珠海');
INSERT INTO `sys_user` VALUES ('73', '186', '普通用户', 'caizh', '00', 'caizh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'caizh', '2018-03-16 11:33:00', '', null, '中山');
INSERT INTO `sys_user` VALUES ('74', '187', '普通用户', 'xieyj8', '00', 'xieyj8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xieyj8', '2018-03-16 11:33:00', '', null, '汕头');
INSERT INTO `sys_user` VALUES ('75', '188', '普通用户', 'chencj5', '00', 'chencj5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chencj5', '2018-03-16 11:33:00', '', null, '揭阳');
INSERT INTO `sys_user` VALUES ('76', '189', '普通用户', 'suzh3', '00', 'suzh3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'suzh3', '2018-03-16 11:33:00', '', null, '潮州');
INSERT INTO `sys_user` VALUES ('77', '190', '普通用户', 'zhangjx3', '00', 'zhangjx3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangjx3', '2018-03-16 11:33:00', '', null, '汕尾');
INSERT INTO `sys_user` VALUES ('78', '191', '普通用户', 'aojq', '00', 'aojq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'aojq', '2018-03-16 11:33:00', '', null, '阳江');
INSERT INTO `sys_user` VALUES ('79', '192', '普通用户', 'ouyz', '00', 'ouyz@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'ouyz', '2018-03-16 11:33:00', '', null, '云浮');
INSERT INTO `sys_user` VALUES ('80', '201', '普通用户', 'hujl', '00', 'hujl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'hujl', '2018-03-16 11:33:00', '', null, '河北');
INSERT INTO `sys_user` VALUES ('81', '202', '普通用户', 'yangyu', '00', 'yangyu@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangyu', '2018-03-16 11:33:00', '', null, '唐山');
INSERT INTO `sys_user` VALUES ('82', '203', '普通用户', 'chenty6', '00', 'chenty6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenty6', '2018-03-16 11:33:00', '', null, '秦皇岛');
INSERT INTO `sys_user` VALUES ('83', '204', '普通用户', 'dujm', '00', 'dujm@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'dujm', '2018-03-16 11:33:00', '', null, '石家庄');
INSERT INTO `sys_user` VALUES ('84', '205', '普通用户', 'liujiao', '00', 'liujiao@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liujiao', '2018-03-16 11:33:00', '', null, '邯郸');
INSERT INTO `sys_user` VALUES ('85', '206', '普通用户', 'zhangcx6', '00', 'zhangcx6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangcx6', '2018-03-16 11:33:00', '', null, '承德');
INSERT INTO `sys_user` VALUES ('86', '207', '普通用户', 'lizan', '00', 'lizan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lizan', '2018-03-16 11:33:00', '', null, '雄安');
INSERT INTO `sys_user` VALUES ('87', '208', '普通用户', 'sunyt5', '00', 'sunyt5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sunyt5', '2018-03-16 11:33:00', '', null, '衡水');
INSERT INTO `sys_user` VALUES ('88', '209', '普通用户', 'wangqian11', '00', 'wangqian11@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangqian11', '2018-03-16 11:33:00', '', null, '廊坊');
INSERT INTO `sys_user` VALUES ('89', '210', '普通用户', 'yangjw', '00', 'yangjw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangjw', '2018-03-16 11:33:00', '', null, '沧州');
INSERT INTO `sys_user` VALUES ('90', '211', '普通用户', 'lifp', '00', 'lifp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lifp', '2018-03-16 11:33:00', '', null, '邢台');
INSERT INTO `sys_user` VALUES ('91', '212', '普通用户', 'wuzl3', '00', 'wuzl3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wuzl3', '2018-03-16 11:33:00', '', null, '张家口');
INSERT INTO `sys_user` VALUES ('92', '213', '普通用户', 'liuxue5', '00', 'liuxue5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuxue5', '2018-03-16 11:33:00', '', null, '保定');
INSERT INTO `sys_user` VALUES ('93', '221', '普通用户', 'liqiang3', '00', 'liqiang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liqiang3', '2018-03-16 11:33:00', '', null, '黑龙江');
INSERT INTO `sys_user` VALUES ('94', '222', '普通用户', 'liuying9', '00', 'liuying9@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuying9', '2018-03-16 11:33:00', '', null, '鸡西');
INSERT INTO `sys_user` VALUES ('95', '223', '普通用户', 'liangxb', '00', 'liangxb@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liangxb', '2018-03-16 11:33:00', '', null, '鹤岗');
INSERT INTO `sys_user` VALUES ('96', '224', '普通用户', 'guowen', '00', 'guowen@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'guowen', '2018-03-16 11:33:00', '', null, '大兴安岭');
INSERT INTO `sys_user` VALUES ('97', '225', '普通用户', 'pengjl', '00', 'pengjl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pengjl', '2018-03-16 11:33:00', '', null, '牡丹江');
INSERT INTO `sys_user` VALUES ('98', '226', '普通用户', 'sunping', '00', 'sunping@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sunping', '2018-03-16 11:33:00', '', null, '佳木斯');
INSERT INTO `sys_user` VALUES ('99', '227', '普通用户', 'zhaichao', '00', 'zhaichao@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhaichao', '2018-03-16 11:33:00', '', null, '伊春');
INSERT INTO `sys_user` VALUES ('100', '228', '普通用户', 'qiaozh', '00', 'qiaozh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'qiaozh', '2018-03-16 11:33:00', '', null, '双鸭山');
INSERT INTO `sys_user` VALUES ('101', '229', '普通用户', 'wangll6', '00', 'wangll6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangll6', '2018-03-16 11:33:00', '', null, '大庆');
INSERT INTO `sys_user` VALUES ('102', '230', '普通用户', 'fanyu', '00', 'fanyu@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'fanyu', '2018-03-16 11:33:00', '', null, '齐齐哈尔');
INSERT INTO `sys_user` VALUES ('103', '231', '普通用户', 'liyang19', '00', 'liyang19@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liyang19', '2018-03-16 11:33:00', '', null, '绥化');
INSERT INTO `sys_user` VALUES ('104', '232', '普通用户', 'gengfeng', '00', 'gengfeng@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gengfeng', '2018-03-16 11:33:00', '', null, '哈尔滨');
INSERT INTO `sys_user` VALUES ('105', '241', '普通用户', 'longli', '00', 'longli@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'longli', '2018-03-16 11:33:00', '', null, '江西');
INSERT INTO `sys_user` VALUES ('106', '251', '普通用户', 'lirui8', '00', 'lirui8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lirui8', '2018-03-16 11:33:00', '', null, '宁夏');
INSERT INTO `sys_user` VALUES ('107', '252', '普通用户', 'yuning3', '00', 'yuning3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yuning3', '2018-03-16 11:33:00', '', null, '银川');
INSERT INTO `sys_user` VALUES ('108', '253', '普通用户', 'chenhj', '00', 'chenhj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenhj', '2018-03-16 11:33:00', '', null, '石嘴山');
INSERT INTO `sys_user` VALUES ('109', '254', '普通用户', 'baihao3', '00', 'baihao3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'baihao3', '2018-03-16 11:33:00', '', null, '吴忠');
INSERT INTO `sys_user` VALUES ('110', '255', '普通用户', 'pangjw', '00', 'pangjw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pangjw', '2018-03-16 11:33:00', '', null, '固原');
INSERT INTO `sys_user` VALUES ('111', '256', '普通用户', 'zhangxiao', '00', 'zhangxiao@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangxiao', '2018-03-16 11:33:00', '', null, '中卫');
INSERT INTO `sys_user` VALUES ('112', '261', '普通用户', 'linw3', '00', 'linw3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'linw3', '2018-03-16 11:33:00', '', null, '山西');
INSERT INTO `sys_user` VALUES ('113', '262', '普通用户', 'lixl13', '00', 'lixl13@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lixl13', '2018-03-16 11:33:00', '', null, '大同 ');
INSERT INTO `sys_user` VALUES ('114', '263', '普通用户', 'kangqq', '00', 'kangqq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'kangqq', '2018-03-16 11:33:00', '', null, '晋城');
INSERT INTO `sys_user` VALUES ('115', '264', '普通用户', 'liqiang5', '00', 'liqiang5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liqiang5', '2018-03-16 11:33:00', '', null, '临汾');
INSERT INTO `sys_user` VALUES ('116', '265', '普通用户', 'mizw', '00', 'mizw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'mizw', '2018-03-16 11:33:00', '', null, '吕梁');
INSERT INTO `sys_user` VALUES ('117', '266', '普通用户', 'wangkai8', '00', 'wangkai8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangkai8', '2018-03-16 11:33:00', '', null, '朔州');
INSERT INTO `sys_user` VALUES ('118', '267', '普通用户', 'guopeng8', '00', 'guopeng8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'guopeng8', '2018-03-16 11:33:00', '', null, '太原');
INSERT INTO `sys_user` VALUES ('119', '268', '普通用户', 'shiyang3', '00', 'shiyang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shiyang3', '2018-03-16 11:33:00', '', null, '阳泉');
INSERT INTO `sys_user` VALUES ('120', '269', '普通用户', 'songjw', '00', 'songjw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songjw', '2018-03-16 11:33:00', '', null, '运城');
INSERT INTO `sys_user` VALUES ('121', '270', '普通用户', 'niuhui', '00', 'niuhui@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'niuhui', '2018-03-16 11:33:00', '', null, '长治');
INSERT INTO `sys_user` VALUES ('122', '271', '普通用户', 'yanlei6', '00', 'yanlei6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yanlei6', '2018-03-16 11:33:00', '', null, '忻州');
INSERT INTO `sys_user` VALUES ('123', '272', '普通用户', 'liyf7', '00', 'liyf7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liyf7', '2018-03-16 11:33:00', '', null, '晋中');
INSERT INTO `sys_user` VALUES ('124', '281', '普通用户', 'liuwei17', '00', 'liuwei17@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuwei17', '2018-03-16 11:33:00', '', null, '西藏');
INSERT INTO `sys_user` VALUES ('125', '291', '普通用户', 'chuhh', '00', 'chuhh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chuhh', '2018-03-16 11:33:00', '', null, '重庆');
INSERT INTO `sys_user` VALUES ('126', '301', '普通用户', 'yujing5', '00', 'yujing5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yujing5', '2018-03-16 11:33:00', '', null, '河南');
INSERT INTO `sys_user` VALUES ('127', '302', '普通用户', 'zhaoyan3', '00', 'zhaoyan3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhaoyan3', '2018-03-16 11:33:00', '', null, '信阳');
INSERT INTO `sys_user` VALUES ('128', '303', '普通用户', 'leigj', '00', 'leigj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'leigj', '2018-03-16 11:33:00', '', null, '新乡');
INSERT INTO `sys_user` VALUES ('129', '304', '普通用户', 'linxi3', '00', 'linxi3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'linxi3', '2018-03-16 11:33:00', '', null, '漯河');
INSERT INTO `sys_user` VALUES ('130', '305', '普通用户', 'shizy', '00', 'shizy@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shizy', '2018-03-16 11:33:00', '', null, '周口');
INSERT INTO `sys_user` VALUES ('131', '306', '普通用户', 'lies3', '00', 'lies3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lies3', '2018-03-16 11:33:00', '', null, '鹤壁');
INSERT INTO `sys_user` VALUES ('132', '307', '普通用户', 'jiaocy', '00', 'jiaocy@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'jiaocy', '2018-03-16 11:33:00', '', null, '郑州');
INSERT INTO `sys_user` VALUES ('133', '308', '普通用户', 'wanghy13', '00', 'wanghy13@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wanghy13', '2018-03-16 11:33:00', '', null, '平顶山');
INSERT INTO `sys_user` VALUES ('134', '309', '普通用户', 'caijw', '00', 'caijw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'caijw', '2018-03-16 11:33:00', '', null, '商丘');
INSERT INTO `sys_user` VALUES ('135', '310', '普通用户', 'lijc5', '00', 'lijc5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lijc5', '2018-03-16 11:33:00', '', null, '济源');
INSERT INTO `sys_user` VALUES ('136', '311', '普通用户', 'zhaomm@chinatowercom', '00', 'zhaomm@chinatowercom', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhaomm@chinatowercom', '2018-03-16 11:33:00', '', null, '焦作');
INSERT INTO `sys_user` VALUES ('137', '312', '普通用户', 'shenzs', '00', 'shenzs@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shenzs', '2018-03-16 11:33:00', '', null, '洛阳');
INSERT INTO `sys_user` VALUES ('138', '313', '普通用户', 'xuhuan', '00', 'xuhuan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xuhuan', '2018-03-16 11:33:00', '', null, '安阳');
INSERT INTO `sys_user` VALUES ('139', '314', '普通用户', 'liugq3', '00', 'liugq3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liugq3', '2018-03-16 11:33:00', '', null, '濮阳');
INSERT INTO `sys_user` VALUES ('140', '315', '普通用户', 'wumt', '00', 'wumt@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wumt', '2018-03-16 11:33:00', '', null, '南阳');
INSERT INTO `sys_user` VALUES ('141', '316', '普通用户', 'zhanglei11', '00', 'zhanglei11@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhanglei11', '2018-03-16 11:33:00', '', null, '三门峡');
INSERT INTO `sys_user` VALUES ('142', '317', '普通用户', 'yangxh6', '00', 'yangxh6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangxh6', '2018-03-16 11:33:00', '', null, '许昌');
INSERT INTO `sys_user` VALUES ('143', '318', '普通用户', 'liyy6', '00', 'liyy6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liyy6', '2018-03-16 11:33:00', '', null, '开封');
INSERT INTO `sys_user` VALUES ('144', '319', '普通用户', 'yujy', '00', 'yujy@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yujy', '2018-03-16 11:33:00', '', null, '驻马店');
INSERT INTO `sys_user` VALUES ('145', '321', '普通用户', 'fengcc3', '00', 'fengcc3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'fengcc3', '2018-03-16 11:33:00', '', null, '新疆');
INSERT INTO `sys_user` VALUES ('146', '322', '普通用户', 'sibw', '00', 'sibw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sibw', '2018-03-16 11:33:00', '', null, '奎屯');
INSERT INTO `sys_user` VALUES ('147', '323', '普通用户', 'gaoyb5', '00', 'gaoyb5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gaoyb5', '2018-03-16 11:33:00', '', null, '石河子');
INSERT INTO `sys_user` VALUES ('148', '324', '普通用户', 'zhaixh', '00', 'zhaixh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhaixh', '2018-03-16 11:33:00', '', null, '乌鲁木齐');
INSERT INTO `sys_user` VALUES ('149', '325', '普通用户', 'gaofeng6', '00', 'gaofeng6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gaofeng6', '2018-03-16 11:33:00', '', null, '巴州');
INSERT INTO `sys_user` VALUES ('150', '326', '普通用户', 'zhugc', '00', 'zhugc@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhugc', '2018-03-16 11:33:00', '', null, '吐鲁番');
INSERT INTO `sys_user` VALUES ('151', '327', '普通用户', 'yangbin8', '00', 'yangbin8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangbin8', '2018-03-16 11:33:00', '', null, '阿勒泰');
INSERT INTO `sys_user` VALUES ('152', '328', '普通用户', 'yinbf', '00', 'yinbf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yinbf', '2018-03-16 11:33:00', '', null, '克拉玛依');
INSERT INTO `sys_user` VALUES ('153', '329', '普通用户', 'lidan5', '00', 'lidan5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lidan5', '2018-03-16 11:33:00', '', null, '哈密');
INSERT INTO `sys_user` VALUES ('154', '330', '普通用户', 'wangjq8', '00', 'wangjq8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangjq8', '2018-03-16 11:33:00', '', null, '昌吉');
INSERT INTO `sys_user` VALUES ('155', '331', '普通用户', 'niah', '00', 'niah@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'niah', '2018-03-16 11:33:00', '', null, '喀什');
INSERT INTO `sys_user` VALUES ('156', '332', '普通用户', 'yuliang3', '00', 'yuliang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yuliang3', '2018-03-16 11:33:00', '', null, '塔城');
INSERT INTO `sys_user` VALUES ('157', '333', '普通用户', 'pubo', '00', 'pubo@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pubo', '2018-03-16 11:33:00', '', null, '克州');
INSERT INTO `sys_user` VALUES ('158', '334', '普通用户', 'liuyan7', '00', 'liuyan7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyan7', '2018-03-16 11:33:00', '', null, '伊犁');
INSERT INTO `sys_user` VALUES ('159', '335', '普通用户', 'yanghua3', '00', 'yanghua3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yanghua3', '2018-03-16 11:33:00', '', null, '和田');
INSERT INTO `sys_user` VALUES ('160', '336', '普通用户', 'songwei6', '00', 'songwei6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songwei6', '2018-03-16 11:33:00', '', null, '阿克苏');
INSERT INTO `sys_user` VALUES ('161', '337', '普通用户', 'zhouyin', '00', 'zhouyin@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhouyin', '2018-03-16 11:33:00', '', null, '博州');
INSERT INTO `sys_user` VALUES ('162', '341', '普通用户', 'zhangjing3', '00', 'zhangjing3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangjing3', '2018-03-16 11:33:00', '', null, '湖北');
INSERT INTO `sys_user` VALUES ('163', '342', '普通用户', 'tanyf', '00', 'tanyf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanyf', '2018-03-16 11:33:00', '', null, '鄂州');
INSERT INTO `sys_user` VALUES ('164', '343', '普通用户', 'jiangsc', '00', 'jiangsc@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'jiangsc', '2018-03-16 11:33:00', '', null, '恩施');
INSERT INTO `sys_user` VALUES ('165', '344', '普通用户', 'qinyh3', '00', 'qinyh3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'qinyh3', '2018-03-16 11:33:00', '', null, '黄冈');
INSERT INTO `sys_user` VALUES ('166', '345', '普通用户', 'cailing5', '00', 'cailing5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'cailing5', '2018-03-16 11:33:00', '', null, '黄石');
INSERT INTO `sys_user` VALUES ('167', '346', '普通用户', 'zhaoyh5', '00', 'zhaoyh5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhaoyh5', '2018-03-16 11:33:00', '', null, '江汉');
INSERT INTO `sys_user` VALUES ('168', '347', '普通用户', 'zuoxg', '00', 'zuoxg@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zuoxg', '2018-03-16 11:33:00', '', null, '荆门');
INSERT INTO `sys_user` VALUES ('169', '348', '普通用户', 'chenyao3', '00', 'chenyao3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenyao3', '2018-03-16 11:33:00', '', null, '十堰');
INSERT INTO `sys_user` VALUES ('170', '349', '普通用户', 'pancw', '00', 'pancw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pancw', '2018-03-16 11:33:00', '', null, '随州');
INSERT INTO `sys_user` VALUES ('171', '350', '普通用户', 'guoxing5', '00', 'guoxing5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'guoxing5', '2018-03-16 11:33:00', '', null, '武汉');
INSERT INTO `sys_user` VALUES ('172', '351', '普通用户', 'luozf', '00', 'luozf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'luozf', '2018-03-16 11:33:00', '', null, '咸宁');
INSERT INTO `sys_user` VALUES ('173', '352', '普通用户', 'dengxj3', '00', 'dengxj3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'dengxj3', '2018-03-16 11:33:00', '', null, '襄阳');
INSERT INTO `sys_user` VALUES ('174', '353', '普通用户', 'gaotx', '00', 'gaotx@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gaotx', '2018-03-16 11:33:00', '', null, '孝感');
INSERT INTO `sys_user` VALUES ('175', '354', '普通用户', 'songxf', '00', 'songxf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songxf', '2018-03-16 11:33:00', '', null, '宜昌');
INSERT INTO `sys_user` VALUES ('176', '361', '普通用户', 'zhangchi8', '00', 'zhangchi8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangchi8', '2018-03-16 11:33:00', '', null, '广西');
INSERT INTO `sys_user` VALUES ('177', '362', '普通用户', 'songrj', '00', 'songrj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songrj', '2018-03-16 11:33:00', '', null, '南宁');
INSERT INTO `sys_user` VALUES ('178', '363', '普通用户', 'huangying', '00', 'huangying@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huangying', '2018-03-16 11:33:00', '', null, '柳州');
INSERT INTO `sys_user` VALUES ('179', '364', '普通用户', 'xiongjp', '00', 'xiongjp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xiongjp', '2018-03-16 11:33:00', '', null, '桂林');
INSERT INTO `sys_user` VALUES ('180', '365', '普通用户', 'renxm', '00', 'renxm@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'renxm', '2018-03-16 11:33:00', '', null, '玉林');
INSERT INTO `sys_user` VALUES ('181', '366', '普通用户', 'pangzh', '00', 'pangzh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pangzh', '2018-03-16 11:33:00', '', null, '贵港');
INSERT INTO `sys_user` VALUES ('182', '367', '普通用户', 'tianlf3', '00', 'tianlf3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tianlf3', '2018-03-16 11:33:00', '', null, '百色');
INSERT INTO `sys_user` VALUES ('183', '368', '普通用户', 'weicy', '00', 'weicy@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'weicy', '2018-03-16 11:33:00', '', null, '河池');
INSERT INTO `sys_user` VALUES ('184', '369', '普通用户', 'hezh', '00', 'hezh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'hezh', '2018-03-16 11:33:00', '', null, '钦州');
INSERT INTO `sys_user` VALUES ('185', '370', '普通用户', 'wangqh', '00', 'wangqh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangqh', '2018-03-16 11:33:00', '', null, '梧州');
INSERT INTO `sys_user` VALUES ('186', '371', '普通用户', 'wangzh11', '00', 'wangzh11@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangzh11', '2018-03-16 11:33:00', '', null, '北海');
INSERT INTO `sys_user` VALUES ('187', '372', '普通用户', 'zhengjia', '00', 'zhengjia@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhengjia', '2018-03-16 11:33:00', '', null, '崇左');
INSERT INTO `sys_user` VALUES ('188', '373', '普通用户', 'liaofx', '00', 'liaofx@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liaofx', '2018-03-16 11:33:00', '', null, '来宾');
INSERT INTO `sys_user` VALUES ('189', '374', '普通用户', 'wenlei', '00', 'wenlei@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wenlei', '2018-03-16 11:33:00', '', null, '贺州');
INSERT INTO `sys_user` VALUES ('190', '375', '普通用户', 'lirong', '00', 'lirong@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lirong', '2018-03-16 11:33:00', '', null, '防城港');
INSERT INTO `sys_user` VALUES ('191', '381', '普通用户', 'xuqiang3', '00', 'xuqiang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xuqiang3', '2018-03-16 11:33:00', '', null, '北京');
INSERT INTO `sys_user` VALUES ('192', '391', '普通用户', 'guowei3', '00', 'guowei3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'guowei3', '2018-03-16 11:33:00', '', null, '湖南');
INSERT INTO `sys_user` VALUES ('193', '392', '普通用户', 'yiyi', '00', 'yiyi@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yiyi', '2018-03-16 11:33:00', '', null, '长沙');
INSERT INTO `sys_user` VALUES ('194', '393', '普通用户', 'chenyu7', '00', 'chenyu7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenyu7', '2018-03-16 11:33:00', '', null, '株洲');
INSERT INTO `sys_user` VALUES ('195', '394', '普通用户', 'wangyj5', '00', 'wangyj5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangyj5', '2018-03-16 11:33:00', '', null, '湘潭');
INSERT INTO `sys_user` VALUES ('196', '395', '普通用户', 'yanjie', '00', 'yanjie@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yanjie', '2018-03-16 11:33:00', '', null, '衡阳');
INSERT INTO `sys_user` VALUES ('197', '396', '普通用户', 'ronggz', '00', 'ronggz@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'ronggz', '2018-03-16 11:33:00', '', null, '邵阳');
INSERT INTO `sys_user` VALUES ('198', '397', '普通用户', 'chenlh3', '00', 'chenlh3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenlh3', '2018-03-16 11:33:00', '', null, '岳阳');
INSERT INTO `sys_user` VALUES ('199', '398', '普通用户', 'zhangzh3', '00', 'zhangzh3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangzh3', '2018-03-16 11:33:00', '', null, '常德');
INSERT INTO `sys_user` VALUES ('200', '399', '普通用户', 'tanfang', '00', 'tanfang@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanfang', '2018-03-16 11:33:00', '', null, '张家界');
INSERT INTO `sys_user` VALUES ('201', '400', '普通用户', 'lijun3', '00', 'lijun3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lijun3', '2018-03-16 11:33:00', '', null, '益阳');
INSERT INTO `sys_user` VALUES ('202', '402', '普通用户', 'caoyingv', '00', 'caoyingv@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'caoyingv', '2018-03-16 11:33:00', '', null, '郴州');
INSERT INTO `sys_user` VALUES ('203', '403', '普通用户', 'tanglh', '00', 'tanglh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tanglh', '2018-03-16 11:33:00', '', null, '永州');
INSERT INTO `sys_user` VALUES ('204', '404', '普通用户', 'luoky3', '00', 'luoky3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'luoky3', '2018-03-16 11:33:00', '', null, '怀化');
INSERT INTO `sys_user` VALUES ('205', '405', '普通用户', 'liuyh8', '00', 'liuyh8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyh8', '2018-03-16 11:33:00', '', null, '娄底');
INSERT INTO `sys_user` VALUES ('206', '406', '普通用户', 'wangjy5', '00', 'wangjy5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangjy5', '2018-03-16 11:33:00', '', null, '湘西自治州');
INSERT INTO `sys_user` VALUES ('207', '411', '普通用户', 'gaoxl3', '00', 'gaoxl3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gaoxl3', '2018-03-16 11:33:00', '', null, '青海');
INSERT INTO `sys_user` VALUES ('208', '412', '普通用户', 'niuht', '00', 'niuht@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'niuht', '2018-03-16 11:33:00', '', null, '西宁市');
INSERT INTO `sys_user` VALUES ('209', '413', '普通用户', 'baozc', '00', 'baozc@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'baozc', '2018-03-16 11:33:00', '', null, '海东市');
INSERT INTO `sys_user` VALUES ('210', '414', '普通用户', 'chaiwl', '00', 'chaiwl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chaiwl', '2018-03-16 11:33:00', '', null, '海南州');
INSERT INTO `sys_user` VALUES ('211', '415', '普通用户', 'zhangsy3', '00', 'zhangsy3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangsy3', '2018-03-16 11:33:00', '', null, '海西州');
INSERT INTO `sys_user` VALUES ('212', '416', '普通用户', 'handan', '00', 'handan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'handan', '2018-03-16 11:33:00', '', null, '海北州');
INSERT INTO `sys_user` VALUES ('213', '417', '普通用户', 'wangjc5', '00', 'wangjc5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangjc5', '2018-03-16 11:33:00', '', null, '黄南州');
INSERT INTO `sys_user` VALUES ('214', '418', '普通用户', 'huoch', '00', 'huoch@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huoch', '2018-03-16 11:33:00', '', null, '果洛州');
INSERT INTO `sys_user` VALUES ('215', '419', '普通用户', 'nacj', '00', 'nacj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'nacj', '2018-03-16 11:33:00', '', null, '玉树州');
INSERT INTO `sys_user` VALUES ('216', '420', '普通用户', 'zhangzp5', '00', 'zhangzp5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangzp5', '2018-03-16 11:33:00', '', null, '格尔木市');
INSERT INTO `sys_user` VALUES ('217', '421', '普通用户', 'pangxf', '00', 'pangxf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'pangxf', '2018-03-16 11:33:00', '', null, '内蒙古');
INSERT INTO `sys_user` VALUES ('218', '422', '普通用户', 'zhangzp5', '00', 'zhangzp5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangzp5', '2018-03-16 11:33:00', '', null, '呼伦贝尔');
INSERT INTO `sys_user` VALUES ('219', '423', '普通用户', 'wuhan5', '00', 'wuhan5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wuhan5', '2018-03-16 11:33:00', '', null, '巴彦淖尔市');
INSERT INTO `sys_user` VALUES ('220', '424', '普通用户', 'jiale', '00', 'jiale@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'jiale', '2018-03-16 11:33:00', '', null, '呼和浩特市');
INSERT INTO `sys_user` VALUES ('221', '425', '普通用户', 'caoxm3', '00', 'caoxm3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'caoxm3', '2018-03-16 11:33:00', '', null, '兴安盟');
INSERT INTO `sys_user` VALUES ('222', '426', '普通用户', 'lity3', '00', 'lity3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lity3', '2018-03-16 11:33:00', '', null, '通辽');
INSERT INTO `sys_user` VALUES ('223', '427', '普通用户', 'mengxm', '00', 'mengxm@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'mengxm', '2018-03-16 11:33:00', '', null, '鄂尔多斯市');
INSERT INTO `sys_user` VALUES ('224', '428', '普通用户', 'wubf', '00', 'wubf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wubf', '2018-03-16 11:33:00', '', null, '乌海市');
INSERT INTO `sys_user` VALUES ('225', '429', '普通用户', 'wangxh', '00', 'wangxh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangxh', '2018-03-16 11:33:00', '', null, '锡林郭勒盟');
INSERT INTO `sys_user` VALUES ('226', '430', '普通用户', 'chenrj', '00', 'chenrj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenrj', '2018-03-16 11:33:00', '', null, '阿拉善盟');
INSERT INTO `sys_user` VALUES ('227', '431', '普通用户', ' zhangxh3', '00', ' zhangxh3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', ' zhangxh3', '2018-03-16 11:33:00', '', null, '包头');
INSERT INTO `sys_user` VALUES ('228', '432', '普通用户', 'liuyi10', '00', 'liuyi10@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyi10', '2018-03-16 11:33:00', '', null, '乌兰察布市');
INSERT INTO `sys_user` VALUES ('229', '433', '普通用户', 'lidong6', '00', 'lidong6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lidong6', '2018-03-16 11:33:00', '', null, '赤峰');
INSERT INTO `sys_user` VALUES ('230', '441', '普通用户', 'hualei', '00', 'hualei@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'hualei', '2018-03-16 11:33:00', '', null, '浙江');
INSERT INTO `sys_user` VALUES ('231', '442', '普通用户', 'weiwq', '00', 'weiwq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'weiwq', '2018-03-16 11:33:00', '', null, '舟山');
INSERT INTO `sys_user` VALUES ('232', '451', '普通用户', 'xiaoyu', '00', 'xiaoyu@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xiaoyu', '2018-03-16 11:33:00', '', null, '四川');
INSERT INTO `sys_user` VALUES ('233', '461', '普通用户', 'zhangliang3', '00', 'zhangliang3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangliang3', '2018-03-16 11:33:00', '', null, '上海');
INSERT INTO `sys_user` VALUES ('234', '462', '普通用户', 'yangyj', '00', 'yangyj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangyj', '2018-03-16 11:33:00', '', null, '浦东');
INSERT INTO `sys_user` VALUES ('235', '463', '普通用户', 'chenchao3', '00', 'chenchao3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenchao3', '2018-03-16 11:33:00', '', null, '南区');
INSERT INTO `sys_user` VALUES ('236', '464', '普通用户', 'zhangsheng', '00', 'zhangsheng@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangsheng', '2018-03-16 11:33:00', '', null, '西区');
INSERT INTO `sys_user` VALUES ('237', '465', '普通用户', 'yugui', '00', 'yugui@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yugui', '2018-03-16 11:33:00', '', null, '北区');
INSERT INTO `sys_user` VALUES ('238', '466', '普通用户', 'jixj', '00', 'jixj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'jixj', '2018-03-16 11:33:00', '', null, '闵行');
INSERT INTO `sys_user` VALUES ('239', '467', '普通用户', 'gulw', '00', 'gulw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gulw', '2018-03-16 11:33:00', '', null, '宝山');
INSERT INTO `sys_user` VALUES ('240', '468', '普通用户', 'songcq', '00', 'songcq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songcq', '2018-03-16 11:33:00', '', null, '松江');
INSERT INTO `sys_user` VALUES ('241', '469', '普通用户', 'huangfeng', '00', 'huangfeng@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huangfeng', '2018-03-16 11:33:00', '', null, '嘉定');
INSERT INTO `sys_user` VALUES ('242', '470', '普通用户', 'gongzhen', '00', 'gongzhen@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'gongzhen', '2018-03-16 11:33:00', '', null, '青浦');
INSERT INTO `sys_user` VALUES ('243', '471', '普通用户', 'chenys3', '00', 'chenys3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenys3', '2018-03-16 11:33:00', '', null, '奉贤');
INSERT INTO `sys_user` VALUES ('244', '472', '普通用户', 'shenjf', '00', 'shenjf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shenjf', '2018-03-16 11:33:00', '', null, '金山');
INSERT INTO `sys_user` VALUES ('245', '473', '普通用户', 'chenbo5', '00', 'chenbo5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenbo5', '2018-03-16 11:33:00', '', null, '崇明');
INSERT INTO `sys_user` VALUES ('246', '481', '普通用户', 'wangcong5', '00', 'wangcong5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangcong5', '2018-03-16 11:33:00', '', null, '吉林');
INSERT INTO `sys_user` VALUES ('247', '491', '普通用户', 'maxc5', '00', 'maxc5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'maxc5', '2018-03-16 11:33:00', '', null, '贵州');
INSERT INTO `sys_user` VALUES ('248', '492', '普通用户', 'yangmu@chinatower', '00', 'yangmu@chinatower', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangmu@chinatower', '2018-03-16 11:33:00', '', null, '贵阳');
INSERT INTO `sys_user` VALUES ('249', '493', '普通用户', 'chenchen', '00', 'chenchen@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenchen', '2018-03-16 11:33:00', '', null, '遵义');
INSERT INTO `sys_user` VALUES ('250', '494', '普通用户', 'zhouxw', '00', 'zhouxw@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhouxw', '2018-03-16 11:33:00', '', null, '安顺');
INSERT INTO `sys_user` VALUES ('251', '495', '普通用户', 'daiyuan', '00', 'daiyuan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'daiyuan', '2018-03-16 11:33:00', '', null, '黔南');
INSERT INTO `sys_user` VALUES ('252', '496', '普通用户', 'shupx', '00', 'shupx@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shupx', '2018-03-16 11:33:00', '', null, '黔东南');
INSERT INTO `sys_user` VALUES ('253', '497', '普通用户', 'huanglf', '00', 'huanglf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huanglf', '2018-03-16 11:33:00', '', null, '铜仁市');
INSERT INTO `sys_user` VALUES ('254', '498', '普通用户', 'mali3', '00', 'mali3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'mali3', '2018-03-16 11:33:00', '', null, '毕节');
INSERT INTO `sys_user` VALUES ('255', '499', '普通用户', 'macr3', '00', 'macr3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'macr3', '2018-03-16 11:33:00', '', null, '黔西南州');
INSERT INTO `sys_user` VALUES ('256', '501', '普通用户', 'zhangtr', '00', 'zhangtr@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhangtr', '2018-03-16 11:33:00', '', null, '海南省');
INSERT INTO `sys_user` VALUES ('257', '511', '普通用户', 'lijt3', '00', 'lijt3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lijt3', '2018-03-16 11:33:00', '', null, '天津');
INSERT INTO `sys_user` VALUES ('258', '512', '普通用户', 'lins6', '00', 'lins6@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lins6', '2018-03-16 11:33:00', '', null, '市区分公司');
INSERT INTO `sys_user` VALUES ('259', '513', '普通用户', 'liuyu10', '00', 'liuyu10@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyu10', '2018-03-16 11:33:00', '', null, '河北河东分公司');
INSERT INTO `sys_user` VALUES ('260', '514', '普通用户', 'chenst3', '00', 'chenst3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenst3', '2018-03-16 11:33:00', '', null, '滨海分公司');
INSERT INTO `sys_user` VALUES ('261', '515', '普通用户', 'huwf', '00', 'huwf@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'huwf', '2018-03-16 11:33:00', '', null, '北区分公司');
INSERT INTO `sys_user` VALUES ('262', '516', '普通用户', 'zhanghui3', '00', 'zhanghui3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhanghui3', '2018-03-16 11:33:00', '', null, '西青津南分公司');
INSERT INTO `sys_user` VALUES ('263', '517', '普通用户', 'wanglin5', '00', 'wanglin5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wanglin5', '2018-03-16 11:33:00', '', null, '静海分公司');
INSERT INTO `sys_user` VALUES ('264', '518', '普通用户', 'liujq8', '00', 'liujq8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liujq8', '2018-03-16 11:33:00', '', null, '宝坻分公司');
INSERT INTO `sys_user` VALUES ('265', '519', '普通用户', 'beijz', '00', 'beijz@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'beijz', '2018-03-16 11:33:00', '', null, '蓟州分公司');
INSERT INTO `sys_user` VALUES ('266', '521', '普通用户', '', '00', '', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', '', '2018-03-16 11:33:00', '', null, '陕西');
INSERT INTO `sys_user` VALUES ('267', '522', '普通用户', 'wencheng', '00', 'wencheng@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wencheng', '2018-03-16 11:33:00', '', null, '西安');
INSERT INTO `sys_user` VALUES ('268', '523', '普通用户', 'yangkd', '00', 'yangkd@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yangkd', '2018-03-16 11:33:00', '', null, '咸阳');
INSERT INTO `sys_user` VALUES ('269', '524', '普通用户', 'heyang5', '00', 'heyang5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'heyang5', '2018-03-16 11:33:00', '', null, '汉中');
INSERT INTO `sys_user` VALUES ('270', '531', '普通用户', 'longli', '00', 'longli@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'longli', '2018-03-16 11:33:00', '', null, '江西');
INSERT INTO `sys_user` VALUES ('271', '532', '普通用户', 'yufs', '00', 'yufs@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yufs', '2018-03-16 11:33:00', '', null, '南昌');
INSERT INTO `sys_user` VALUES ('272', '533', '普通用户', 'tongqing', '00', 'tongqing@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'tongqing', '2018-03-16 11:33:00', '', null, '九江');
INSERT INTO `sys_user` VALUES ('273', '534', '普通用户', 'shenxu', '00', 'shenxu@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shenxu', '2018-03-16 11:33:00', '', null, '上饶');
INSERT INTO `sys_user` VALUES ('274', '535', '普通用户', 'zhousn', '00', 'zhousn@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zhousn', '2018-03-16 11:33:00', '', null, '抚州');
INSERT INTO `sys_user` VALUES ('275', '536', '普通用户', 'yuanming3', '00', 'yuanming3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'yuanming3', '2018-03-16 11:33:00', '', null, '宜春');
INSERT INTO `sys_user` VALUES ('276', '537', '普通用户', 'liuzm3', '00', 'liuzm3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuzm3', '2018-03-16 11:33:00', '', null, '吉安');
INSERT INTO `sys_user` VALUES ('277', '538', '普通用户', 'luchen', '00', 'luchen@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'luchen', '2018-03-16 11:33:00', '', null, '赣州');
INSERT INTO `sys_user` VALUES ('278', '539', '普通用户', 'sunzq', '00', 'sunzq@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sunzq', '2018-03-16 11:33:00', '', null, '景德镇');
INSERT INTO `sys_user` VALUES ('279', '540', '普通用户', 'lihao5', '00', 'lihao5@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lihao5', '2018-03-16 11:33:00', '', null, '萍乡');
INSERT INTO `sys_user` VALUES ('280', '542', '普通用户', 'zengmz', '00', 'zengmz@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zengmz', '2018-03-16 11:33:00', '', null, '新余');
INSERT INTO `sys_user` VALUES ('281', '543', '普通用户', 'songyan3', '00', 'songyan3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songyan3', '2018-03-16 11:33:00', '', null, '鹰潭');
INSERT INTO `sys_user` VALUES ('282', '551', '普通用户', 'xiaoyu', '00', 'xiaoyu@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xiaoyu', '2018-03-16 11:33:00', '', null, '四川');
INSERT INTO `sys_user` VALUES ('283', '552', '普通用户', 'wangly', '00', 'wangly@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangly', '2018-03-16 11:33:00', '', null, '泸州');
INSERT INTO `sys_user` VALUES ('284', '553', '普通用户', 'liangbo3', '00', 'liangbo3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liangbo3', '2018-03-16 11:33:00', '', null, '广元');
INSERT INTO `sys_user` VALUES ('285', '554', '普通用户', 'xiangbo', '00', 'xiangbo@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xiangbo', '2018-03-16 11:33:00', '', null, '成都');
INSERT INTO `sys_user` VALUES ('286', '555', '普通用户', 'hedan', '00', 'hedan@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'hedan', '2018-03-16 11:33:00', '', null, '乐山');
INSERT INTO `sys_user` VALUES ('287', '556', '普通用户', 'lilz3', '00', 'lilz3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lilz3', '2018-03-16 11:33:00', '', null, '南充');
INSERT INTO `sys_user` VALUES ('288', '557', '普通用户', 'shenll', '00', 'shenll@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'shenll', '2018-03-16 11:33:00', '', null, '阿坝州');
INSERT INTO `sys_user` VALUES ('289', '558', '普通用户', 'zengzh', '00', 'zengzh@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'zengzh', '2018-03-16 11:33:00', '', null, '遂宁');
INSERT INTO `sys_user` VALUES ('290', '559', '普通用户', 'ligao', '00', 'ligao@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'ligao', '2018-03-16 11:33:00', '', null, '资阳市');
INSERT INTO `sys_user` VALUES ('291', '560', '普通用户', 'wuwei10', '00', 'wuwei10@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wuwei10', '2018-03-16 11:33:00', '', null, '甘孜');
INSERT INTO `sys_user` VALUES ('292', '561', '普通用户', 'liyj17@chinatowercom.cn ', '00', 'liyj17@chinatowercom.cn ', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liyj17@chinatowercom.cn ', '2018-03-16 11:33:00', '', null, '眉山');
INSERT INTO `sys_user` VALUES ('293', '562', '普通用户', 'liuyong8', '00', 'liuyong8@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'liuyong8', '2018-03-16 11:33:00', '', null, '攀枝花');
INSERT INTO `sys_user` VALUES ('294', '563', '普通用户', 'lixwj', '00', 'lixwj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lixwj', '2018-03-16 11:33:00', '', null, '雅安');
INSERT INTO `sys_user` VALUES ('295', '564', '普通用户', 'wangyu13', '00', 'wangyu13@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangyu13', '2018-03-16 11:33:00', '', null, '自贡');
INSERT INTO `sys_user` VALUES ('296', '565', '普通用户', 'chenqiang7', '00', 'chenqiang7@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chenqiang7', '2018-03-16 11:33:00', '', null, '德阳');
INSERT INTO `sys_user` VALUES ('297', '566', '普通用户', 'wangsong3', '00', 'wangsong3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'wangsong3', '2018-03-16 11:33:00', '', null, '广安');
INSERT INTO `sys_user` VALUES ('298', '567', '普通用户', 'limou', '00', 'limou@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'limou', '2018-03-16 11:33:00', '', null, '广元');
INSERT INTO `sys_user` VALUES ('299', '568', '普通用户', 'sunsc', '00', 'sunsc@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'sunsc', '2018-03-16 11:33:00', '', null, '绵阳');
INSERT INTO `sys_user` VALUES ('300', '569', '普通用户', 'leijing', '00', 'leijing@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'leijing', '2018-03-16 11:33:00', '', null, '内江');
INSERT INTO `sys_user` VALUES ('301', '570', '普通用户', 'songxin3', '00', 'songxin3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'songxin3', '2018-03-16 11:33:00', '', null, '凉山');
INSERT INTO `sys_user` VALUES ('302', '571', '普通用户', 'chentao3', '00', 'chentao3@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'chentao3', '2018-03-16 11:33:00', '', null, '巴中');
INSERT INTO `sys_user` VALUES ('303', '572', '普通用户', 'licj', '00', 'licj@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'licj', '2018-03-16 11:33:00', '', null, '达州');
INSERT INTO `sys_user` VALUES ('304', '573', '普通用户', 'lirui9', '00', 'lirui9@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'lirui9', '2018-03-16 11:33:00', '', null, '宜宾');
INSERT INTO `sys_user` VALUES ('305', '581', '普通用户', 'xuesl', '00', 'xuesl@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xuesl', '2018-03-16 11:33:00', '', null, '辽宁');
INSERT INTO `sys_user` VALUES ('306', '591', '普通用户', 'xiaoyp', '00', 'xiaoyp@chinatowercom.cn', '15666666667', '0', '1561097204150blob', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-03-16 11:33:00', '0', '0', '', '2018-03-16 11:33:00', 'xiaoyp', '2018-03-16 11:33:00', '', '2019-08-26 10:44:38', '云南');
INSERT INTO `sys_user` VALUES ('307', '10', ' 包子', '包子', '00', '123@123.com', '15811326044', '0', '', '906961fb6c7a9009c5e8fd17ae438919efbbc90dd839ed596959f991ae4f8f5b', 'e5167e', '0', '2', '', null, 'admin', '2019-08-12 10:47:47', '', null, '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('3', '3');
INSERT INTO `sys_user_role` VALUES ('3', '4');
INSERT INTO `sys_user_role` VALUES ('4', '4');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '4');
INSERT INTO `sys_user_role` VALUES ('7', '4');
INSERT INTO `sys_user_role` VALUES ('8', '4');
INSERT INTO `sys_user_role` VALUES ('9', '4');
INSERT INTO `sys_user_role` VALUES ('10', '4');
INSERT INTO `sys_user_role` VALUES ('11', '4');
INSERT INTO `sys_user_role` VALUES ('12', '4');
INSERT INTO `sys_user_role` VALUES ('13', '4');
INSERT INTO `sys_user_role` VALUES ('14', '4');
INSERT INTO `sys_user_role` VALUES ('15', '4');
INSERT INTO `sys_user_role` VALUES ('16', '4');
INSERT INTO `sys_user_role` VALUES ('17', '4');
INSERT INTO `sys_user_role` VALUES ('18', '4');
INSERT INTO `sys_user_role` VALUES ('19', '4');
INSERT INTO `sys_user_role` VALUES ('20', '4');
INSERT INTO `sys_user_role` VALUES ('21', '4');
INSERT INTO `sys_user_role` VALUES ('22', '4');
INSERT INTO `sys_user_role` VALUES ('23', '4');
INSERT INTO `sys_user_role` VALUES ('24', '4');
INSERT INTO `sys_user_role` VALUES ('25', '4');
INSERT INTO `sys_user_role` VALUES ('26', '4');
INSERT INTO `sys_user_role` VALUES ('27', '4');
INSERT INTO `sys_user_role` VALUES ('28', '4');
INSERT INTO `sys_user_role` VALUES ('29', '4');
INSERT INTO `sys_user_role` VALUES ('30', '4');
INSERT INTO `sys_user_role` VALUES ('31', '4');
INSERT INTO `sys_user_role` VALUES ('32', '4');
INSERT INTO `sys_user_role` VALUES ('33', '4');
INSERT INTO `sys_user_role` VALUES ('34', '4');
INSERT INTO `sys_user_role` VALUES ('35', '4');
INSERT INTO `sys_user_role` VALUES ('36', '4');
INSERT INTO `sys_user_role` VALUES ('37', '4');
INSERT INTO `sys_user_role` VALUES ('38', '4');
INSERT INTO `sys_user_role` VALUES ('39', '4');
INSERT INTO `sys_user_role` VALUES ('40', '4');
INSERT INTO `sys_user_role` VALUES ('41', '4');
INSERT INTO `sys_user_role` VALUES ('42', '4');
INSERT INTO `sys_user_role` VALUES ('43', '4');
INSERT INTO `sys_user_role` VALUES ('44', '4');
INSERT INTO `sys_user_role` VALUES ('45', '4');
INSERT INTO `sys_user_role` VALUES ('46', '4');
INSERT INTO `sys_user_role` VALUES ('47', '4');
INSERT INTO `sys_user_role` VALUES ('48', '4');
INSERT INTO `sys_user_role` VALUES ('49', '4');
INSERT INTO `sys_user_role` VALUES ('50', '4');
INSERT INTO `sys_user_role` VALUES ('51', '4');
INSERT INTO `sys_user_role` VALUES ('52', '4');
INSERT INTO `sys_user_role` VALUES ('53', '4');
INSERT INTO `sys_user_role` VALUES ('54', '4');
INSERT INTO `sys_user_role` VALUES ('55', '4');
INSERT INTO `sys_user_role` VALUES ('56', '4');
INSERT INTO `sys_user_role` VALUES ('57', '4');
INSERT INTO `sys_user_role` VALUES ('58', '4');
INSERT INTO `sys_user_role` VALUES ('59', '4');
INSERT INTO `sys_user_role` VALUES ('60', '4');
INSERT INTO `sys_user_role` VALUES ('61', '4');
INSERT INTO `sys_user_role` VALUES ('62', '4');
INSERT INTO `sys_user_role` VALUES ('63', '4');
INSERT INTO `sys_user_role` VALUES ('64', '4');
INSERT INTO `sys_user_role` VALUES ('65', '4');
INSERT INTO `sys_user_role` VALUES ('66', '4');
INSERT INTO `sys_user_role` VALUES ('67', '4');
INSERT INTO `sys_user_role` VALUES ('68', '4');
INSERT INTO `sys_user_role` VALUES ('69', '4');
INSERT INTO `sys_user_role` VALUES ('70', '4');
INSERT INTO `sys_user_role` VALUES ('71', '4');
INSERT INTO `sys_user_role` VALUES ('72', '4');
INSERT INTO `sys_user_role` VALUES ('73', '4');
INSERT INTO `sys_user_role` VALUES ('74', '4');
INSERT INTO `sys_user_role` VALUES ('75', '4');
INSERT INTO `sys_user_role` VALUES ('76', '4');
INSERT INTO `sys_user_role` VALUES ('77', '4');
INSERT INTO `sys_user_role` VALUES ('78', '4');
INSERT INTO `sys_user_role` VALUES ('79', '4');
INSERT INTO `sys_user_role` VALUES ('80', '4');
INSERT INTO `sys_user_role` VALUES ('81', '4');
INSERT INTO `sys_user_role` VALUES ('82', '4');
INSERT INTO `sys_user_role` VALUES ('83', '4');
INSERT INTO `sys_user_role` VALUES ('84', '4');
INSERT INTO `sys_user_role` VALUES ('85', '4');
INSERT INTO `sys_user_role` VALUES ('86', '4');
INSERT INTO `sys_user_role` VALUES ('87', '4');
INSERT INTO `sys_user_role` VALUES ('88', '4');
INSERT INTO `sys_user_role` VALUES ('89', '4');
INSERT INTO `sys_user_role` VALUES ('90', '4');
INSERT INTO `sys_user_role` VALUES ('91', '4');
INSERT INTO `sys_user_role` VALUES ('92', '4');
INSERT INTO `sys_user_role` VALUES ('93', '4');
INSERT INTO `sys_user_role` VALUES ('94', '4');
INSERT INTO `sys_user_role` VALUES ('95', '4');
INSERT INTO `sys_user_role` VALUES ('96', '4');
INSERT INTO `sys_user_role` VALUES ('97', '4');
INSERT INTO `sys_user_role` VALUES ('98', '4');
INSERT INTO `sys_user_role` VALUES ('99', '4');
INSERT INTO `sys_user_role` VALUES ('100', '4');
INSERT INTO `sys_user_role` VALUES ('101', '4');
INSERT INTO `sys_user_role` VALUES ('102', '4');
INSERT INTO `sys_user_role` VALUES ('103', '4');
INSERT INTO `sys_user_role` VALUES ('104', '4');
INSERT INTO `sys_user_role` VALUES ('105', '4');
INSERT INTO `sys_user_role` VALUES ('106', '4');
INSERT INTO `sys_user_role` VALUES ('107', '4');
INSERT INTO `sys_user_role` VALUES ('108', '4');
INSERT INTO `sys_user_role` VALUES ('109', '4');
INSERT INTO `sys_user_role` VALUES ('110', '4');
INSERT INTO `sys_user_role` VALUES ('111', '4');
INSERT INTO `sys_user_role` VALUES ('112', '4');
INSERT INTO `sys_user_role` VALUES ('113', '4');
INSERT INTO `sys_user_role` VALUES ('114', '4');
INSERT INTO `sys_user_role` VALUES ('115', '4');
INSERT INTO `sys_user_role` VALUES ('116', '4');
INSERT INTO `sys_user_role` VALUES ('117', '4');
INSERT INTO `sys_user_role` VALUES ('118', '4');
INSERT INTO `sys_user_role` VALUES ('119', '4');
INSERT INTO `sys_user_role` VALUES ('120', '4');
INSERT INTO `sys_user_role` VALUES ('121', '4');
INSERT INTO `sys_user_role` VALUES ('122', '4');
INSERT INTO `sys_user_role` VALUES ('123', '4');
INSERT INTO `sys_user_role` VALUES ('124', '4');
INSERT INTO `sys_user_role` VALUES ('125', '4');
INSERT INTO `sys_user_role` VALUES ('126', '4');
INSERT INTO `sys_user_role` VALUES ('127', '4');
INSERT INTO `sys_user_role` VALUES ('128', '4');
INSERT INTO `sys_user_role` VALUES ('129', '4');
INSERT INTO `sys_user_role` VALUES ('130', '4');
INSERT INTO `sys_user_role` VALUES ('131', '4');
INSERT INTO `sys_user_role` VALUES ('132', '4');
INSERT INTO `sys_user_role` VALUES ('133', '4');
INSERT INTO `sys_user_role` VALUES ('134', '4');
INSERT INTO `sys_user_role` VALUES ('135', '4');
INSERT INTO `sys_user_role` VALUES ('136', '4');
INSERT INTO `sys_user_role` VALUES ('137', '4');
INSERT INTO `sys_user_role` VALUES ('138', '4');
INSERT INTO `sys_user_role` VALUES ('139', '4');
INSERT INTO `sys_user_role` VALUES ('140', '4');
INSERT INTO `sys_user_role` VALUES ('141', '4');
INSERT INTO `sys_user_role` VALUES ('142', '4');
INSERT INTO `sys_user_role` VALUES ('143', '4');
INSERT INTO `sys_user_role` VALUES ('144', '4');
INSERT INTO `sys_user_role` VALUES ('145', '4');
INSERT INTO `sys_user_role` VALUES ('146', '4');
INSERT INTO `sys_user_role` VALUES ('147', '4');
INSERT INTO `sys_user_role` VALUES ('148', '4');
INSERT INTO `sys_user_role` VALUES ('149', '4');
INSERT INTO `sys_user_role` VALUES ('150', '4');
INSERT INTO `sys_user_role` VALUES ('151', '4');
INSERT INTO `sys_user_role` VALUES ('152', '4');
INSERT INTO `sys_user_role` VALUES ('153', '4');
INSERT INTO `sys_user_role` VALUES ('154', '4');
INSERT INTO `sys_user_role` VALUES ('155', '4');
INSERT INTO `sys_user_role` VALUES ('156', '4');
INSERT INTO `sys_user_role` VALUES ('157', '4');
INSERT INTO `sys_user_role` VALUES ('158', '4');
INSERT INTO `sys_user_role` VALUES ('159', '4');
INSERT INTO `sys_user_role` VALUES ('160', '4');
INSERT INTO `sys_user_role` VALUES ('161', '4');
INSERT INTO `sys_user_role` VALUES ('162', '4');
INSERT INTO `sys_user_role` VALUES ('163', '4');
INSERT INTO `sys_user_role` VALUES ('164', '4');
INSERT INTO `sys_user_role` VALUES ('165', '4');
INSERT INTO `sys_user_role` VALUES ('166', '4');
INSERT INTO `sys_user_role` VALUES ('167', '4');
INSERT INTO `sys_user_role` VALUES ('168', '4');
INSERT INTO `sys_user_role` VALUES ('169', '4');
INSERT INTO `sys_user_role` VALUES ('170', '4');
INSERT INTO `sys_user_role` VALUES ('171', '4');
INSERT INTO `sys_user_role` VALUES ('172', '4');
INSERT INTO `sys_user_role` VALUES ('173', '4');
INSERT INTO `sys_user_role` VALUES ('174', '4');
INSERT INTO `sys_user_role` VALUES ('175', '4');
INSERT INTO `sys_user_role` VALUES ('176', '4');
INSERT INTO `sys_user_role` VALUES ('177', '4');
INSERT INTO `sys_user_role` VALUES ('178', '4');
INSERT INTO `sys_user_role` VALUES ('179', '4');
INSERT INTO `sys_user_role` VALUES ('180', '4');
INSERT INTO `sys_user_role` VALUES ('181', '4');
INSERT INTO `sys_user_role` VALUES ('182', '4');
INSERT INTO `sys_user_role` VALUES ('183', '4');
INSERT INTO `sys_user_role` VALUES ('184', '4');
INSERT INTO `sys_user_role` VALUES ('185', '4');
INSERT INTO `sys_user_role` VALUES ('186', '4');
INSERT INTO `sys_user_role` VALUES ('187', '4');
INSERT INTO `sys_user_role` VALUES ('188', '4');
INSERT INTO `sys_user_role` VALUES ('189', '4');
INSERT INTO `sys_user_role` VALUES ('190', '4');
INSERT INTO `sys_user_role` VALUES ('191', '4');
INSERT INTO `sys_user_role` VALUES ('192', '4');
INSERT INTO `sys_user_role` VALUES ('193', '4');
INSERT INTO `sys_user_role` VALUES ('194', '4');
INSERT INTO `sys_user_role` VALUES ('195', '4');
INSERT INTO `sys_user_role` VALUES ('196', '4');
INSERT INTO `sys_user_role` VALUES ('197', '4');
INSERT INTO `sys_user_role` VALUES ('198', '4');
INSERT INTO `sys_user_role` VALUES ('199', '4');
INSERT INTO `sys_user_role` VALUES ('200', '4');
INSERT INTO `sys_user_role` VALUES ('201', '4');
INSERT INTO `sys_user_role` VALUES ('202', '4');
INSERT INTO `sys_user_role` VALUES ('203', '4');
INSERT INTO `sys_user_role` VALUES ('204', '4');
INSERT INTO `sys_user_role` VALUES ('205', '4');
INSERT INTO `sys_user_role` VALUES ('206', '4');
INSERT INTO `sys_user_role` VALUES ('207', '4');
INSERT INTO `sys_user_role` VALUES ('208', '4');
INSERT INTO `sys_user_role` VALUES ('209', '4');
INSERT INTO `sys_user_role` VALUES ('210', '4');
INSERT INTO `sys_user_role` VALUES ('211', '4');
INSERT INTO `sys_user_role` VALUES ('212', '4');
INSERT INTO `sys_user_role` VALUES ('213', '4');
INSERT INTO `sys_user_role` VALUES ('214', '4');
INSERT INTO `sys_user_role` VALUES ('215', '4');
INSERT INTO `sys_user_role` VALUES ('216', '4');
INSERT INTO `sys_user_role` VALUES ('217', '4');
INSERT INTO `sys_user_role` VALUES ('218', '4');
INSERT INTO `sys_user_role` VALUES ('219', '4');
INSERT INTO `sys_user_role` VALUES ('220', '4');
INSERT INTO `sys_user_role` VALUES ('221', '4');
INSERT INTO `sys_user_role` VALUES ('222', '4');
INSERT INTO `sys_user_role` VALUES ('223', '4');
INSERT INTO `sys_user_role` VALUES ('224', '4');
INSERT INTO `sys_user_role` VALUES ('225', '4');
INSERT INTO `sys_user_role` VALUES ('226', '4');
INSERT INTO `sys_user_role` VALUES ('227', '4');
INSERT INTO `sys_user_role` VALUES ('228', '4');
INSERT INTO `sys_user_role` VALUES ('229', '4');
INSERT INTO `sys_user_role` VALUES ('230', '4');
INSERT INTO `sys_user_role` VALUES ('231', '4');
INSERT INTO `sys_user_role` VALUES ('232', '4');
INSERT INTO `sys_user_role` VALUES ('233', '4');
INSERT INTO `sys_user_role` VALUES ('234', '4');
INSERT INTO `sys_user_role` VALUES ('235', '4');
INSERT INTO `sys_user_role` VALUES ('236', '4');
INSERT INTO `sys_user_role` VALUES ('237', '4');
INSERT INTO `sys_user_role` VALUES ('238', '4');
INSERT INTO `sys_user_role` VALUES ('239', '4');
INSERT INTO `sys_user_role` VALUES ('240', '4');
INSERT INTO `sys_user_role` VALUES ('241', '4');
INSERT INTO `sys_user_role` VALUES ('242', '4');
INSERT INTO `sys_user_role` VALUES ('243', '4');
INSERT INTO `sys_user_role` VALUES ('244', '4');
INSERT INTO `sys_user_role` VALUES ('245', '4');
INSERT INTO `sys_user_role` VALUES ('246', '4');
INSERT INTO `sys_user_role` VALUES ('247', '4');
INSERT INTO `sys_user_role` VALUES ('248', '4');
INSERT INTO `sys_user_role` VALUES ('249', '4');
INSERT INTO `sys_user_role` VALUES ('250', '4');
INSERT INTO `sys_user_role` VALUES ('251', '4');
INSERT INTO `sys_user_role` VALUES ('252', '4');
INSERT INTO `sys_user_role` VALUES ('253', '4');
INSERT INTO `sys_user_role` VALUES ('254', '4');
INSERT INTO `sys_user_role` VALUES ('255', '4');
INSERT INTO `sys_user_role` VALUES ('256', '4');
INSERT INTO `sys_user_role` VALUES ('257', '4');
INSERT INTO `sys_user_role` VALUES ('258', '4');
INSERT INTO `sys_user_role` VALUES ('259', '4');
INSERT INTO `sys_user_role` VALUES ('260', '4');
INSERT INTO `sys_user_role` VALUES ('261', '4');
INSERT INTO `sys_user_role` VALUES ('262', '4');
INSERT INTO `sys_user_role` VALUES ('263', '4');
INSERT INTO `sys_user_role` VALUES ('264', '4');
INSERT INTO `sys_user_role` VALUES ('265', '4');
INSERT INTO `sys_user_role` VALUES ('266', '4');
INSERT INTO `sys_user_role` VALUES ('267', '4');
INSERT INTO `sys_user_role` VALUES ('268', '4');
INSERT INTO `sys_user_role` VALUES ('269', '4');
INSERT INTO `sys_user_role` VALUES ('270', '4');
INSERT INTO `sys_user_role` VALUES ('271', '4');
INSERT INTO `sys_user_role` VALUES ('272', '4');
INSERT INTO `sys_user_role` VALUES ('273', '4');
INSERT INTO `sys_user_role` VALUES ('274', '4');
INSERT INTO `sys_user_role` VALUES ('275', '4');
INSERT INTO `sys_user_role` VALUES ('276', '4');
INSERT INTO `sys_user_role` VALUES ('277', '4');
INSERT INTO `sys_user_role` VALUES ('278', '4');
INSERT INTO `sys_user_role` VALUES ('279', '4');
INSERT INTO `sys_user_role` VALUES ('280', '4');
INSERT INTO `sys_user_role` VALUES ('281', '4');
INSERT INTO `sys_user_role` VALUES ('282', '4');
INSERT INTO `sys_user_role` VALUES ('283', '4');
INSERT INTO `sys_user_role` VALUES ('284', '4');
INSERT INTO `sys_user_role` VALUES ('285', '4');
INSERT INTO `sys_user_role` VALUES ('286', '4');
INSERT INTO `sys_user_role` VALUES ('287', '4');
INSERT INTO `sys_user_role` VALUES ('288', '4');
INSERT INTO `sys_user_role` VALUES ('289', '4');
INSERT INTO `sys_user_role` VALUES ('290', '4');
INSERT INTO `sys_user_role` VALUES ('291', '4');
INSERT INTO `sys_user_role` VALUES ('292', '4');
INSERT INTO `sys_user_role` VALUES ('293', '4');
INSERT INTO `sys_user_role` VALUES ('294', '4');
INSERT INTO `sys_user_role` VALUES ('295', '4');
INSERT INTO `sys_user_role` VALUES ('296', '4');
INSERT INTO `sys_user_role` VALUES ('297', '4');
INSERT INTO `sys_user_role` VALUES ('298', '4');
INSERT INTO `sys_user_role` VALUES ('299', '4');
INSERT INTO `sys_user_role` VALUES ('300', '4');
INSERT INTO `sys_user_role` VALUES ('301', '4');
INSERT INTO `sys_user_role` VALUES ('302', '4');
INSERT INTO `sys_user_role` VALUES ('303', '4');
INSERT INTO `sys_user_role` VALUES ('304', '4');
INSERT INTO `sys_user_role` VALUES ('305', '4');
INSERT INTO `sys_user_role` VALUES ('306', '4');
INSERT INTO `sys_user_role` VALUES ('307', '1');

-- ----------------------------
-- Table structure for sys_warning
-- ----------------------------
DROP TABLE IF EXISTS `sys_warning`;
CREATE TABLE `sys_warning` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IMEI` varchar(255) COMMENT '设备编号',
  `warning_type` varchar(50) COMMENT '产品类型',
  `warning_dis` varchar(255) COMMENT '报警处理说明',
  `count` int(11) COMMENT '报警次数',
  `status` varchar(50) COMMENT '状态：1：已处理，0：未处理',
  `create_time` datetime ,
  `update_time` datetime ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_warning
-- ----------------------------
INSERT INTO `sys_warning` VALUES ('151', '867726034908246', '14', '已处理', '42', '1', '2019-07-25 10:38:31', '2019-09-17 17:33:48');
INSERT INTO `sys_warning` VALUES ('152', '867726034908246', '1', null, '3', '0', '2019-07-25 17:13:42', '2019-09-12 11:05:49');
INSERT INTO `sys_warning` VALUES ('153', '867726034908246', '2', null, '4', '0', '2019-07-25 17:14:16', '2019-09-12 13:05:16');
INSERT INTO `sys_warning` VALUES ('158', '867726034908246', '10', null, '3', '0', '2019-08-19 15:39:10', '2019-08-30 15:31:47');
INSERT INTO `sys_warning` VALUES ('159', '867726034908246', '11', null, '10', '0', '2019-08-19 15:46:39', '2019-09-16 17:47:03');
INSERT INTO `sys_warning` VALUES ('160', '867726034545394', '1', null, '2', '0', '2019-09-03 15:05:19', '2019-09-12 10:18:12');
INSERT INTO `sys_warning` VALUES ('161', '867726034521478', '1', null, '1', '0', '2019-09-03 15:05:24', '2019-09-12 11:05:27');
INSERT INTO `sys_warning` VALUES ('162', '867726034493363', '1', null, '1', '0', '2019-09-03 15:07:02', '2019-09-12 13:05:10');

-- ----------------------------
-- Table structure for sys_warning_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_warning_log`;
CREATE TABLE `sys_warning_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IMEI` varchar(255) COMMENT '设备编号',
  `warning_type` varchar(50) COMMENT '产品类型',
  `warning_dis` varchar(255) COMMENT '报警处理说明',
  `create_time` datetime ,
  `update_time` datetime ,
  `remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_warning_log
-- ----------------------------
INSERT INTO `sys_warning_log` VALUES ('33277', '867726034908246', '14', null, '2019-07-25 10:38:30', '2019-07-25 10:38:30', '__guid=87274053.948383921600287600.1567490357915.4602; ASP.NET_SessionId=jrgvtymgba34gfi3tceg3ktu; aspcn20181129=AdminPASS=past&users_zh=%e5%a4%a7%e5%85%b4%e4%ba%a6%e5%ba%842019%e9%a1%b9%e7%9b%ae&users_xm=%e5%a4%a7%e5%85%b4%e4%ba%a6%e5%ba%842019%e9%a1%b9%e7%9b%ae&users_qx=%e5%ad%90%e5%b8%90%e6%88%b7&bm_name=%e8%b5%9b%e7%89%b9%e5%a8%81%e5%b0%94&users_rjbt=%e6%b6%88%e9%98%b2%e7%89%a9%e8%81%94%e7%bd%91%e5%b9%b3%e5%8f%b0&users_cs=%e5%8c%97%e4%ba%ac&bm_id=20181206132234&users_dx_apiid=SN7OlAxt3bS66b5zr8gqWpZNQ7oa&users_dx_secret=auuefhTjpo32hlWUa3d7Y2pyKnka&users_dx_postip=https%3a%2f%2fdevice.api.ct10649.com&users_dx_postport=8743&users_dx_callbackurl=https%3a%2f%2flh.link-home.com%3a8443%2fhome%2freceive_DX&users_yd_app_key=73WDhLa8A7r0ks9CLVQEt1d5ceU; monitor_count=2; aspcn_sb_sbbh=sb_sbbh=867726034521478');
INSERT INTO `sys_warning_log` VALUES ('33278', '867726034908246', '14', null, '2019-07-25 11:09:25', '2019-07-25 11:09:25', null);
INSERT INTO `sys_warning_log` VALUES ('33279', '867726034908246', '14', '已处理2019年7月25日16:56:54', '2019-07-25 13:39:07', '2019-07-25 13:39:07', null);
INSERT INTO `sys_warning_log` VALUES ('33280', '867726034908246', '14', '已处理', '2019-07-25 17:02:00', '2019-07-25 17:02:00', null);
INSERT INTO `sys_warning_log` VALUES ('33281', '867726034908246', '14', null, '2019-07-25 17:03:09', '2019-07-25 17:03:09', null);
INSERT INTO `sys_warning_log` VALUES ('33282', '867726034908246', '14', '已查看', '2019-07-25 17:07:09', '2019-07-25 17:07:09', null);
INSERT INTO `sys_warning_log` VALUES ('33283', '867726034908246', '1', '已经处理', '2019-07-25 17:13:42', '2019-07-25 17:13:42', null);
INSERT INTO `sys_warning_log` VALUES ('33284', '867726034908246', '2', '已经处理', '2019-07-25 17:14:16', '2019-07-25 17:14:16', null);
INSERT INTO `sys_warning_log` VALUES ('33285', '867726034908246', '14', null, '2019-07-25 17:16:17', '2019-07-25 17:16:17', null);
INSERT INTO `sys_warning_log` VALUES ('33286', '867726034908246', '14', null, '2019-07-25 18:10:20', '2019-07-25 18:10:20', null);
INSERT INTO `sys_warning_log` VALUES ('33287', '867726034908246', '14', null, '2019-07-30 16:15:32', '2019-07-30 16:15:32', null);
INSERT INTO `sys_warning_log` VALUES ('33288', '867726034908246', '14', null, '2019-07-30 16:15:56', '2019-07-30 16:15:56', null);
INSERT INTO `sys_warning_log` VALUES ('33289', '867726034908246', '14', '', '2019-07-30 16:16:40', '2019-07-30 16:16:40', null);
INSERT INTO `sys_warning_log` VALUES ('33290', '867726034908246', '14', null, '2019-08-02 15:32:32', '2019-08-02 15:32:32', null);
INSERT INTO `sys_warning_log` VALUES ('33291', '867726034908246', '14', null, '2019-08-02 15:33:13', '2019-08-02 15:33:13', null);
INSERT INTO `sys_warning_log` VALUES ('33292', '867726034908246', '14', null, '2019-08-02 17:36:51', '2019-08-02 17:36:51', null);
INSERT INTO `sys_warning_log` VALUES ('33293', '867726034908246', '14', '处理了', '2019-08-02 17:36:57', '2019-08-02 17:36:57', null);
INSERT INTO `sys_warning_log` VALUES ('33294', '867726034908246', '14', null, '2019-08-12 11:59:18', '2019-08-12 11:59:18', null);
INSERT INTO `sys_warning_log` VALUES ('33295', '867726034908246', '14', null, '2019-08-12 13:32:27', '2019-08-12 13:32:27', null);
INSERT INTO `sys_warning_log` VALUES ('33296', '867726034908246', '14', '已处理', '2019-08-12 13:38:20', '2019-08-12 13:38:20', null);
INSERT INTO `sys_warning_log` VALUES ('33297', '867726034908246', '14', null, '2019-08-15 15:07:32', '2019-08-15 15:07:32', null);
INSERT INTO `sys_warning_log` VALUES ('33298', '867726034908246', '10', '22', '2019-08-19 15:39:10', '2019-08-19 15:39:10', null);
INSERT INTO `sys_warning_log` VALUES ('33299', '867726034908246', '11', null, '2019-08-19 15:46:39', '2019-08-19 15:46:39', null);
INSERT INTO `sys_warning_log` VALUES ('33300', '867726034908246', '11', '33', '2019-08-19 16:01:01', '2019-08-19 16:01:01', null);
INSERT INTO `sys_warning_log` VALUES ('33301', '867726034908246', '14', 'aa\n', '2019-08-19 18:03:05', '2019-08-19 18:03:05', null);
INSERT INTO `sys_warning_log` VALUES ('33302', '867726034908246', '11', null, '2019-08-20 11:27:51', '2019-08-20 11:27:51', null);
INSERT INTO `sys_warning_log` VALUES ('33303', '867726034908246', '14', null, '2019-08-20 11:27:58', '2019-08-20 11:27:58', null);
INSERT INTO `sys_warning_log` VALUES ('33304', '867726034908246', '10', '已处理', '2019-08-21 09:09:40', '2019-08-21 09:09:40', null);
INSERT INTO `sys_warning_log` VALUES ('33305', '867726034908246', '11', null, '2019-08-21 10:01:07', '2019-08-21 10:01:07', null);
INSERT INTO `sys_warning_log` VALUES ('33306', '867726034908246', '11', '已恢复', '2019-08-21 10:41:25', '2019-08-21 10:41:25', null);
INSERT INTO `sys_warning_log` VALUES ('33307', '867726034908246', '11', '已处理', '2019-08-21 14:53:05', '2019-08-21 14:53:05', null);
INSERT INTO `sys_warning_log` VALUES ('33308', '867726034908246', '11', null, '2019-08-21 15:12:55', '2019-08-21 15:12:55', null);
INSERT INTO `sys_warning_log` VALUES ('33309', '867726034908246', '14', '20190822已处理', '2019-08-22 10:55:05', '2019-08-22 10:55:05', null);
INSERT INTO `sys_warning_log` VALUES ('33310', '867726034908246', '1', null, '2019-08-22 11:52:59', '2019-08-22 11:52:59', null);
INSERT INTO `sys_warning_log` VALUES ('33311', '867726034908246', '2', null, '2019-08-22 11:53:35', '2019-08-22 11:53:35', null);
INSERT INTO `sys_warning_log` VALUES ('33312', '867726034908246', '14', null, '2019-08-22 12:03:32', '2019-08-22 12:03:32', null);
INSERT INTO `sys_warning_log` VALUES ('33313', '867726034908246', '14', null, '2019-08-22 12:06:54', '2019-08-22 12:06:54', null);
INSERT INTO `sys_warning_log` VALUES ('33314', '867726034908246', '14', null, '2019-08-22 12:07:00', '2019-08-22 12:07:00', null);
INSERT INTO `sys_warning_log` VALUES ('33315', '867726034908246', '14', null, '2019-08-22 12:07:09', '2019-08-22 12:07:09', null);
INSERT INTO `sys_warning_log` VALUES ('33316', '867726034908246', '14', null, '2019-08-22 12:07:16', '2019-08-22 12:07:16', null);
INSERT INTO `sys_warning_log` VALUES ('33317', '867726034908246', '14', null, '2019-08-26 14:53:46', '2019-08-26 14:53:46', null);
INSERT INTO `sys_warning_log` VALUES ('33318', '867726034908246', '14', '已处理', '2019-08-26 14:53:52', '2019-08-26 14:53:52', null);
INSERT INTO `sys_warning_log` VALUES ('33319', '867726034908246', '10', '已处理', '2019-08-26 14:54:10', '2019-08-26 14:54:10', null);
INSERT INTO `sys_warning_log` VALUES ('33320', '867726034908246', '11', null, '2019-08-27 09:30:49', '2019-08-27 09:30:49', null);
INSERT INTO `sys_warning_log` VALUES ('33321', '867726034908246', '11', null, '2019-08-30 11:31:26', '2019-08-30 11:31:26', null);
INSERT INTO `sys_warning_log` VALUES ('33322', '867726034908246', '14', null, '2019-08-30 11:39:28', '2019-08-30 11:39:28', null);
INSERT INTO `sys_warning_log` VALUES ('33323', '867726034908246', '11', null, '2019-09-02 10:23:46', '2019-09-02 10:23:46', null);
INSERT INTO `sys_warning_log` VALUES ('33324', '867726034908246', '14', null, '2019-09-02 11:43:43', '2019-09-02 11:43:43', null);
INSERT INTO `sys_warning_log` VALUES ('33325', '867726034908246', '1', null, '2019-09-02 18:18:26', '2019-09-02 18:18:26', null);
INSERT INTO `sys_warning_log` VALUES ('33326', '867726034908246', '2', null, '2019-09-02 18:19:01', '2019-09-02 18:19:01', null);
INSERT INTO `sys_warning_log` VALUES ('33327', '867726034908246', '14', null, '2019-09-02 18:19:30', '2019-09-02 18:19:30', null);
INSERT INTO `sys_warning_log` VALUES ('33328', '867726034908246', '2', null, '2019-09-02 18:19:49', '2019-09-02 18:19:49', null);
INSERT INTO `sys_warning_log` VALUES ('33331', '867726034545394', '1', null, '2019-09-03 15:05:19', '2019-09-03 15:05:19', '232042');
INSERT INTO `sys_warning_log` VALUES ('33332', '867726034521478', '1', null, '2019-09-03 15:05:24', '2019-09-03 15:05:24', '232041');
INSERT INTO `sys_warning_log` VALUES ('33333', '867726034545394', '1', null, '2019-09-03 15:07:01', '2019-09-03 15:07:01', '232044');
INSERT INTO `sys_warning_log` VALUES ('33334', '867726034493363', '1', '已处理', '2019-09-03 15:07:02', '2019-09-03 15:07:02', '232043');
INSERT INTO `sys_warning_log` VALUES ('33335', '867726034908246', '14', null, '2019-09-06 09:06:43', '2019-09-06 09:06:43', null);
INSERT INTO `sys_warning_log` VALUES ('33336', '867726034908246', '14', null, '2019-09-06 09:07:08', '2019-09-06 09:07:08', null);
INSERT INTO `sys_warning_log` VALUES ('33337', '867726034908246', '14', null, '2019-09-06 14:20:24', '2019-09-06 14:20:24', null);
INSERT INTO `sys_warning_log` VALUES ('33338', '867726034908246', '14', null, '2019-09-07 09:46:33', '2019-09-07 09:46:33', null);
INSERT INTO `sys_warning_log` VALUES ('33339', '867726034908246', '14', null, '2019-09-07 14:53:15', '2019-09-07 14:53:15', null);
INSERT INTO `sys_warning_log` VALUES ('33340', '867726034908246', '14', null, '2019-09-07 15:39:23', '2019-09-07 15:39:23', null);
INSERT INTO `sys_warning_log` VALUES ('33341', '867726034908246', '14', null, '2019-09-07 15:40:50', '2019-09-07 15:40:50', null);
INSERT INTO `sys_warning_log` VALUES ('33342', '867726034908246', '14', '已处理', '2019-09-07 15:40:57', '2019-09-07 15:40:57', null);
INSERT INTO `sys_warning_log` VALUES ('33343', '867726034908246', '14', null, '2019-09-08 12:16:15', '2019-09-08 12:16:15', null);
INSERT INTO `sys_warning_log` VALUES ('33344', '编号', '1', null, '2019-09-10 11:39:21', '2019-09-10 11:39:21', '<table width=\"100%\"> \n <tbody>\n  <tr> \n   <td>编号</td>\n   <td width=\"1\" style=\"text-align:right;\"><span class=\"dx-vam\">&nbsp;</span></td> \n  </tr> \n </tbody>\n</table>');
INSERT INTO `sys_warning_log` VALUES ('33345', '867726034908246', '14', null, '2019-09-17 11:49:41', '2019-09-17 11:49:41', null);

-- ----------------------------
-- Table structure for tb_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_token`;
CREATE TABLE `tb_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime COMMENT '过期时间',
  `update_time` datetime COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';

-- ----------------------------
-- Records of tb_token
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COMMENT '用户名',
  `mobile` varchar(20) COMMENT '手机号',
  `password` varchar(64) COMMENT '密码',
  `token` varchar(100) DEFAULT NULL,
  `create_time` datetime COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '13888888888', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'f991a11001c0a4c2abcf75899dde72c4', '2017-03-23 22:37:41');

-- ----------------------------
-- Table structure for tb_user_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_department`;
CREATE TABLE `tb_user_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) COMMENT '用户ID',
  `department_id` bigint(20) COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与部门对应关系';

-- ----------------------------
-- Records of tb_user_department
-- ----------------------------
