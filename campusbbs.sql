/*
Navicat MySQL Data Transfer

Source Server         : 47.107.227.121
Source Server Version : 50562
Source Host           : 47.107.227.121:3306
Source Database       : campusbbs

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-06-21 22:56:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bbs_user
-- ----------------------------
DROP TABLE IF EXISTS `bbs_user`;
CREATE TABLE `bbs_user` (
  `userName` varchar(32) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_user
-- ----------------------------
INSERT INTO `bbs_user` VALUES ('acm', '123456');
INSERT INTO `bbs_user` VALUES ('aoyou', '123456');
INSERT INTO `bbs_user` VALUES ('cdlcdl', 'cdlcdl');
INSERT INTO `bbs_user` VALUES ('chang', '147852369');
INSERT INTO `bbs_user` VALUES ('chuangzao', '123456');
INSERT INTO `bbs_user` VALUES ('dianzisheji', '123456');
INSERT INTO `bbs_user` VALUES ('ershou', '123456');
INSERT INTO `bbs_user` VALUES ('EsauLu', '123456');
INSERT INTO `bbs_user` VALUES ('hanyu', '123456');
INSERT INTO `bbs_user` VALUES ('happy', '19931103cf');
INSERT INTO `bbs_user` VALUES ('hhh', '123456');
INSERT INTO `bbs_user` VALUES ('jinrongzhengquan', '123456');
INSERT INTO `bbs_user` VALUES ('kuaijixue', '123456');
INSERT INTO `bbs_user` VALUES ('lalaka', '1111111111');
INSERT INTO `bbs_user` VALUES ('lalala', '111111');
INSERT INTO `bbs_user` VALUES ('lpk', 'lpk');
INSERT INTO `bbs_user` VALUES ('lunhua', '123456');
INSERT INTO `bbs_user` VALUES ('lzw', '123456');
INSERT INTO `bbs_user` VALUES ('malie', '123456');
INSERT INTO `bbs_user` VALUES ('meishu', '123456');
INSERT INTO `bbs_user` VALUES ('meizi', '123456');
INSERT INTO `bbs_user` VALUES ('moshu', '123456');
INSERT INTO `bbs_user` VALUES ('plane', '123456');
INSERT INTO `bbs_user` VALUES ('qiche', '123456');
INSERT INTO `bbs_user` VALUES ('shao', '123456');
INSERT INTO `bbs_user` VALUES ('shetuanlianhe', '123456');
INSERT INTO `bbs_user` VALUES ('shichang', '123456');
INSERT INTO `bbs_user` VALUES ('taolun', '123456');
INSERT INTO `bbs_user` VALUES ('tongxunshe', '123456');
INSERT INTO `bbs_user` VALUES ('woshishui', '111111');
INSERT INTO `bbs_user` VALUES ('xiaoming', '123456');
INSERT INTO `bbs_user` VALUES ('xinli', '123456');
INSERT INTO `bbs_user` VALUES ('xueshenghui', '123456');
INSERT INTO `bbs_user` VALUES ('yingyu', '123456');
INSERT INTO `bbs_user` VALUES ('yishutuan', '123456');
INSERT INTO `bbs_user` VALUES ('zaozhisheji', '123456');
INSERT INTO `bbs_user` VALUES ('zhiyefazhan', '123456');
INSERT INTO `bbs_user` VALUES ('zhiyuanzhe', '123456');
INSERT INTO `bbs_user` VALUES ('zhj', '123456');

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `clubName` varchar(32) NOT NULL,
  `clubIcon` varchar(64) NOT NULL DEFAULT '',
  `clubDescribe` varchar(2048) NOT NULL DEFAULT '',
  `clubTypeId` int(11) DEFAULT '0',
  PRIMARY KEY (`clubName`),
  KEY `clubtype` (`clubTypeId`),
  CONSTRAINT `clubtype` FOREIGN KEY (`clubTypeId`) REFERENCES `club_type` (`clubTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO `club` VALUES ('ACM协会', '1480775134375.jpg', 'ACM协会旨在促进计算机编程爱好者的信息交流，培养同学们的程序设计，团队协作能力，为培养有实践能力的编程技术过硬的人才打下坚实的基础。\r\n        ACM协会是大家的协会，将以交流共进，服务于人的理念面向广大会员，为适应广大计算机及编程爱好者对计算机编程技术的更高层次的追求，推广、学习、交流相关编程技术和为学校营造一个更好的学习科研氛围而成立；致力于实现技术及资源的真正共享和开源思想的传播，为个人发展及就业奠定良好的基础。', '2');
INSERT INTO `club` VALUES ('中国造制设计协会', '1480769422828.jpg', '吉林大学珠海学院学生社团联合会中国造制设计协会是一个汇聚众多设计爱好者的团体。我们以提高学生各方面工作能力为目标，注重对设计语言的创造、对文化思想的表达，为传统人文精神注入新鲜的现代活力。致所有有想法的人：design for ourself.', '2');
INSERT INTO `club` VALUES ('二手交易', '1480760399968.jpg', '本版仅限普通网友出售交换二手 闲置物品\r\n商家发布广告一律删除\r\n\r\n1.本版块只是一个供大家发布信息的平台，不承担任何法律责任。\r\n2.请使用第三方交易平台(如淘宝闲鱼)或当面交易，请勿先款或先货！\r\n3.请勿发布违规 国家禁止交易出售的物品', '4');
INSERT INTO `club` VALUES ('会计学协会', '1480775711890.png', '会计学协会，简称会协，成立于2011年，是一个给我院会计、财务管理、金融经济等兴趣爱好者及在会计领域有创新意向的同学提供一个广阔而专业的学习与经济运作互动平台的学生组织。', '2');
INSERT INTO `club` VALUES ('创造文学社', '1480775943750.jpg', '', '3');
INSERT INTO `club` VALUES ('大学生职业发展协会', '1480774288093.jpg', '大学生职业发展协会（JIUZH Career Development Association for Students），是在吉林大学珠海学院招生与就业处指导下，由学生自发组建的一个集学术性、专业性、指导性、服务性为一体的学生社团组织，是学校联系学生与企业的桥梁和纽带。在这里，我们通过多渠道获取就业信息以及大量的职场技能培训，帮助大学生树立正确的职业价值观，培养良好的就业意识，从而达到全面提高我校学生的职业素养的目的。迈向职场的第一步，大学生职业发展协会，期待你的加入！', '2');
INSERT INTO `club` VALUES ('大学生艺术团', '1480772932718.png', '吉林大学珠海学院大学生艺术团（简称：校艺术团）于2008年成立，是吉林大学珠海学院学生的群众性艺术类组织，依照国家的法律、法规、学院的相关规定和本组织的章程，独立自主的开展艺术实践和群众性文艺活动的学生艺术团体。\r\n　　校大学生艺术团现有秘书处、组织部、媒体宣传部、舞台美术部、歌唱队、器乐队、舞蹈队、主持人队、礼仪模特队、戏剧表演队。发展至今，集合前演出和幕后工作贯穿一线，“舞、唱、弹、说、演”于一体的综合化、专业化文艺团体。', '1');
INSERT INTO `club` VALUES ('大学生通讯社', '1480771573781.png', '吉林大学珠海学院大学生通讯社是面向 全院师生的传媒宣传平台与机构，隶属于学院团委，是学院五个院级学生组织之一，由新闻部、编辑部、摄影部、多媒体技术部、广播站、秘书处、新媒体部七个部门组成，是一个集合众多热衷于新闻报道、文字编辑、版面设计、摄影、摄像、校园广播、微信平台管理等人才的活动团体。其宗旨是建立一支政治性强、业务精、纪律严、作风正的校园学生传媒队伍。', '1');
INSERT INTO `club` VALUES ('学生会', '1480770161734.png', '“学生会”这个词，想必你们都不陌生。在初中，有学生会；在高中也有学生会。学生会，顾名思义，就是学生学什么，就会什么。\r\n学生会，就是一个让你涨知识的组织。了解学生会之后我保证它会给你带来无限惊喜(✿✪‿✪｡)ﾉ！！！并不是想象中的那么死板无趣！！！唯有加入过学生会，你才会真正了解到学生会有多么精彩！！╮(╯▽╰)╭\r\n很多新生都会有疑惑！学生会到底是什么？在这里我们来全新全方位地认识它了解它！\r\n接下来就让我来向大家展示！这是怎样一个既能充分发挥你的才华又能让你受益匪浅的平台！', '1');
INSERT INTO `club` VALUES ('学生社团联合会', '1480770942687.jpg', '吉林大学珠海学院学生社团联合会是在共青团吉林大学珠海学院委员会的直接领导下，管理社团工作、服务社团发展的学生组织，自2006年4月2日成立以来，院学生社团联合会以“丰富校园文化生活，提高学生综合素质”为宗旨，始终扮演着提升校园文化品味、引领校园文化时尚的重要角色。', '1');
INSERT INTO `club` VALUES ('市场营销协会', '1480776721734.jpg', '市场营销协会是在吉林大学珠海学院工商管理系的指导下，由有志于、热衷于从事市场营销研究策划、从事市场营销创新与实践活动的人员组成的院级蛮专业的，不要钱的社团组织。\r\n        协会的理念是学习现代营销理论，寻求营销实践平台，营造营销氛围，造就现代营销人才。学以致用，为踏入社会做一个提前热身，为自己人生价值增加一个沉甸甸的筹码。\r\n        本协会通过正确积极的途径引导会员了解社会，适应社会，锻炼自我，提高专业素质，传播营销理论，展示我院大学生的风采，繁荣校园文化。', '2');
INSERT INTO `club` VALUES ('心理协会', '1480775273906.jpg', ' 吉珠院心协成立于2006年，是热衷于心理健康教育的在校学生组成的学生社团，由吉林大学珠海学院大学生心理健康教育中心指导，在学院团委和社团联合会的管理和监督下开展活动。在院学生社团联合会和心理健康教育中心的领导下于2010年11月成立全员各系心理协会分会。\r\n        心理协会以“自解困惑、帮助他人”为宗旨，以“齐心协力”为口号，倡导“相亲相爱一家人”的精神。通过学习心理健康的相关理论，提高自身心理素质，同时宣传和普及心理健康知识，增强广大在校学生的心理素质和心理健康意识。', '1');
INSERT INTO `club` VALUES ('汽车协会', '1480774749781.jpg', ' 吉林大学珠海学院学生社团联合会汽车协会成立于2007年，是依托于本院车辆工程专业所开设的。我们一直以丰富学生的课余生活，培养学生对汽车的兴趣，增强学生对课外知识的获取，扩大学生的知识面为目的，使学生在大学生活中得到素质上的提高和精神上的满足。', '2');
INSERT INTO `club` VALUES ('电子设计协会', '1480769791390.jpg', '   电子设计协会是学院一个具有群体性的科普团队，一直以“理论联系实际、爱好培养专长、务实、创新、求真”为宗旨。开展各类设计制作，研发及经验交流为主，以培养同学们电子实际操作能力，提高会员的专业理论水平与实践操作技能为目的，旨在将全体会员培养成一支懂理论，强操作，会设计的应用性电子技术人才队伍，创造良好的科技氛围，推动校园文明建设。\r\n   协会成立以来，，在电子系全体老师的辛勤付出以及对协会的大力支持下，电子系多次获得国家级、省级电子设计竞赛奖项，取得了骄人成绩。', '2');
INSERT INTO `club` VALUES ('综合讨论', '1480760463562.png', '参与社区讨论 请遵守我国法律 和社区规则', '4');
INSERT INTO `club` VALUES ('美术协会', '1480776317437.jpg', '吉林大学珠海学院美术协会\r\n一个年轻和充满激情的协会，一个汇集了各路喜爱美术的人的群体。在玩中工作，在工作中成长，这是一个让人欲罢不能的地方！不管你会不会绘画，懂不懂美术，只要你喜欢美术，我们都欢迎你。我们玩的不仅仅是涂鸦，更多的是乐趣！', '3');
INSERT INTO `club` VALUES ('英语协会', '1480775840000.jpg', '英语协会是由英语爱好者组成的学生社团。从成立到现在，成功举办了英语角、free talk、晨读、话剧等众多大型活动。为广大学生创造了一个良好的英语学习环境和自我展现平台。', '3');
INSERT INTO `club` VALUES ('轮滑协会', '1480770690171.jpg', '', '3');
INSERT INTO `club` VALUES ('金融证券协会', '1480770405312.jpg', '金融证券协会简称“金协”，自2007年创办以来，在系团委，协会指导老师，院学生社团联合会和协会全体成员的支持下，经过九年的成长，在学院得到广大师生的喜爱。金协是学院一个专业性的学生组织，但活动对象是针对全院师生，没有专业限制。协会不仅定期邀请校内外知名专家及老师举行金融知识讲座，而且还拥有多个品牌活动，并成功举办了模拟炒股大赛、经济热点论坛大赛和贵金属模拟交易大赛。协会致力于分析解读金融行业前景，引导大学生走上正确的投资和理财道路，并为其日后的金融活动积累经验。作为学院最具影响力的协会之一，协会的规模不断壮大，而活跃的社团气氛和优秀的社团文化已吸引了5000多名学生加入成为会员。', '2');
INSERT INTO `club` VALUES ('青年志愿者协会', '1480772529593.jpg', '2006年6月7日，吉珠院青年志愿者协会正式成立。现共有九个职能部门：秘书处、组织部、公益部、传媒部、人事部、宣传部、外事部、监察部、牵手服务队。\r\n院青协下辖14个分会：青年志愿者协会艺术系分会、青年志愿者协会工商管理系分会、青年志愿者协会电子信息系分会、青年志愿者协会计算机科学与技术系分会、青年志愿者协会旅游管理系分会、青年志愿者协会机电工程系分会、青年志愿者协会中文系分会、青年志愿者协会行政管理系分会、青年志愿者协会外语系分会、青年志愿者协会化学与药学系分会、青年志愿者协会建筑系分会、青年志愿者协会国际贸易与金融系分会、青年志愿者协会物流与信息管理系分会、青年志愿者协会音乐舞蹈学院分会。\r\n为推动院青年志愿服务事业的发展，2010年我院青协还成立了专项服务队。\r\n', '1');
INSERT INTO `club` VALUES ('韩语协会', '1480774947703.jpg', '吉林大学珠海学院学生社团联合会韩语协会，简称“韩协”。成立于2007年11月26日，是我院成立较早，影响力较大的社团之一。来到韩语协会这个大家庭你不仅有机会学习到韩语，还能了解和亲身体验到丰富多彩的韩国文化，通过各种有趣的活动更能结识到来自不同地方的朋友，使你的大学生活更有意义。', '3');
INSERT INTO `club` VALUES ('马列主义学习研究学会', '1480776113265.jpg', ' 吉林大学珠海学院马列主义学习研究学会是在学院学生党总支的领导下，成立并发展的一个学生业余的政治性学术团体。学会以马列主义、毛泽东思想、邓小平理论、“三个代表”重要思想和科学发展观为指导，学会的宗旨是“学习马列著作，追求革命真理，了解中国国情，实践中国特色社会主义”。', '2');
INSERT INTO `club` VALUES ('魔术协会', '1480776523484.jpg', '吉林大学珠海学院魔术协会成立于2009年，设有主席团，才艺部，宣传部，秘书处，外联部，组织部，以及顾问团。来魔术协会并不需要你有很好的魔术基础，热爱魔术，喜欢看魔术表演，想学魔术，想交朋友，并且想锻炼自己能力的都可以来我们这个大家庭。才艺部以魔术为核心，培养魔术人才。其他部门呢除魔术外，还要着力于其它方面的工作，就是说除了能学到魔术外，还能得到其他方面的培训和学习，例如：拉赞助，写活动策划，公众号推送，ps,以及摄影摄像。任何部门都能学到魔术，就看你的积极性了。顾问团为协会老成员，主要负责在各部门挖掘人才，带领会员干事学习魔术，街魔，各类演出，商演，义演。', '3');

-- ----------------------------
-- Table structure for club_admin
-- ----------------------------
DROP TABLE IF EXISTS `club_admin`;
CREATE TABLE `club_admin` (
  `userName` varchar(32) NOT NULL,
  `clubName` varchar(32) NOT NULL,
  PRIMARY KEY (`userName`,`clubName`),
  KEY `clubName` (`clubName`),
  CONSTRAINT `club_admin_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `bbs_user` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `club_admin_ibfk_2` FOREIGN KEY (`clubName`) REFERENCES `club` (`clubName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club_admin
-- ----------------------------
INSERT INTO `club_admin` VALUES ('acm', 'ACM协会');
INSERT INTO `club_admin` VALUES ('Esaulu', 'ACM协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '中国造制设计协会');
INSERT INTO `club_admin` VALUES ('zaozhisheji', '中国造制设计协会');
INSERT INTO `club_admin` VALUES ('ershou', '二手交易');
INSERT INTO `club_admin` VALUES ('EsauLu', '二手交易');
INSERT INTO `club_admin` VALUES ('Esaulu', '会计学协会');
INSERT INTO `club_admin` VALUES ('kuaijixue', '会计学协会');
INSERT INTO `club_admin` VALUES ('chuangzao', '创造文学社');
INSERT INTO `club_admin` VALUES ('Esaulu', '创造文学社');
INSERT INTO `club_admin` VALUES ('Esaulu', '大学生职业发展协会');
INSERT INTO `club_admin` VALUES ('zhiyefazhan', '大学生职业发展协会');
INSERT INTO `club_admin` VALUES ('EsauLu', '大学生艺术团');
INSERT INTO `club_admin` VALUES ('yishutuan', '大学生艺术团');
INSERT INTO `club_admin` VALUES ('Esaulu', '大学生通讯社');
INSERT INTO `club_admin` VALUES ('tongxunshe', '大学生通讯社');
INSERT INTO `club_admin` VALUES ('Esaulu', '学生会');
INSERT INTO `club_admin` VALUES ('xueshenghui', '学生会');
INSERT INTO `club_admin` VALUES ('Esaulu', '学生社团联合会');
INSERT INTO `club_admin` VALUES ('shetuanlianhe', '学生社团联合会');
INSERT INTO `club_admin` VALUES ('Esaulu', '市场营销协会');
INSERT INTO `club_admin` VALUES ('shichang', '市场营销协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '心理协会');
INSERT INTO `club_admin` VALUES ('xinli', '心理协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '汽车协会');
INSERT INTO `club_admin` VALUES ('qiche', '汽车协会');
INSERT INTO `club_admin` VALUES ('dianzisheji', '电子设计协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '电子设计协会');
INSERT INTO `club_admin` VALUES ('EsauLu', '综合讨论');
INSERT INTO `club_admin` VALUES ('Esaulu', '美术协会');
INSERT INTO `club_admin` VALUES ('meishu', '美术协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '英语协会');
INSERT INTO `club_admin` VALUES ('yingyu', '英语协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '轮滑协会');
INSERT INTO `club_admin` VALUES ('lunhua', '轮滑协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '金融证券协会');
INSERT INTO `club_admin` VALUES ('jinrongzhengquan', '金融证券协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '青年志愿者协会');
INSERT INTO `club_admin` VALUES ('zhiyuanzhe', '青年志愿者协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '韩语协会');
INSERT INTO `club_admin` VALUES ('hanyu', '韩语协会');
INSERT INTO `club_admin` VALUES ('Esaulu', '马列主义学习研究学会');
INSERT INTO `club_admin` VALUES ('malie', '马列主义学习研究学会');
INSERT INTO `club_admin` VALUES ('Esaulu', '魔术协会');
INSERT INTO `club_admin` VALUES ('moshu', '魔术协会');

-- ----------------------------
-- Table structure for club_type
-- ----------------------------
DROP TABLE IF EXISTS `club_type`;
CREATE TABLE `club_type` (
  `clubTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `clubType` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`clubTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club_type
-- ----------------------------
INSERT INTO `club_type` VALUES ('1', '学院组织');
INSERT INTO `club_type` VALUES ('2', '专业协会');
INSERT INTO `club_type` VALUES ('3', '非专业协会');
INSERT INTO `club_type` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for mail_server
-- ----------------------------
DROP TABLE IF EXISTS `mail_server`;
CREATE TABLE `mail_server` (
  `emailServerId` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`emailServerId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_server
-- ----------------------------
INSERT INTO `mail_server` VALUES ('1', 'qq.com');
INSERT INTO `mail_server` VALUES ('2', '189.com');
INSERT INTO `mail_server` VALUES ('3', 'sina.com');
INSERT INTO `mail_server` VALUES ('4', '163.com');
INSERT INTO `mail_server` VALUES ('5', '126.com');
INSERT INTO `mail_server` VALUES ('6', '139.com');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(80) NOT NULL DEFAULT '',
  `postContent` varchar(2048) DEFAULT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT '2016-11-14 14:41:43',
  `userName` varchar(32) NOT NULL,
  `clubName` varchar(32) NOT NULL,
  `postTypeId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postId`),
  KEY `userName` (`userName`),
  KEY `clubName` (`clubName`),
  KEY `posttype` (`postTypeId`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `bbs_user` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`clubName`) REFERENCES `club` (`clubName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posttype` FOREIGN KEY (`postTypeId`) REFERENCES `post_type` (`postTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('409', '创造文学社征稿启事', '<span>创文学精英，造艺术奇葩。创造文学社已开始筹备第七期《创造》。为了不断活跃我们的校园文化，更好的发掘写作新人，为更好地提高刊物质量，增强刊物的文学性，趣味性，可读性，使刊物体裁多样，内容充实，栏目丰富，我社现面向全校师生广泛征稿。即日起至2012年1月15日，征集第七期的稿件，往后时间是长期征稿。</span>', '2016-12-04 13:39:58', '2016-12-04 13:39:59', 'chuangzao', '创造文学社', '3');
INSERT INTO `post` VALUES ('410', '电子设计协会成立啦', '<span>电子设计协会是学院一个具有群体性的科普团队，一直以“理论联系实际、爱好培养专长、务实、创新、求真”为宗旨。开展各类设计制作，研发及经验交流为主，以培养同学们电子实际操作能力，提高会员的专业理论水平与实践操作技能为目的，旨在将全体会员培养成一支懂理论，强操作，会设计的应用性电子技术人才队伍，创造良好的科技氛围，推动校园文明建设。 协会成立以来，，在电子系全体老师的辛勤付出以及对协会的大力支持下，电子系多次获得国家级、省级电子设计竞赛奖项，取得了骄人成绩。</span>', '2016-12-04 13:39:15', '2016-12-04 13:39:15', 'dianzisheji', '电子设计协会', '3');
INSERT INTO `post` VALUES ('411', '韩语协会成立啦', '<span>吉林大学珠海学院学生社团联合会韩语协会，简称“韩协”。成立于2007年11月26日，是我院成立较早，影响力较大的社团之一。来到韩语协会这个大家庭你不仅有机会学习到韩语，还能了解和亲身体验到丰富多彩的韩国文化，通过各种有趣的活动更能结识到来自不同地方的朋友，使你的大学生活更有意义。</span>', '2016-12-04 13:40:47', '2016-12-04 13:40:47', 'hanyu', '韩语协会', '3');
INSERT INTO `post` VALUES ('412', '金融证券协会成立啦', '<span>金融证券协会简称“金协”，自2007年创办以来，在系团委，协会指导老师，院学生社团联合会和协会全体成员的支持下，经过九年的成长，在学院得到广大师生的喜爱。金协是学院一个专业性的学生组织，但活动对象是针对全院师生，没有专业限制。协会不仅定期邀请校内外知名专家及老师举行金融知识讲座，而且还拥有多个品牌活动，并成功举办了模拟炒股大赛、经济热点论坛大赛和贵金属模拟交易大赛。协会致力于分析解读金融行业前景，引导大学生走上正确的投资和理财道路，并为其日后的金融活动积累经验。作为学院最具影响力的协会之一，协会的规模不断壮大，而活跃的社团气氛和优秀的社团文化已吸引了5000多名学生加入成为会员。</span>', '2016-12-04 13:39:27', '2016-12-04 13:39:28', 'jinrongzhengquan', '金融证券协会', '3');
INSERT INTO `post` VALUES ('413', '会计学协会成立啦', '<span>会计学协会，简称会协，成立于2011年，是一个给我院会计、财务管理、金融经济等兴趣爱好者及在会计领域有创新意向的同学提供一个广阔而专业的学习与经济运作互动平台的学生组织。</span>', '2016-12-04 13:38:10', '2016-12-04 13:38:11', 'kuaijixue', '会计学协会', '3');
INSERT INTO `post` VALUES ('414', '轮滑协会成立啦', '<span>本协会成立于二零零三年九月，现有会员五十多人，是以课余轮滑爱好者为主。协会以“张扬个性、展现青春、挑战自我、团结互助、全民健身”为宗旨。普及高校轮滑运动，促进高校间的轮滑交流，发展轮滑事业。本协会立足校内，以服务会员为根本，组织轮滑培训，开展轮滑集体活动，增强同学的体质，通过轮滑运动进行体育比赛和社会实践，为广大轮滑爱好者提供一个塑造和张扬个性、展现青春和激情的舞台，以提高轮滑爱好者的体育竞技水平，培养团队精神，丰富大学生的校园文化生活，提高我校学生的综合素质，促进全民健身运动，促进我校社团文化的繁荣发展，提高我校学生的课余生活质量煤医疯狂轮滑协会章程 </span>', '2016-12-04 13:40:34', '2016-12-04 13:40:35', 'lunhua', '轮滑协会', '3');
INSERT INTO `post` VALUES ('415', '马列主义学习研究学会 成立啦', '<span>吉林大学珠海学院马列主义学习研究学会是在学院学生党总支的领导下，成立并发展的一个学生业余的政治性学术团体。学会以马列主义、毛泽东思想、邓小平理论、“三个代表”重要思想和科学发展观为指导，学会的宗旨是“学习马列著作，追求革命真理，了解中国国情，实践中国特色社会主义”。</span>', '2016-12-04 13:39:44', '2016-12-04 13:39:44', 'malie', '马列主义学习研究学会', '3');
INSERT INTO `post` VALUES ('416', '大学生艺术团成立啦', '<span>吉林大学珠海学院大学生艺术团（简称：校艺术团）于2008年成立，是吉林大学珠海学院学生的群众性艺术类组织，依照国家的法律、法规、学院的相关规定和本组织的章程，独立自主的开展艺术实践和群众性文艺活动的学生艺术团体。\r</span><br><span>　　校大学生艺术团现有秘书处、组织部、媒体宣传部、舞台美术部、歌唱队、器乐队、舞蹈队、主持人队、礼仪模特队、戏剧表演队。发展至今，集合前演出和幕后工作贯穿一线，“舞、唱、弹、说、演”于一体的综合化、专业化文艺团体。</span>', '2016-12-04 13:35:50', '2016-12-04 13:35:51', 'yishutuan', '大学生艺术团', '3');
INSERT INTO `post` VALUES ('417', '大学生通讯社成立啦', '<span>吉林大学珠海学院大学生通讯社是面向 全院师生的传媒宣传平台与机构，隶属于学院团委，是学院五个院级学生组织之一，由新闻部、编辑部、摄影部、多媒体技术部、广播站、秘书处、新媒体部七个部门组成，是一个集合众多热衷于新闻报道、文字编辑、版面设计、摄影、摄像、校园广播、微信平台管理等人才的活动团体。其宗旨是建立一支政治性强、业务精、纪律严、作风正的校园学生传媒队伍。</span>', '2016-12-04 13:36:06', '2016-12-04 13:36:07', 'tongxunshe', '大学生通讯社', '3');
INSERT INTO `post` VALUES ('418', '学生会成立啦', '<span>“学生会”这个词，想必你们都不陌生。在初中，有学生会；在高中也有学生会。学生会，顾名思义，就是学生学什么，就会什么。\r</span><br><span>学生会，就是一\r</span><br><span>个让你涨知识的组织。了解学生会之后我保证它会给你带来无限惊喜(✿✪‿✪｡)ﾉ！！！并不是想象中的那么死板无趣！！！唯有加入过学生会，你才会真正了解到学生会有多么精彩！！╮(╯▽╰)╭\r</span><br><span>很多新生都会有疑惑！学生会到底是什么？在这里我们来全新全方位地认识它了解它！\r</span><br><span>接下来就让我来向大家展示！这是怎样一个既能充分发挥你的才华又能让你受益匪浅的平台！</span>', '2016-12-04 13:36:20', '2016-12-04 13:36:21', 'xueshenghui', '学生会', '3');
INSERT INTO `post` VALUES ('419', '我们的社联成立啦', '<span>吉林大学珠海学院学生社团联合会是在共青团吉林大学珠海学院委员会的直接领导下，管理社团工作、服务社团发展的学生组织，自2006年4月2日成立以来，院学生社团联合会以“丰富校园文化生活，提高学生综合素质”为宗旨，始终扮演着提升校园文化品味、引领校园文化时尚的重要角色。</span>', '2016-12-04 13:36:35', '2016-12-04 13:36:36', 'shetuanlianhe', '学生社团联合会', '3');
INSERT INTO `post` VALUES ('420', '心理协会成立啦', '<span>翻吉珠院心协成立于2006年，是热衷于心理健康教育的在校学生组成的学生社团，由吉林大学珠海学院大学生心理健康教育中心指导，在学院团委和社团联合会的管理和监督下开展活动。在院学生社团联合会和心理健康教育中心的领导下于2010年11月成立全员各系心理协会分会。 心理协会以“自解困惑、帮助他人”为宗旨，以“齐心协力”为口号，倡导“相亲相爱一家人”的精神。通过学习心理健康的相关理论，提高自身心理素质，同时宣传和普及心理健康知识，增强广大在校学生的心理素质和心理健康意识。</span>', '2016-12-04 13:36:47', '2016-12-04 13:36:48', 'xinli', '心理协会', '3');
INSERT INTO `post` VALUES ('421', '吉珠青协成立啦', '<span>2006年6月7日，吉珠院青年志愿者协会正式成立。现共有九个职能部门：秘书处、组织部、公益部、传媒部、人事部、宣传部、外事部、监察部、牵手服务队。\r</span><br><span>院青协下辖14个分会：青年志愿者协会艺术系分会、青年志愿者协会工商管理系分会、青年志愿者协会电子信息系分会、青年志愿者协会计算机科学与技术系分会、青年志愿者协会旅游管理系分会、青年志愿者协会机电工程系分会、青年志愿者协会中文系分会、青年志愿者协会行政管理系分会、青年志愿者协会外语系分会、青年志愿者协会化学与药学系分会、青年志愿者协会建筑系分会、青年志愿者协会国际贸易与金融系分会、青年志愿者协会物流与信息管理系分会、青年志愿者协会音乐舞蹈学院分会。\r</span><br><span>为推动院青年志愿服务事业的发展，2010年我院青协还成立了专项服务队。\r</span>', '2016-12-04 13:37:10', '2016-12-04 13:37:10', 'zhiyuanzhe', '青年志愿者协会', '3');
INSERT INTO `post` VALUES ('422', '吉珠造制设计协会成立啦', '<span>吉林大学珠海学院学生社团联合会中国造制设计协会是一个汇聚众多设计爱好者的团体。我们以提高学生各方面工作能力为目标，注重对设计语言的创造、对文化思想的表达，为传统人文精神注入新鲜的现代活力。致所有有想法的人：design for ourself.</span>', '2016-12-04 13:37:51', '2016-12-04 13:37:52', 'zaozhisheji', '中国造制设计协会', '3');
INSERT INTO `post` VALUES ('423', '吉珠职业发展协会成立啦', '<span>大学生职业发展协会（JIUZH Career Development Association for Students），是在吉林大学珠海学院招生与就业处指导下，由学生自发组建的一个集学术性、专业性、指导性、服务性为一体的学生社团组织，是学校联系学生与企业的桥梁和纽带。在这里，我们通过多渠道获取就业信息以及大量的职场技能培训，帮助大学生树立正确的职业价值观，培养良好的就业意识，从而达到全面提高我校学生的职业素养的目的。迈向职场的第一步，大学生职业发展协会，期待你的加入！</span>', '2016-12-04 13:38:24', '2016-12-04 13:38:24', 'zhiyefazhan', '大学生职业发展协会', '3');
INSERT INTO `post` VALUES ('424', '吉珠市场营销协会成立啦', '<span>市场营销协会是在吉林大学珠海学院工商管理系的指导下，由有志于、热衷于从事市场营销研究策划、从事市场营销创新与实践活动的人员组成的院级蛮专业的，不要钱的社团组织。 协会的理念是学习现代营销理论，寻求营销实践平台，营造营销氛围，造就现代营销人才。学以致用，为踏入社会做一个提前热身，为自己人生价值增加一个沉甸甸的筹码。 本协会通过正确积极的途径引导会员了解社会，适应社会，锻炼自我，提高专业素质，传播营销理论，展示我院大学生的风采，繁荣校园文化。</span>', '2016-12-04 13:38:38', '2016-12-04 13:38:38', 'shichang', '市场营销协会', '3');
INSERT INTO `post` VALUES ('425', '吉珠汽车协会成立啦', '<span>吉林大学珠海学院学生社团联合会汽车协会成立于2007年，是依托于本院车辆工程专业所开设的。我们一直以丰富学生的课余生活，培养学生对汽车的兴趣，增强学生对课外知识的获取，扩大学生的知识面为目的，使学生在大学生活中得到素质上的提高和精神上的满足。</span>', '2016-12-04 13:38:51', '2016-12-04 13:38:52', 'qiche', '汽车协会', '3');
INSERT INTO `post` VALUES ('426', '吉珠美术协会成立啦', '<span>吉林大学珠海学院美术协会\r</span><br><span>一个年轻和充满激情的协会，一个汇集了各路喜爱美术的人的群体。在玩中工作，在工作中成长，这是一个让人欲罢不能的地方！不管你会不会绘画，懂不懂美术，只要你喜欢美术，我们都欢迎你。我们玩的不仅仅是涂鸦，更多的是乐趣！</span>', '2016-12-04 13:40:11', '2016-12-04 13:40:12', 'meishu', '美术协会', '3');
INSERT INTO `post` VALUES ('427', '吉珠英语协会成立啦', '<span>英语协会是由英语爱好者组成的学生社团。从成立到现在，成功举办了英语角、free talk、晨读、话剧等众多大型活动。为广大学生创造了一个良好的英语学习环境和自我展现平台。加入本协会，你们将会遨游在英语的海洋中无法自拔（还会有师兄师姐呕心沥血整理的英语四六级题型，让你面对时四六级不在疑惑） 在活动中找到另一个不一样的自己，在外国人面前说英语充满自信。 部门之间经常联谊，聚餐，让你收获集赞时为你点赞的小伙伴。</span>', '2016-12-04 13:40:23', '2016-12-04 13:40:23', 'yingyu', '英语协会', '3');
INSERT INTO `post` VALUES ('428', '吉珠魔术协会成立啦', '<span>吉林大学珠海学院魔术协会成立于2009年，设有主席团，才艺部，宣传部，秘书处，外联部，组织部，以及顾问团。来魔术协会并不需要你有很好的魔术基础，热爱魔术，喜欢看魔术表演，想学魔术，想交朋友，并且想锻炼自己能力的都可以来我们这个大家庭。才艺部以魔术为核心，培养魔术人才。其他部门呢除魔术外，还要着力于其它方面的工作，就是说除了能学到魔术外，还能得到其他方面的培训和学习，例如：拉赞助，写活动策划，公众号推送，ps,以及摄影摄像。任何部门都能学到魔术，就看你的积极性了。顾问团为协会老成员，主要负责在各部门挖掘人才，带领会员干事学习魔术，街魔，各类演出，商演，义演。</span>', '2016-12-04 13:41:07', '2016-12-04 13:41:07', 'moshu', '魔术协会', '3');
INSERT INTO `post` VALUES ('429', '板块规则', '<span>本版仅限普通网友出售交换二手 闲置物品\r</span><br><span>商家发布广告一律删除\r</span><br><span>\r</span><br><span>1.本版块只是一个供大家发布信息的平台，不承担任何法律责任。\r</span><br><span>2.请使用第三方交易平台(如淘宝闲鱼)或当面交易，请勿先款或先货！\r</span><br><span>3.为了更快的出售闲置物品请一定发布至少三张图片，并明确标注价格 和新旧程度等要点\r</span><br><span>4.请勿发布违规 国家禁止交易出售的物品</span>', '2016-12-04 13:51:27', '2016-12-04 13:51:27', 'ershou', '二手交易', '3');
INSERT INTO `post` VALUES ('430', '板块规则', '<span>参与社区讨论 请遵守我国法律 和社区规则</span>', '2016-12-04 13:54:32', '2016-12-04 13:54:33', 'taolun', '综合讨论', '3');
INSERT INTO `post` VALUES ('431', '出售吉珠帅锅一个，全新无磕碰，有意者私聊（仅限女生）', '<span>出售吉珠帅锅一个，全新无磕碰，有意者私聊（仅限女生）\r</span><br><span>出售吉珠帅锅一个，全新无磕碰，有意者私聊（仅限女生）\r</span><br><span>出售吉珠帅锅一个，全新无磕碰，有意者私聊（仅限女生）</span>', '2016-12-04 13:52:53', '2016-12-04 13:52:53', 'lzw', '二手交易', '0');
INSERT INTO `post` VALUES ('432', '我要搞事', '<span>肠粉快出来搞事情！</span>', '2016-12-04 23:51:13', '2016-12-04 23:51:13', 'EsauLu', '综合讨论', '0');
INSERT INTO `post` VALUES ('434', '贡献吉珠联盟项目源码', '<span><h3>吉珠联盟项目源码</h3>\r</span><br><span><p  style=\"text-indent: 2em;line-height: 30px;\">\r</span><br><span>吉珠联盟是我们吉珠软件工程课程设计课程的一个成果，既然是课程作品，那就是以学习为目的的，所以在这里我就要把这个作品的项目都分享出来给大家，感兴趣的同学可以学习一下，同时觉得有设计不好的地方也可以提出意见，在这里也欢迎其他小组的同学分享你们的课程设计的成果，通过大家的学习交流，促进我们的技能水平的提高。\r</span><br><span></p>\r</span><br><span><p  style=\"text-indent: 2em;line-height: 30px;\">\r</span><br><span>吉珠联盟的项目开发是利用git进行版本控制的，所以整个项目源码也就是托管在GitHub上的，有兴趣的同学可以在我的GitHub上下载项目源码，不过还要说明一点，这个项目是采用eclipse开发环境进行开发的，有些喜欢用MyEclipse的同学要自行改一下配置\r</span><br><span></p>\r</span><br><span><p  style=\"text-indent: 2em;line-height: 30px;\">\r</span><br><span>项目源码地址：<a href=\"https://github.com/EsauLu/campusbbs\">https://github.com/EsauLu/campusbbs</a>\r</span><br><span></p></span>', '2016-12-05 12:57:34', '2016-12-05 12:57:34', 'EsauLu', 'ACM协会', '4');
INSERT INTO `post` VALUES ('436', '我是吉珠学生会会长', '<span>这个论坛不错，我们要放广告，打算收购</span>', '2016-12-05 14:45:07', '2016-12-05 14:45:07', 'lpk', '学生会', '0');
INSERT INTO `post` VALUES ('446', '删帖说明', '<span>如发现任何违反法律、道德行为的帖子，此贴会被删除，发帖用户禁言一天。</span>', '2016-12-08 00:59:10', '2016-12-08 00:59:10', 'zhiyuanzhe', '青年志愿者协会', '3');
INSERT INTO `post` VALUES ('447', 'sdsds', '<span>sdsdsd</span>', '2016-12-20 08:30:00', '2016-12-20 08:30:00', 'lpk', '大学生艺术团', '0');
INSERT INTO `post` VALUES ('448', 'select * from admin', '<span>sss</span>', '2016-12-20 08:53:30', '2016-12-20 08:53:30', 'lpk', '学生社团联合会', '0');
INSERT INTO `post` VALUES ('449', '   ', '<span>  </span>', '2016-12-20 10:05:56', '2016-12-20 10:05:56', 'lpk', '大学生艺术团', '3');

-- ----------------------------
-- Table structure for post_type
-- ----------------------------
DROP TABLE IF EXISTS `post_type`;
CREATE TABLE `post_type` (
  `postTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `postType` varchar(64) NOT NULL DEFAULT '',
  `color` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`postTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_type
-- ----------------------------
INSERT INTO `post_type` VALUES ('0', '无分类', '');
INSERT INTO `post_type` VALUES ('3', '公告', '#FF0000');
INSERT INTO `post_type` VALUES ('4', '分享', '#0080C0');
INSERT INTO `post_type` VALUES ('5', '话题', '#808000');
INSERT INTO `post_type` VALUES ('9', '兴趣', '#008000');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyId` int(11) NOT NULL AUTO_INCREMENT,
  `replyContent` varchar(512) NOT NULL,
  `replyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postId` int(11) NOT NULL,
  `userName` varchar(32) NOT NULL,
  PRIMARY KEY (`replyId`),
  KEY `postId` (`postId`),
  KEY `userName` (`userName`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `post` (`postId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`userName`) REFERENCES `bbs_user` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('188', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:35:50', '416', 'lzw');
INSERT INTO `reply` VALUES ('189', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:36:06', '417', 'lzw');
INSERT INTO `reply` VALUES ('190', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:36:20', '418', 'lzw');
INSERT INTO `reply` VALUES ('191', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:36:35', '419', 'lzw');
INSERT INTO `reply` VALUES ('192', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:36:47', '420', 'lzw');
INSERT INTO `reply` VALUES ('193', '哇，好像很厉害的样子，好想加入你们。哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:37:10', '421', 'lzw');
INSERT INTO `reply` VALUES ('195', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:37:51', '422', 'lzw');
INSERT INTO `reply` VALUES ('196', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:38:10', '413', 'lzw');
INSERT INTO `reply` VALUES ('197', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:38:24', '423', 'lzw');
INSERT INTO `reply` VALUES ('198', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:38:38', '424', 'lzw');
INSERT INTO `reply` VALUES ('199', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:38:51', '425', 'lzw');
INSERT INTO `reply` VALUES ('200', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:39:15', '410', 'lzw');
INSERT INTO `reply` VALUES ('201', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:39:27', '412', 'lzw');
INSERT INTO `reply` VALUES ('202', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:39:44', '415', 'lzw');
INSERT INTO `reply` VALUES ('203', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:39:58', '409', 'lzw');
INSERT INTO `reply` VALUES ('204', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:40:11', '426', 'lzw');
INSERT INTO `reply` VALUES ('205', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:40:23', '427', 'lzw');
INSERT INTO `reply` VALUES ('206', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:40:34', '414', 'lzw');
INSERT INTO `reply` VALUES ('207', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:40:47', '411', 'lzw');
INSERT INTO `reply` VALUES ('208', '哇，好像很厉害的样子，好想加入你们。', '2016-12-04 13:41:07', '428', 'lzw');
INSERT INTO `reply` VALUES ('209', '好的知道了，谢谢', '2016-12-04 13:51:27', '429', 'lzw');
INSERT INTO `reply` VALUES ('210', '一起来讨论吧，今天吃什么', '2016-12-04 13:54:32', '430', 'lzw');
INSERT INTO `reply` VALUES ('211', '围观是一种态度，回帖是一种美德', '2016-12-04 23:54:33', '431', 'EsauLu');
INSERT INTO `reply` VALUES ('213', '永远不要怀疑自己的力量<br>\r\n---李志伟', '2016-12-05 00:44:00', '421', 'EsauLu');
INSERT INTO `reply` VALUES ('214', '卧槽，这么6', '2016-12-05 12:59:29', '434', 'lzw');
INSERT INTO `reply` VALUES ('215', '我李主席决定向大佬们低头！', '2016-12-05 13:00:32', '434', 'lzw');
INSERT INTO `reply` VALUES ('216', '哇塞！看起来好厉害的样子！', '2016-12-05 13:02:35', '434', 'acm');
INSERT INTO `reply` VALUES ('217', '不明觉厉！', '2016-12-05 13:05:33', '434', 'meizi');
INSERT INTO `reply` VALUES ('218', '谢谢楼主的分享', '2016-12-05 13:09:46', '434', 'plane');
INSERT INTO `reply` VALUES ('219', '表示膜拜', '2016-12-05 13:11:10', '434', 'chuangzao');
INSERT INTO `reply` VALUES ('220', '卧槽牛逼', '2016-12-05 13:16:02', '434', 'dianzisheji');
INSERT INTO `reply` VALUES ('221', '可以，很强势', '2016-12-05 13:17:49', '434', 'jinrongzhengquan');
INSERT INTO `reply` VALUES ('222', '路过顶贴', '2016-12-05 13:19:10', '434', 'malie');
INSERT INTO `reply` VALUES ('223', '路过顶贴', '2016-12-05 13:20:06', '434', 'meishu');
INSERT INTO `reply` VALUES ('224', '可以可以，涨见识了', '2016-12-05 13:21:14', '434', 'shetuanlianhe');
INSERT INTO `reply` VALUES ('225', '围观是一种态度，回帖是一种美德', '2016-12-05 13:22:07', '434', 'tongxunshe');
INSERT INTO `reply` VALUES ('228', '难道没有人对帅哥感兴趣？', '2016-12-05 13:27:09', '431', 'lzw');
INSERT INTO `reply` VALUES ('230', '发现有水军混进来了', '2016-12-05 20:07:20', '434', 'happy');
INSERT INTO `reply` VALUES ('231', '小伙子你不要搞事我跟你港', '2016-12-05 22:00:30', '436', 'EsauLu');
INSERT INTO `reply` VALUES ('298', '食屎啦李主席', '2016-12-06 12:05:37', '431', 'yingyu');
INSERT INTO `reply` VALUES ('300', '楼上有特殊爱好？？', '2016-12-07 15:29:03', '431', 'lzw');
INSERT INTO `reply` VALUES ('301', '听说有人要找肠粉？？', '2016-12-07 15:29:54', '432', 'lzw');
INSERT INTO `reply` VALUES ('303', '我也要收购', '2016-12-07 15:43:31', '436', 'lzw');
INSERT INTO `reply` VALUES ('304', '楼上说对了', '2016-12-07 17:05:58', '421', 'lzw');
INSERT INTO `reply` VALUES ('305', '禁你螺母，有本事你禁我言啊', '2016-12-09 11:51:01', '446', 'EsauLu');
INSERT INTO `reply` VALUES ('306', '哈哈哈哈', '2016-12-10 17:57:49', '446', 'lzw');
INSERT INTO `reply` VALUES ('308', '楼上三个锁海', '2016-12-12 19:39:04', '436', 'xueshenghui');
INSERT INTO `reply` VALUES ('310', '丢，几多钱啊？、', '2016-12-15 14:28:30', '431', 'zhj');
INSERT INTO `reply` VALUES ('311', '哇  好嗨犀利喔', '2016-12-15 14:30:41', '421', 'zhj');
INSERT INTO `reply` VALUES ('312', '    ', '2016-12-20 09:14:16', '420', 'lpk');
INSERT INTO `reply` VALUES ('313', '       ', '2016-12-20 13:08:45', '434', 'lpk');
INSERT INTO `reply` VALUES ('314', '12334', '2020-04-18 22:30:07', '434', 'cdlcdl');
INSERT INTO `reply` VALUES ('315', '32432432444444444444444444444444444444444444444', '2020-04-18 22:30:52', '434', 'cdlcdl');
INSERT INTO `reply` VALUES ('316', 'eewrewer', '2020-04-18 22:32:03', '434', 'cdlcdl');
INSERT INTO `reply` VALUES ('317', '1234', '2020-04-18 22:33:26', '431', 'cdlcdl');
INSERT INTO `reply` VALUES ('318', 'rytr67fuy', '2020-04-19 07:48:09', '432', 'cdlcdl');

-- ----------------------------
-- Table structure for system_admin
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin` (
  `adminName` varchar(16) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO `system_admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `userName` varchar(32) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '用户',
  `head` varchar(64) NOT NULL DEFAULT '',
  `emailAccount` varchar(64) NOT NULL DEFAULT '',
  `emailServerId` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userName`),
  KEY `mail_domain` (`emailServerId`),
  CONSTRAINT `mail_domain` FOREIGN KEY (`emailServerId`) REFERENCES `mail_server` (`emailServerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `bbs_user` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('acm', 'ACM协会', 'acm.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('aoyou', 'aoyou', 'aoyou.png', '897528499@qq.com', '1');
INSERT INTO `user_info` VALUES ('chang', 'zhangsan', 'chang.png', '475892547', '1');
INSERT INTO `user_info` VALUES ('chuangzao', '创造文学社', 'chuangzao.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('dianzisheji', '电子设计协会', 'dianzisheji.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('ershou', '二手交易', 'ershou.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('EsauLu', '卢一少', 'EsauLu.jpg', '1165050143', '1');
INSERT INTO `user_info` VALUES ('hanyu', '韩语协会', 'hanyu.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('happy', '吉珠肠粉', 'happy.jpg', '849589857', '1');
INSERT INTO `user_info` VALUES ('hhh', 'aaa', 'hhh.png', '2957713056', '1');
INSERT INTO `user_info` VALUES ('jinrongzhengquan', '金融证券协会', 'jinrongzhengquan.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('kuaijixue', '会计学协会', 'kuaijixue.png', '123456789', '1');
INSERT INTO `user_info` VALUES ('lalaka', '拉拉卡', 'lalaka.png', 'abc123', '1');
INSERT INTO `user_info` VALUES ('lalala', 'lalala', 'lalala.png', '111111', '1');
INSERT INTO `user_info` VALUES ('lpk', 'lpk', 'lpk.jpg', 'lpk', '1');
INSERT INTO `user_info` VALUES ('lunhua', '轮滑协会', 'lunhua.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('lzw', '吉珠车神', 'lzw.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('malie', '马列主义学习研究学会', 'malie.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('meishu', '美术协会', 'meishu.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('meizi', '你的女神', 'meizi.jpeg', '1165050143', '1');
INSERT INTO `user_info` VALUES ('moshu', '魔术协会', 'moshu.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('plane', '飞机师', 'plane.jpg', '1165050143', '1');
INSERT INTO `user_info` VALUES ('qiche', '汽车协会', 'qiche.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('shao', '渔民', 'shao.png', '905204187', '1');
INSERT INTO `user_info` VALUES ('shetuanlianhe', '学生社团联合会', 'shetuanlianhe.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('shichang', '市场营销协会', 'shichang.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('taolun', '综合讨论', 'taolun.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('tongxunshe', '大学生通讯社', 'tongxunshe.png', '123456789', '1');
INSERT INTO `user_info` VALUES ('woshishui', '我到底是谁', 'woshishui.png', '1111111', '1');
INSERT INTO `user_info` VALUES ('xiaoming', '小明', 'xiaoming.png', '111111', '1');
INSERT INTO `user_info` VALUES ('xinli', '心理协会', 'xinli.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('xueshenghui', '学生会', 'xueshenghui.png', '123456789', '1');
INSERT INTO `user_info` VALUES ('yingyu', '英语协会', 'yingyu.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('yishutuan', '大学生艺术团', 'yishutuan.png', '123456789', '1');
INSERT INTO `user_info` VALUES ('zaozhisheji', '中国造制设计协会', 'zaozhisheji.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('zhiyefazhan', '大学生职业发展协会', 'zhiyefazhan.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('zhiyuanzhe', '青年志愿者协会', 'zhiyuanzhe.jpg', '123456789', '1');
INSERT INTO `user_info` VALUES ('zhj', '啊周', 'zhj.png', '987456321', '1');
