#设置客户端语言为utf8;
SET NAMES UTF8;
#如果存在shasha,放弃数据库shasha;
DROP DATABASE IF EXISTS shasha;
#创建数据库xm,并设置编码格式为utf8;
CREATE DATABASE shasha CHARSET=UTF8;
#进入数据库shasha;
USE shasha;
#创建数据库表格s_details;
CREATE TABLE s_details(
  pid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  newprice DECIMAL(8,2) DEFAULT NULL,
  oldprice DECIMAL(8,2) DEFAULT NULL,
  disc VARCHAR(32) DEFAULT NULL,
  src_lg VARCHAR(128) DEFAULT NULL,
  src_sm VARCHAR(128) DEFAULT NULL,
  title VARCHAR(64) DEFAULT NULL,
  detail VARCHAR(128) DEFAULT NULL,
  bulk VARCHAR(32) DEFAULT NULL
);
INSERT INTO s_details VALUES(null,49.0,108.0,'4.5折','img/box_lis1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','BURBERRY','BRIT SHEER  红粉恋歌淡<span>香水</span>','4.5毫升');
INSERT INTO s_details VALUES(null,129.0,510.0,'2.5折','img/box_lis21.jpg,img/box_lis22.jpg,img/box_lis23.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','CalVin Klein','BE  卡来比中性淡<span>香水</span>','100毫升');

INSERT INTO s_details VALUES(null,274.0,855.0,'3.2折','img/cboxpicjpg.jpg,img/cboxpicjpg.jpg,img/cboxpicjpg.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','BRIT SHEER  红粉恋歌淡<span>香水</span>','4.5毫升');
INSERT INTO s_details VALUES(null,82.0,120.0,'6.7折','img/rbox.jpg,img/rbox.jpg,img/rbox.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','红粉恋歌淡<span>香水</span>小样','4.5毫升');

INSERT INTO s_details VALUES(null,32.0,88.0,'3.5折','img/b33-1.jpg,img/b33-1.jpg,img/b33-1.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','范思哲','迷你型淡<span>香水</span>小样','4.5毫升');
INSERT INTO s_details VALUES(null,664.0,1045.0,'6.2折','img/b33-2.jpg,img/b33-2.jpg,img/b33-2.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','迷你型淡<span>香水</span>小样','100毫升');

INSERT INTO s_details VALUES(null,55.0,75.0,'6.4折','img/b33-3.jpg,img/b33-3.jpg,img/b33-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','迷你型淡<span>香水</span>小样','100毫升');
INSERT INTO s_details VALUES(null,515.0,750.0,'6.4折','img/b33-4.jpg,img/b33-4.jpg,img/b33-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','迷你型淡<span>香水</span>小样','4.5毫升');

INSERT INTO s_details VALUES(null,275.0,555.0,'5折','img/b333-1.jpg,img/b333-1.jpg,img/b333-1.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','迷你型淡<span>香水</span>小样','4.5毫升');
INSERT INTO s_details VALUES(null,749.0,850.0,'8.8折','img/b333-2-1.jpg,img/b333-2-2.jpg,img/b333-2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','邂逅清晰淡<span>香水</span>小样','50毫升');

INSERT INTO s_details VALUES(null,60.0,98.0,'6.1折','img/b333-3.jpg,img/b333-3.jpg,img/b333-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','安娜苏','梦飞型迷你淡<span>香水</span>小样','4毫升');
INSERT INTO s_details VALUES(null,749.0,1060.0,'7.1折','img/b333-4.jpg,img/b333-4.jpg,img/b333-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','5号喷式<span>香水</span>小样','50毫升');

INSERT INTO s_details VALUES(null,49.0,108.0,'4.5折','img/box_lis1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','BURBERRY','BRIT SHEER  红粉恋歌淡<span>香水</span>','4.5毫升');
INSERT INTO s_details VALUES(null,129.0,510.0,'2.5折','img/box_lis21.jpg,img/box_lis22.jpg,img/box_lis23.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','CalVin Klein','BE  卡来比中性淡<span>香水</span>','100毫升');

INSERT INTO s_details VALUES(null,275.0,555.0,'5折','img/b333-1.jpg,img/b333-1.jpg,img/b333-1.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','迷你型淡<span>香水</span>小样','4.5毫升');
INSERT INTO s_details VALUES(null,749.0,850.0,'8.8折','img/b333-2-1.jpg,img/b333-2-2.jpg,img/b333-2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','邂逅清晰淡<span>香水</span>小样','50毫升');
INSERT INTO s_details VALUES(null,274.0,855.0,'3.2折','img/cboxpicjpg.jpg,img/cboxpicjpg.jpg,img/cboxpicjpg.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','BRIT SHEER  红粉恋歌淡<span>香水</span>','4.5毫升');
INSERT INTO s_details VALUES(null,82.0,120.0,'6.7折','img/rbox.jpg,img/rbox.jpg,img/rbox.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','红粉恋歌淡<span>香水</span>小样','4.5毫升');

INSERT INTO s_details VALUES(null,32.0,88.0,'3.5折','img/b33-1.jpg,img/b33-1.jpg,img/b33-1.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','范思哲','迷你型淡<span>香水</span>小样','4.5毫升');
INSERT INTO s_details VALUES(null,664.0,1045.0,'6.2折','img/b33-2.jpg,img/b33-2.jpg,img/b33-2.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','迷你型淡<span>香水</span>小样','100毫升');

INSERT INTO s_details VALUES(null,55.0,75.0,'6.4折','img/b33-3.jpg,img/b33-3.jpg,img/b33-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','迪奥','迷你型淡<span>香水</span>小样','100毫升');
INSERT INTO s_details VALUES(null,515.0,750.0,'6.4折','img/b33-4.jpg,img/b33-4.jpg,img/b33-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','迷你型淡<span>香水</span>小样','4.5毫升');

INSERT INTO s_details VALUES(null,275.0,555.0,'5折','img/b333-1.jpg,img/b333-1.jpg,img/b333-1.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','兰蔻','迷你型淡<span>香水</span>小样','4.5毫升');
INSERT INTO s_details VALUES(null,749.0,850.0,'8.8折','img/b333-2-1.jpg,img/b333-2-2.jpg,img/b333-2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','邂逅清晰淡<span>香水</span>小样','50毫升');

INSERT INTO s_details VALUES(null,60.0,98.0,'6.1折','img/b333-3.jpg,img/b333-3.jpg,img/b333-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','安娜苏','梦飞型迷你淡<span>香水</span>小样','4毫升');
INSERT INTO s_details VALUES(null,749.0,1060.0,'7.1折','img/b333-4.jpg,img/b333-4.jpg,img/b333-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','5号喷式<span>香水</span>小样','50毫升');

INSERT INTO s_details VALUES(null,60.0,98.0,'6.1折','img/b333-3.jpg,img/b333-3.jpg,img/b333-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','安娜苏','梦飞型迷你淡<span>香水</span>小样','4毫升');
INSERT INTO s_details VALUES(null,749.0,1060.0,'7.1折','img/b333-4.jpg,img/b333-4.jpg,img/b333-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','5号喷式<span>香水</span>小样','50毫升');












