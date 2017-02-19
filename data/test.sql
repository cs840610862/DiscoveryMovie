CREATE TABLE sorts(
	sid,
	sname,
	src,
	state,
	enname,
	director,
	type,
	time,
	grade,
	comment
);
INSERT INTO sorts VALUES();

CREATE TABLE main_banner_carousel(
	mbcid INT PRIMARY KEY AUTO_INCREMENT,
	src VARCHAR(128),
	mark INT
);

INSERT INTO main_banner_carousel VALUES
(null,'Images/epocvxJbo_1481623549.jpg','0'),
(null,'Images/cNGYesDME_1481882847.jpg','1'),
(null,'Images/zi5V5StLM_1481623210.jpg','2'),
(null,'Images/ti0Q7w4VJ_1481795971.jpg','3'),
(null,'Images/rZtgzrwSJ_1481882177.jpg','4');

# sql表操作table加colum
# ALTER TABLE tablename ADD colname coltype
# EX:ALTER TABLE sortstate ADD href VARCHAR(218)
# EX:ALTER TABLE sortstate MODIFY src VARCHAR(1024)

#新片预告建表
SET NAMES UTF8;
#解决中文乱码问题
CREATE TABLE main_prevue(
	mpid INT PRIMARY KEY AUTO_INCREMENT,
	mname VARCHAR(64),
	src VARCHAR(1024),
	href VARCHAR(1024),
	simple_info VARCHAR(64),
	playing_time VARCHAR(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET NAMES UTF8;
INSERT INTO main_prevue VALUES
(null,'摆渡人','cs','很好看','','明天');

#经典影片建表
CREATE TABLE classical_sort(
	csid,

);

#所有帖子建表
CREATE TABLE invitation_all(
	aiid INT PRIMARY KEY AUTO_INCREMENT,
	uid INT,
	content VARCHAR(1024)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#回复帖子建表
CREATE TABLE invitation_replay(
	riid INT PRIMARY KEY AUTO_INCREMENT,
	responderId INT,
	publisherId INT,
	responderContent VARCHAR(1024)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#论坛发帖建表
CREATE TABLE publish_comment(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	mname VARCHAR(128),
	content VARCHAR(1024),
	prise BIGINT,
	ptime BIGINT,
	userid INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO publish_comment VALUES
(NULL,'大话西游1','真好看',555,1452656656356,10),
(NULL,'大话西游2','真好看',555,1452656656356,11),
(NULL,'大话西游3','真好看',555,1452656656356,12)
;

#论坛回复贴建表
CREATE TABLE replay_comment(
	rid INT PRIMARY KEY AUTO_INCREMENT,
	ruserid INT,
	content VARCHAR(1024),
	rtime BIGINT,
	publishid INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO replay_comment VALUES
(NULL,10,'你说的有道理',1452635896589,11),
(NULL,11,'你说的有道理',1452635896589,10),
(NULL,12,'你说的有道理',1452635896589,11)
;
#看了还会看
CREATE TABLE prevue_review(
	prid INT PRIMARY KEY AUTO_INCREMENT,
	imgsrc VARCHAR(1024),
	mname VARCHAR(64),
	actors VARCHAR(128)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;







