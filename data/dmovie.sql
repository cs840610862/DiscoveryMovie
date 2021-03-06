-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-02-22 07:46:37
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dmovie`
--

-- --------------------------------------------------------

--
-- 表的结构 `dm_user`
--

CREATE TABLE IF NOT EXISTS `dm_user` (
`uid` int(11) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(18) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `regTime` bigint(20) DEFAULT NULL,
  `headImg` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dm_user`
--

INSERT INTO `dm_user` (`uid`, `uname`, `upwd`, `phone`, `qq`, `email`, `regTime`, `headImg`) VALUES
(1, 'cs01', 'abc123', '17752685207', '1506263155', '1506263155@qq.com', 12324564545, 'Images/image.png'),
(3, 'cs840610862', 'abc123456', '17752685203', '123456789', '1506263155@qq.com', 0, 'Images/user_02.jpg'),
(5, 'cs02', 'abc123456', '17752685201', '123456789', '1506263155@qq.com', 0, 'Images/user_03.jpg'),
(7, 'cs04', 'abc111', '15552695896', '123456789', '122@qq.com', 0, 'Images/user_04.jpg'),
(10, 'cs03', 'abc123', '15062631556', '123456789', '150@qq.com', 0, 'Images/image.png'),
(11, 'cs05', 'abc123', '15062631235', '123456789', '1@qq.com', 0, 'Images/image.png'),
(12, 'cs06', 'abc123', '15625636589', '123456789', '2@qq.com', 0, 'Images/image.png'),
(13, 'cs06', 'abc123', '15625636589', '123456789', '2@qq.com', 0, 'Images/image.png'),
(14, 'cs07', 'abc123', '15598758969', '123456789', '3@qq.com', 0, 'Images/image.png'),
(15, 'cs08', 'abc123', '15623659865', '123456789', '4@qq.com', 0, 'Images/image.png'),
(16, 'cs09', 'abc123', '15654985698', '123456789', '3@qq.com', 0, 'Images/image.png'),
(17, 'cs10', 'abc123', '15263569876', '123456789', '2@qq.com', 0, 'Images/image.png'),
(18, 'cs100', 'abc123', '1552365896', '123456789', 'q@qq.com', 0, 'Images/image.png'),
(19, 'cs102', 'abc123', '15658965789', '123456789', '4@qq.com', 0, 'Images/image.png');

-- --------------------------------------------------------

--
-- 表的结构 `invitation_all`
--

