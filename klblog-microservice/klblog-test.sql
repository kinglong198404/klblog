/*
Navicat MySQL Data Transfer

Source Server         : klfront
Source Server Version : 50726
Source Host           : www.klfront.com:3306
Source Database       : klblog-test

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-15 18:49:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `user_id` int(11) NOT NULL DEFAULT '11' COMMENT '所属用户Id',
  `title` varchar(64) DEFAULT NULL COMMENT '文章标题',
  `keyword` varchar(512) DEFAULT NULL COMMENT '关键字',
  `content` text NOT NULL COMMENT 'Html内容',
  `category_id` varchar(16) DEFAULT NULL COMMENT '类别Id',
  `author` varchar(32) DEFAULT NULL COMMENT '作者的用户名',
  `page_view` int(11) DEFAULT '0' COMMENT '浏览量',
  `sort` int(11) DEFAULT '0' COMMENT '排序值',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `Title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('8', '11', '理性是一剂毒药', null, '理性是一剂毒药，没有它，无法抵御外界的侵蚀；有它，人逐渐变得冷漠、无情，从内部受到侵蚀。\n\n若是无情，为何又难过。', null, null, '0', '0', '2019-12-24 07:48:59', '2019-12-24 07:48:59');
INSERT INTO `article` VALUES ('9', '11', 'test23', null, 'ceshi', null, null, '0', '0', '2020-02-15 02:13:20', '2020-02-15 02:13:20');
INSERT INTO `article` VALUES ('10', '11', '测试标题', null, '测试内容', null, null, '0', '0', '2020-02-15 03:15:59', '2020-02-15 03:15:59');
INSERT INTO `article` VALUES ('11', '11', '测试标题99', null, '测试内容99', null, null, '0', '0', '2020-02-15 03:17:55', '2020-02-15 03:17:55');

-- ----------------------------
-- Table structure for book_note
-- ----------------------------
DROP TABLE IF EXISTS `book_note`;
CREATE TABLE `book_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `user_id` int(11) DEFAULT '11' COMMENT '用户Id',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(512) DEFAULT NULL COMMENT '关键字',
  `content` text NOT NULL COMMENT 'Html内容',
  `category_id` varchar(16) DEFAULT NULL COMMENT '类别Id',
  `author` varchar(32) DEFAULT NULL COMMENT '作者的用户名',
  `page_view` int(11) DEFAULT '0' COMMENT '流览量',
  `sort` int(11) DEFAULT '0' COMMENT '排序值',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `Title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_note
-- ----------------------------
INSERT INTO `book_note` VALUES ('259', '11', '7-2-1法则', null, '\n英国数学家贝叶斯，在200多年前写的《机会学说中一个问题的解》这本书中提过个观点，他说，支持某项属性的事件发生得愈多，则该属性成立的可能性就愈大。\n\n\n简言之，如果你看到一个人总是做一些好事，那个人多半会是个好人。\n\n\n很好理解对吧？\n\n\nOK，放到投资上看。\n\n\n许多人以为自己赌神附体，可要知道，自从有股票市场那天起，统计数据就无情地复制着一个结果：\n\n\n“7-2-1法则”。\n\n\n即7成投资者亏钱，2成持平，1成长期跑赢市场，无论熊市or牛市，这个法则从未打破。\n\n\n放到创业上看。\n\n\n中国的中小企业平均寿命仅2.5年。创业成功率虽没有官方统计，但3%-5%成功率是最常见的数字。\n\n\n“先去创业，回来成为一个买得起房子的创业者”——只能说，把个案当普遍，把可能当必然。\n\n\n结局怎么会轻易如你所愿呢？\n\n￼\n\n\n你也别急着表示自己对创业有多坚定，完全两码事。\n\n\n许多人由于不多想，所以才不动摇。\n\n\n有时从概率角度去分析一件事，你的想法就会理性起来，就会明白那层华丽外衣下，或许是千疮百孔的真相。\n', null, '11', '0', '0', '2019-10-21 23:40:09', '2019-10-21 23:40:09');
INSERT INTO `book_note` VALUES ('260', '11', '牖 yǒu', null, '牖，发音为yǒu，是会意字，从片户甫，室和堂之间有窗子叫“牖”，上古的“窗”专指开在屋顶上的天窗，开在墙壁上的窗叫“牖”，秦多用牖，窗少见。本义为窗户，古建筑中室与堂之间的窗子，后泛指窗。也是通假字，通“诱”，出自《礼记·乐记》：“天之牖民。”', null, '11', '0', '0', '2019-10-22 19:40:19', '2019-10-22 19:40:19');
INSERT INTO `book_note` VALUES ('261', '11', '处 chǔ动词 chù名词', null, '来源: 百度汉语\n\n[ chǔ ]\n\n1.居住：穴居野～。\n\n2.跟别人一起生活；交往：～得来。～不来。他的脾气好，挺容易～。\n\n3.置身在（某地、某种情况等）：地～闹市。～变不惊。设身～地。我们工厂正～在发展、完善的阶段。\n\n[ chù ]\n\n1.地方：住～。心灵深～。大～着眼，小～着手。\n\n2.机关组织系统中按业务划分的单位（级别一般比局低，比科高），也指某些机关：科研～。总务～。办事～。联络～。', null, '11', '0', '0', '2019-10-22 19:58:36', '2019-10-22 19:58:36');
INSERT INTO `book_note` VALUES ('262', '11', '恶', null, '恶乎成名\n\n恶 wū\n\n◎ 古同“乌”，疑问词，哪，何。\n\n◎ 文言叹词，表示惊讶：～，是何言也！\n\n', null, '11', '0', '0', '2019-10-22 20:07:29', '2019-10-22 20:07:29');
INSERT INTO `book_note` VALUES ('263', '11', '君子怀德', null, '子曰：“君子怀德，小人怀土；君子怀刑，小人怀惠。”\n\n君子有高尚的道德，胸怀远大，视野开阔，考虑的是国家和社会的事情，是道德法律；小人则只知道思恋乡土、小恩小惠，考虑的只有个人生计。这是君子与小人的区别点之一。\n\n孔子说：“君子思念的是道德，小人思念的是乡土；君子畏法。小人贪利。”\n\n故此章之君子非真君子也，乃处上位之士大夫之流也；小人亦非真小人，平常百姓也。上位者以德为本，则百姓‘知耻且格’，即安于本心，安于故土也；上位者若常思严刑峻法，则百姓‘免而无耻’，而心怀利矣。可参为政篇细品。', null, '11', '0', '0', '2019-10-23 19:42:27', '2019-10-23 19:42:27');
INSERT INTO `book_note` VALUES ('264', '11', '公冶长', null, '【子谓公冶长。可妻也。虽在缧绁之中。非其罪也。以其子妻之。】\n　　这个妻，不念妻（七），念去声，就是动词，就是嫁的意思。这个子，这里是孔子的女儿。这个话，孔子是说公冶长，这是孔子弟子，可以把他招为自己的女婿，可以将自己的女儿嫁给他。为什么？这下面讲，『虽在缧绁之中』，虽然他受牢狱之灾，「缧绁」就是受到牢狱之灾了，但是这不是他应该得的罪。换句话说，他是被冤枉的，所以就以其女、女儿嫁给他。\n　　我们来看雪公老人的《论语讲要》，他说「公冶长为孔子弟子，史迁谓为齐人，孔安国谓为鲁人」。公冶长是一位孔子的学生、弟子。「史迁」，这是讲司马迁他写了《史记》，是个太史官，所以称他为史迁，太史公。太史公考究说他是齐国人。孔安国，也是跟司马迁同一时代的汉朝的大儒，说公冶长是鲁人，鲁国人。当然，我们相信他们两个人考究的都有依据，至于说是哪里的人，我们也不必执着，反正齐鲁也是交界的邻国。\n　　底下又说，「皇疏引范宁云」，《皇疏》这是南北朝时代经学家皇侃，他在批注《论语》的疏里头（注疏）引范宁的话来讲，说「公冶长行正获罪，罪非其罪，孔子以女妻之，将以大明衰世用刑之枉滥，劝将来实守正之人也」。这个讲的意思，讲得挺好。《皇疏》中所说的，公冶长实际上没有真正犯罪，他的行为各方面都没 有不检点的地方，可是是被冤枉了。所以这个罪非其罪，不是真正的罪，那么孔子就不计较。不仅不计较，他把女儿嫁给他，当然是肯定公冶长是一个贤人。用这个行动来表示，公冶长是值得做自己的女婿。要知道，做孔家的女婿，如果品德不够资格，那是做不上，孔子门坎很高。这么做，正表明公冶长确实是位贤人君子。\n　　这么做，皇侃讲有一个隐含的意义，「将以大明衰世用刑之枉滥」。这表明什么？这个主政的人、判决的官员是滥用刑法。公冶长被关起来了，关起来了之后，还在脸上刺绣，就是刺刺一个印，表明他是犯过罪。这是属于终身的耻辱，但是这是冤枉的。所以孔子嫁女儿给他，也是显明在春秋时代，这是乱世，判案子判得不真实，用刑用得冤枉，很泛滥。这也是用行动，劝将来的这些执政之人、执法之人，不可以滥用刑法冤枉好人，对案子要判清楚才能动刑，否则那真的是冤枉人的一生。\n　　公冶长他是怎么样获罪的？根据历史记载，是讲公冶长他解鸟语，他懂得鸟的语言。有一次，公冶长从卫国回到鲁国，途中就听到鸟的语言，鸟儿就互相的在讲话，讲到什么？说大家一起去，前面青溪，有一条溪，青溪那里有人死了，我们去那里吃死人肉。大概这种鸟是乌鸦之类的。结果公冶长走了一段路之后，就见到有一个老太太在道路上痛哭流涕。公冶长就问她，妳为什么哭？这个老太太就讲，「我的儿子前天出门，到现在还没有回来，是不是已经死了？也不知道去哪了？」结果公冶长就说，「我刚才我听到鸟儿在讲话，说到青溪那里去吃死人肉，是不是妳的儿子？」这老太太一听，赶紧就跑到那个地方去看，果然看到自己的儿子死了。这老太太就报官了，儿子可能是被谋杀。结果这当官的，就把公冶长给抓起来了。公冶长说，「我没有杀他，我只是听那个鸟儿告诉我，那边有个死人，所以我告诉这个老太太。」那当官的怎么相信他能够明白鸟的语言？说这个人是妖言惑众，而且犯罪还在那里巧言抵赖，干脆就判了死罪，把他关到牢狱里头。当然关到牢狱当中，也试验试验他，看他是不是真的懂鸟儿的语言。把他关了六十天。最后，有一些麻雀飞到了牢狱的铁栅上，公冶长就听到这些麻雀在那叫，说什么？说在白莲水边有运玉米的，叫运粟。就是运玉米的、运粮食的车翻了，那些粮食全部撒在地上了，那人没办法收，咱们鸟儿赶快去那里去啄食。听到鸟儿讲这个话，就告诉了这些狱官们。这些官员就去检查，检验一下是不是真的，果然如此。那后来又发现，确确实实公冶长不仅懂得鸟的语言，还懂得猪的语言，结果屡次的试验他，都应验了。最后也就相信公冶长应该是说真的话，不是骗人的，就把他给释放了。当然他也就白白被冤枉了一段日子。\n　　公冶长解鸟语，雪公老人讲，「先儒多以不经，往往避而不言」。儒家，当然因为非常坚持孔子的所谓「子不语：怪、力、乱、神」，对这些奇奇怪怪的事情都不讲。「不经」的意思就是不合常理，不见于经典，没有根据的，近乎荒诞的这些话，叫不经。先儒认为公冶长解鸟语，这不可能，所以就避而不谈。实际上历史记载确实是这样，不能够避开这个历史事实。\n　　下面说，「程氏树德论语集释按周礼秋官」，程树德老先生批注《论语》，就是《论语集释》，这是近代的著作，也是非常完备的一个批注本。他引用《周礼·秋官》这篇文里头讲的，「夷隶掌与鸟言，貉隶掌与兽言，又举经传注疏，古多通鸟兽语者，何不经之有。是也。」这是程树德老先生反驳先儒所说的公冶长解鸟语是「不经」、荒诞之言，这是反驳。他引用《周礼》，这是十三经之一，「三礼」当中有《周礼》。说到「夷隶」，夷隶其实是周朝的一种官，往往是把外族的奴隶抓去担任，夷就是外族的。下面讲「貉隶」，也是另外的边远地方抓来的奴隶。他们执掌一些相关的职务，有的也懂得鸟言，有的懂得兽言，鸟兽的语言他们能懂，这《周礼》上有记载。这说明公冶长并不是第一个，古人早就有了。', null, '11', '0', '0', '2019-10-24 20:06:03', '2019-10-24 20:06:03');
INSERT INTO `book_note` VALUES ('265', '11', '龙场之悟', null, '阳明正德四年的“龙场之悟”，并不是良知之悟。根据阳明的自述，他的龙场之悟实际是“悟朱学之非，觉陆学之是”之悟，也即“是陆非朱”之悟。\n\n具体地说，这种是陆非朱之悟包含了三方面之“悟”：一是悟释、老二氏之非，立儒家“简易广大”的心学；二是悟朱子向外格物之非（理在物中，求理于物），立古本《大学》向内格物、自求于心之旨（正心，吾心自足，天下之物本无理可格）；三是悟朱子敬知双修、先知后行之非，立心学知行合一之教。\n\n', null, '11', '0', '0', '2019-10-26 18:40:10', '2019-10-26 18:40:10');
INSERT INTO `book_note` VALUES ('267', '11', '泰山不拒细壤，江河不择细流', null, '出自秦国丞相李斯的《谏逐客书》:泰山不拒细壤,故能成其高；江河不择细流,故能成其深。言内之意是说,泰山之所以有这样的高度,正是因为不拒绝渺小的土壤,堆砌而成才能形成如今的成就.江河之所以有这样的深度,正是因为不拒绝细微的溪流,汇流而成才能形成如今的规模。\n\n君子不器。\n\n空杯心态。\n', null, '11', '0', '0', '2019-10-28 19:44:23', '2019-10-28 19:44:23');
INSERT INTO `book_note` VALUES ('268', '11', '素书', null, '原始章第一\n　　夫道、德、仁、义、礼五者，一体也。道者，人之所蹈，使万物不知其所由。德者，人之所得，使万物各得其所欲。仁者，人之所亲，有慈慧恻隐之心，以遂其生成。义者，人之所宜，赏善罚恶，以立功立事。礼者，人之所履，夙兴夜寐，以成人伦之序。夫欲为人之本，不可无一焉。\n　　贤人君子，明于盛衰之道，通乎成败之数，审乎治乱之势，达乎去就之理。故潜居抱道以待其时。若时至而行，则能极人臣之位；得机而动，则能成绝代之功。如其不遇，没身而已。是以其道足高，而名重于后代。\n\n正道章第二\n　　德足以怀远，信足以一异，义足以得众，才足以鉴古，明足以照下，此人之俊也。\n　　行足以为仪表，智足以决嫌疑，信可以使守约，廉可以使分财，此人之豪也。\n　　守职而不废，处义而不回，见嫌而不苟免，见利而不苟得，此人之杰也。\n\n求人之至章第三\n       绝嗜禁欲，所以除累。抑非损恶，所以让过。贬酒阙色，所以无污。\n　　避嫌远疑，所以不误。博学切问，所以广知。高行微言，所以修身。\n　　恭俭谦约，所以自守。深计远虑，所以不穷。亲仁友直，所以扶颠。\n　　近恕笃行，所以接人。任材使能，所以济物。殚恶斥谗，所以止乱。\n　　推古验今，所以不惑。先揆后度，所以应卒。设变致权，所以解结。\n　　括囊顺会，所以无咎。橛橛梗梗，所以立功。孜孜淑淑，所以保终。\n本德宗道章第四\n　　夫志，心独行之术。\n　　长没长于博谋，安没安于忍辱，先没先于修德，乐没乐于好善，神没神于至诚，明没明于体物，吉没吉于知足，苦没苦于多愿，悲没悲于精散，病没病于无常，短没短于苟得，幽没幽于贪鄙，孤没孤于自恃，危没危于任疑，败没败于多私。\n\n遵义章第五\n　　以明示下者暗，有过不知者蔽，迷而不返者惑，以言取怨者祸，令与心乖者废，后令缪前者毁，怒而无威者犯，好众辱人者殃，戮辱所任者危，慢其所敬者凶，貌合心离者孤，亲谗远忠者亡，近色远贤者昏，女谒公行者乱，私人以官者浮，凌下取胜者侵，名不胜实者耗。\n　　略己而责人者不治，自厚而薄人者弃废。以过弃功者损，群下外异者沦，既用不任者疏，行赏吝色者沮，多许少与者怨，既迎而拒者乖。薄施厚望者不报，贵而忘贱者不久。念旧而弃新功者凶，用人不得正者殆，强用人者不畜，为人择官者乱，失其所强者弱，决策于不仁者险，阴计外泄者败，厚敛薄施者凋。\n　　战士贫，游士富者衰；货赂公行者昧；闻善忽略，记过不忘者暴；所任不可信，所信不可任者浊。牧人以德者集，绳人以刑者散。小功不赏，则大功不立；小怨不赦，则大怨必生。赏不服人，罚不甘心者叛。赏及无功，罚及无罪者酷。听谗而美，闻谏而仇者亡。能有其有者安，贪人之有者残。\n\n安礼章第六\n       怨在不舍小过，患在不预定谋。福在积善，祸在积恶。\n　　饥在贱农，寒在堕织。安在得人，危在失事。\n　　富在迎来，贫在弃时。上无常操，下多疑心。\n　　轻上生罪，侮下无亲。近臣不重，远臣轻之。\n　　自疑不信人，自信不疑人。枉士无正友，曲上无直下。\n　　危国无贤人，乱政无善人。爱人深者求贤急，乐得贤者养人厚。\n　　国将霸者士皆归，邦将亡者贤先避。\n　　地薄者大物不产，水浅者大鱼不游，树秃者大禽不栖，林疏者大兽不居。\n　　山峭者崩，泽满者溢。弃玉取石者盲，羊质虎皮者柔。\n　　衣不举领者倒，走不视地者颠。柱弱者屋坏，辅弱者国倾。\n　　足寒伤心，人怨伤国。山将崩者下先隳，国将衰者人先弊。\n　　根枯枝朽，人困国残。与覆车同轨者倾，与亡国同事者灭。\n　　见已生者慎将生，恶其迹者须避之。畏危者安，畏亡者存。\n　　夫人之所行，有道则吉，无道则凶。吉者，百福所归；凶者，百祸所攻。\n　　非其神圣，自然所钟。务善策者无恶事，无远虑者有近忧。\n　　同志相得，同仁相忧，同恶相党，同爱相求，同美相妒，同智相谋，\n　　同贵相害，同利相忌，同声相应，同气相感，同类相依，同义相亲，\n　　同难相济，同道相成，同艺相规，同巧相胜：此乃数之所得，不可与理违。\n　　释己而教人者逆，正己而化人者顺。\n　　逆者难从，顺者易行，难从则乱，易行则理。\n　　如此理身、理国、理家，可也！', null, '11', '0', '0', '2019-11-02 09:40:04', '2019-11-02 09:40:04');
INSERT INTO `book_note` VALUES ('281', '11', '《增广贤文》 摘要', null, '相逢不饮空归去，洞口桃花也笑人。\n客来主不顾，应恐是痴人。\n一年之计在于春，一日之计在于寅，一家之计在于和，一生之计在于勤。\n积金千两，不如多买经书。\n欲求生富贵，须下死功夫。\n结交须胜己，似我不如无。\n知足不辱，知止不怠。\n若登高必自卑，若涉远必自迩。\n君子固穷，小人穷斯滥矣。\n人生一世，草木一春。黑发不知勤学早，转眼便是白头翁。\n深山毕竟藏猛虎，大海终须纳细流。\n受恩深处宜先退，得意浓时便可休。\n许人一物，千金不移。\n入门休问枯荣事，观看容颜便得知。\n息却雷霆之怒，罢却虎狼之威。\n欲昌和顺须为善，要振家声在读书。\n见者易，学者难。莫将容易得，便作等闲看。\n爽口食多偏作病，快心事过恐生殃。\n惜钱莫教子，护短莫从师。', null, '11', '0', '0', '2020-01-30 01:01:08', '2020-02-09 08:53:55');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(16) NOT NULL,
  `pid` varchar(8) DEFAULT '0' COMMENT '父级Id',
  `name` varchar(32) NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('01', '0', '国学', '', '书目概要、三字经、读书指南（梁启超）', '1');
INSERT INTO `category` VALUES ('0101', '01', '道家', '', '道德经、庄子、列子等', '2');
INSERT INTO `category` VALUES ('0102', '01', '儒家', '', '四书、宋明理学（四书章句集注/四书或问/近思录）、心学（传习录）', '3');
INSERT INTO `category` VALUES ('0103', '01', '佛学', '', '', '4');
INSERT INTO `category` VALUES ('0104', '01', '史学', '', '尚书、春秋、资治通鉴；史记、汉书；二十四史', '5');
INSERT INTO `category` VALUES ('06', '0', '技术科学', '', '工科：计算机', '10');
INSERT INTO `category` VALUES ('05', '0', '自然科学', '', '理科：理、化、生', '9');
INSERT INTO `category` VALUES ('04', '0', '社会科学', '', '文科：政治、经济、法律、管理等', '8');
INSERT INTO `category` VALUES ('02', '0', '数学', '', '', '6');
INSERT INTO `category` VALUES ('03', '0', '人文科学', '', '文科：文史哲', '7');
INSERT INTO `category` VALUES ('07', '0', '其他', null, null, '11');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `user_id` int(11) NOT NULL DEFAULT '11' COMMENT '用户Id',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(512) DEFAULT NULL COMMENT '关键字',
  `content` text NOT NULL COMMENT 'Html内容',
  `category_id` varchar(16) DEFAULT NULL COMMENT '类别Id',
  `author` varchar(32) DEFAULT NULL COMMENT '作者的用户名',
  `page_view` int(11) DEFAULT '0' COMMENT '浏览量',
  `sort` int(11) DEFAULT '0' COMMENT '排序值',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `Title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('10', '11', '测试知识库', null, '测试内容', null, null, '0', '0', '2020-02-15 04:59:27', '2020-02-15 04:59:27');

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容，支持富文本',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of memo
-- ----------------------------
INSERT INTO `memo` VALUES ('16', '11', '桂林聚餐参考', '越来越福长城店\n多味羊肉馆', '2019-10-19 05:10:49', '2019-10-19 05:10:49');
INSERT INTO `memo` VALUES ('19', '11', '曾参：zēng shēn', '曾参：zēng shēn\n\n曾参一般指曾子\n\n曾子（公元前505年—公元前435年），名参（shēn），字子舆，春秋末年鲁国南武城人（山东嘉祥县）。是中国著名的思想家，孔子的晚期弟子之一，与其父曾点同师孔子，是儒家学派的重要代表人物。\n\n观点：\n\n观点一：读“参”为cān（餐）音\n\n读“参”为cān（餐）音者，认为“参”是“骖”的假借，而“骖”的古音为七南反，即cān（餐），因此“参”的发音也是cān（餐）。理由是古人的名与字是遥相呼应的，曾子的字是子舆，“舆”与车有关，而“骖”为拉车之马，因此把“参”训为“骖”符合古人名字呼应的惯例。\n\n持这种观点的多为明清学者，如明末学者方以智在《通雅•姓名》中说：“曾参，字子舆，参当音参乘之骖。”意思是说“参”应该发三匹马那个“骖”音。又如清代学者王引之在《春秋名字解诂》里写道：“曾参，字子舆。参，读为骖。”又说“古人名字多假借，必读本字而其义始明。”认为曾参实为曾骖。\n\n观点二：读“参”为shēn（身）音\n\n读“参”为shēn（身）音者，认为“参”的发音应该遵循古文献记载，而文献记载“参”的古音是所今切，即类似于今音shēn（身）。如东汉学者许慎在《说文解字》里解“森”字时写道：“森，木多皃。从林从木，读若曾参之参。”明确指出曾参之“参”的读音不是cān（餐），而是“森”，与shēn（身）相近。\n\n唐宋文人多从这个观点，如唐代诗人白居易的《慈乌夜啼》有这样的诗句：“慈乌失其母，哑哑吐哀音，画夜不飞去，经年守故林••••••嗟哉斯徒辈，其心不如禽！慈乌复慈乌，鸟中之曾参。”诗中赞叹了慈乌这种鸟类母慈子爱的美德，把小慈乌比喻为鸟类的曾参。白居易把曾参的“参”读为所今切，与许慎上述的注音相同，即诗里押的是侵韵。\n\n又如北宋文学家王安石在《初去临川》一诗中写道：“东浮溪水渡长林，上坂回头一拊心。已觉省烦非仲叔，安能养志似曾参。”王安石这首诗押的也是侵韵，如果他把曾参的“参”读为七南反，即cān（餐）音，则应该押覃韵而不是侵韵。\n\n另外，清代学者车万育著有《声律启蒙》，为儿童声韵格律的启蒙读物，书中的侵韵是：“眉对目，口对心，锦瑟对瑶琴。晓耕对寒钓，晚笛对秋砧。松郁郁，竹森森，闵损对曾参。”其中“闵损”也是孔子的学生，他跟曾参一样以孝行出名。可见车万育认为曾参的“参”不是读cān（餐），而是与shēn（身）相似。\n\n', '2019-10-23 19:58:43', '2019-10-23 19:58:43');
INSERT INTO `memo` VALUES ('21', '11', '自省 zì xǐng', 'zì xǐng\n省，会意。从眉省,从屮（草）。甲骨文和小篆字形,象眼睛观察草。本义:察看。\n省,视也。——《说文》\n省,察也。——《尔雅》\n从“察看”的本意，“省”引申出检查的意思。\n自省：检查自己的意思，反省', '2019-10-23 20:05:14', '2019-10-23 20:05:14');
INSERT INTO `memo` VALUES ('39', '11', '熟悉汽车', '右手下边调前后\n左手后面调靠背\n左手前调高低\n左车门旁行李舱\n\n机油\n防冻 冷却液\n刹车油\n', '2020-02-02 13:32:07', '2020-02-02 13:32:07');
INSERT INTO `memo` VALUES ('40', '11', '起步慢行停车', '1.上车起步\n检查车况上车，观察周围环境:\n1. 调整座椅，调整后视镜，系上安全带；\n    (检查手刹制动状态)\n2. 踩住刹车，踩离合挂空档，点火发动；\n3. 打左转灯，看左右；\n4.踩住离合挂1档，松手刹；\n5.慢抬离合至车身抖动，松开刹车起步；\n停车状态到行驶，也是慢抬离合后松刹车。\n\n\n2.停车下车\n踩刹车降速，踩离合，深踩刹车停车\n停车后不能松离合不能松刹车\n退回空挡，拉手刹\n熄火 松开离合刹车 下车\n', '2020-02-02 13:57:29', '2020-02-02 13:57:29');
INSERT INTO `memo` VALUES ('41', '11', '倒车入库', '留一点回半圈\n看到左后侧内角（车身即将平行）回正\n看后视镜下沿与标线重叠停车。\n\n1.停车调整\n对准白点，调正车身，车轮过白线停车(刹车减速 踩离合 深踩刹车)。\n调整座位:手腕刚好搭在方向盘上\n调后视镜:左侧前把手在镜子右1/4处，左边刚看到后车门把手， 微侧身刚看到车轮， \n                 右侧看到前门把手在左1/4 处，能看到后车门把手一点点。\n\n2.挂倒档 退到左后视镜下方过白色标线（车身与领线要保持1.5米距离，车身中线与前方第二个车库中间对齐），即向右打死方向盘。\n\n3.观察右侧:到第二个黄色标记时（后视镜上看后轮或车把手与直角标约两指宽，即实际距离30公分时）方向回转半圈，观察确保能进入后。\n\n4.观察左侧：能看到左侧后方直角，回正方向盘。检查和调整车身与边线平行。\n\n5.后视镜下沿与白线重叠停车。', '2020-02-02 15:47:11', '2020-02-09 07:44:13');
INSERT INTO `memo` VALUES ('42', '11', '坡道停车起步 直角转弯 曲线行驶', '\n坡道起步要打左转灯\n坡道起步 松刹车后离合器稳住不要动 不要松\n\n直角转弯 打转向灯 到标线位置转弯打死\n曲线转弯 交叉位置左侧凸起出\n碰到边线回正\n曲线转弯 ，第二次 维持右边1/3处\n\n偏离方向赶紧停车！！！\n\n', '2020-02-02 15:51:56', '2020-02-02 15:51:56');
INSERT INTO `memo` VALUES ('44', '11', '长芽的土豆不能再吃', '长芽的土豆是否能吃也要分情况而定 。土豆刚刚发芽或者芽长得还不大的时候，可以将芽以及芽眼挖掉，剩下的部分还是可以吃的。此时的毒素还集中在芽眼及附近 ,还没有扩展开来。 如果没有吃下足以导致食物中毒的土豆量，是不会什么问题的. 如果一个土豆长了好几几个芽，或已经一厘米以上，就 不要吃了。这样的土豆 挖掉芽底下一块较大的部分的部分，吃了也不会中毒， 但是营养也已经所剩无几，而且口感也 不好 。芽子很多且超过一厘米以上，要毫不犹豫的扔掉。', '2020-02-11 23:17:57', '2020-02-11 23:17:57');
INSERT INTO `memo` VALUES ('47', '11', '奥迪A4L养车费用', '随着不少豪华品牌B级车的大幅度优惠，买一辆主流豪华品牌B级车并不是那么高不可攀。比如奥迪A4L和宝马3系的主力车型，都早已经进入到了30万元以内，低配车型甚至到了25万元左右的价位。\n但也有很多人认为，一辆豪车虽然咬咬牙可以买得起，养起来却并不便宜。保养、保险、加油都会是比不小的开支。\n\n这种观点有一定道理，但说得还是比较模糊。到底养一辆豪华品牌B级车一年要多少钱呢？不妨以一辆奥迪A4L为例，以一年行驶2万公里做个计算。相信大部分家庭一年的行驶里程不会超过2万公里。\n首先计算汽油花费。奥迪A4L两驱车型的综合油耗大概是百公里8-9L，四驱高功率车型大概要高个0.5L，统一以百公里9L计算，95号汽油按7.5元计，那么，一年的汽油费用就是200*9*7.5=1.35万元。\n\n其次就是保养，奥迪A4L的保养周期是1万公里或一年，那么行驶2万公里需要保养2次。奥迪A4L的保养也是大小保养交替，仅换机油机滤的小保养的费用在1000元左右。如果加上空调滤芯和火花塞（都是2万公里的更换周期）、空气滤芯（3万公里的更换周期），那么费用就要2500元左右。这样算下来一年的保养费用大概就是3500元。\n\n第三就是保险。新车第一年的保险费用会比较高，以100万三责、车损、玻璃等几项，加上车船税，大概第一年要1万元左右。到了第二年开始，车险费用就会大幅下降，最终会维持在5-6千元每年。\n除了以上三项固定开支之外，其它开支还包括违章、停车、洗车等，这个费用就不太固定了，每个人的具体情况不同。另外，车辆过了三年保修期后，还可能存在修车费用。\n\n所以，总的算下来，养一辆奥迪A4L一年的费用至少需要1.35（汽油）+0.35（保养）+0.6（保险）=2.3万元，这个费用还不包括停车、违章、过保后的维修费等其它开支。如果粗略算下来，一辆奥迪A4L一年开2万公里，一般每年需要准备3万元养着它。', '2020-02-13 10:05:58', '2020-02-13 10:06:44');
INSERT INTO `memo` VALUES ('50', '11', '理财收益5%', '一般5%就是非常不错的了。\n稳健一点的年化收益不会超过6。', '2020-02-15 00:13:32', '2020-02-15 00:13:46');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL COMMENT '头像',
  `password` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'king', 'Lujinlong', null, '03cba5d825a27d5d60487b20744c9952', 'kinglong1984@126.com');
INSERT INTO `user` VALUES ('12', 'kinglong', 'Kinglong', null, '03cba5d825a27d5d60487b20744c9952', '471786328@qq.com');