/*
Navicat MySQL Data Transfer

Source Server         : aliyun_2022.12.23
Source Server Version : 80031
Source Host           : 47.113.199.245:3306
Source Database       : book_shop

Target Server Type    : MYSQL
Target Server Version : 80031
File Encoding         : 65001

Date: 2022-12-27 14:39:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `details` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `brief` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '上下五千年', '历史', '在这套书中，作者选择重要和著名的人物和事件，根据史籍材料，加以组织和剪裁，用通俗的现代语言写出来，不加铺叙和描写，基本上没有虚构。虽然在情节的生动性方面，受到史料的限制；但它对读者了解历史，提供的材料是比较可靠的、有根据的。', 'https://img2.doubanio.com/view/subject/l/public/s2865113.jpg', '林汉达 / 曹余章 ', '故事化的中国历史读物。', '入门');
INSERT INTO `book` VALUES ('2', '全球通史', '历史', '《全球通史》由斯塔夫里阿诺斯著，作者在本书中采用全新的史学观点和方法，将整个世界看作一个不可分割的有机的统一体，从全球的角度而不是从某一国家或某一地区的角度来考察世界各地区人类文明的产生和发展，把研究重点放在对人类历史进程有重大影响的诸历史运动、诸历史事件和它们之间的相互关联和相互影响上，努力反映局部与整体的对抗以及它们之间的相互作用。《全球通史》上起人类的起源，下迄21世纪初多极世界相待时期，上下数十万年，一气呵成。除了政治、经济外，还涉及军事、文化、教育、宗教、科学技术、人口、移民、种族关系、道德风尚、思想意识等各个方面。读来颇觉新颖爽朗，有强烈的现实感。本书一经问世，受到高度评价，立即被译成多种文字，流传甚广，影响很大。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/全球通史.jpg', 'L. S. Stavrianos', '新的史学观点和方法。', '入门');
INSERT INTO `book` VALUES ('3', '史记', '历史', '《史记》，二十四史之一，最初称为《太史公书》或《太史公记》《太史记》，是西汉史学家司马迁撰写的纪传体史书，是中国历史上第一部纪传体通史，作品中撰写了上至上古传说中的黄帝时代，下至汉武帝太初四年间共3000多年的历史。《史记》被列为“二十四史”之首，与《汉书》《后汉书》《三国志》合称“前四史”，对后世史学和文学的发展都产生了深远影响。其首创的纪传体编史方法为后来历代“正史”所传承。《史记》还被认为是一部优秀的文学著作，在中国文学史上有重要地位，被鲁迅誉为“史家之绝唱，无韵之《离骚》”，有很高的文学价值。刘向等人认为此书“善序事理，辩而不华，质而不俚”。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/史记.jpg', '司马迁', '史家之绝唱，无韵之离骚。', '进阶');
INSERT INTO `book` VALUES ('4', '国史大纲', '历史', '這是一部中國通史，因用大學教科書體例寫成，不得不力求簡要，僅舉大納，刪其瑣節。內容於學術思想，政治制度，社會風氣，國際形勢，兼有顧及，惟但求其通為一體，明其治亂盛衰之所由，聞其一貫相承之為統，以指陳吾國家民族生命精神之所寄。至其人物之詳，事業之備，則待教者讀者之自加參考，自為引伸。本書主旨則在發明其相互影響，及先後之演變發展，以作國人如何應付現時代之種種事變作根據之借鑒。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/国史大纲.jpg', '钱穆', '一部中国通史。', '进阶');
INSERT INTO `book` VALUES ('5', '东晋门阀政治', '历史', '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝；门阀政治是皇权政治在特定历史条件下出现的变态，具有暂时性和过渡性，其存在形式是门阀士族与皇权的共治。本书不落以婚宦论门阀士族的窠臼，对中国中古政治史中的这一重要问题提供了精辟的见解，具有很高的学术价值。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/东晋门阀政治.jpg', '田余庆', '中古历史的门阀政治问题。', '进阶');
INSERT INTO `book` VALUES ('6', '伯罗奔尼撒战争史', '历史', '《伯罗奔尼撒战争史》古希腊史学家修昔底德创作的历史著作，全书讲述了伯罗奔尼撒战争是以雅典为首的提洛同盟与以斯巴达为首的伯罗奔尼撒联盟之间的一场战争，几乎涉及了当时整个希腊世界。结构合理紧凑，文字简洁流畅，富有哲理和感染力，显示了作者的史才和文化素养。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/伯罗奔尼撒战争史.jpg', '修昔底德', '严谨的治学态度和缜密的史学方法。', '进阶');
INSERT INTO `book` VALUES ('7', 'A Byte of Python', '计算机', 'A Byte of Python\' is a book on programming using the Python language. It serves as a tutorial or guide to the Python language for a beginner audience. If all you know about computers is how to save text files, then this is the book for you.', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/A Byte of Python.jpg', 'Swaroop C H ', 'python的入门教程。', '编程语言');
INSERT INTO `book` VALUES ('8', 'Head First Java', '计算机', '《Head First Java》是本完整的面向对象（object-oriented，OO）程序设计和Java的学习指导。此书是根据学习理论所设计的，让你可以从学习程序语言的基础开始一直到包括线程、网络与分布式程序等项目。最重要的，你会学会如何像个面向对象开发者一样去思考，而不只是读死书。你还会玩游戏、拼图、解谜题以及以意想不到的方式与Java交互。在这些活动中，你会写出一堆真正的Java程序，包括了一个船舰炮战游戏和一个网络聊天程序。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/Head First Java.jpg', 'Kathy Sierra,Bert Bates', '面向对象程序设计和Java的学习指导。', '编程语言');
INSERT INTO `book` VALUES ('9', 'C Primer Plus', '计算机', '《C Primer Plus》共17章。第1、2章介绍了C语言编程的预备知识。第3~15章详细讲解了C语言的相关知识，包括数据类型、格式化输入/输出、运算符、表达式、语句、循环、字符输入和输出、函数、数组和指针、字符和字符串函数、内存管理、文件输入输出、结构、位操作等。第16章、17章介绍C预处理器、C库和高级数据表示。本书以完整的程序为例，讲解C语言的知识要点和注意事项。每章末设计了大量复习题和编程练习，帮助读者巩固所学知识和提高实际编程能力。附录给出了各章复习题的参考答案和丰富的参考资料。《C Primer Plus》可作为C语言的教材，适用于需要系统学习C语言的初学者，也适用于巩固C语言知识或希望进一步提高编程技术的程序员。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/C Primer Plus.jpg', 'Stephen Prata', 'C语言的基本概念和编程技巧。', '编程语言');
INSERT INTO `book` VALUES ('10', '计算机组织与结构-性能设计', '计算机', '本书是介绍当代计算机体系主流技术和最新技术的优秀教材，以Intel x86和ARM两个处理器系列为例，深入讨论了计算机组成与体系结构的基本原理和概念，并将它们运用到当代计算机系统设计的问题中。自第7版出版以来，计算机组成与体系结构领域又有了不少革新和进展。第8版坚持全面覆盖整个领域，并在此基础上尽量跟上新技术的步伐。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/计组.jpg', 'William Stallings', '介绍当代计算机体系的优秀教材。', '重点');
INSERT INTO `book` VALUES ('11', '计算机网络-自顶向下方法', '计算机', '本书是经典的计算机网络教材，采用作者独创的自顶向下方法来讲授计算机网络的原理及其协议，自第1版出版以来已经被数百所大学和学院选作教材，被译为14种语言。第7版保持了以前版本的特色，继续关注因特网和计算机网络的现代处理方式，注重原理和实践，为计算机网络教学提供一种新颖和与时俱进的方法。同时，第7版进行了相当多的修订和更新，首次改变了各章的组织结构，将网络层分成两章（第4章关注网络层的数据平面，第5章关注网络层的控制平面），并将网络管理主题放入新的第5章中。此外，为了反映自第6版以来计算机网络领域的新变化，对其他章节也进行了更新，删除了FTP和分布式散列表的材料，用流行的因特网显式拥塞通告（ECN）材料代替了ATM网络的材料，更新了有关802.11（即WiFi）网络和蜂窝网络（包括4G和LTE）的材料，全面修订并增加了新的课后习题，等等。本书适合作为计算机、电气工程等专业本科生的“计算机网络”课程教科书，同时也适合网络技术人员、专业研究人员阅读。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/计网.jpg', 'James F. Kurose / Keith W. Ross', '经典的计算机网络教材。 ', '重点');
INSERT INTO `book` VALUES ('12', '数据结构与算法分析', '计算机', '本书是国外数据结构与算法分析方面的经典教材，使用卓越的Java编程语言作为实现工具讨论了数据结构(组织大量数据的方法)和算法分析(对算法运行时间的估计)。本书把算法分析与有效率的Java程序的开发有机地结合起来，深入分析每种算法，内容全面、缜密严格，并细致讲解精心构造程序的方法。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/数据结构与算法分析.jpg', 'Mark Allen Weiss', '数据结构与算法分析方面的经典教材。', '基础');
INSERT INTO `book` VALUES ('13', '高中必刷题', '科学', '个人认为高中最nice的教辅。长得好看，题不多，答案详细，排版好看。可惜的是印刷和纸质没有当初外研社的时候好了。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/必刷题.png', '杨文彬', '深受高中学子喜爱的作业书。', '入门');
INSERT INTO `book` VALUES ('14', '金考卷', '科学', '不多说，反正我没刷完过。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/金考卷.png', '杜志建 ', '深受高中学子喜爱的高考复习资料。', '入门');
INSERT INTO `book` VALUES ('15', '时间简史', '科学', '《时间简史》讲述是探索时间和空间核心秘密的故事，是关于宇宙本性的最前沿知识，包括我们的宇宙图像、空间和时间、膨胀的宇宙不确定性原理、基本粒子和自然的力、黑洞、黑洞不是这么黑、时间箭头等内容。第一版中的许多理论预言，后来在对微观或宏观宇宙世界观测中得到证实。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/时间简史.jpg', 'Stephen Hawking', '畅销全世界的科学著作。', '入门');
INSERT INTO `book` VALUES ('16', '普林斯顿微积分读本', '科学', '本书阐述了求解微积分的技巧, 详细讲解了微积分基础、极限、连续、微分、导数的应用、积分、无穷级数、泰勒级数与幂级数等内容，旨在教会读者如何思考问题从而找到解题 所需的知识点, 着重训练大家自己解答问题的能力。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/普林斯顿微积分读本.jpg', 'Adrian Banner ', '深入浅出的微积分入门书籍。', '进阶');
INSERT INTO `book` VALUES ('17', '自然哲学的数学原理', '科学', '在本书中，牛顿遵循古希腊的公理化模式，从定义、定律（公理）出发，导出命题；在探讨具体的问题（如月球的运动）时，他把从理论导出的结果和观察结果相比较而得出结论。本书开篇为“定义”，交代了与物质的量和力相关的八个重要定义；紧接着，本书阐述了九个“公理或运动的定律” ，包含了著名的运动三定律。本书的主体部分为“论物体的运动”与“论宇宙的系统”，牛顿在论述中导出了万有引力定律，并由此研究了地球的形状、月球的运动等。本书是第一次科学革命的集大成之作，在物理系、数学、天文学和哲学等领域产生了巨大影响。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/自然哲学的数学原理.jpg', 'Isaac Newton', '经典力学开山之作。', '进阶');
INSERT INTO `book` VALUES ('18', '费恩曼物理学讲义', '科学', '20世纪60年代初，美国一些理工科大学鉴于当时的大学基础物理教学与现代科学技术的发展不相适应，纷纷试行教学改革，加利福尼亚理工学院就是其中之一。该校于1961年9月至 1963年5月特请著名物理学家费恩曼主讲一二年级的基础物理课，事后又根据讲课录音编辑出版了《费恩曼物理学讲义》。本讲义共分三卷，第1卷包括力学、相对论、光学、气体分子动理论、热力学、波等，第2卷主要是电磁学，第3卷是量子力学。全书内容十分丰富，在深度和广度上都超过了传统的普通物理教材。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/狭义与广义相对论浅说.jpg', 'Richard P. Feynman / Robert B. Leighton / Matthew Sands', '经典的物理导引。', '进阶');
INSERT INTO `book` VALUES ('19', '拜厄钢琴基本教程', '艺术', '《拜厄钢琴基本教程》主要包括：音乐入门知识；单手与双手的触键练习；从全音符到八分音符的四手联弹；识别低音谱表中的音符等。《拜厄钢琴基本教程》有109条练习和34条附录练习，其间穿插了《布谷鸟》、《啊！苏姗姗》等22首小乐曲，使学琴者在这琴之初就体味到弹奏乐曲的乐趣。在济重趣味性的同时，注意知识与练习衔接、与时代同步，力求做到内容严谨。为符合我国读者的阅读习惯，该版重新编写了说明文字。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/拜厄钢琴基本教程.jpg', 'Ferdinand Beyer', '初级钢琴教材教程。', '入门');
INSERT INTO `book` VALUES ('20', '艺术的故事', '艺术', '本书概括地叙述了从最早的洞窟绘画到当今的实验艺术的发展历程，阐明艺术史是“各种传统不断迂回、不断改变的历史，每一件作品在这历史中都既回顾过去又导向未来”。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/艺术的故事.jpg', ' Ernst Hans Josef Gombrich', '有关艺术的著名著作。', '入门');
INSERT INTO `book` VALUES ('21', '九成宫醴泉铭', '艺术', '《九成宫醴泉铭》结体修长，中宫收紧，四边开张，左敛右纵，化险为夷。字形随势赋形，左右结构作相背之势，上下结构上窄下宽，间架开阔稳定，气象庄严。其布白匀整，字距、行距疏朗，为九宫最准者，全碑血脉畅通，气韵萧然。', 'https://img2.doubanio.com/view/subject/l/public/s22778781.jpg', '欧阳询', '欧阳询晚年经意之作。', '入门');
INSERT INTO `book` VALUES ('22', '美的历程', '艺术', '本书是中国美学的经典之作。凝聚了作者李泽厚先生多年研究，他把中国人古往今来对美的感觉玲珑剔透地展现在大家眼前，如斯感性，如斯亲切。今配以精美的插图，本书就更具体地显现出中国这段波澜壮阔的美的历程。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/美的历程.jpg', '李泽厚 ', '中国美学的经典之作。', '进阶');
INSERT INTO `book` VALUES ('23', '美学', '艺术', '本书讲述了美学的范围和地位、艺术美的概念，以及美和艺术的科学研究方式等，反映了黑格尔的主要美学思想，是他客观唯心主义哲学体系的一个组成部分，也是他的哲学体系在美学和艺术领域的具体表现，集西方美学理论之大成，把德国古典美学推向顶峰。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/美学.jpg', 'Georg Wilhelm Friedrich Hegel', '黑格尔的美学理论体系。', '进阶');
INSERT INTO `book` VALUES ('24', '围城', '文学', '《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现。钱钟书先生将自己的语言天才并入极其渊博的知识，再添加上一些讽刺主义的幽默调料，以一书而定江山。《围城》显示给我们一个真正的聪明人是怎样看人生，又怎样用所有作家都必得使用的文字来表述自己的“观”和“感”的。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/围城.jpg', '钱锺书', '围在城里的人想出去，城外的人想进来。', '不分先后');
INSERT INTO `book` VALUES ('25', '百年孤独', '文学', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/百年孤独.jpg', '马尔克斯', '魔幻现实主义文学。', '不分先后');
INSERT INTO `book` VALUES ('26', '红与黑', '文学', '于连是一个木匠的儿子，长着少女似的清秀面孔，天资聪颖，记忆超群，有着非凡的意志力。他受父兄虐待，也深以微贱的出身为耻。他凭借熟记拉丁文圣经的资本在维立叶尔市长德·瑞那尔夫人家里当上了家庭教师，并悄悄和德·瑞那尔夫人恋爱。他们的秘密恋情被市长知道后，于连不得不远走贝尚松神学院，一心希望能凭借自己的聪明才智在此出人头地。因为院长主教之间的勾心斗角，于连离开神学院去了巴黎的木尔侯爵府，他非同寻常的才能与骄傲征服了侯爵家的小姐玛特尔，于是与玛特尔小姐恋爱，于连的跻身上流社会的梦想似乎就要实现了。此时侯爵收到德·瑞那尔夫人被迫誊写的一封揭发信，于连的梦想破灭。他到了维立叶尔的教堂向德·瑞那尔夫人开了两枪。于连被捕入狱。德·瑞那尔夫人买通狱吏，使于连免受虐待。得知原委，于连疯狂地爱上了德·瑞那尔夫人。于连被判死刑，他拒绝玛特尔和德·瑞那尔夫人为他上诉。于连受刑后，玛特尔亲手埋葬了他的头颅。德·瑞那尔夫人三天后也离开了人世。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/红与黑.jpg', '司汤达', '第一部批判现实主义杰作。', '不分先后');
INSERT INTO `book` VALUES ('27', '巴黎圣母院', '文学', '《巴黎圣母院》艺术地再现了四百多年前法王路易十一统治时期的历史真实，宫廷与教会如何狼狈为奸压迫人民群众，人民群众怎样同两股势力英勇斗争。本书以1482年的法国为背景，以吉普赛姑娘爱丝美拉达与年轻英俊的卫队长，道貌岸然的副主教以及畸形、丑陋的敲钟人之间的关系为主线，热情呕歌了吉普赛姑娘与敲钟人高尚的品格，深刻鞭挞了卫队长与副主教的虚伪与卑下。小说体现了雨果的“美丑对照”的艺术表现原则，它的发表，打破了伪古典主义的桎梏，标志着浪漫主义的彻底胜利。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/巴黎圣母院.jpg', '维克多·雨果', '“美丑对照”原则。', '不分先后');
INSERT INTO `book` VALUES ('28', '唐诗鉴赏辞典', '文学', '《唐诗鉴赏辞典》共收唐代190多位诗人诗作1100余篇，由萧涤非、程千帆、马茂元、周汝昌、周振甫、霍松林等古典文学专家撰写赏析文章。所收唐诗作品面广，各种艺术流派的诗篇兼收并蓄，较全面地展现了唐诗绚丽多彩的艺术风姿。全书约190万字。另配有唐代诗人年表、唐诗书目、诗体诗律等多种附录，是文学爱好者的首选读物。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/唐诗鉴赏辞典.jpg', '俞平伯', '文艺类鉴赏辞典的发轫之作。', '不分先后');
INSERT INTO `book` VALUES ('29', '红楼梦', '文学', '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主思想的萌动。结构宏大、情节委婉、细节精致，人物形象栩栩如生，声口毕现，堪称中国古代小说中的经典。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/红楼梦.jpg', '曹雪芹', '百科全书式的长篇小说。', '不分先后');
INSERT INTO `book` VALUES ('30', '神曲', '文学', '神曲》是意大利著名诗人但丁历时十余年写就的一部古典长诗，分为《地狱篇》、《炼狱篇》、《天堂篇》三部分。全诗以旅人但丁在黑林中迷路为起点，讲述了他在维吉尔的指引下，穿过地心，走出地狱，攀登炼狱山之顶，随贝缇丽彩层层飞越诸天，最终得睹三位一体的故事，是一场集魔幻、新奇、恐怖、惊险、智慧于一体的奇境之旅。全诗一万四千二百三十三行，每三行自成单元，隔行押韵，首尾相应，形成中外文学史上绝无仅有的均衡对称。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/神曲.png', '但丁', '人文主义思想的曙光。', '不分先后');
INSERT INTO `book` VALUES ('31', '苏菲的世界', '哲学', '14岁的少女苏菲不断接到一些极不寻常的来信，世界像谜团一般在她眼底展开，她在一位神秘导师的指引下，苏菲开始思索，从苏格拉底、柏拉图到达尔文、弗洛伊德等哲学大师所思考的根本问题。苏菲运用少女天生的悟性与后天知识，企图解开这些谜团，然而，事实真相远比她所想的更怪异、更离奇。《苏菲的世界》，是智慧的世界，梦的世界。它将会唤醒每个人内心深处对生命的赞叹与对人生终极意义的关怀与好奇。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/s29580784.jpg', '乔斯坦·贾德', '风靡世界的哲学启蒙书。', '入门');
INSERT INTO `book` VALUES ('32', '理想国', '哲学', '《理想国》一书是柏拉图的一篇重要对话录，对话录里柏拉图以苏格拉底之口通过与其他人对话的方式设计了一个真、善、美相统一的政体，即可以达到公正的理想国。柏拉图的理想国是人类历史上最早的乌托邦。在他的理想国里统治者必须是哲学家，他认为现存的政治都是坏的，人类的真正出路在于哲学家掌握政权，也只有真正的哲学家才能拯救当时城邦所处的危机。这种信念构成了柏拉图成熟的政治哲学体系的核心。在他的眼里“哲学家”有着特殊的内涵。他认为哲学家是最高尚、最有学识的人，而这种贤人统治下的贤人政体就是最好是政体。所以，只有建立以哲学家为国王的国家才是最理想的国家。这个国家就是存在于天上的模范国家。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/理想国.jpg', '柏拉图', '近代“乌托邦”思想的源头。', '进阶');
INSERT INTO `book` VALUES ('33', '社会契约论', '哲学', '本书是十八世纪法国启蒙思想家、法国大革命的思想先驱卢梭（1712—1778）的一部政治哲学著作。它探讨的是政治权利的原理，它的主旨是为人民民主主权的建立奠定理论基础。本书分为四卷：第一卷论述了社会结构和社会契约，第二卷阐述主权及其权利，第三卷阐述政府及其运作形式，第四卷讨论几种社会组织。书中所提倡的民主理论很快风靡世界，不仅引发了震惊世界的法国大革命，亦为美国《独立宣言》、法国《人权宣言》等奠定了理论基础。本书第一次提出了“天赋人权”和“主权在民”的思想，后者是现代民主制度的基石。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/社会契约论.jpg', '卢梭', '“天赋人权”和“主权在民”。', '进阶');
INSERT INTO `book` VALUES ('34', '精神现象学', '哲学', '《精神现象学》不仅是黑格尔本人全部著作最有独创性的著作，而且是在整个西方哲学历史上最富于新颖独创的著作之一。他是它不是从天而降，它也有其来源和继承，发展过程。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/精神现象学.jpg', '黑格尔', '黑格尔哲学体系的建立。', '进阶');
INSERT INTO `book` VALUES ('35', '纯粹理性批判', '哲学', '康德的《纯粹理性批判》是西方哲学史上一部划时代的著作。它从认识何以可能出发，对唯理论和经验论进行了批判、扬弃，认为人类知识的来源有两个，一个是人的感官提供的后天感知经验，另一个是人类思维中先天的、给知识带来必然性和普遍性的先天形式和范畴，它们只适用于现象界，而不适用于超验的本体—自在之物。康德哲学推翻了旧形而上学的统治，被称作哲学上的“哥白尼革命”。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/纯粹理性批判.jpg', '康德', '哲学上的“哥白尼革命”。', '进阶');
INSERT INTO `book` VALUES ('36', '朱光潜谈读书', '朱光潜', '    1 书是读不尽的，就读尽也是无用，许多书都没有一读的价值。多读一本没有价值的书，便丧失可读一本有价值的书的时间和精力；所以须慎加选择。你自己自然不会选择，须就教于批评家和专门学者。我不能告诉你必读的书，我能告诉你不必读的书。我所指的不必读的书，是谈书的书，是值不得读第二遍的书，走进一个图书馆，你尽管看见千卷万卷的纸本子，其中真正能够称为“书”的恐怕还难上十卷百卷。你应该读的只是这十卷百卷的书。在这些书中间你不但可以得到较真确的知识，而且可以于无形中吸收大学者治学的精神和方法。这些书才能撼动你的心灵，激动你的思考。其它像《文学大纲》、《科学大纲》以及杂志报章上的书评，实在都不能供你受用。你与其读千卷万卷的诗集，不如读一部《国风》或《古诗十九首》，你与其读千卷万卷谈希腊哲学的书籍，不如读一部柏拉图的《理想国》。\n    2　你也许要问我像我们中学生究竟应该读些什么书呢?这个问题可是不易回答。你大约还记得北京《京报副刊》曾征求“青年必读十种”，结果有些人所举的十种尽是几何代数，有些人所举的十种尽是《史记》、《汉书》。本来这种征求的本意，求以一个人的标准做一切人的标准，好像我只欢喜吃面，你就不能吃米，完全是一种错误见解。各人的天资、兴趣、环境、职业不同，你怎么能定出万应灵丹似的十种书，供天下无数青年读之都感觉同样趣味，发生同样效力?\n    3　我特地去调查了几个英国公共图书馆。他们的青年读品部最流行的书可以分为四类：(1) 冒险小说和游记，(2)神话和寓言，(3)生物故事，(4)名人传记和爱国小说。其中代表的书籍是幽尔??(凡尔纳)的《八十日环游世界记》和《海底二万里》，德孚(笛福)的《鲁滨逊飘流记》，大仲马的《三剑侠》，霍爽(霍桑)的《奇书》和《丹谷闲话》(Hawthorne:Wonder Book and Tanglewood Tales)，金斯莱(Kingsiey)的《希腊英雄传》(Heroes)，法布尔的《 鸟兽故事》(Fabre:Story Book of Birds and Brasts)，安徒生的《童话》，骚德的《纳尔 逊传》(Southey:Life of Nelson)，房龙的《人类故事》(Vanloon:The Story of Mankind) 之类。这些书在外国虽然流行，给中国青年读，却不甚相宜。中国学生们大半是少年老成，在中学时代就欢喜煞有介事的谈一点学理。他们――包括你和我自然都在内――不仅欢喜谈谈文学，还要研究社会问题，甚至于哲学问题。这既是一种自然倾向，也就不能漠视，我个人的见解也不妨提起和你商量商量。十五六岁以后的教育宜重发达理解，十五六岁以前的教育宜重发达想象。所以初中的学生们宜多读想象的文字，高中的学生才应该读含有学理的文字。\n    4　谈到这里，我还没有答复应读何种书的问题。老实说，我没有能力答复，我自己便没曾读过几本“青年必读书”，老早就读些壮年必读书。比方中国书里，我最欢喜《国风》、《庄子》、《楚辞》、《史记》、《古诗源》、《文选》中的《书笺》、《世说新语》、《陶渊明 集》、《李太白集》、《花间集》、《张惠言词选》、《红楼梦》等等。在外国书里，我最欢喜溪兹(济慈)、雪莱、考老芮基(柯尔律治)、白朗宁诸人的诗集，苏菲克里司(索福克勒斯)的七悲剧，莎士比亚的《哈孟列德(哈姆雷特)》、《李尔王》和《奥塞罗》，歌德的《浮士德》，易卜生的戏剧集，杜(屠)格涅夫的《新田地(处女地)》和《父与子》，妥斯套夫斯克(陀斯妥耶夫斯基)的《罪与罚》，福洛伯(福楼拜)的《布华里(包法利)夫人》，莫泊桑的小说集，小泉八云关于日本的著作等等。如果我应北京《京报副刊》的征求，也许都把这古董洋货捧上，凑成“青年必读书十种”。但是我知道这是荒谬绝伦。所以我现在不敢答复你应读何书的问题。你应该请教你所知的专门学者，请他们各就自己所学范围以内指定三两种青年可读的书。你如果请一个人替你面面俱到的设想，比方他是学文学的人，他也许明知 青年必读书应含有社会问题科学常识等等，而自己又没甚把握，姑且就他所知的一两种拉来凑数，你就像问道于盲了。同时，你要知道读书好比探险，也不能全靠别人指导，自己也须费些工夫去搜求。我从来没有听见有人按照别人替他定的“青年必读书十种”，或“世界名著百种”读下去，便成就一个学者。别人只能介绍，抉择还要靠你自己。\n    5　读书方法，我不能多说，只有两点须在此约略提起：第一，凡值得读的书至少须读两遍。第一遍须快读，着眼在醒豁全篇大旨与特色。第二遍须慢读，须以批评态度衡量书的内容。第二，读过一本书，须笔记纲要精彩和你自己的意见。记笔记不仅可以帮助你记忆，而且可以逼得你仔细。各人天资习惯不同，你用哪种方法收效较大，我用哪种方法收效较大，不是一概而论的。你自己终究会找出你自己的方法，别人决不能给你一个方法，使你可以依法炮制。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/朱光潜.png', '朱光潜', '无', '');
INSERT INTO `book` VALUES ('37', '培根论读书', '培根', '    读书足以怡情，足以博才，足以长才。其怡情也，最见于独处幽居之时；其博才也，最见于高谈阔论之中；其长才也，最见于处世判事之际。练达之士虽能分别处理细事或一一判别枝节，然纵观统筹、全局策划，则舍好学深思者莫属。读书费时过多易惰，文采藻饰太盛则矫，全凭条文断事乃学究故态。读书补天然之不足，经验又补读书之不足，盖天生才干犹如自然花草，读书然后知如何修剪移接；而书中所示，如不以经验范之，则又大而无当。有一技之长者鄙读书，无知者羡读书，唯明智之士用读书，然书并不以用处告人，用书之智不在书中，而在书外，全凭观察得之。读书时不可存心诘难作者，不可尽信书上所言，亦不可只为寻章摘句，而应推敲细思。书有可浅尝者，有可吞食者，少数则须咀嚼消化。换言之，有只须读其部分者，有只须大体涉猎者，少数则须全读，读时须全神贯注，孜孜不倦。书亦可请人代读，取其所作摘要，但只限题材较次或价值不高者，否则书经提炼犹如水经蒸馏、淡而无味矣。\n    读书使人充实，讨论使人机智，笔记使人准确。因此不常作笔记者须记忆特强，不常讨论者须天生聪颖，不常读书者须欺世有术，始能无知而显有知。读史使人明智，读诗使人灵秀，数学使人周密，科学使人深刻，伦理学使人庄重，逻辑修辞之学使人善辩：凡有所学，皆成性格。人之才智但有滞碍，无不可读适当之书使之顺畅，一如身体百病，皆可借相宜之运动除之。滚球利睾肾，射箭利胸肺，慢步利肠胃，骑术利头脑，诸如此类。如智力不集中，可令读数学，盖演题须全神贯注，稍有分散即须重演；如不能辨异，可令读经院哲学，盖是辈皆吹毛求疵之人；如不善求同，不善以一物阐证另一物，可令读律师之案卷。如此头脑中凡有缺陷，皆有特药可医。\n', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/培根.png', '培根', '无', '');
INSERT INTO `book` VALUES ('38', '萧统文选序', '萧统', '式观元始，眇觌玄风，冬穴夏巢之时，茹毛饮血之世，世质民淳，斯文未作。逮乎伏羲氏之王天下也，始画八卦，造书契，以代结绳之政，由是文籍生焉。《易》曰：“观乎天文，以察时变；观乎人文，以化成天下。”文之时义，远矣哉！若夫椎轮为大辂之始，大辂宁有椎轮之质？增冰为积水所成，积水曾微增冰之凛，何哉？盖踵其事而增华，变其本而加厉。物既有之，文亦宜然。随时变改，难可详悉。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/萧统.png', '萧统', '观乎天文，以察时变；观乎人文，以化成天下......', '');
INSERT INTO `book` VALUES ('39', '陆机文赋', '陆机', '余每观才士之所作，窃有以得其用心。夫放言谴辞，良多变矣，妍蚩好恶，可得而言。每自属文，尤见其情。恒患意不称物，文不逮意。盖非知之难，能之难也。故作《文赋》，以述先士之盛藻，因论作文之利害所由，它日殆可谓曲尽其妙。至于操斧伐柯，虽取则不远，若夫随手之变，良难以辞逮。盖所能言者具于此云…...伊兹文之为用，固众理之所因。恢万里而无阂，通亿载而为津。俯殆则于来叶，仰观象乎古人。济文武于将坠，宣风声于不泯。塗无远而不弥，理无微而弗纶。配霑润于云雨，象变化乎鬼神。被金石而德广，流管絃而日新。', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/陆机.png', '陆机', '恢万里而无阂，通亿载而为津。俯殆则于来叶，仰观象乎古人。......', '');
INSERT INTO `book` VALUES ('86', '', '', '', '', '', '', '');
INSERT INTO `book` VALUES ('87', '', '', '', '  ', '', '', '');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `views` int DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `avatar` varchar(20000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('24', '6f', '36', '11', 'https://lar-blog.oss-cn-nanjing.aliyuncs.com/picGo_img/剪辑/电影海报/index.jpg', '一条签名', '可以在发帖区发表你对书籍的看法~');
INSERT INTO `comment` VALUES ('27', '无恙', '17', '5', 'https://thirdwx.qlogo.cn/mmopen/vi_32/9POApiaVA9VLcZkcWialrzuFa1tUmWjbKkBDickshlfYMcG1KVU8jVC08zyFW7U2vAzdbn19AFTvz170icibOc7Z53Q/132', '这个njuer很懒，啥都没写~', '阿里云测试！');
INSERT INTO `comment` VALUES ('28', 'WJJ', '10', '250', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Oj3SmCd6xfUwVNFcxA0tGjLYsouDOOI5nMesWr2XpaHrvIyBzQiagBMh4FDKxRVDD9Hpn0yKBxygqEWWhQxCCcQ/132', '这个njuer很懒，啥都没写~', 'hello, world!');
INSERT INTO `comment` VALUES ('31', '微信用户', '5', '5', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '这个njuer很懒，啥都没写~', 'hello world');