CREATE TABLE IF NOT EXISTS `invitation_all` (
`aiid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `invitation_all`
--

INSERT INTO `invitation_all` (`aiid`, `uid`, `content`) VALUES
(1, 1, '希望越做越好！'),
(2, 2, '！！！七八年前的时候IMDB就已经基本上停更了，后来就没再关注。今天偶然点开，发现居然“复活”了！！望越做越好。'),
(3, 3, '不好，没有一进网页就一目了然的感觉，新进来的人完全不知道点哪，建议向80s之类的网站学一学'),
(4, 4, '希望网站越做越好，IMDB全英看不懂'),
(5, 2, '这网终于复活了，快快搞起来吧。'),
(6, 1, '新版网页制作的好时尚、好酷炫');

-- --------------------------------------------------------

--
-- 表的结构 `invitation_replay`
--

CREATE TABLE IF NOT EXISTS `invitation_replay` (
`riid` int(11) NOT NULL,
  `responderId` int(11) DEFAULT NULL,
  `responderContent` varchar(1024) DEFAULT NULL,
  `aiid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `main_banner_carousel`
--

CREATE TABLE IF NOT EXISTS `main_banner_carousel` (
`mbcid` int(11) NOT NULL,
  `src` varchar(1024) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `href` varchar(1024) DEFAULT NULL,
  `mname` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `main_banner_carousel`
--

INSERT INTO `main_banner_carousel` (`mbcid`, `src`, `mark`, `href`, `mname`) VALUES
(1, 'http://posters.imdb.cn/upload/2017/02/05/dqWDzjLsa_1486286320.jpg', 0, 'http://www.imdb.cn/title/tt6315750', '决战食神'),
(2, 'http://posters.imdb.cn/upload/2017/02/05/NrNU3ZrrK_1486285552.jpg', 1, 'http://www.imdb.cn/title/tt1498382', '美版午夜凶铃3'),
(3, 'http://posters.imdb.cn/upload/2017/02/05/XtLr4kr4w_1486287826.jpg', 2, 'http://www.imdb.cn/title/tt0210222', '仙球大战'),
(4, 'http://posters.imdb.cn/upload/2017/02/05/7tSwuBLmj_1486287351.jpg', 3, 'http://www.imdb.cn/title/tt2387710', '大脚印'),
(5, 'http://posters.imdb.cn/upload/2017/02/05/luprRDQRG_1486286885.jpg', 4, 'http://www.imdb.cn/title/tt5992138', '遊戏规则');

-- --------------------------------------------------------

--
-- 表的结构 `main_prevue`
--

CREATE TABLE IF NOT EXISTS `main_prevue` (
`mpid` int(11) NOT NULL,
  `mname` varchar(64) DEFAULT NULL,
  `src` varchar(1024) DEFAULT NULL,
  `href` varchar(1024) DEFAULT NULL,
  `simple_info` varchar(64) DEFAULT NULL,
  `playing_time` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `main_prevue`
--

INSERT INTO `main_prevue` (`mpid`, `mname`, `src`, `href`, `simple_info`, `playing_time`) VALUES
(1, 'BJ单身日记3', 'Images/175216.62120220.jpg', NULL, '《BJ单身日记3》15年情怀特辑 经典阵容全线回归', '2017.1.1中国 上映'),
(2, NULL, 'Images/192532.46654518.jpg', NULL, NULL, NULL),
(3, NULL, 'Images/151252.96985988.jpg', NULL, NULL, NULL),
(4, NULL, 'Images/095423.76009516.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `main_searchrank`
--

CREATE TABLE IF NOT EXISTS `main_searchrank` (
`sid` int(11) NOT NULL,
  `sname` varchar(64) DEFAULT NULL,
  `imgsrc` varchar(64) DEFAULT NULL,
  `date` varchar(13) DEFAULT NULL,
  `infosrc` varchar(64) DEFAULT NULL,
  `watchsrc` varchar(64) DEFAULT NULL,
  `src_info` varchar(1024) DEFAULT NULL,
  `watch_info` varchar(1024) DEFAULT NULL,
  `search_type` varchar(16) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `main_searchrank`
--

INSERT INTO `main_searchrank` (`sid`, `sname`, `imgsrc`, `date`, `infosrc`, `watchsrc`, `src_info`, `watch_info`, `search_type`) VALUES
(1, '阿凡达 2', 'Images/poster_62421_1480785239.jpg', '2018/12/21', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(2, '正义联盟：战争', 'Images/poster_91046_1478903688.jpg', '2017/11/17', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(3, '变形金刚5:最后的骑士', 'Images/poster_93181_1479990244.jpg', '2017/6/23', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(4, '异形:契约', 'Images/poster_94579_1467139149.jpg', '2017/5/19', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(5, '星球大战外传:侠盗一号', 'Images/poster_99979_1476307189.jpg', '2016/12/16', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(6, 'Frank & Lola', 'Images/poster_127567_1477600733.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(7, 'All We Had', 'Images/poster_127435_1477055248.jpg', '2016/12/06', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(8, 'Office Christmas Party', 'Images/poster_126899_1476717392.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(9, 'Miss Sloane', 'Images/poster_126415_1473966198.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(10, 'Sugar Mountain', 'Images/placeholder-cs.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(11, 'Spectral', 'Images/poster_83966_1480707148.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(12, 'The Founder', 'Images/poster_125183_1481736900.jpg', '2016/12/07', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(13, 'Run the Tide', 'Images/poster_127605_1478530175.jpg', '2016/12/02', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(14, 'The Eyes of My Mother', 'Images/poster_127473_1478814805.jpg', '2016/12/02', '详细介绍', '去看电影', NULL, NULL, '热门搜索'),
(15, 'Abattoir', 'Images/poster_57377_1478803942.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '热门搜索'),
(16, '阿凡达 3', 'Images/poster_62421_1480785239.jpg', '2018/12/21', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(17, '正义联盟：战争', 'Images/poster_91046_1478903688.jpg', '2017/11/17', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(18, '变形金刚5:最后的骑士', 'Images/poster_93181_1479990244.jpg', '2017/6/23', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(19, '异形:契约', 'Images/poster_94579_1467139149.jpg', '2017/5/19', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(20, '星球大战外传:侠盗一号', 'Images/poster_99979_1476307189.jpg', '2016/12/16', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(21, 'Frank & Lola', 'Images/poster_127567_1477600733.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(22, 'All We Had', 'Images/poster_127435_1477055248.jpg', '2016/12/06', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(23, 'Office Christmas Party', 'Images/poster_126899_1476717392.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(24, 'Miss Sloane', 'Images/poster_126415_1473966198.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(25, 'Sugar Mountain', 'Images/placeholder-cs.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(26, 'Spectral', 'Images/poster_83966_1480707148.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(27, 'The Founder', 'Images/poster_125183_1481736900.jpg', '2016/12/07', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(28, 'Run the Tide', 'Images/poster_127605_1478530175.jpg', '2016/12/02', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(29, 'The Eyes of My Mother', 'Images/poster_127473_1478814805.jpg', '2016/12/02', '详细介绍', '去看电影', NULL, NULL, '经典搜索'),
(30, 'Abattoir', 'Images/poster_57377_1478803942.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '经典搜索'),
(31, '阿凡达 4', 'Images/poster_62421_1480785239.jpg', '2018/12/21', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(32, '正义联盟：战争', 'Images/poster_91046_1478903688.jpg', '2017/11/17', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(33, '变形金刚5:最后的骑士', 'Images/poster_93181_1479990244.jpg', '2017/6/23', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(34, '异形:契约', 'Images/poster_94579_1467139149.jpg', '2017/5/19', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(35, '星球大战外传:侠盗一号', 'Images/poster_99979_1476307189.jpg', '2016/12/16', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(36, 'Frank & Lola', 'Images/poster_127567_1477600733.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(37, 'All We Had', 'Images/poster_127435_1477055248.jpg', '2016/12/06', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(38, 'Office Christmas Party', 'Images/poster_126899_1476717392.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(39, 'Miss Sloane', 'Images/poster_126415_1473966198.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(40, 'Sugar Mountain', 'Images/placeholder-cs.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(41, 'Spectral', 'Images/poster_83966_1480707148.jpg', '2016/12/09', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(42, 'The Founder', 'Images/poster_125183_1481736900.jpg', '2016/12/07', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(43, 'Run the Tide', 'Images/poster_127605_1478530175.jpg', '2016/12/02', '详细介绍', NULL, NULL, NULL, '综合搜索'),
(44, 'The Eyes of My Mother', 'Images/poster_127473_1478814805.jpg', '2016/12/02', '详细介绍', '去看电影', NULL, NULL, '综合搜索'),
(45, 'Abattoir', 'Images/poster_57377_1478803942.jpg', '2016/12/09', '详细介绍', NULL, NULL, NULL, '综合搜索');

-- --------------------------------------------------------

--
-- 表的结构 `main_sortstate`
--

CREATE TABLE IF NOT EXISTS `main_sortstate` (
`uid` int(11) NOT NULL,
  `mname` varchar(64) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `src` varchar(1024) DEFAULT NULL,
  `href` varchar(218) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `main_sortstate`
--

INSERT INTO `main_sortstate` (`uid`, `mname`, `grade`, `type`, `state`, `src`, `href`) VALUES
(1, '办公室派对', '0.0', '喜剧', '正在热映', 'Images/9K4Hd3B2w_1481018941.jpg', 'prevue_1.html?mname=大话西游1'),
(2, '爱乐之城', '8.5', '剧情 喜剧 音乐剧', '正在热映', 'Images/gqFtxxmL3_1481018570.jpg', 'http://www.imdb.cn/title/tt3783958'),
(4, '反黑行动组', '5.7', '剧情 动作 犯罪', '正在热映', 'Images/aySzCXkPF_1481018030.jpg', 'http://www.imdb.cn/title/tt4232610'),
(5, '少年巴比伦', '0.0', '喜剧 爱情', '正在热映', 'Images/nvbtCW7ut_1481017724.jpg', 'http://www.imdb.cn/title/tt5112400'),
(6, '掠夺者', '5.0', '动作', '正在热映', 'Images/rZtgzrwSJ_1481882177.jpg"', 'http://www.imdb.cn/title/tt3963816'),
(7, '星球大战外传', '0.0', '动作 冒险 奇幻', '正在热映', 'Images/epocvxJbo_1481623549.jpg', 'http://www.imdb.cn/title/tt3748528'),
(8, '铁道飞虎', '0.0', '喜剧 动作 战争', '正在热映', 'Images/l3ooOmVmq_1481622835.jpg', 'http://www.imdb.cn/title/tt4687848'),
(9, '第一夫人', '0.0', '剧情 传记', '正在热映', 'Images/aa4y1R7bL_1480412579.jpg', 'http://www.imdb.cn/title/tt1619029'),
(10, '极限特工：终极回归', '0.0', '喜剧 动作 冒险 ', '即将上映', 'http://posters.imdb.cn/upload/2017/01/17/elyw01j0i_1484643273.jpg', 'http://www.imdb.cn/title/tt1293846'),
(11, '了不起的菲丽西', '0.0', '动作 家庭 冒险 ', '即将上映', 'http://posters.imdb.cn/upload/2017/01/17/bWn9LAGtG_1484642893.jpg', 'http://www.imdb.cn/title/tt0226128'),
(12, '乘风破浪', '0.0', '剧情 喜剧 冒险 ', '即将上映', 'http://posters.imdb.cn/upload/2017/01/17/fv7gWssLo_1484642483.jpg', 'http://www.imdb.cn/title/tt1340041'),
(13, '功夫瑜伽', '0.0', '喜剧 动作 冒险 ', '即将上映', 'http://posters.imdb.cn/upload/2017/01/17/kLjWeXpbD_1484641625.jpg', 'http://www.imdb.cn/title/tt4217392');

-- --------------------------------------------------------

--
-- 表的结构 `prevue_review`
--

CREATE TABLE IF NOT EXISTS `prevue_review` (
`prid` int(11) NOT NULL,
  `imgsrc` varchar(1024) DEFAULT NULL,
  `mname` varchar(64) DEFAULT NULL,
  `actors` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `prevue_review`
--

INSERT INTO `prevue_review` (`prid`, `imgsrc`, `mname`, `actors`) VALUES
(1, 'http://2img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/46054/20160623235954060-new.jpg_220x310.jpg?BacuIUiq/c', '等风来', '倪妮|井柏然|张子萱|刘孜'),
(2, 'http://3img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/118912/20160704192229156-new.jpg_220x310.jpg?BacuIUiq/c', '栀子花开', '李易峰|张慧雯|蒋劲夫'),
(3, 'http://i1.hunantv.com/p1/20150513/1829454302C.jpg_220x310.jpg?BacuIUiq/c', '左耳', '陈都灵|欧豪|马思纯|段博文|杨洋'),
(4, 'http://1img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/105376/20161212184758426-new.jpg_220x310.jpg?BacuIUiq/c', '我的早更女友', '周迅|佟大为|钟汉良|张梓琳|郭书瑶'),
(5, 'http://2img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/7059/20160929085728391-new.jpg_220x310.jpg?BacuIUiq/c', '那些年，我们一起追的女孩', '柯震东|陈妍希'),
(6, 'http://1img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/293541/20160526100649828-new.jpg_220x310.jpg?BacuIUiq/c', '那件疯狂的小事叫爱情', '陈伟霆|唐艺昕|郑秀妍|谢霆锋'),
(7, 'http://i3.hunantv.com/p1/20141120/1503329534C.jpg_220x310.jpg?BacuIUiq/c', '匆匆那年', '彭于晏|倪妮|郑恺|魏晨|张子萱|陈赫'),
(8, 'http://4img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/128826/20160803151904413-new.jpg_220x310.jpg?BacuIUiq/c', '夏有乔木 雅望天堂', '吴亦凡|韩庚|卢杉|周元'),
(9, 'http://3img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/101485/20160624113427809-new.jpg_220x310.jpg?BacuIUiq/c', '临时同居', '张家辉|郑秀文|杨颖|欧豪|黄子华'),
(10, 'http://4img.mgtv.com/preview/internettv/sp_images/ott/2016/dianying/44780/20160628142106586-new.jpg_220x310.jpg?BacuIUiq/c', '我的男男男男朋友', '汪东城|谢娜|李承炫|谢依霖|何晶晶');

-- --------------------------------------------------------

--
-- 表的结构 `publish_comment`
--

CREATE TABLE IF NOT EXISTS `publish_comment` (
`pid` int(11) NOT NULL,
  `mname` varchar(128) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `prise` bigint(20) DEFAULT NULL,
  `ptime` bigint(20) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `publish_comment`
--

INSERT INTO `publish_comment` (`pid`, `mname`, `content`, `prise`, `ptime`, `userid`) VALUES
(5, '大话西游1', 'xsxas', 0, 1487329105000, 1),
(6, '大话西游1', '[object HTMLTextAreaElement]', 0, 1487481628000, 1),
(7, '大话西游1', '[object HTMLTextAreaElement]', 0, 1487481701000, 1),
(8, '大话西游1', '[object HTMLTextAreaElement]', 0, 1487481745000, 1),
(9, '大话西游1', '[object HTMLTextAreaElement]', 0, 1487481771000, 1),
(10, '大话西游1', 'vdvdfvbdbf', 0, 1487482079000, 1),
(11, '大话西游1', 'xsxs', 0, 1487483369000, 1),
(12, '大话西游1', '我是007', 0, 1487484265000, 1),
(13, '大话西游1', '挺不错的', 0, 1487484390000, 1),
(14, '大话西游1', '挺不错的', 0, 1487484433000, 1),
(15, '大话西游1', '广东人', 0, 1487485937000, 1),
(16, '大话西游1', '一体保护', 0, 1487486180000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `replay_comment`
--

CREATE TABLE IF NOT EXISTS `replay_comment` (
`rid` int(11) NOT NULL,
  `ruserid` int(11) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `rtime` bigint(20) DEFAULT NULL,
  `publishid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `replay_comment`
--

INSERT INTO `replay_comment` (`rid`, `ruserid`, `content`, `rtime`, `publishid`) VALUES
(1, 10, '你说的有道理', 1452635896589, 11),
(2, 11, '你说的有道理', 1452635896589, 10),
(3, 12, '你说的有道理', 1452635896589, 11),
(7, 1, '才vsefrgvdr', 1487483764000, 5),
(9, 1, '还行', 1487485708000, 13),
(10, 1, '讨厌讨厌他', 1487485765000, 13),
(11, 1, '幡然改途', 1487486062000, 12),
(12, 1, '运亨通好运', 1487486166000, 12);

-- --------------------------------------------------------

--
-- 表的结构 `time_sorts`
--

CREATE TABLE IF NOT EXISTS `time_sorts` (
`sid` int(11) NOT NULL,
  `sname` varchar(64) DEFAULT NULL,
  `src` varchar(512) DEFAULT NULL,
  `state` varchar(18) DEFAULT NULL,
  `enname` varchar(64) DEFAULT NULL,
  `director` varchar(64) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `gradesrc` varchar(64) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `href` varchar(1024) DEFAULT NULL,
  `star` varchar(8) DEFAULT NULL,
  `grade` varchar(8) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `time_sorts`
--

INSERT INTO `time_sorts` (`sid`, `sname`, `src`, `state`, `enname`, `director`, `type`, `time`, `gradesrc`, `comment`, `href`, `star`, `grade`) VALUES
(1, '星球大战外传：侠盗一号', 'http://posters.imdb.cn/upload/2016/12/13/epocvxJbo_1481623549.jpg', '即将上映', 'Rogue One: A Star Wars Story', '加勒斯·爱德华兹 Gareth Edwards', '动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《侠盗一号：星球大战外传》是由美国卢卡斯电影有限公司、华特·迪士尼		影片公司联合出品的奇幻动作片，由英国导演加里斯·爱德华斯执导，菲丽希缇·琼斯、迭戈·鲁纳		、本·门德尔森、甄子丹、姜文、福里斯特·惠特克、艾伦·图代克领衔主演。\n								《侠盗一号：星球大战外传》的故事背景设定在《星球大战：新希望》之前，讲述了这是一个共和体制覆灭、绝地武士崩溃的时代。自帕尔帕廷以所谓的新秩序将银河共和国改组为银河帝国之后，人民的起义逐渐增多并形成各类起义组织，这其中就有蒙·莫思马（金妮韦芙·奥蕾利饰）领导下的义军同盟。各种反抗活动使得银河帝国不得不拿出各种应对措施来镇压起义活动，而这其中最暴力最铁血的方式就是战斗空间站死星。\n								琴·厄索（菲丽希缇·琼斯饰）是一个非常泼辣的女孩，落到义军同盟手中后，蒙·莫思马看中了琴·厄索，并将其选做偷取死星设计图的人选。但对于义军来说，他们仅仅知道帝国有一个超级武器，任务的未知因素让它变得非常艰辛，琴·厄索将会和她的伙伴踏上一条危险异常的旅途 。\n								该片于2016年12月16日在美国上映，2017年1月6日以2D、3D、IMAX 3D、中国巨幕3D在中国上映', NULL, NULL, NULL),
(2, '摆渡人', 'http://posters.imdb.cn/upload/2016/12/13/zi5V5StLM_1481623210.jpg', '即将上映', 'See You Tomorrow', 'Zhang Jiajia', '喜剧 爱情', '2016年', 'Images/goldstar0.gif', '《摆渡人》是由王家卫监制，张嘉佳执导，梁朝伟、金城武、陈奕迅、杨颖		（Angelababy）、张榕容、杜鹃、熊黛林、大鹏、马苏、崔志佳、贾玲、李璨琛、柳岩出演，安又琪		友情客串，李宇春友情客串，鹿晗特别演出。讲述了“金牌摆渡人”酒吧老板陈末和合伙人管春拯救情		感落水者的故事。用快乐和温暖，抵抗这个世界的悲伤。\r\n							该片讲述了摆渡人是城市里的超级英雄，摆渡就是把人从痛苦中解救出来。用快乐和温暖，抵抗这个世界的悲伤。酒吧老板陈末（梁朝伟饰）和合伙人管春（金城武饰）就是这座城市的“金牌摆渡人”，他们平时看起来吊儿郎当，却从不对每位需要帮助的人说拒绝，只要你“预约摆渡”，刀山火海都会“使命必达”。邻居女孩小玉（杨颖 饰）为了偶像马力（陈奕迅饰），预约了他们的服务，但在帮助小玉挑战整个城市的过程中，陈末和管春也逐渐发现了自己躲不过的问题。从欢天喜地的生活，到惊天动地的疯狂，摆渡人最辉煌的篇章，从这里开启。\r\n							影片于2016年12月23日在中国内地上映', NULL, NULL, NULL),
(3, '铁道飞虎', 'http://posters.imdb.cn/upload/2016/12/13/l3ooOmVmq_1481622835.jpg', '即将上映', 'Rail Road Tigers', '丁晟 Sheng Ding', '喜剧 动作 战争', '2016年', 'Images/goldstar0.gif', '《铁道飞虎》由耀莱影视文化传媒有限公司、上海电影（集团）有限公司等联合		出品，丁晟执导，成龙、黄子韬、王凯、王大陆等主演的动作、战争题材喜剧电影 。\r\n							该片讲述了1941年太平洋战争爆发以后，穿过山东境内的津浦铁路成为日军在中国大陆最重要的战略交通线之一。在津浦铁路枣庄段周边，活跃着一支民间抗日游击队，这支游击队主要由枣庄火车站的几名铁路工人组成，队长叫马原（成龙饰），是火车站的搬运工工头。他们白天在日本人占领并管理的火车站干活，晚上出来秘密活动，利用对铁路线的熟悉以及扒火车、开火车的特殊技能，以一支小小的游击队跟大批装备精良的日本正规军周旋较量，造成了非常大的影响，当地老百姓给这支队伍起了一个响亮的名头，叫铁道飞虎队\r\n							该片于2016年12月23日贺岁档在中国上映，北美、英国、澳大利亚和新西兰同步上映', NULL, NULL, NULL),
(4, '罗曼蒂克消亡史', 'http://posters.imdb.cn/upload/2016/12/12/7SEkHeTYL_1481538184.jpg', '即将上映', 'The Wasted Times', '程耳 Er Cheng', '剧情 神秘 战争', '2016年', 'Images/goldstar0.gif', '《罗曼蒂克消亡史》是由华谊兄弟、英皇电影	联合出品的悬疑谍战片，由		程耳执导，葛优、章子怡、浅野忠信、杜淳、钟欣潼等主演\r\n								他一直拖到一九四九年五月初才坐上去香港的轮船，算得上真正的末班车。没有人知道他在拖什么或等待什么，我想他自己也未必知道，不过是下意识的拖延。不久他就死在香港，死前再没有值得记述的事件或说过的话，他基本没再说话，这没什么可奇怪的，一切都不值一提，他终于走向自己的沉默。\r\n								上世纪30年代的上海，叱咤风云的帮派大佬，不甘寂寞的交际花，说着地道上海话的日本妹夫，只收交通费的杀手，被冷落却忠诚的姨太太，外表光鲜的电影皇后，深宅大院里深不可测的管家，偶尔偷腥的电影皇帝，荷尔蒙满溢大脑的帮派小弟，一心想要破处的处男，善良的妓女，随波逐流的明星丈夫，投靠日本人的帮派二哥，日理万机却抽空恋爱的戴先生。\r\n								战争之下，繁华落尽。帮派大佬逃亡香港，交际花不知所踪，日本妹夫死在上海，电影皇后被丈夫抛弃，处男遇上妓女，姨太太杀死二哥。战争惨烈，战争终于结束。他轻易选择沉默，因为伤口无法弥合。罗曼蒂克消亡史。被浪费的时光。', NULL, NULL, NULL),
(5, '长城', 'http://posters.imdb.cn/upload/2016/12/12/eCjVhnxAS_1481537535.jpg', '即将上映', 'The Great Wall', '张艺谋 Yimou Zhang', '剧情 动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《长城》是由中国电影股份有限公司、乐视影业、传奇影业、环球影业联		合出品，中国导演张艺谋执导，马特·达蒙、景甜、佩德罗·帕斯卡、威廉·达福、刘德华、张涵		予等联合主演的奇幻动作片 。\r\n									该片讲述了欧洲雇佣兵威廉在被囚禁长城期间，发现了这世间最大奇迹之一背后的惊人秘密。当一波又一波可怕的掠食生物将这座巨型城墙重重围困之时，威廉加入了一支由中国精英勇士们组成的大军，共同对抗凶兽的故事 。\r\n									该片于2016年12月16日以3D、IMAX3D、中国巨幕3D、杜比视界、杜比全景声、Auro格式在中国上映', NULL, NULL, NULL),
(6, '办公室圣诞派对', 'http://posters.imdb.cn/upload/2016/12/06/9K4Hd3B2w_1481018941.jpg', '即将上映', 'Office Christmas Party', '乔什·高顿 Josh Gordon|威尔·斯派克 Will Speck', '喜剧', '2016年', 'Images/goldstar0.gif', '《办公室圣诞派对》（Office Christmas Party）由导演威尔·斯派克、		乔什·戈登联合执导，\r\n									詹妮弗·安妮斯顿、T·J·米勒、 杰森·贝特曼、凯特·迈克金农、杰米·钟、		奥立薇娅·玛恩、马特·沃尔什、考特尼·万斯等主演。\r\n									Carol（詹妮弗·安妮斯顿饰）和Clay（T·J·米勒饰）是兄妹关系，他们的父亲刚刚过世，家族经营的科技公司一下失去了\r\n									主心骨。Clay是公司的董事，Carol是公司的CEO，两个人都为了经营公司费尽心思，然而方式却截然相反。\r\n									Carol是严厉一方，希望公司严格按照规则运营；不守规矩的Clay则想要通过打鸡血、疯狂派对的方式鼓舞士气，并在其死\r\n									党Josh（杰森·贝特曼饰）帮助下，为公司办了一场办公室圣诞派对。于是，在这场疯狂的办公室圣诞派对中，不少意外发生，事情越发失控', NULL, NULL, NULL),
(7, '爱乐之城', 'http://posters.imdb.cn/upload/2016/12/06/gqFtxxmL3_1481018570.jpg', NULL, 'La La Land', '未知', '剧情 喜剧 音乐剧', '2016年', 'Images/goldstar9.gif', '这部喜剧音乐片讲述一位爵士乐钢琴家与一名具有抱负的女演员之间的爱情故事。', NULL, NULL, NULL),
(8, '反黑行动组', 'http://posters.imdb.cn/upload/2016/12/06/aySzCXkPF_1481018030.jpg', '', 'Antigang', 'Benjamin Rocher', '剧情 动作 犯罪', '2015年', 'Images/goldstar6.gif', '《反黑行动组》由法国新式电影发行公司出品，中国电影集团公司进口		，中国电影股份有限公司发行，佰安影业（上海）有限公司协助推广。由本杰明·罗切尔执导		，让·雷诺、卡特琳娜·莫里诺、蒂埃里·钮维联合主演。\r\n										该片讲述了职业警察塞尔吉·布伦，为侦破黑帮黄金盗窃案反而致使同伴牺牲，陷入盗匪的连环设计之中......\r\n										该片将于2016年12月09日在中国内地上映。', NULL, NULL, NULL),
(9, '少年巴比伦', 'http://posters.imdb.cn/upload/2016/12/06/nvbtCW7ut_1481017724.jpg', NULL, 'Young Love Lost', '未知', '喜剧 爱情', '2016年', 'Images/goldstar7.gif', '《少年巴比伦》是由林炳坤监制，陈建忠编剧，相国强执导，董子健		、李梦、尚铁龙、李大光等主演的青春热血喜剧片。\r\n											影片改编自中间代作家路内的同名小说，讲述了路小路在戴城工厂的青春热血经历与爱恋故事。上个世纪90年代的戴城，路小路（董子健饰）在一家\r\n											糖精厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“牛魔王”（尚铁龙饰）的师傅混，没学会半点技术。在钳工班，除了拧螺丝\r\n											之外什么都不会。在电工班，也只会换灯泡。除此之外，他还喜欢迟到、打架、翻工厂的院墙，也结识了一帮兄弟。直到某天，路小路遇见了一个叫\r\n											白蓝（李梦饰）的厂医，他的人生由此发生了改变……', NULL, NULL, NULL),
(10, '塔洛', 'http://posters.imdb.cn/upload/2016/12/02/dAekv5Bzr_1480672783.jpg', NULL, 'Tharlo', '万玛才旦 Wanma Caidan', '剧情', '2016年', 'Images/goldstar7.gif', '《塔洛》是由万玛才旦执导，由西德尼玛、杨秀措主演的剧情片。该		片于2016年12月9日\r\n											在中国大陆上映。一位自幼放羊为生的藏民塔洛，在进城办理二代身份		证时，遇到了理发店女店主杨措，经历了一\r\n											场突如其来的爱情。塔洛卖了羊，把毕生所得16		万人民币托付给杨措，杨措却卷款逃离了塔洛。旧的世界已然坍塌，\r\n											新的世界尚未建立，塔		洛的命运今如何。', NULL, NULL, NULL),
(11, '超级快递', 'http://posters.imdb.cn/upload/2016/11/30/SE0lmJwQD_1480500747.jpg', NULL, 'Super Express', '未知', '喜剧 动作', '2016年', 'Images/goldstar0.gif', '《超级快递》是由宋啸执导的动作喜剧电影。由陈赫、宋智孝、大卫·贝		尔、李媛、李淳、邰智源\r\n									等主演，肖央、何赛飞特别出演。由基美影业董事长高敬东担纲制片人		，王郢编剧。该片于2016年12月2日在中国大陆上\r\n									映。影片讲述了快递员马力在一次派件途中，		偶然卷入一起神像争夺事件，并受到一神秘性感女郎胁迫，共同对付国际大\r\n									盗Gary的故事，在这		一夺取神像的过程中，故事却突然变得扑朔迷离。', NULL, NULL, NULL),
(12, '第一夫人', 'http://posters.imdb.cn/upload/2016/11/29/aa4y1R7bL_1480412579.jpg', NULL, 'Jackie', 'Pablo Larrain', '剧情 传记', '2016年', 'Images/goldstar8.gif', '《第一夫人》是由美国、智利联合制片的99分钟传记影片。该片由帕布罗		·拉雷恩执导，\r\n									娜塔丽·波特曼、彼得·萨斯加德、格蕾塔·葛韦格、马克斯·凯塞拉、贝丝·格兰特		等主演.\r\n									肯尼迪总统刺杀事件一周后，面对《生活》杂志记者对杰奎琳的采访，杰奎琳时而恍惚时而激动的讲述着她生活中的巨变。\r\n									一个丈夫遇刺后冷静强大的出现在公众面前的第一夫人，她要参与丈夫的国葬，向两个年幼的孩子解释父亲的离去，甚至还\r\n									有关于遗产的问题。当副总统林登·约翰逊在飞机上宣誓就任美国总统时，她身穿着仍然血迹斑斑的粉红套装，向美国人民展\r\n									现着她的勇气与镇定，然而电视转播之外，她情绪失控、无法冷静。对其身边的大多数人来说，遇刺的是美国国家的总统，\r\n									第一要务是国事，对于她来说那却是自己的丈夫孩子的父亲，首当其冲的是失去亲人的悲痛', NULL, NULL, NULL),
(13, '极速之巅', 'http://posters.imdb.cn/upload/2016/11/25/n2jPAhkKo_1480067748.png', NULL, 'Collide', 'Eran Creevy', '动作 恐怖', '2016年', 'Images/goldstar6.gif', '电影《极速之巅》男主角凯西·斯登（尼古拉斯·霍尔特饰演）是从美国来		的背包客，在美国时曾\r\n									多次偷车，为躲避牢狱之灾逃到德国后，参与格伦（本·金斯利饰演）的		毒品交易。有一天，他遇到了一生挚爱朱丽叶·玛\r\n									尔（菲丽希缇·琼斯饰演）。朱丽叶患有严重的		肾病，昂贵的手术费让凯西决定最后一次为老板赴险涉毒，不料老板心中\r\n									另有算盘，要利用他展		开对另一位大毒枭哈根·卡尔（安东尼·霍普金斯饰演）的复仇计划。爱情、生命、毒品、仇恨、	\r\n									谎言，这一切驱使着男主人公在世界闻名的不限速高速公路“Autobahn”上撞碎豪车冲破骗局，以		接近死亡的舍命狂飙换取\r\n									心爱之人的重生。', NULL, NULL, NULL),
(14, '三少爷的剑', 'http://posters.imdb.cn/upload/2016/11/25/r4FTT3s2N_1480067405.jpg', NULL, 'San shao ye de jian', '尔冬升 Er Dongsheng', '动作', '2016年', 'Images/goldstar6.gif', '《三少爷的剑》是由博纳影业集团出品，徐克监制，尔冬升执导，林更新、		何润东等主演的3D武侠\r\n								电影。\r\n								《三少爷的剑》是根据古龙同名小说改编，影片主要讲述了神剑山庄的三少爷谢晓峰与燕十三为家族存亡、师门荣辱展开的一\r\n								场生死较量的故事。 该片于2016年12月2日在中国内地上映。\r\n								10多年来历经上千场大战未尝一败，被天下人尊为“剑神”。然而，传奇剑客燕十三（何润东饰）一直以谢晓峰为目标，苦修剑\r\n								道，终于在生死边缘悟出惊天地泣鬼神的“夺命十三剑”。一时之间，江湖沸腾，然而，就在燕十三赶到神剑山庄下战书的时候，\r\n								迎接他的，却是三少爷谢晓峰的灵柩。燕十三因痛失对手大感失望，此时神秘女子慕容秋荻（江一燕饰）出现并告知燕十三，\r\n								谢晓峰并没有死，要想找到他决战，燕十三就必须要替她杀一个人。', NULL, NULL, NULL),
(15, '28岁未成年', 'http://posters.imdb.cn/upload/2016/11/25/CPvuB67Ni_1480066695.jpg', NULL, 'Suddenly Seventeen', '未知', '剧情 喜剧 奇幻', '2016年', 'Images/goldstar0.gif', '《28岁未成年》是由乐视影业（北京）有限公司出品的爱情片，由张末执导		，倪妮、霍建华、马苏、\r\n								王大陆联合主演。\r\n								电影改编自black.f同名小说，讲述了28岁的凉夏身陷糟糕的感情生活不能自拔，意外“心智”重返17岁，并在17岁凉夏的帮助下\r\n								认清自己、找回初心的故事。\r\n								影片将于2016年12月2日在中国上映。\r\n								28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，\r\n								茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾忌凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未\r\n								遂，还被他提出分手。凉夏悲伤欲绝，意外之下，心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性\r\n								青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，\r\n								凉夏究竟会做出怎样的选择……', NULL, NULL, NULL),
(16, '打破陈规', 'http://posters.imdb.cn/upload/2016/11/23/5FtvfClnT_1479895392.jpg', NULL, 'Rules Don''t Apply', '沃伦·比蒂 Warren Beatty', '剧情 喜剧 爱情', '2016年', 'Images/goldstar7.gif', '影片讲述了一个发生在1958年的“打破陈规”的爱情故事，故事中一位虔诚的		基督教徒女演员\r\n								（莉莉·科林斯饰）与同样保守的汽车司机（阿尔登·埃伦瑞奇饰）发生了一段缠绵		的爱情，他们均受雇于怪诞的富豪\r\n								霍华德·休斯（沃伦·比蒂饰）的公司之中。[1] \r\n								影片将于11月23日开画，据悉影片聚集了亚力克·鲍德温、安妮特·贝宁、海莉·贝内特、坎迪斯·伯根、马修·布罗德里克、\r\n								达布尼·科尔曼、史蒂夫·库根、泰莎·法梅加、艾德·哈里斯、梅根·希尔提、奥利弗·普莱特与马丁·辛演员出演。', NULL, NULL, NULL),
(17, '三船敏郎：最后的武士', 'http://posters.imdb.cn/upload/2016/11/23/dtTjDS3eH_1479894364.jpg', NULL, 'Mifune: The Last Samurai', 'Steven Okazaki', '记录 传记', '2016年', 'Images/goldstar8.gif', '三船敏郎， 日本最偉大的演員之一， 曾參與近一百七十部電影演出，包括		《蜘蛛巢城》、\r\n								《七武士》、《羅生門》等。他與黑澤明共同締造了日本電影的黃金年代，更走紅		國際，影響《荒野大飆客》、甚至是\r\n								《星際大戰》黑武士的誕生。他叱吒影壇半世紀，被亞蘭德倫		視為神一般的存在。本片以他和黑澤明的合作關係為主軸，\r\n								耙梳介紹了日本電影的黃金年代，以及		劍鬥片的歷史。 \r\n								　　					影片融合大量的經典影片及珍貴照片，穿插訪問役所廣司、香川京子、馬丁史柯西斯、史蒂芬史匹							\r\n								柏等人，資深演員如八千草薰、野上照代、中島貞夫，以及被三船殺了上百次的武術演員紛紛現身								說法，追\r\n								憶這位明星不同時期的風采，甚至試圖還原當年他與黑澤明拆夥的真相。曾演出武士電影								的基努李維亦為本\r\n								片獻聲，致敬意味濃厚。', NULL, NULL, NULL),
(18, '圣诞坏公公2', 'http://posters.imdb.cn/upload/2016/11/21/9saxcC28j_1479722736.jpg', NULL, 'Bad Santa 2', '马克·沃特斯 Mark S. Waters', '剧情 喜剧 犯罪', '2016年', 'Images/goldstar0.gif', '《圣诞坏公公》的续集《圣诞坏公公2》近日终于有了新进展。影片导演人		选正式确定，曾执导\r\n								《贱女孩》、《波普先生的企鹅》的导演马克·沃特斯将掌舵续集，而前作主		演比利·鲍伯·松顿、托尼·考克斯以及饰演小\r\n								胖的布莱特·凯利均将回归。', NULL, NULL, NULL),
(19, '雄狮', 'http://posters.imdb.cn/upload/2016/11/21/Nl7OuoCef_1479722150.jpg', NULL, 'Lion', 'Garth Davis', '剧情', '2016年', 'Images/goldstar8.gif', '影片根据畅销书《漫漫寻家路》（《A Long Way Home》）改编，故事源于		作者萨罗·布莱尔利的\r\n								一段真实经历。五岁时萨罗在印度的火车上不小心与家人走散，他在加尔各		答的街头流浪了几个星期，之后被送进一所孤儿\r\n								院，并被澳大利亚的一对夫妇收养。25年后，他开		始凭借隐约的记忆，用谷歌地球去寻找过去的家。\r\n								影片是导演加斯·戴维斯的长片处女作，《贫民窟的百万富翁》男星戴夫·帕特尔饰演成年萨罗，大卫·文翰和妮可·基德曼分饰\r\n								萨罗的养父母约翰和苏，鲁妮·玛拉饰演萨罗的女友露西。\r\n								影片将在2016年多伦多电影节首映，11月25日北美上映，有望冲击奥斯卡最佳影片', NULL, NULL, NULL),
(20, '莫阿娜', 'http://posters.imdb.cn/upload/2016/11/21/8Q9kLz8uw_1479721597.jpg', NULL, 'Moana', '唐·霍尔 Don Hall|罗恩·克莱蒙特斯 Ron Clements', '喜剧 动画', '2016年', 'Images/goldstar9.gif', '迪士尼动画新作《莫阿娜》（Moana）预计于2016底上映，主人翁莫阿娜将		成为迪士尼首位大洋洲\r\n								公主。 由罗恩·克莱蒙兹与约翰·马斯克领衔的制作团队操刀，他们还曾制		作过《公主和青蛙》、《阿拉丁》、《小美人鱼》\r\n								等影片。波里尼西亚人是居住在南太平洋小岛上的民族.有着自己……………', NULL, NULL, NULL),
(21, '星球大战外传：侠盗一号', 'http://posters.imdb.cn/upload/2016/12/13/epocvxJbo_1481623549.jpg', '即将上映', 'Rogue One: A Star Wars Story', '加勒斯·爱德华兹 Gareth Edwards', '动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《侠盗一号：星球大战外传》是由美国卢卡斯电影有限公司、华特·迪士尼		影片公司联合出品的奇幻动作片，由英国导演加里斯·爱德华斯执导，菲丽希缇·琼斯、迭戈·鲁纳		、本·门德尔森、甄子丹、姜文、福里斯特·惠特克、艾伦·图代克领衔主演。\r\n								《侠盗一号：星球大战外传》的故事背景设定在《星球大战：新希望》之前，讲述了这是一个共和体制覆灭、绝地武士崩溃的时代。自帕尔帕廷以所谓的新秩序将银河共和国改组为银河帝国之后，人民的起义逐渐增多并形成各类起义组织，这其中就有蒙·莫思马（金妮韦芙·奥蕾利饰）领导下的义军同盟。各种反抗活动使得银河帝国不得不拿出各种应对措施来镇压起义活动，而这其中最暴力最铁血的方式就是战斗空间站死星。\r\n								琴·厄索（菲丽希缇·琼斯饰）是一个非常泼辣的女孩，落到义军同盟手中后，蒙·莫思马看中了琴·厄索，并将其选做偷取死星设计图的人选。但对于义军来说，他们仅仅知道帝国有一个超级武器，任务的未知因素让它变得非常艰辛，琴·厄索将会和她的伙伴踏上一条危险异常的旅途 。\r\n								该片于2016年12月16日在美国上映，2017年1月6日以2D、3D、IMAX 3D、中国巨幕3D在中国上映', NULL, NULL, NULL),
(22, '摆渡人', 'http://posters.imdb.cn/upload/2016/12/13/zi5V5StLM_1481623210.jpg', '即将上映', 'See You Tomorrow', 'Zhang Jiajia', '喜剧 爱情', '2016年', 'Images/goldstar0.gif', '《摆渡人》是由王家卫监制，张嘉佳执导，梁朝伟、金城武、陈奕迅、杨颖		（Angelababy）、张榕容、杜鹃、熊黛林、大鹏、马苏、崔志佳、贾玲、李璨琛、柳岩出演，安又琪		友情客串，李宇春友情客串，鹿晗特别演出。讲述了“金牌摆渡人”酒吧老板陈末和合伙人管春拯救情		感落水者的故事。用快乐和温暖，抵抗这个世界的悲伤。\r\n							该片讲述了摆渡人是城市里的超级英雄，摆渡就是把人从痛苦中解救出来。用快乐和温暖，抵抗这个世界的悲伤。酒吧老板陈末（梁朝伟饰）和合伙人管春（金城武饰）就是这座城市的“金牌摆渡人”，他们平时看起来吊儿郎当，却从不对每位需要帮助的人说拒绝，只要你“预约摆渡”，刀山火海都会“使命必达”。邻居女孩小玉（杨颖 饰）为了偶像马力（陈奕迅饰），预约了他们的服务，但在帮助小玉挑战整个城市的过程中，陈末和管春也逐渐发现了自己躲不过的问题。从欢天喜地的生活，到惊天动地的疯狂，摆渡人最辉煌的篇章，从这里开启。\r\n							影片于2016年12月23日在中国内地上映', NULL, NULL, NULL),
(23, '铁道飞虎', 'http://posters.imdb.cn/upload/2016/12/13/l3ooOmVmq_1481622835.jpg', '即将上映', 'Rail Road Tigers', '丁晟 Sheng Ding', '喜剧 动作 战争', '2016年', 'Images/goldstar0.gif', '《铁道飞虎》由耀莱影视文化传媒有限公司、上海电影（集团）有限公司等联合		出品，丁晟执导，成龙、黄子韬、王凯、王大陆等主演的动作、战争题材喜剧电影 。\r\n							该片讲述了1941年太平洋战争爆发以后，穿过山东境内的津浦铁路成为日军在中国大陆最重要的战略交通线之一。在津浦铁路枣庄段周边，活跃着一支民间抗日游击队，这支游击队主要由枣庄火车站的几名铁路工人组成，队长叫马原（成龙饰），是火车站的搬运工工头。他们白天在日本人占领并管理的火车站干活，晚上出来秘密活动，利用对铁路线的熟悉以及扒火车、开火车的特殊技能，以一支小小的游击队跟大批装备精良的日本正规军周旋较量，造成了非常大的影响，当地老百姓给这支队伍起了一个响亮的名头，叫铁道飞虎队\r\n							该片于2016年12月23日贺岁档在中国上映，北美、英国、澳大利亚和新西兰同步上映', NULL, NULL, NULL),
(24, '罗曼蒂克消亡史', 'http://posters.imdb.cn/upload/2016/12/12/7SEkHeTYL_1481538184.jpg', '即将上映', 'The Wasted Times', '程耳 Er Cheng', '剧情 神秘 战争', '2016年', 'Images/goldstar0.gif', '《罗曼蒂克消亡史》是由华谊兄弟、英皇电影	联合出品的悬疑谍战片，由		程耳执导，葛优、章子怡、浅野忠信、杜淳、钟欣潼等主演\r\n								他一直拖到一九四九年五月初才坐上去香港的轮船，算得上真正的末班车。没有人知道他在拖什么或等待什么，我想他自己也未必知道，不过是下意识的拖延。不久他就死在香港，死前再没有值得记述的事件或说过的话，他基本没再说话，这没什么可奇怪的，一切都不值一提，他终于走向自己的沉默。\r\n								上世纪30年代的上海，叱咤风云的帮派大佬，不甘寂寞的交际花，说着地道上海话的日本妹夫，只收交通费的杀手，被冷落却忠诚的姨太太，外表光鲜的电影皇后，深宅大院里深不可测的管家，偶尔偷腥的电影皇帝，荷尔蒙满溢大脑的帮派小弟，一心想要破处的处男，善良的妓女，随波逐流的明星丈夫，投靠日本人的帮派二哥，日理万机却抽空恋爱的戴先生。\r\n								战争之下，繁华落尽。帮派大佬逃亡香港，交际花不知所踪，日本妹夫死在上海，电影皇后被丈夫抛弃，处男遇上妓女，姨太太杀死二哥。战争惨烈，战争终于结束。他轻易选择沉默，因为伤口无法弥合。罗曼蒂克消亡史。被浪费的时光。', NULL, NULL, NULL),
(25, '长城', 'http://posters.imdb.cn/upload/2016/12/12/eCjVhnxAS_1481537535.jpg', '即将上映', 'The Great Wall', '张艺谋 Yimou Zhang', '剧情 动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《长城》是由中国电影股份有限公司、乐视影业、传奇影业、环球影业联		合出品，中国导演张艺谋执导，马特·达蒙、景甜、佩德罗·帕斯卡、威廉·达福、刘德华、张涵		予等联合主演的奇幻动作片 。\r\n									该片讲述了欧洲雇佣兵威廉在被囚禁长城期间，发现了这世间最大奇迹之一背后的惊人秘密。当一波又一波可怕的掠食生物将这座巨型城墙重重围困之时，威廉加入了一支由中国精英勇士们组成的大军，共同对抗凶兽的故事 。\r\n									该片于2016年12月16日以3D、IMAX3D、中国巨幕3D、杜比视界、杜比全景声、Auro格式在中国上映', NULL, NULL, NULL),
(26, '办公室圣诞派对', 'http://posters.imdb.cn/upload/2016/12/06/9K4Hd3B2w_1481018941.jpg', '即将上映', 'Office Christmas Party', '乔什·高顿 Josh Gordon|威尔·斯派克 Will Speck', '喜剧', '2016年', 'Images/goldstar0.gif', '《办公室圣诞派对》（Office Christmas Party）由导演威尔·斯派克、		乔什·戈登联合执导，\r\n									詹妮弗·安妮斯顿、T·J·米勒、 杰森·贝特曼、凯特·迈克金农、杰米·钟、		奥立薇娅·玛恩、马特·沃尔什、考特尼·万斯等主演。\r\n									Carol（詹妮弗·安妮斯顿饰）和Clay（T·J·米勒饰）是兄妹关系，他们的父亲刚刚过世，家族经营的科技公司一下失去了\r\n									主心骨。Clay是公司的董事，Carol是公司的CEO，两个人都为了经营公司费尽心思，然而方式却截然相反。\r\n									Carol是严厉一方，希望公司严格按照规则运营；不守规矩的Clay则想要通过打鸡血、疯狂派对的方式鼓舞士气，并在其死\r\n									党Josh（杰森·贝特曼饰）帮助下，为公司办了一场办公室圣诞派对。于是，在这场疯狂的办公室圣诞派对中，不少意外发生，事情越发失控', NULL, NULL, NULL),
(27, '爱乐之城', 'http://posters.imdb.cn/upload/2016/12/06/gqFtxxmL3_1481018570.jpg', NULL, 'La La Land', '未知', '剧情 喜剧 音乐剧', '2016年', 'Images/goldstar9.gif', '这部喜剧音乐片讲述一位爵士乐钢琴家与一名具有抱负的女演员之间的爱情故事。', NULL, NULL, NULL),
(28, '反黑行动组', 'http://posters.imdb.cn/upload/2016/12/06/aySzCXkPF_1481018030.jpg', '', 'Antigang', 'Benjamin Rocher', '剧情 动作 犯罪', '2015年', 'Images/goldstar6.gif', '《反黑行动组》由法国新式电影发行公司出品，中国电影集团公司进口		，中国电影股份有限公司发行，佰安影业（上海）有限公司协助推广。由本杰明·罗切尔执导		，让·雷诺、卡特琳娜·莫里诺、蒂埃里·钮维联合主演。\r\n										该片讲述了职业警察塞尔吉·布伦，为侦破黑帮黄金盗窃案反而致使同伴牺牲，陷入盗匪的连环设计之中......\r\n										该片将于2016年12月09日在中国内地上映。', NULL, NULL, NULL),
(29, '少年巴比伦', 'http://posters.imdb.cn/upload/2016/12/06/nvbtCW7ut_1481017724.jpg', NULL, 'Young Love Lost', '未知', '喜剧 爱情', '2016年', 'Images/goldstar7.gif', '《少年巴比伦》是由林炳坤监制，陈建忠编剧，相国强执导，董子健		、李梦、尚铁龙、李大光等主演的青春热血喜剧片。\r\n											影片改编自中间代作家路内的同名小说，讲述了路小路在戴城工厂的青春热血经历与爱恋故事。上个世纪90年代的戴城，路小路（董子健饰）在一家\r\n											糖精厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“牛魔王”（尚铁龙饰）的师傅混，没学会半点技术。在钳工班，除了拧螺丝\r\n											之外什么都不会。在电工班，也只会换灯泡。除此之外，他还喜欢迟到、打架、翻工厂的院墙，也结识了一帮兄弟。直到某天，路小路遇见了一个叫\r\n											白蓝（李梦饰）的厂医，他的人生由此发生了改变……', NULL, NULL, NULL),
(30, '塔洛', 'http://posters.imdb.cn/upload/2016/12/02/dAekv5Bzr_1480672783.jpg', NULL, 'Tharlo', '万玛才旦 Wanma Caidan', '剧情', '2016年', 'Images/goldstar7.gif', '《塔洛》是由万玛才旦执导，由西德尼玛、杨秀措主演的剧情片。该		片于2016年12月9日\r\n											在中国大陆上映。一位自幼放羊为生的藏民塔洛，在进城办理二代身份		证时，遇到了理发店女店主杨措，经历了一\r\n											场突如其来的爱情。塔洛卖了羊，把毕生所得16		万人民币托付给杨措，杨措却卷款逃离了塔洛。旧的世界已然坍塌，\r\n											新的世界尚未建立，塔		洛的命运今如何。', NULL, NULL, NULL),
(31, '超级快递', 'http://posters.imdb.cn/upload/2016/11/30/SE0lmJwQD_1480500747.jpg', NULL, 'Super Express', '未知', '喜剧 动作', '2016年', 'Images/goldstar0.gif', '《超级快递》是由宋啸执导的动作喜剧电影。由陈赫、宋智孝、大卫·贝		尔、李媛、李淳、邰智源\r\n									等主演，肖央、何赛飞特别出演。由基美影业董事长高敬东担纲制片人		，王郢编剧。该片于2016年12月2日在中国大陆上\r\n									映。影片讲述了快递员马力在一次派件途中，		偶然卷入一起神像争夺事件，并受到一神秘性感女郎胁迫，共同对付国际大\r\n									盗Gary的故事，在这		一夺取神像的过程中，故事却突然变得扑朔迷离。', NULL, NULL, NULL),
(32, '第一夫人', 'http://posters.imdb.cn/upload/2016/11/29/aa4y1R7bL_1480412579.jpg', NULL, 'Jackie', 'Pablo Larrain', '剧情 传记', '2016年', 'Images/goldstar8.gif', '《第一夫人》是由美国、智利联合制片的99分钟传记影片。该片由帕布罗		·拉雷恩执导，\r\n									娜塔丽·波特曼、彼得·萨斯加德、格蕾塔·葛韦格、马克斯·凯塞拉、贝丝·格兰特		等主演.\r\n									肯尼迪总统刺杀事件一周后，面对《生活》杂志记者对杰奎琳的采访，杰奎琳时而恍惚时而激动的讲述着她生活中的巨变。\r\n									一个丈夫遇刺后冷静强大的出现在公众面前的第一夫人，她要参与丈夫的国葬，向两个年幼的孩子解释父亲的离去，甚至还\r\n									有关于遗产的问题。当副总统林登·约翰逊在飞机上宣誓就任美国总统时，她身穿着仍然血迹斑斑的粉红套装，向美国人民展\r\n									现着她的勇气与镇定，然而电视转播之外，她情绪失控、无法冷静。对其身边的大多数人来说，遇刺的是美国国家的总统，\r\n									第一要务是国事，对于她来说那却是自己的丈夫孩子的父亲，首当其冲的是失去亲人的悲痛', NULL, NULL, NULL),
(33, '极速之巅', 'http://posters.imdb.cn/upload/2016/11/25/n2jPAhkKo_1480067748.png', NULL, 'Collide', 'Eran Creevy', '动作 恐怖', '2016年', 'Images/goldstar6.gif', '电影《极速之巅》男主角凯西·斯登（尼古拉斯·霍尔特饰演）是从美国来		的背包客，在美国时曾\r\n									多次偷车，为躲避牢狱之灾逃到德国后，参与格伦（本·金斯利饰演）的		毒品交易。有一天，他遇到了一生挚爱朱丽叶·玛\r\n									尔（菲丽希缇·琼斯饰演）。朱丽叶患有严重的		肾病，昂贵的手术费让凯西决定最后一次为老板赴险涉毒，不料老板心中\r\n									另有算盘，要利用他展		开对另一位大毒枭哈根·卡尔（安东尼·霍普金斯饰演）的复仇计划。爱情、生命、毒品、仇恨、	\r\n									谎言，这一切驱使着男主人公在世界闻名的不限速高速公路“Autobahn”上撞碎豪车冲破骗局，以		接近死亡的舍命狂飙换取\r\n									心爱之人的重生。', NULL, NULL, NULL),
(34, '三少爷的剑', 'http://posters.imdb.cn/upload/2016/11/25/r4FTT3s2N_1480067405.jpg', NULL, 'San shao ye de jian', '尔冬升 Er Dongsheng', '动作', '2016年', 'Images/goldstar6.gif', '《三少爷的剑》是由博纳影业集团出品，徐克监制，尔冬升执导，林更新、		何润东等主演的3D武侠\r\n								电影。\r\n								《三少爷的剑》是根据古龙同名小说改编，影片主要讲述了神剑山庄的三少爷谢晓峰与燕十三为家族存亡、师门荣辱展开的一\r\n								场生死较量的故事。 该片于2016年12月2日在中国内地上映。\r\n								10多年来历经上千场大战未尝一败，被天下人尊为“剑神”。然而，传奇剑客燕十三（何润东饰）一直以谢晓峰为目标，苦修剑\r\n								道，终于在生死边缘悟出惊天地泣鬼神的“夺命十三剑”。一时之间，江湖沸腾，然而，就在燕十三赶到神剑山庄下战书的时候，\r\n								迎接他的，却是三少爷谢晓峰的灵柩。燕十三因痛失对手大感失望，此时神秘女子慕容秋荻（江一燕饰）出现并告知燕十三，\r\n								谢晓峰并没有死，要想找到他决战，燕十三就必须要替她杀一个人。', NULL, NULL, NULL),
(35, '28岁未成年', 'http://posters.imdb.cn/upload/2016/11/25/CPvuB67Ni_1480066695.jpg', NULL, 'Suddenly Seventeen', '未知', '剧情 喜剧 奇幻', '2016年', 'Images/goldstar0.gif', '《28岁未成年》是由乐视影业（北京）有限公司出品的爱情片，由张末执导		，倪妮、霍建华、马苏、\r\n								王大陆联合主演。\r\n								电影改编自black.f同名小说，讲述了28岁的凉夏身陷糟糕的感情生活不能自拔，意外“心智”重返17岁，并在17岁凉夏的帮助下\r\n								认清自己、找回初心的故事。\r\n								影片将于2016年12月2日在中国上映。\r\n								28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，\r\n								茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾忌凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未\r\n								遂，还被他提出分手。凉夏悲伤欲绝，意外之下，心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性\r\n								青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，\r\n								凉夏究竟会做出怎样的选择……', NULL, NULL, NULL),
(36, '打破陈规', 'http://posters.imdb.cn/upload/2016/11/23/5FtvfClnT_1479895392.jpg', NULL, 'Rules Don''t Apply', '沃伦·比蒂 Warren Beatty', '剧情 喜剧 爱情', '2016年', 'Images/goldstar7.gif', '影片讲述了一个发生在1958年的“打破陈规”的爱情故事，故事中一位虔诚的		基督教徒女演员\r\n								（莉莉·科林斯饰）与同样保守的汽车司机（阿尔登·埃伦瑞奇饰）发生了一段缠绵		的爱情，他们均受雇于怪诞的富豪\r\n								霍华德·休斯（沃伦·比蒂饰）的公司之中。[1] \r\n								影片将于11月23日开画，据悉影片聚集了亚力克·鲍德温、安妮特·贝宁、海莉·贝内特、坎迪斯·伯根、马修·布罗德里克、\r\n								达布尼·科尔曼、史蒂夫·库根、泰莎·法梅加、艾德·哈里斯、梅根·希尔提、奥利弗·普莱特与马丁·辛演员出演。', NULL, NULL, NULL),
(37, '三船敏郎：最后的武士', 'http://posters.imdb.cn/upload/2016/11/23/dtTjDS3eH_1479894364.jpg', NULL, 'Mifune: The Last Samurai', 'Steven Okazaki', '记录 传记', '2016年', 'Images/goldstar8.gif', '三船敏郎， 日本最偉大的演員之一， 曾參與近一百七十部電影演出，包括		《蜘蛛巢城》、\r\n								《七武士》、《羅生門》等。他與黑澤明共同締造了日本電影的黃金年代，更走紅		國際，影響《荒野大飆客》、甚至是\r\n								《星際大戰》黑武士的誕生。他叱吒影壇半世紀，被亞蘭德倫		視為神一般的存在。本片以他和黑澤明的合作關係為主軸，\r\n								耙梳介紹了日本電影的黃金年代，以及		劍鬥片的歷史。 \r\n								　　					影片融合大量的經典影片及珍貴照片，穿插訪問役所廣司、香川京子、馬丁史柯西斯、史蒂芬史匹							\r\n								柏等人，資深演員如八千草薰、野上照代、中島貞夫，以及被三船殺了上百次的武術演員紛紛現身								說法，追\r\n								憶這位明星不同時期的風采，甚至試圖還原當年他與黑澤明拆夥的真相。曾演出武士電影								的基努李維亦為本\r\n								片獻聲，致敬意味濃厚。', NULL, NULL, NULL),
(38, '圣诞坏公公2', 'http://posters.imdb.cn/upload/2016/11/21/9saxcC28j_1479722736.jpg', NULL, 'Bad Santa 2', '马克·沃特斯 Mark S. Waters', '剧情 喜剧 犯罪', '2016年', 'Images/goldstar0.gif', '《圣诞坏公公》的续集《圣诞坏公公2》近日终于有了新进展。影片导演人		选正式确定，曾执导\r\n								《贱女孩》、《波普先生的企鹅》的导演马克·沃特斯将掌舵续集，而前作主		演比利·鲍伯·松顿、托尼·考克斯以及饰演小\r\n								胖的布莱特·凯利均将回归。', NULL, NULL, NULL),
(39, '雄狮', 'http://posters.imdb.cn/upload/2016/11/21/Nl7OuoCef_1479722150.jpg', NULL, 'Lion', 'Garth Davis', '剧情', '2016年', 'Images/goldstar8.gif', '影片根据畅销书《漫漫寻家路》（《A Long Way Home》）改编，故事源于		作者萨罗·布莱尔利的\r\n								一段真实经历。五岁时萨罗在印度的火车上不小心与家人走散，他在加尔各		答的街头流浪了几个星期，之后被送进一所孤儿\r\n								院，并被澳大利亚的一对夫妇收养。25年后，他开		始凭借隐约的记忆，用谷歌地球去寻找过去的家。\r\n								影片是导演加斯·戴维斯的长片处女作，《贫民窟的百万富翁》男星戴夫·帕特尔饰演成年萨罗，大卫·文翰和妮可·基德曼分饰\r\n								萨罗的养父母约翰和苏，鲁妮·玛拉饰演萨罗的女友露西。\r\n								影片将在2016年多伦多电影节首映，11月25日北美上映，有望冲击奥斯卡最佳影片', NULL, NULL, NULL),
(40, '莫阿娜', 'http://posters.imdb.cn/upload/2016/11/21/8Q9kLz8uw_1479721597.jpg', NULL, 'Moana', '唐·霍尔 Don Hall|罗恩·克莱蒙特斯 Ron Clements', '喜剧 动画', '2016年', 'Images/goldstar9.gif', '迪士尼动画新作《莫阿娜》（Moana）预计于2016底上映，主人翁莫阿娜将		成为迪士尼首位大洋洲\r\n								公主。 由罗恩·克莱蒙兹与约翰·马斯克领衔的制作团队操刀，他们还曾制		作过《公主和青蛙》、《阿拉丁》、《小美人鱼》\r\n								等影片。波里尼西亚人是居住在南太平洋小岛上的民族.有着自己……………', NULL, NULL, NULL),
(41, '星球大战外传：侠盗一号', 'http://posters.imdb.cn/upload/2016/12/13/epocvxJbo_1481623549.jpg', '即将上映', 'Rogue One: A Star Wars Story', '加勒斯·爱德华兹 Gareth Edwards', '动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《侠盗一号：星球大战外传》是由美国卢卡斯电影有限公司、华特·迪士尼		影片公司联合出品的奇幻动作片，由英国导演加里斯·爱德华斯执导，菲丽希缇·琼斯、迭戈·鲁纳		、本·门德尔森、甄子丹、姜文、福里斯特·惠特克、艾伦·图代克领衔主演。\r\n								《侠盗一号：星球大战外传》的故事背景设定在《星球大战：新希望》之前，讲述了这是一个共和体制覆灭、绝地武士崩溃的时代。自帕尔帕廷以所谓的新秩序将银河共和国改组为银河帝国之后，人民的起义逐渐增多并形成各类起义组织，这其中就有蒙·莫思马（金妮韦芙·奥蕾利饰）领导下的义军同盟。各种反抗活动使得银河帝国不得不拿出各种应对措施来镇压起义活动，而这其中最暴力最铁血的方式就是战斗空间站死星。\r\n								琴·厄索（菲丽希缇·琼斯饰）是一个非常泼辣的女孩，落到义军同盟手中后，蒙·莫思马看中了琴·厄索，并将其选做偷取死星设计图的人选。但对于义军来说，他们仅仅知道帝国有一个超级武器，任务的未知因素让它变得非常艰辛，琴·厄索将会和她的伙伴踏上一条危险异常的旅途 。\r\n								该片于2016年12月16日在美国上映，2017年1月6日以2D、3D、IMAX 3D、中国巨幕3D在中国上映', NULL, NULL, NULL),
(42, '摆渡人', 'http://posters.imdb.cn/upload/2016/12/13/zi5V5StLM_1481623210.jpg', '即将上映', 'See You Tomorrow', 'Zhang Jiajia', '喜剧 爱情', '2016年', 'Images/goldstar0.gif', '《摆渡人》是由王家卫监制，张嘉佳执导，梁朝伟、金城武、陈奕迅、杨颖		（Angelababy）、张榕容、杜鹃、熊黛林、大鹏、马苏、崔志佳、贾玲、李璨琛、柳岩出演，安又琪		友情客串，李宇春友情客串，鹿晗特别演出。讲述了“金牌摆渡人”酒吧老板陈末和合伙人管春拯救情		感落水者的故事。用快乐和温暖，抵抗这个世界的悲伤。\r\n							该片讲述了摆渡人是城市里的超级英雄，摆渡就是把人从痛苦中解救出来。用快乐和温暖，抵抗这个世界的悲伤。酒吧老板陈末（梁朝伟饰）和合伙人管春（金城武饰）就是这座城市的“金牌摆渡人”，他们平时看起来吊儿郎当，却从不对每位需要帮助的人说拒绝，只要你“预约摆渡”，刀山火海都会“使命必达”。邻居女孩小玉（杨颖 饰）为了偶像马力（陈奕迅饰），预约了他们的服务，但在帮助小玉挑战整个城市的过程中，陈末和管春也逐渐发现了自己躲不过的问题。从欢天喜地的生活，到惊天动地的疯狂，摆渡人最辉煌的篇章，从这里开启。\r\n							影片于2016年12月23日在中国内地上映', NULL, NULL, NULL),
(43, '铁道飞虎', 'http://posters.imdb.cn/upload/2016/12/13/l3ooOmVmq_1481622835.jpg', '即将上映', 'Rail Road Tigers', '丁晟 Sheng Ding', '喜剧 动作 战争', '2016年', 'Images/goldstar0.gif', '《铁道飞虎》由耀莱影视文化传媒有限公司、上海电影（集团）有限公司等联合		出品，丁晟执导，成龙、黄子韬、王凯、王大陆等主演的动作、战争题材喜剧电影 。\r\n							该片讲述了1941年太平洋战争爆发以后，穿过山东境内的津浦铁路成为日军在中国大陆最重要的战略交通线之一。在津浦铁路枣庄段周边，活跃着一支民间抗日游击队，这支游击队主要由枣庄火车站的几名铁路工人组成，队长叫马原（成龙饰），是火车站的搬运工工头。他们白天在日本人占领并管理的火车站干活，晚上出来秘密活动，利用对铁路线的熟悉以及扒火车、开火车的特殊技能，以一支小小的游击队跟大批装备精良的日本正规军周旋较量，造成了非常大的影响，当地老百姓给这支队伍起了一个响亮的名头，叫铁道飞虎队\r\n							该片于2016年12月23日贺岁档在中国上映，北美、英国、澳大利亚和新西兰同步上映', NULL, NULL, NULL),
(44, '罗曼蒂克消亡史', 'http://posters.imdb.cn/upload/2016/12/12/7SEkHeTYL_1481538184.jpg', '即将上映', 'The Wasted Times', '程耳 Er Cheng', '剧情 神秘 战争', '2016年', 'Images/goldstar0.gif', '《罗曼蒂克消亡史》是由华谊兄弟、英皇电影	联合出品的悬疑谍战片，由		程耳执导，葛优、章子怡、浅野忠信、杜淳、钟欣潼等主演\r\n								他一直拖到一九四九年五月初才坐上去香港的轮船，算得上真正的末班车。没有人知道他在拖什么或等待什么，我想他自己也未必知道，不过是下意识的拖延。不久他就死在香港，死前再没有值得记述的事件或说过的话，他基本没再说话，这没什么可奇怪的，一切都不值一提，他终于走向自己的沉默。\r\n								上世纪30年代的上海，叱咤风云的帮派大佬，不甘寂寞的交际花，说着地道上海话的日本妹夫，只收交通费的杀手，被冷落却忠诚的姨太太，外表光鲜的电影皇后，深宅大院里深不可测的管家，偶尔偷腥的电影皇帝，荷尔蒙满溢大脑的帮派小弟，一心想要破处的处男，善良的妓女，随波逐流的明星丈夫，投靠日本人的帮派二哥，日理万机却抽空恋爱的戴先生。\r\n								战争之下，繁华落尽。帮派大佬逃亡香港，交际花不知所踪，日本妹夫死在上海，电影皇后被丈夫抛弃，处男遇上妓女，姨太太杀死二哥。战争惨烈，战争终于结束。他轻易选择沉默，因为伤口无法弥合。罗曼蒂克消亡史。被浪费的时光。', NULL, NULL, NULL),
(45, '长城', 'http://posters.imdb.cn/upload/2016/12/12/eCjVhnxAS_1481537535.jpg', '即将上映', 'The Great Wall', '张艺谋 Yimou Zhang', '剧情 动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《长城》是由中国电影股份有限公司、乐视影业、传奇影业、环球影业联		合出品，中国导演张艺谋执导，马特·达蒙、景甜、佩德罗·帕斯卡、威廉·达福、刘德华、张涵		予等联合主演的奇幻动作片 。\r\n									该片讲述了欧洲雇佣兵威廉在被囚禁长城期间，发现了这世间最大奇迹之一背后的惊人秘密。当一波又一波可怕的掠食生物将这座巨型城墙重重围困之时，威廉加入了一支由中国精英勇士们组成的大军，共同对抗凶兽的故事 。\r\n									该片于2016年12月16日以3D、IMAX3D、中国巨幕3D、杜比视界、杜比全景声、Auro格式在中国上映', NULL, NULL, NULL);
INSERT INTO `time_sorts` (`sid`, `sname`, `src`, `state`, `enname`, `director`, `type`, `time`, `gradesrc`, `comment`, `href`, `star`, `grade`) VALUES
(46, '办公室圣诞派对', 'http://posters.imdb.cn/upload/2016/12/06/9K4Hd3B2w_1481018941.jpg', '即将上映', 'Office Christmas Party', '乔什·高顿 Josh Gordon|威尔·斯派克 Will Speck', '喜剧', '2016年', 'Images/goldstar0.gif', '《办公室圣诞派对》（Office Christmas Party）由导演威尔·斯派克、		乔什·戈登联合执导，\r\n									詹妮弗·安妮斯顿、T·J·米勒、 杰森·贝特曼、凯特·迈克金农、杰米·钟、		奥立薇娅·玛恩、马特·沃尔什、考特尼·万斯等主演。\r\n									Carol（詹妮弗·安妮斯顿饰）和Clay（T·J·米勒饰）是兄妹关系，他们的父亲刚刚过世，家族经营的科技公司一下失去了\r\n									主心骨。Clay是公司的董事，Carol是公司的CEO，两个人都为了经营公司费尽心思，然而方式却截然相反。\r\n									Carol是严厉一方，希望公司严格按照规则运营；不守规矩的Clay则想要通过打鸡血、疯狂派对的方式鼓舞士气，并在其死\r\n									党Josh（杰森·贝特曼饰）帮助下，为公司办了一场办公室圣诞派对。于是，在这场疯狂的办公室圣诞派对中，不少意外发生，事情越发失控', NULL, NULL, NULL),
(47, '爱乐之城', 'http://posters.imdb.cn/upload/2016/12/06/gqFtxxmL3_1481018570.jpg', NULL, 'La La Land', '未知', '剧情 喜剧 音乐剧', '2016年', 'Images/goldstar9.gif', '这部喜剧音乐片讲述一位爵士乐钢琴家与一名具有抱负的女演员之间的爱情故事。', NULL, NULL, NULL),
(48, '反黑行动组', 'http://posters.imdb.cn/upload/2016/12/06/aySzCXkPF_1481018030.jpg', '', 'Antigang', 'Benjamin Rocher', '剧情 动作 犯罪', '2015年', 'Images/goldstar6.gif', '《反黑行动组》由法国新式电影发行公司出品，中国电影集团公司进口		，中国电影股份有限公司发行，佰安影业（上海）有限公司协助推广。由本杰明·罗切尔执导		，让·雷诺、卡特琳娜·莫里诺、蒂埃里·钮维联合主演。\r\n										该片讲述了职业警察塞尔吉·布伦，为侦破黑帮黄金盗窃案反而致使同伴牺牲，陷入盗匪的连环设计之中......\r\n										该片将于2016年12月09日在中国内地上映。', NULL, NULL, NULL),
(49, '少年巴比伦', 'http://posters.imdb.cn/upload/2016/12/06/nvbtCW7ut_1481017724.jpg', NULL, 'Young Love Lost', '未知', '喜剧 爱情', '2016年', 'Images/goldstar7.gif', '《少年巴比伦》是由林炳坤监制，陈建忠编剧，相国强执导，董子健		、李梦、尚铁龙、李大光等主演的青春热血喜剧片。\r\n											影片改编自中间代作家路内的同名小说，讲述了路小路在戴城工厂的青春热血经历与爱恋故事。上个世纪90年代的戴城，路小路（董子健饰）在一家\r\n											糖精厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“牛魔王”（尚铁龙饰）的师傅混，没学会半点技术。在钳工班，除了拧螺丝\r\n											之外什么都不会。在电工班，也只会换灯泡。除此之外，他还喜欢迟到、打架、翻工厂的院墙，也结识了一帮兄弟。直到某天，路小路遇见了一个叫\r\n											白蓝（李梦饰）的厂医，他的人生由此发生了改变……', NULL, NULL, NULL),
(50, '塔洛', 'http://posters.imdb.cn/upload/2016/12/02/dAekv5Bzr_1480672783.jpg', NULL, 'Tharlo', '万玛才旦 Wanma Caidan', '剧情', '2016年', 'Images/goldstar7.gif', '《塔洛》是由万玛才旦执导，由西德尼玛、杨秀措主演的剧情片。该		片于2016年12月9日\r\n											在中国大陆上映。一位自幼放羊为生的藏民塔洛，在进城办理二代身份		证时，遇到了理发店女店主杨措，经历了一\r\n											场突如其来的爱情。塔洛卖了羊，把毕生所得16		万人民币托付给杨措，杨措却卷款逃离了塔洛。旧的世界已然坍塌，\r\n											新的世界尚未建立，塔		洛的命运今如何。', NULL, NULL, NULL),
(51, '超级快递', 'http://posters.imdb.cn/upload/2016/11/30/SE0lmJwQD_1480500747.jpg', NULL, 'Super Express', '未知', '喜剧 动作', '2016年', 'Images/goldstar0.gif', '《超级快递》是由宋啸执导的动作喜剧电影。由陈赫、宋智孝、大卫·贝		尔、李媛、李淳、邰智源\r\n									等主演，肖央、何赛飞特别出演。由基美影业董事长高敬东担纲制片人		，王郢编剧。该片于2016年12月2日在中国大陆上\r\n									映。影片讲述了快递员马力在一次派件途中，		偶然卷入一起神像争夺事件，并受到一神秘性感女郎胁迫，共同对付国际大\r\n									盗Gary的故事，在这		一夺取神像的过程中，故事却突然变得扑朔迷离。', NULL, NULL, NULL),
(52, '第一夫人', 'http://posters.imdb.cn/upload/2016/11/29/aa4y1R7bL_1480412579.jpg', NULL, 'Jackie', 'Pablo Larrain', '剧情 传记', '2016年', 'Images/goldstar8.gif', '《第一夫人》是由美国、智利联合制片的99分钟传记影片。该片由帕布罗		·拉雷恩执导，\r\n									娜塔丽·波特曼、彼得·萨斯加德、格蕾塔·葛韦格、马克斯·凯塞拉、贝丝·格兰特		等主演.\r\n									肯尼迪总统刺杀事件一周后，面对《生活》杂志记者对杰奎琳的采访，杰奎琳时而恍惚时而激动的讲述着她生活中的巨变。\r\n									一个丈夫遇刺后冷静强大的出现在公众面前的第一夫人，她要参与丈夫的国葬，向两个年幼的孩子解释父亲的离去，甚至还\r\n									有关于遗产的问题。当副总统林登·约翰逊在飞机上宣誓就任美国总统时，她身穿着仍然血迹斑斑的粉红套装，向美国人民展\r\n									现着她的勇气与镇定，然而电视转播之外，她情绪失控、无法冷静。对其身边的大多数人来说，遇刺的是美国国家的总统，\r\n									第一要务是国事，对于她来说那却是自己的丈夫孩子的父亲，首当其冲的是失去亲人的悲痛', NULL, NULL, NULL),
(53, '极速之巅', 'http://posters.imdb.cn/upload/2016/11/25/n2jPAhkKo_1480067748.png', NULL, 'Collide', 'Eran Creevy', '动作 恐怖', '2016年', 'Images/goldstar6.gif', '电影《极速之巅》男主角凯西·斯登（尼古拉斯·霍尔特饰演）是从美国来		的背包客，在美国时曾\r\n									多次偷车，为躲避牢狱之灾逃到德国后，参与格伦（本·金斯利饰演）的		毒品交易。有一天，他遇到了一生挚爱朱丽叶·玛\r\n									尔（菲丽希缇·琼斯饰演）。朱丽叶患有严重的		肾病，昂贵的手术费让凯西决定最后一次为老板赴险涉毒，不料老板心中\r\n									另有算盘，要利用他展		开对另一位大毒枭哈根·卡尔（安东尼·霍普金斯饰演）的复仇计划。爱情、生命、毒品、仇恨、	\r\n									谎言，这一切驱使着男主人公在世界闻名的不限速高速公路“Autobahn”上撞碎豪车冲破骗局，以		接近死亡的舍命狂飙换取\r\n									心爱之人的重生。', NULL, NULL, NULL),
(54, '三少爷的剑', 'http://posters.imdb.cn/upload/2016/11/25/r4FTT3s2N_1480067405.jpg', NULL, 'San shao ye de jian', '尔冬升 Er Dongsheng', '动作', '2016年', 'Images/goldstar6.gif', '《三少爷的剑》是由博纳影业集团出品，徐克监制，尔冬升执导，林更新、		何润东等主演的3D武侠\r\n								电影。\r\n								《三少爷的剑》是根据古龙同名小说改编，影片主要讲述了神剑山庄的三少爷谢晓峰与燕十三为家族存亡、师门荣辱展开的一\r\n								场生死较量的故事。 该片于2016年12月2日在中国内地上映。\r\n								10多年来历经上千场大战未尝一败，被天下人尊为“剑神”。然而，传奇剑客燕十三（何润东饰）一直以谢晓峰为目标，苦修剑\r\n								道，终于在生死边缘悟出惊天地泣鬼神的“夺命十三剑”。一时之间，江湖沸腾，然而，就在燕十三赶到神剑山庄下战书的时候，\r\n								迎接他的，却是三少爷谢晓峰的灵柩。燕十三因痛失对手大感失望，此时神秘女子慕容秋荻（江一燕饰）出现并告知燕十三，\r\n								谢晓峰并没有死，要想找到他决战，燕十三就必须要替她杀一个人。', NULL, NULL, NULL),
(55, '28岁未成年', 'http://posters.imdb.cn/upload/2016/11/25/CPvuB67Ni_1480066695.jpg', NULL, 'Suddenly Seventeen', '未知', '剧情 喜剧 奇幻', '2016年', 'Images/goldstar0.gif', '《28岁未成年》是由乐视影业（北京）有限公司出品的爱情片，由张末执导		，倪妮、霍建华、马苏、\r\n								王大陆联合主演。\r\n								电影改编自black.f同名小说，讲述了28岁的凉夏身陷糟糕的感情生活不能自拔，意外“心智”重返17岁，并在17岁凉夏的帮助下\r\n								认清自己、找回初心的故事。\r\n								影片将于2016年12月2日在中国上映。\r\n								28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，\r\n								茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾忌凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未\r\n								遂，还被他提出分手。凉夏悲伤欲绝，意外之下，心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性\r\n								青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，\r\n								凉夏究竟会做出怎样的选择……', NULL, NULL, NULL),
(56, '打破陈规', 'http://posters.imdb.cn/upload/2016/11/23/5FtvfClnT_1479895392.jpg', NULL, 'Rules Don''t Apply', '沃伦·比蒂 Warren Beatty', '剧情 喜剧 爱情', '2016年', 'Images/goldstar7.gif', '影片讲述了一个发生在1958年的“打破陈规”的爱情故事，故事中一位虔诚的		基督教徒女演员\r\n								（莉莉·科林斯饰）与同样保守的汽车司机（阿尔登·埃伦瑞奇饰）发生了一段缠绵		的爱情，他们均受雇于怪诞的富豪\r\n								霍华德·休斯（沃伦·比蒂饰）的公司之中。[1] \r\n								影片将于11月23日开画，据悉影片聚集了亚力克·鲍德温、安妮特·贝宁、海莉·贝内特、坎迪斯·伯根、马修·布罗德里克、\r\n								达布尼·科尔曼、史蒂夫·库根、泰莎·法梅加、艾德·哈里斯、梅根·希尔提、奥利弗·普莱特与马丁·辛演员出演。', NULL, NULL, NULL),
(57, '三船敏郎：最后的武士', 'http://posters.imdb.cn/upload/2016/11/23/dtTjDS3eH_1479894364.jpg', NULL, 'Mifune: The Last Samurai', 'Steven Okazaki', '记录 传记', '2016年', 'Images/goldstar8.gif', '三船敏郎， 日本最偉大的演員之一， 曾參與近一百七十部電影演出，包括		《蜘蛛巢城》、\r\n								《七武士》、《羅生門》等。他與黑澤明共同締造了日本電影的黃金年代，更走紅		國際，影響《荒野大飆客》、甚至是\r\n								《星際大戰》黑武士的誕生。他叱吒影壇半世紀，被亞蘭德倫		視為神一般的存在。本片以他和黑澤明的合作關係為主軸，\r\n								耙梳介紹了日本電影的黃金年代，以及		劍鬥片的歷史。 \r\n								　　					影片融合大量的經典影片及珍貴照片，穿插訪問役所廣司、香川京子、馬丁史柯西斯、史蒂芬史匹							\r\n								柏等人，資深演員如八千草薰、野上照代、中島貞夫，以及被三船殺了上百次的武術演員紛紛現身								說法，追\r\n								憶這位明星不同時期的風采，甚至試圖還原當年他與黑澤明拆夥的真相。曾演出武士電影								的基努李維亦為本\r\n								片獻聲，致敬意味濃厚。', NULL, NULL, NULL),
(58, '圣诞坏公公2', 'http://posters.imdb.cn/upload/2016/11/21/9saxcC28j_1479722736.jpg', NULL, 'Bad Santa 2', '马克·沃特斯 Mark S. Waters', '剧情 喜剧 犯罪', '2016年', 'Images/goldstar0.gif', '《圣诞坏公公》的续集《圣诞坏公公2》近日终于有了新进展。影片导演人		选正式确定，曾执导\r\n								《贱女孩》、《波普先生的企鹅》的导演马克·沃特斯将掌舵续集，而前作主		演比利·鲍伯·松顿、托尼·考克斯以及饰演小\r\n								胖的布莱特·凯利均将回归。', NULL, NULL, NULL),
(59, '雄狮', 'http://posters.imdb.cn/upload/2016/11/21/Nl7OuoCef_1479722150.jpg', NULL, 'Lion', 'Garth Davis', '剧情', '2016年', 'Images/goldstar8.gif', '影片根据畅销书《漫漫寻家路》（《A Long Way Home》）改编，故事源于		作者萨罗·布莱尔利的\r\n								一段真实经历。五岁时萨罗在印度的火车上不小心与家人走散，他在加尔各		答的街头流浪了几个星期，之后被送进一所孤儿\r\n								院，并被澳大利亚的一对夫妇收养。25年后，他开		始凭借隐约的记忆，用谷歌地球去寻找过去的家。\r\n								影片是导演加斯·戴维斯的长片处女作，《贫民窟的百万富翁》男星戴夫·帕特尔饰演成年萨罗，大卫·文翰和妮可·基德曼分饰\r\n								萨罗的养父母约翰和苏，鲁妮·玛拉饰演萨罗的女友露西。\r\n								影片将在2016年多伦多电影节首映，11月25日北美上映，有望冲击奥斯卡最佳影片', NULL, NULL, NULL),
(60, '莫阿娜', 'http://posters.imdb.cn/upload/2016/11/21/8Q9kLz8uw_1479721597.jpg', NULL, 'Moana', '唐·霍尔 Don Hall|罗恩·克莱蒙特斯 Ron Clements', '喜剧 动画', '2016年', 'Images/goldstar9.gif', '迪士尼动画新作《莫阿娜》（Moana）预计于2016底上映，主人翁莫阿娜将		成为迪士尼首位大洋洲\r\n								公主。 由罗恩·克莱蒙兹与约翰·马斯克领衔的制作团队操刀，他们还曾制		作过《公主和青蛙》、《阿拉丁》、《小美人鱼》\r\n								等影片。波里尼西亚人是居住在南太平洋小岛上的民族.有着自己……………', NULL, NULL, NULL),
(61, '星球大战外传：侠盗一号', 'http://posters.imdb.cn/upload/2016/12/13/epocvxJbo_1481623549.jpg', '即将上映', 'Rogue One: A Star Wars Story', '加勒斯·爱德华兹 Gareth Edwards', '动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《侠盗一号：星球大战外传》是由美国卢卡斯电影有限公司、华特·迪士尼		影片公司联合出品的奇幻动作片，由英国导演加里斯·爱德华斯执导，菲丽希缇·琼斯、迭戈·鲁纳		、本·门德尔森、甄子丹、姜文、福里斯特·惠特克、艾伦·图代克领衔主演。\r\n								《侠盗一号：星球大战外传》的故事背景设定在《星球大战：新希望》之前，讲述了这是一个共和体制覆灭、绝地武士崩溃的时代。自帕尔帕廷以所谓的新秩序将银河共和国改组为银河帝国之后，人民的起义逐渐增多并形成各类起义组织，这其中就有蒙·莫思马（金妮韦芙·奥蕾利饰）领导下的义军同盟。各种反抗活动使得银河帝国不得不拿出各种应对措施来镇压起义活动，而这其中最暴力最铁血的方式就是战斗空间站死星。\r\n								琴·厄索（菲丽希缇·琼斯饰）是一个非常泼辣的女孩，落到义军同盟手中后，蒙·莫思马看中了琴·厄索，并将其选做偷取死星设计图的人选。但对于义军来说，他们仅仅知道帝国有一个超级武器，任务的未知因素让它变得非常艰辛，琴·厄索将会和她的伙伴踏上一条危险异常的旅途 。\r\n								该片于2016年12月16日在美国上映，2017年1月6日以2D、3D、IMAX 3D、中国巨幕3D在中国上映', NULL, NULL, NULL),
(62, '摆渡人', 'http://posters.imdb.cn/upload/2016/12/13/zi5V5StLM_1481623210.jpg', '即将上映', 'See You Tomorrow', 'Zhang Jiajia', '喜剧 爱情', '2016年', 'Images/goldstar0.gif', '《摆渡人》是由王家卫监制，张嘉佳执导，梁朝伟、金城武、陈奕迅、杨颖		（Angelababy）、张榕容、杜鹃、熊黛林、大鹏、马苏、崔志佳、贾玲、李璨琛、柳岩出演，安又琪		友情客串，李宇春友情客串，鹿晗特别演出。讲述了“金牌摆渡人”酒吧老板陈末和合伙人管春拯救情		感落水者的故事。用快乐和温暖，抵抗这个世界的悲伤。\r\n							该片讲述了摆渡人是城市里的超级英雄，摆渡就是把人从痛苦中解救出来。用快乐和温暖，抵抗这个世界的悲伤。酒吧老板陈末（梁朝伟饰）和合伙人管春（金城武饰）就是这座城市的“金牌摆渡人”，他们平时看起来吊儿郎当，却从不对每位需要帮助的人说拒绝，只要你“预约摆渡”，刀山火海都会“使命必达”。邻居女孩小玉（杨颖 饰）为了偶像马力（陈奕迅饰），预约了他们的服务，但在帮助小玉挑战整个城市的过程中，陈末和管春也逐渐发现了自己躲不过的问题。从欢天喜地的生活，到惊天动地的疯狂，摆渡人最辉煌的篇章，从这里开启。\r\n							影片于2016年12月23日在中国内地上映', NULL, NULL, NULL),
(63, '铁道飞虎', 'http://posters.imdb.cn/upload/2016/12/13/l3ooOmVmq_1481622835.jpg', '即将上映', 'Rail Road Tigers', '丁晟 Sheng Ding', '喜剧 动作 战争', '2016年', 'Images/goldstar0.gif', '《铁道飞虎》由耀莱影视文化传媒有限公司、上海电影（集团）有限公司等联合		出品，丁晟执导，成龙、黄子韬、王凯、王大陆等主演的动作、战争题材喜剧电影 。\r\n							该片讲述了1941年太平洋战争爆发以后，穿过山东境内的津浦铁路成为日军在中国大陆最重要的战略交通线之一。在津浦铁路枣庄段周边，活跃着一支民间抗日游击队，这支游击队主要由枣庄火车站的几名铁路工人组成，队长叫马原（成龙饰），是火车站的搬运工工头。他们白天在日本人占领并管理的火车站干活，晚上出来秘密活动，利用对铁路线的熟悉以及扒火车、开火车的特殊技能，以一支小小的游击队跟大批装备精良的日本正规军周旋较量，造成了非常大的影响，当地老百姓给这支队伍起了一个响亮的名头，叫铁道飞虎队\r\n							该片于2016年12月23日贺岁档在中国上映，北美、英国、澳大利亚和新西兰同步上映', NULL, NULL, NULL),
(64, '罗曼蒂克消亡史', 'http://posters.imdb.cn/upload/2016/12/12/7SEkHeTYL_1481538184.jpg', '即将上映', 'The Wasted Times', '程耳 Er Cheng', '剧情 神秘 战争', '2016年', 'Images/goldstar0.gif', '《罗曼蒂克消亡史》是由华谊兄弟、英皇电影	联合出品的悬疑谍战片，由		程耳执导，葛优、章子怡、浅野忠信、杜淳、钟欣潼等主演\r\n								他一直拖到一九四九年五月初才坐上去香港的轮船，算得上真正的末班车。没有人知道他在拖什么或等待什么，我想他自己也未必知道，不过是下意识的拖延。不久他就死在香港，死前再没有值得记述的事件或说过的话，他基本没再说话，这没什么可奇怪的，一切都不值一提，他终于走向自己的沉默。\r\n								上世纪30年代的上海，叱咤风云的帮派大佬，不甘寂寞的交际花，说着地道上海话的日本妹夫，只收交通费的杀手，被冷落却忠诚的姨太太，外表光鲜的电影皇后，深宅大院里深不可测的管家，偶尔偷腥的电影皇帝，荷尔蒙满溢大脑的帮派小弟，一心想要破处的处男，善良的妓女，随波逐流的明星丈夫，投靠日本人的帮派二哥，日理万机却抽空恋爱的戴先生。\r\n								战争之下，繁华落尽。帮派大佬逃亡香港，交际花不知所踪，日本妹夫死在上海，电影皇后被丈夫抛弃，处男遇上妓女，姨太太杀死二哥。战争惨烈，战争终于结束。他轻易选择沉默，因为伤口无法弥合。罗曼蒂克消亡史。被浪费的时光。', NULL, NULL, NULL),
(65, '长城', 'http://posters.imdb.cn/upload/2016/12/12/eCjVhnxAS_1481537535.jpg', '即将上映', 'The Great Wall', '张艺谋 Yimou Zhang', '剧情 动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《长城》是由中国电影股份有限公司、乐视影业、传奇影业、环球影业联		合出品，中国导演张艺谋执导，马特·达蒙、景甜、佩德罗·帕斯卡、威廉·达福、刘德华、张涵		予等联合主演的奇幻动作片 。\r\n									该片讲述了欧洲雇佣兵威廉在被囚禁长城期间，发现了这世间最大奇迹之一背后的惊人秘密。当一波又一波可怕的掠食生物将这座巨型城墙重重围困之时，威廉加入了一支由中国精英勇士们组成的大军，共同对抗凶兽的故事 。\r\n									该片于2016年12月16日以3D、IMAX3D、中国巨幕3D、杜比视界、杜比全景声、Auro格式在中国上映', NULL, NULL, NULL),
(66, '办公室圣诞派对', 'http://posters.imdb.cn/upload/2016/12/06/9K4Hd3B2w_1481018941.jpg', '即将上映', 'Office Christmas Party', '乔什·高顿 Josh Gordon|威尔·斯派克 Will Speck', '喜剧', '2016年', 'Images/goldstar0.gif', '《办公室圣诞派对》（Office Christmas Party）由导演威尔·斯派克、		乔什·戈登联合执导，\r\n									詹妮弗·安妮斯顿、T·J·米勒、 杰森·贝特曼、凯特·迈克金农、杰米·钟、		奥立薇娅·玛恩、马特·沃尔什、考特尼·万斯等主演。\r\n									Carol（詹妮弗·安妮斯顿饰）和Clay（T·J·米勒饰）是兄妹关系，他们的父亲刚刚过世，家族经营的科技公司一下失去了\r\n									主心骨。Clay是公司的董事，Carol是公司的CEO，两个人都为了经营公司费尽心思，然而方式却截然相反。\r\n									Carol是严厉一方，希望公司严格按照规则运营；不守规矩的Clay则想要通过打鸡血、疯狂派对的方式鼓舞士气，并在其死\r\n									党Josh（杰森·贝特曼饰）帮助下，为公司办了一场办公室圣诞派对。于是，在这场疯狂的办公室圣诞派对中，不少意外发生，事情越发失控', NULL, NULL, NULL),
(67, '爱乐之城', 'http://posters.imdb.cn/upload/2016/12/06/gqFtxxmL3_1481018570.jpg', NULL, 'La La Land', '未知', '剧情 喜剧 音乐剧', '2016年', 'Images/goldstar9.gif', '这部喜剧音乐片讲述一位爵士乐钢琴家与一名具有抱负的女演员之间的爱情故事。', NULL, NULL, NULL),
(68, '反黑行动组', 'http://posters.imdb.cn/upload/2016/12/06/aySzCXkPF_1481018030.jpg', '', 'Antigang', 'Benjamin Rocher', '剧情 动作 犯罪', '2015年', 'Images/goldstar6.gif', '《反黑行动组》由法国新式电影发行公司出品，中国电影集团公司进口		，中国电影股份有限公司发行，佰安影业（上海）有限公司协助推广。由本杰明·罗切尔执导		，让·雷诺、卡特琳娜·莫里诺、蒂埃里·钮维联合主演。\r\n										该片讲述了职业警察塞尔吉·布伦，为侦破黑帮黄金盗窃案反而致使同伴牺牲，陷入盗匪的连环设计之中......\r\n										该片将于2016年12月09日在中国内地上映。', NULL, NULL, NULL),
(69, '少年巴比伦', 'http://posters.imdb.cn/upload/2016/12/06/nvbtCW7ut_1481017724.jpg', NULL, 'Young Love Lost', '未知', '喜剧 爱情', '2016年', 'Images/goldstar7.gif', '《少年巴比伦》是由林炳坤监制，陈建忠编剧，相国强执导，董子健		、李梦、尚铁龙、李大光等主演的青春热血喜剧片。\r\n											影片改编自中间代作家路内的同名小说，讲述了路小路在戴城工厂的青春热血经历与爱恋故事。上个世纪90年代的戴城，路小路（董子健饰）在一家\r\n											糖精厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“牛魔王”（尚铁龙饰）的师傅混，没学会半点技术。在钳工班，除了拧螺丝\r\n											之外什么都不会。在电工班，也只会换灯泡。除此之外，他还喜欢迟到、打架、翻工厂的院墙，也结识了一帮兄弟。直到某天，路小路遇见了一个叫\r\n											白蓝（李梦饰）的厂医，他的人生由此发生了改变……', NULL, NULL, NULL),
(70, '塔洛', 'http://posters.imdb.cn/upload/2016/12/02/dAekv5Bzr_1480672783.jpg', NULL, 'Tharlo', '万玛才旦 Wanma Caidan', '剧情', '2016年', 'Images/goldstar7.gif', '《塔洛》是由万玛才旦执导，由西德尼玛、杨秀措主演的剧情片。该		片于2016年12月9日\r\n											在中国大陆上映。一位自幼放羊为生的藏民塔洛，在进城办理二代身份		证时，遇到了理发店女店主杨措，经历了一\r\n											场突如其来的爱情。塔洛卖了羊，把毕生所得16		万人民币托付给杨措，杨措却卷款逃离了塔洛。旧的世界已然坍塌，\r\n											新的世界尚未建立，塔		洛的命运今如何。', NULL, NULL, NULL),
(71, '超级快递', 'http://posters.imdb.cn/upload/2016/11/30/SE0lmJwQD_1480500747.jpg', NULL, 'Super Express', '未知', '喜剧 动作', '2016年', 'Images/goldstar0.gif', '《超级快递》是由宋啸执导的动作喜剧电影。由陈赫、宋智孝、大卫·贝		尔、李媛、李淳、邰智源\r\n									等主演，肖央、何赛飞特别出演。由基美影业董事长高敬东担纲制片人		，王郢编剧。该片于2016年12月2日在中国大陆上\r\n									映。影片讲述了快递员马力在一次派件途中，		偶然卷入一起神像争夺事件，并受到一神秘性感女郎胁迫，共同对付国际大\r\n									盗Gary的故事，在这		一夺取神像的过程中，故事却突然变得扑朔迷离。', NULL, NULL, NULL),
(72, '第一夫人', 'http://posters.imdb.cn/upload/2016/11/29/aa4y1R7bL_1480412579.jpg', NULL, 'Jackie', 'Pablo Larrain', '剧情 传记', '2016年', 'Images/goldstar8.gif', '《第一夫人》是由美国、智利联合制片的99分钟传记影片。该片由帕布罗		·拉雷恩执导，\r\n									娜塔丽·波特曼、彼得·萨斯加德、格蕾塔·葛韦格、马克斯·凯塞拉、贝丝·格兰特		等主演.\r\n									肯尼迪总统刺杀事件一周后，面对《生活》杂志记者对杰奎琳的采访，杰奎琳时而恍惚时而激动的讲述着她生活中的巨变。\r\n									一个丈夫遇刺后冷静强大的出现在公众面前的第一夫人，她要参与丈夫的国葬，向两个年幼的孩子解释父亲的离去，甚至还\r\n									有关于遗产的问题。当副总统林登·约翰逊在飞机上宣誓就任美国总统时，她身穿着仍然血迹斑斑的粉红套装，向美国人民展\r\n									现着她的勇气与镇定，然而电视转播之外，她情绪失控、无法冷静。对其身边的大多数人来说，遇刺的是美国国家的总统，\r\n									第一要务是国事，对于她来说那却是自己的丈夫孩子的父亲，首当其冲的是失去亲人的悲痛', NULL, NULL, NULL),
(73, '极速之巅', 'http://posters.imdb.cn/upload/2016/11/25/n2jPAhkKo_1480067748.png', NULL, 'Collide', 'Eran Creevy', '动作 恐怖', '2016年', 'Images/goldstar6.gif', '电影《极速之巅》男主角凯西·斯登（尼古拉斯·霍尔特饰演）是从美国来		的背包客，在美国时曾\r\n									多次偷车，为躲避牢狱之灾逃到德国后，参与格伦（本·金斯利饰演）的		毒品交易。有一天，他遇到了一生挚爱朱丽叶·玛\r\n									尔（菲丽希缇·琼斯饰演）。朱丽叶患有严重的		肾病，昂贵的手术费让凯西决定最后一次为老板赴险涉毒，不料老板心中\r\n									另有算盘，要利用他展		开对另一位大毒枭哈根·卡尔（安东尼·霍普金斯饰演）的复仇计划。爱情、生命、毒品、仇恨、	\r\n									谎言，这一切驱使着男主人公在世界闻名的不限速高速公路“Autobahn”上撞碎豪车冲破骗局，以		接近死亡的舍命狂飙换取\r\n									心爱之人的重生。', NULL, NULL, NULL),
(74, '三少爷的剑', 'http://posters.imdb.cn/upload/2016/11/25/r4FTT3s2N_1480067405.jpg', NULL, 'San shao ye de jian', '尔冬升 Er Dongsheng', '动作', '2016年', 'Images/goldstar6.gif', '《三少爷的剑》是由博纳影业集团出品，徐克监制，尔冬升执导，林更新、		何润东等主演的3D武侠\r\n								电影。\r\n								《三少爷的剑》是根据古龙同名小说改编，影片主要讲述了神剑山庄的三少爷谢晓峰与燕十三为家族存亡、师门荣辱展开的一\r\n								场生死较量的故事。 该片于2016年12月2日在中国内地上映。\r\n								10多年来历经上千场大战未尝一败，被天下人尊为“剑神”。然而，传奇剑客燕十三（何润东饰）一直以谢晓峰为目标，苦修剑\r\n								道，终于在生死边缘悟出惊天地泣鬼神的“夺命十三剑”。一时之间，江湖沸腾，然而，就在燕十三赶到神剑山庄下战书的时候，\r\n								迎接他的，却是三少爷谢晓峰的灵柩。燕十三因痛失对手大感失望，此时神秘女子慕容秋荻（江一燕饰）出现并告知燕十三，\r\n								谢晓峰并没有死，要想找到他决战，燕十三就必须要替她杀一个人。', NULL, NULL, NULL),
(75, '28岁未成年', 'http://posters.imdb.cn/upload/2016/11/25/CPvuB67Ni_1480066695.jpg', NULL, 'Suddenly Seventeen', '未知', '剧情 喜剧 奇幻', '2016年', 'Images/goldstar0.gif', '《28岁未成年》是由乐视影业（北京）有限公司出品的爱情片，由张末执导		，倪妮、霍建华、马苏、\r\n								王大陆联合主演。\r\n								电影改编自black.f同名小说，讲述了28岁的凉夏身陷糟糕的感情生活不能自拔，意外“心智”重返17岁，并在17岁凉夏的帮助下\r\n								认清自己、找回初心的故事。\r\n								影片将于2016年12月2日在中国上映。\r\n								28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，\r\n								茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾忌凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未\r\n								遂，还被他提出分手。凉夏悲伤欲绝，意外之下，心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性\r\n								青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，\r\n								凉夏究竟会做出怎样的选择……', NULL, NULL, NULL),
(76, '打破陈规', 'http://posters.imdb.cn/upload/2016/11/23/5FtvfClnT_1479895392.jpg', NULL, 'Rules Don''t Apply', '沃伦·比蒂 Warren Beatty', '剧情 喜剧 爱情', '2016年', 'Images/goldstar7.gif', '影片讲述了一个发生在1958年的“打破陈规”的爱情故事，故事中一位虔诚的		基督教徒女演员\r\n								（莉莉·科林斯饰）与同样保守的汽车司机（阿尔登·埃伦瑞奇饰）发生了一段缠绵		的爱情，他们均受雇于怪诞的富豪\r\n								霍华德·休斯（沃伦·比蒂饰）的公司之中。[1] \r\n								影片将于11月23日开画，据悉影片聚集了亚力克·鲍德温、安妮特·贝宁、海莉·贝内特、坎迪斯·伯根、马修·布罗德里克、\r\n								达布尼·科尔曼、史蒂夫·库根、泰莎·法梅加、艾德·哈里斯、梅根·希尔提、奥利弗·普莱特与马丁·辛演员出演。', NULL, NULL, NULL),
(77, '三船敏郎：最后的武士', 'http://posters.imdb.cn/upload/2016/11/23/dtTjDS3eH_1479894364.jpg', NULL, 'Mifune: The Last Samurai', 'Steven Okazaki', '记录 传记', '2016年', 'Images/goldstar8.gif', '三船敏郎， 日本最偉大的演員之一， 曾參與近一百七十部電影演出，包括		《蜘蛛巢城》、\r\n								《七武士》、《羅生門》等。他與黑澤明共同締造了日本電影的黃金年代，更走紅		國際，影響《荒野大飆客》、甚至是\r\n								《星際大戰》黑武士的誕生。他叱吒影壇半世紀，被亞蘭德倫		視為神一般的存在。本片以他和黑澤明的合作關係為主軸，\r\n								耙梳介紹了日本電影的黃金年代，以及		劍鬥片的歷史。 \r\n								　　					影片融合大量的經典影片及珍貴照片，穿插訪問役所廣司、香川京子、馬丁史柯西斯、史蒂芬史匹							\r\n								柏等人，資深演員如八千草薰、野上照代、中島貞夫，以及被三船殺了上百次的武術演員紛紛現身								說法，追\r\n								憶這位明星不同時期的風采，甚至試圖還原當年他與黑澤明拆夥的真相。曾演出武士電影								的基努李維亦為本\r\n								片獻聲，致敬意味濃厚。', NULL, NULL, NULL),
(78, '圣诞坏公公2', 'http://posters.imdb.cn/upload/2016/11/21/9saxcC28j_1479722736.jpg', NULL, 'Bad Santa 2', '马克·沃特斯 Mark S. Waters', '剧情 喜剧 犯罪', '2016年', 'Images/goldstar0.gif', '《圣诞坏公公》的续集《圣诞坏公公2》近日终于有了新进展。影片导演人		选正式确定，曾执导\r\n								《贱女孩》、《波普先生的企鹅》的导演马克·沃特斯将掌舵续集，而前作主		演比利·鲍伯·松顿、托尼·考克斯以及饰演小\r\n								胖的布莱特·凯利均将回归。', NULL, NULL, NULL),
(79, '雄狮', 'http://posters.imdb.cn/upload/2016/11/21/Nl7OuoCef_1479722150.jpg', NULL, 'Lion', 'Garth Davis', '剧情', '2016年', 'Images/goldstar8.gif', '影片根据畅销书《漫漫寻家路》（《A Long Way Home》）改编，故事源于		作者萨罗·布莱尔利的\r\n								一段真实经历。五岁时萨罗在印度的火车上不小心与家人走散，他在加尔各		答的街头流浪了几个星期，之后被送进一所孤儿\r\n								院，并被澳大利亚的一对夫妇收养。25年后，他开		始凭借隐约的记忆，用谷歌地球去寻找过去的家。\r\n								影片是导演加斯·戴维斯的长片处女作，《贫民窟的百万富翁》男星戴夫·帕特尔饰演成年萨罗，大卫·文翰和妮可·基德曼分饰\r\n								萨罗的养父母约翰和苏，鲁妮·玛拉饰演萨罗的女友露西。\r\n								影片将在2016年多伦多电影节首映，11月25日北美上映，有望冲击奥斯卡最佳影片', NULL, NULL, NULL),
(80, '莫阿娜', 'http://posters.imdb.cn/upload/2016/11/21/8Q9kLz8uw_1479721597.jpg', NULL, 'Moana', '唐·霍尔 Don Hall|罗恩·克莱蒙特斯 Ron Clements', '喜剧 动画', '2016年', 'Images/goldstar9.gif', '迪士尼动画新作《莫阿娜》（Moana）预计于2016底上映，主人翁莫阿娜将		成为迪士尼首位大洋洲\r\n								公主。 由罗恩·克莱蒙兹与约翰·马斯克领衔的制作团队操刀，他们还曾制		作过《公主和青蛙》、《阿拉丁》、《小美人鱼》\r\n								等影片。波里尼西亚人是居住在南太平洋小岛上的民族.有着自己……………', NULL, NULL, NULL),
(81, '星球大战外传：侠盗一号', 'http://posters.imdb.cn/upload/2016/12/13/epocvxJbo_1481623549.jpg', '即将上映', 'Rogue One: A Star Wars Story', '加勒斯·爱德华兹 Gareth Edwards', '动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《侠盗一号：星球大战外传》是由美国卢卡斯电影有限公司、华特·迪士尼		影片公司联合出品的奇幻动作片，由英国导演加里斯·爱德华斯执导，菲丽希缇·琼斯、迭戈·鲁纳		、本·门德尔森、甄子丹、姜文、福里斯特·惠特克、艾伦·图代克领衔主演。\r\n								《侠盗一号：星球大战外传》的故事背景设定在《星球大战：新希望》之前，讲述了这是一个共和体制覆灭、绝地武士崩溃的时代。自帕尔帕廷以所谓的新秩序将银河共和国改组为银河帝国之后，人民的起义逐渐增多并形成各类起义组织，这其中就有蒙·莫思马（金妮韦芙·奥蕾利饰）领导下的义军同盟。各种反抗活动使得银河帝国不得不拿出各种应对措施来镇压起义活动，而这其中最暴力最铁血的方式就是战斗空间站死星。\r\n								琴·厄索（菲丽希缇·琼斯饰）是一个非常泼辣的女孩，落到义军同盟手中后，蒙·莫思马看中了琴·厄索，并将其选做偷取死星设计图的人选。但对于义军来说，他们仅仅知道帝国有一个超级武器，任务的未知因素让它变得非常艰辛，琴·厄索将会和她的伙伴踏上一条危险异常的旅途 。\r\n								该片于2016年12月16日在美国上映，2017年1月6日以2D、3D、IMAX 3D、中国巨幕3D在中国上映', NULL, NULL, NULL),
(82, '摆渡人', 'http://posters.imdb.cn/upload/2016/12/13/zi5V5StLM_1481623210.jpg', '即将上映', 'See You Tomorrow', 'Zhang Jiajia', '喜剧 爱情', '2016年', 'Images/goldstar0.gif', '《摆渡人》是由王家卫监制，张嘉佳执导，梁朝伟、金城武、陈奕迅、杨颖		（Angelababy）、张榕容、杜鹃、熊黛林、大鹏、马苏、崔志佳、贾玲、李璨琛、柳岩出演，安又琪		友情客串，李宇春友情客串，鹿晗特别演出。讲述了“金牌摆渡人”酒吧老板陈末和合伙人管春拯救情		感落水者的故事。用快乐和温暖，抵抗这个世界的悲伤。\r\n							该片讲述了摆渡人是城市里的超级英雄，摆渡就是把人从痛苦中解救出来。用快乐和温暖，抵抗这个世界的悲伤。酒吧老板陈末（梁朝伟饰）和合伙人管春（金城武饰）就是这座城市的“金牌摆渡人”，他们平时看起来吊儿郎当，却从不对每位需要帮助的人说拒绝，只要你“预约摆渡”，刀山火海都会“使命必达”。邻居女孩小玉（杨颖 饰）为了偶像马力（陈奕迅饰），预约了他们的服务，但在帮助小玉挑战整个城市的过程中，陈末和管春也逐渐发现了自己躲不过的问题。从欢天喜地的生活，到惊天动地的疯狂，摆渡人最辉煌的篇章，从这里开启。\r\n							影片于2016年12月23日在中国内地上映', NULL, NULL, NULL),
(83, '铁道飞虎', 'http://posters.imdb.cn/upload/2016/12/13/l3ooOmVmq_1481622835.jpg', '即将上映', 'Rail Road Tigers', '丁晟 Sheng Ding', '喜剧 动作 战争', '2016年', 'Images/goldstar0.gif', '《铁道飞虎》由耀莱影视文化传媒有限公司、上海电影（集团）有限公司等联合		出品，丁晟执导，成龙、黄子韬、王凯、王大陆等主演的动作、战争题材喜剧电影 。\r\n							该片讲述了1941年太平洋战争爆发以后，穿过山东境内的津浦铁路成为日军在中国大陆最重要的战略交通线之一。在津浦铁路枣庄段周边，活跃着一支民间抗日游击队，这支游击队主要由枣庄火车站的几名铁路工人组成，队长叫马原（成龙饰），是火车站的搬运工工头。他们白天在日本人占领并管理的火车站干活，晚上出来秘密活动，利用对铁路线的熟悉以及扒火车、开火车的特殊技能，以一支小小的游击队跟大批装备精良的日本正规军周旋较量，造成了非常大的影响，当地老百姓给这支队伍起了一个响亮的名头，叫铁道飞虎队\r\n							该片于2016年12月23日贺岁档在中国上映，北美、英国、澳大利亚和新西兰同步上映', NULL, NULL, NULL),
(84, '罗曼蒂克消亡史', 'http://posters.imdb.cn/upload/2016/12/12/7SEkHeTYL_1481538184.jpg', '即将上映', 'The Wasted Times', '程耳 Er Cheng', '剧情 神秘 战争', '2016年', 'Images/goldstar0.gif', '《罗曼蒂克消亡史》是由华谊兄弟、英皇电影	联合出品的悬疑谍战片，由		程耳执导，葛优、章子怡、浅野忠信、杜淳、钟欣潼等主演\r\n								他一直拖到一九四九年五月初才坐上去香港的轮船，算得上真正的末班车。没有人知道他在拖什么或等待什么，我想他自己也未必知道，不过是下意识的拖延。不久他就死在香港，死前再没有值得记述的事件或说过的话，他基本没再说话，这没什么可奇怪的，一切都不值一提，他终于走向自己的沉默。\r\n								上世纪30年代的上海，叱咤风云的帮派大佬，不甘寂寞的交际花，说着地道上海话的日本妹夫，只收交通费的杀手，被冷落却忠诚的姨太太，外表光鲜的电影皇后，深宅大院里深不可测的管家，偶尔偷腥的电影皇帝，荷尔蒙满溢大脑的帮派小弟，一心想要破处的处男，善良的妓女，随波逐流的明星丈夫，投靠日本人的帮派二哥，日理万机却抽空恋爱的戴先生。\r\n								战争之下，繁华落尽。帮派大佬逃亡香港，交际花不知所踪，日本妹夫死在上海，电影皇后被丈夫抛弃，处男遇上妓女，姨太太杀死二哥。战争惨烈，战争终于结束。他轻易选择沉默，因为伤口无法弥合。罗曼蒂克消亡史。被浪费的时光。', NULL, NULL, NULL),
(85, '长城', 'http://posters.imdb.cn/upload/2016/12/12/eCjVhnxAS_1481537535.jpg', '即将上映', 'The Great Wall', '张艺谋 Yimou Zhang', '剧情 动作 冒险 奇幻', '2016年', 'Images/goldstar0.gif', '《长城》是由中国电影股份有限公司、乐视影业、传奇影业、环球影业联		合出品，中国导演张艺谋执导，马特·达蒙、景甜、佩德罗·帕斯卡、威廉·达福、刘德华、张涵		予等联合主演的奇幻动作片 。\r\n									该片讲述了欧洲雇佣兵威廉在被囚禁长城期间，发现了这世间最大奇迹之一背后的惊人秘密。当一波又一波可怕的掠食生物将这座巨型城墙重重围困之时，威廉加入了一支由中国精英勇士们组成的大军，共同对抗凶兽的故事 。\r\n									该片于2016年12月16日以3D、IMAX3D、中国巨幕3D、杜比视界、杜比全景声、Auro格式在中国上映', NULL, NULL, NULL),
(86, '办公室圣诞派对', 'http://posters.imdb.cn/upload/2016/12/06/9K4Hd3B2w_1481018941.jpg', '即将上映', 'Office Christmas Party', '乔什·高顿 Josh Gordon|威尔·斯派克 Will Speck', '喜剧', '2016年', 'Images/goldstar0.gif', '《办公室圣诞派对》（Office Christmas Party）由导演威尔·斯派克、		乔什·戈登联合执导，\r\n									詹妮弗·安妮斯顿、T·J·米勒、 杰森·贝特曼、凯特·迈克金农、杰米·钟、		奥立薇娅·玛恩、马特·沃尔什、考特尼·万斯等主演。\r\n									Carol（詹妮弗·安妮斯顿饰）和Clay（T·J·米勒饰）是兄妹关系，他们的父亲刚刚过世，家族经营的科技公司一下失去了\r\n									主心骨。Clay是公司的董事，Carol是公司的CEO，两个人都为了经营公司费尽心思，然而方式却截然相反。\r\n									Carol是严厉一方，希望公司严格按照规则运营；不守规矩的Clay则想要通过打鸡血、疯狂派对的方式鼓舞士气，并在其死\r\n									党Josh（杰森·贝特曼饰）帮助下，为公司办了一场办公室圣诞派对。于是，在这场疯狂的办公室圣诞派对中，不少意外发生，事情越发失控', NULL, NULL, NULL),
(87, '爱乐之城', 'http://posters.imdb.cn/upload/2016/12/06/gqFtxxmL3_1481018570.jpg', NULL, 'La La Land', '未知', '剧情 喜剧 音乐剧', '2016年', 'Images/goldstar9.gif', '这部喜剧音乐片讲述一位爵士乐钢琴家与一名具有抱负的女演员之间的爱情故事。', NULL, NULL, NULL),
(88, '反黑行动组', 'http://posters.imdb.cn/upload/2016/12/06/aySzCXkPF_1481018030.jpg', '', 'Antigang', 'Benjamin Rocher', '剧情 动作 犯罪', '2015年', 'Images/goldstar6.gif', '《反黑行动组》由法国新式电影发行公司出品，中国电影集团公司进口		，中国电影股份有限公司发行，佰安影业（上海）有限公司协助推广。由本杰明·罗切尔执导		，让·雷诺、卡特琳娜·莫里诺、蒂埃里·钮维联合主演。\r\n										该片讲述了职业警察塞尔吉·布伦，为侦破黑帮黄金盗窃案反而致使同伴牺牲，陷入盗匪的连环设计之中......\r\n										该片将于2016年12月09日在中国内地上映。', NULL, NULL, NULL),
(89, '少年巴比伦', 'http://posters.imdb.cn/upload/2016/12/06/nvbtCW7ut_1481017724.jpg', NULL, 'Young Love Lost', '未知', '喜剧 爱情', '2016年', 'Images/goldstar7.gif', '《少年巴比伦》是由林炳坤监制，陈建忠编剧，相国强执导，董子健		、李梦、尚铁龙、李大光等主演的青春热血喜剧片。\r\n											影片改编自中间代作家路内的同名小说，讲述了路小路在戴城工厂的青春热血经历与爱恋故事。上个世纪90年代的戴城，路小路（董子健饰）在一家\r\n											糖精厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“牛魔王”（尚铁龙饰）的师傅混，没学会半点技术。在钳工班，除了拧螺丝\r\n											之外什么都不会。在电工班，也只会换灯泡。除此之外，他还喜欢迟到、打架、翻工厂的院墙，也结识了一帮兄弟。直到某天，路小路遇见了一个叫\r\n											白蓝（李梦饰）的厂医，他的人生由此发生了改变……', NULL, NULL, NULL),
(90, '塔洛', 'http://posters.imdb.cn/upload/2016/12/02/dAekv5Bzr_1480672783.jpg', NULL, 'Tharlo', '万玛才旦 Wanma Caidan', '剧情', '2016年', 'Images/goldstar7.gif', '《塔洛》是由万玛才旦执导，由西德尼玛、杨秀措主演的剧情片。该		片于2016年12月9日\r\n											在中国大陆上映。一位自幼放羊为生的藏民塔洛，在进城办理二代身份		证时，遇到了理发店女店主杨措，经历了一\r\n											场突如其来的爱情。塔洛卖了羊，把毕生所得16		万人民币托付给杨措，杨措却卷款逃离了塔洛。旧的世界已然坍塌，\r\n											新的世界尚未建立，塔		洛的命运今如何。', NULL, NULL, NULL),
(91, '超级快递', 'http://posters.imdb.cn/upload/2016/11/30/SE0lmJwQD_1480500747.jpg', NULL, 'Super Express', '未知', '喜剧 动作', '2016年', 'Images/goldstar0.gif', '《超级快递》是由宋啸执导的动作喜剧电影。由陈赫、宋智孝、大卫·贝		尔、李媛、李淳、邰智源\r\n									等主演，肖央、何赛飞特别出演。由基美影业董事长高敬东担纲制片人		，王郢编剧。该片于2016年12月2日在中国大陆上\r\n									映。影片讲述了快递员马力在一次派件途中，		偶然卷入一起神像争夺事件，并受到一神秘性感女郎胁迫，共同对付国际大\r\n									盗Gary的故事，在这		一夺取神像的过程中，故事却突然变得扑朔迷离。', NULL, NULL, NULL),
(92, '第一夫人', 'http://posters.imdb.cn/upload/2016/11/29/aa4y1R7bL_1480412579.jpg', NULL, 'Jackie', 'Pablo Larrain', '剧情 传记', '2016年', 'Images/goldstar8.gif', '《第一夫人》是由美国、智利联合制片的99分钟传记影片。该片由帕布罗		·拉雷恩执导，\r\n									娜塔丽·波特曼、彼得·萨斯加德、格蕾塔·葛韦格、马克斯·凯塞拉、贝丝·格兰特		等主演.\r\n									肯尼迪总统刺杀事件一周后，面对《生活》杂志记者对杰奎琳的采访，杰奎琳时而恍惚时而激动的讲述着她生活中的巨变。\r\n									一个丈夫遇刺后冷静强大的出现在公众面前的第一夫人，她要参与丈夫的国葬，向两个年幼的孩子解释父亲的离去，甚至还\r\n									有关于遗产的问题。当副总统林登·约翰逊在飞机上宣誓就任美国总统时，她身穿着仍然血迹斑斑的粉红套装，向美国人民展\r\n									现着她的勇气与镇定，然而电视转播之外，她情绪失控、无法冷静。对其身边的大多数人来说，遇刺的是美国国家的总统，\r\n									第一要务是国事，对于她来说那却是自己的丈夫孩子的父亲，首当其冲的是失去亲人的悲痛', NULL, NULL, NULL);
INSERT INTO `time_sorts` (`sid`, `sname`, `src`, `state`, `enname`, `director`, `type`, `time`, `gradesrc`, `comment`, `href`, `star`, `grade`) VALUES
(93, '极速之巅', 'http://posters.imdb.cn/upload/2016/11/25/n2jPAhkKo_1480067748.png', NULL, 'Collide', 'Eran Creevy', '动作 恐怖', '2016年', 'Images/goldstar6.gif', '电影《极速之巅》男主角凯西·斯登（尼古拉斯·霍尔特饰演）是从美国来		的背包客，在美国时曾\r\n									多次偷车，为躲避牢狱之灾逃到德国后，参与格伦（本·金斯利饰演）的		毒品交易。有一天，他遇到了一生挚爱朱丽叶·玛\r\n									尔（菲丽希缇·琼斯饰演）。朱丽叶患有严重的		肾病，昂贵的手术费让凯西决定最后一次为老板赴险涉毒，不料老板心中\r\n									另有算盘，要利用他展		开对另一位大毒枭哈根·卡尔（安东尼·霍普金斯饰演）的复仇计划。爱情、生命、毒品、仇恨、	\r\n									谎言，这一切驱使着男主人公在世界闻名的不限速高速公路“Autobahn”上撞碎豪车冲破骗局，以		接近死亡的舍命狂飙换取\r\n									心爱之人的重生。', NULL, NULL, NULL),
(94, '三少爷的剑', 'http://posters.imdb.cn/upload/2016/11/25/r4FTT3s2N_1480067405.jpg', NULL, 'San shao ye de jian', '尔冬升 Er Dongsheng', '动作', '2016年', 'Images/goldstar6.gif', '《三少爷的剑》是由博纳影业集团出品，徐克监制，尔冬升执导，林更新、		何润东等主演的3D武侠\r\n								电影。\r\n								《三少爷的剑》是根据古龙同名小说改编，影片主要讲述了神剑山庄的三少爷谢晓峰与燕十三为家族存亡、师门荣辱展开的一\r\n								场生死较量的故事。 该片于2016年12月2日在中国内地上映。\r\n								10多年来历经上千场大战未尝一败，被天下人尊为“剑神”。然而，传奇剑客燕十三（何润东饰）一直以谢晓峰为目标，苦修剑\r\n								道，终于在生死边缘悟出惊天地泣鬼神的“夺命十三剑”。一时之间，江湖沸腾，然而，就在燕十三赶到神剑山庄下战书的时候，\r\n								迎接他的，却是三少爷谢晓峰的灵柩。燕十三因痛失对手大感失望，此时神秘女子慕容秋荻（江一燕饰）出现并告知燕十三，\r\n								谢晓峰并没有死，要想找到他决战，燕十三就必须要替她杀一个人。', NULL, NULL, NULL),
(95, '28岁未成年', 'http://posters.imdb.cn/upload/2016/11/25/CPvuB67Ni_1480066695.jpg', NULL, 'Suddenly Seventeen', '未知', '剧情 喜剧 奇幻', '2016年', 'Images/goldstar0.gif', '《28岁未成年》是由乐视影业（北京）有限公司出品的爱情片，由张末执导		，倪妮、霍建华、马苏、\r\n								王大陆联合主演。\r\n								电影改编自black.f同名小说，讲述了28岁的凉夏身陷糟糕的感情生活不能自拔，意外“心智”重返17岁，并在17岁凉夏的帮助下\r\n								认清自己、找回初心的故事。\r\n								影片将于2016年12月2日在中国上映。\r\n								28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，\r\n								茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾忌凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未\r\n								遂，还被他提出分手。凉夏悲伤欲绝，意外之下，心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性\r\n								青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，\r\n								凉夏究竟会做出怎样的选择……', NULL, NULL, NULL),
(96, '打破陈规', 'http://posters.imdb.cn/upload/2016/11/23/5FtvfClnT_1479895392.jpg', NULL, 'Rules Don''t Apply', '沃伦·比蒂 Warren Beatty', '剧情 喜剧 爱情', '2016年', 'Images/goldstar7.gif', '影片讲述了一个发生在1958年的“打破陈规”的爱情故事，故事中一位虔诚的		基督教徒女演员\r\n								（莉莉·科林斯饰）与同样保守的汽车司机（阿尔登·埃伦瑞奇饰）发生了一段缠绵		的爱情，他们均受雇于怪诞的富豪\r\n								霍华德·休斯（沃伦·比蒂饰）的公司之中。[1] \r\n								影片将于11月23日开画，据悉影片聚集了亚力克·鲍德温、安妮特·贝宁、海莉·贝内特、坎迪斯·伯根、马修·布罗德里克、\r\n								达布尼·科尔曼、史蒂夫·库根、泰莎·法梅加、艾德·哈里斯、梅根·希尔提、奥利弗·普莱特与马丁·辛演员出演。', NULL, NULL, NULL),
(97, '三船敏郎：最后的武士', 'http://posters.imdb.cn/upload/2016/11/23/dtTjDS3eH_1479894364.jpg', NULL, 'Mifune: The Last Samurai', 'Steven Okazaki', '记录 传记', '2016年', 'Images/goldstar8.gif', '三船敏郎， 日本最偉大的演員之一， 曾參與近一百七十部電影演出，包括		《蜘蛛巢城》、\r\n								《七武士》、《羅生門》等。他與黑澤明共同締造了日本電影的黃金年代，更走紅		國際，影響《荒野大飆客》、甚至是\r\n								《星際大戰》黑武士的誕生。他叱吒影壇半世紀，被亞蘭德倫		視為神一般的存在。本片以他和黑澤明的合作關係為主軸，\r\n								耙梳介紹了日本電影的黃金年代，以及		劍鬥片的歷史。 \r\n								　　					影片融合大量的經典影片及珍貴照片，穿插訪問役所廣司、香川京子、馬丁史柯西斯、史蒂芬史匹							\r\n								柏等人，資深演員如八千草薰、野上照代、中島貞夫，以及被三船殺了上百次的武術演員紛紛現身								說法，追\r\n								憶這位明星不同時期的風采，甚至試圖還原當年他與黑澤明拆夥的真相。曾演出武士電影								的基努李維亦為本\r\n								片獻聲，致敬意味濃厚。', NULL, NULL, NULL),
(98, '圣诞坏公公2', 'http://posters.imdb.cn/upload/2016/11/21/9saxcC28j_1479722736.jpg', NULL, 'Bad Santa 2', '马克·沃特斯 Mark S. Waters', '剧情 喜剧 犯罪', '2016年', 'Images/goldstar0.gif', '《圣诞坏公公》的续集《圣诞坏公公2》近日终于有了新进展。影片导演人		选正式确定，曾执导\r\n								《贱女孩》、《波普先生的企鹅》的导演马克·沃特斯将掌舵续集，而前作主		演比利·鲍伯·松顿、托尼·考克斯以及饰演小\r\n								胖的布莱特·凯利均将回归。', NULL, NULL, NULL),
(99, '雄狮', 'http://posters.imdb.cn/upload/2016/11/21/Nl7OuoCef_1479722150.jpg', NULL, 'Lion', 'Garth Davis', '剧情', '2016年', 'Images/goldstar8.gif', '影片根据畅销书《漫漫寻家路》（《A Long Way Home》）改编，故事源于		作者萨罗·布莱尔利的\r\n								一段真实经历。五岁时萨罗在印度的火车上不小心与家人走散，他在加尔各		答的街头流浪了几个星期，之后被送进一所孤儿\r\n								院，并被澳大利亚的一对夫妇收养。25年后，他开		始凭借隐约的记忆，用谷歌地球去寻找过去的家。\r\n								影片是导演加斯·戴维斯的长片处女作，《贫民窟的百万富翁》男星戴夫·帕特尔饰演成年萨罗，大卫·文翰和妮可·基德曼分饰\r\n								萨罗的养父母约翰和苏，鲁妮·玛拉饰演萨罗的女友露西。\r\n								影片将在2016年多伦多电影节首映，11月25日北美上映，有望冲击奥斯卡最佳影片', NULL, NULL, NULL),
(100, '莫阿娜', 'http://posters.imdb.cn/upload/2016/11/21/8Q9kLz8uw_1479721597.jpg', NULL, 'Moana', '唐·霍尔 Don Hall|罗恩·克莱蒙特斯 Ron Clements', '喜剧 动画', '2016年', 'Images/goldstar9.gif', '迪士尼动画新作《莫阿娜》（Moana）预计于2016底上映，主人翁莫阿娜将		成为迪士尼首位大洋洲\r\n								公主。 由罗恩·克莱蒙兹与约翰·马斯克领衔的制作团队操刀，他们还曾制		作过《公主和青蛙》、《阿拉丁》、《小美人鱼》\r\n								等影片。波里尼西亚人是居住在南太平洋小岛上的民族.有着自己……………', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dm_user`
--
ALTER TABLE `dm_user`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `invitation_all`
--
ALTER TABLE `invitation_all`
 ADD PRIMARY KEY (`aiid`);

--
-- Indexes for table `invitation_replay`
--
ALTER TABLE `invitation_replay`
 ADD PRIMARY KEY (`riid`);

--
-- Indexes for table `main_banner_carousel`
--
ALTER TABLE `main_banner_carousel`
 ADD PRIMARY KEY (`mbcid`);

--
-- Indexes for table `main_prevue`
--
ALTER TABLE `main_prevue`
 ADD PRIMARY KEY (`mpid`);

--
-- Indexes for table `main_searchrank`
--
ALTER TABLE `main_searchrank`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `main_sortstate`
--
ALTER TABLE `main_sortstate`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `prevue_review`
--
ALTER TABLE `prevue_review`
 ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `publish_comment`
--
ALTER TABLE `publish_comment`
 ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `replay_comment`
--
ALTER TABLE `replay_comment`
 ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `time_sorts`
--
ALTER TABLE `time_sorts`
 ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dm_user`
--
ALTER TABLE `dm_user`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `invitation_all`
--
ALTER TABLE `invitation_all`
MODIFY `aiid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `invitation_replay`
--
ALTER TABLE `invitation_replay`
MODIFY `riid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `main_banner_carousel`
--
ALTER TABLE `main_banner_carousel`
MODIFY `mbcid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `main_prevue`
--
ALTER TABLE `main_prevue`
MODIFY `mpid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `main_searchrank`
--
ALTER TABLE `main_searchrank`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `main_sortstate`
--
ALTER TABLE `main_sortstate`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `prevue_review`
--
ALTER TABLE `prevue_review`
MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `publish_comment`
--
ALTER TABLE `publish_comment`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `replay_comment`
--
ALTER TABLE `replay_comment`
MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `time_sorts`
--
ALTER TABLE `time_sorts`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
