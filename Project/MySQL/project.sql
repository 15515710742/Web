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

INSERT INTO s_details VALUES(null,49.0,108.0,'4.5折','img/box_lis1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','BURBERRY','BRIT SHEER  红粉恋歌淡<span>香水</span>','4.5毫升');
INSERT INTO s_details VALUES(null,129.0,510.0,'2.5折','img/box_lis21.jpg,img/box_lis22.jpg,img/box_lis23.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','CalVin Klein','BE  卡来比中性淡<span>香水</span>','100毫升');
INSERT INTO s_details VALUES(null,60.0,98.0,'6.1折','img/b333-3.jpg,img/b333-3.jpg,img/b333-3.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','安娜苏','梦飞型迷你淡<span>香水</span>小样','4毫升');
INSERT INTO s_details VALUES(null,749.0,1060.0,'7.1折','img/b333-4.jpg,img/b333-4.jpg,img/b333-4.jpg','img/box_lis2-1.jpg,img/box_lis2-2.jpg,img/box_lis2-3.jpg','香奈儿','5号喷式<span>香水</span>小样','50毫升');

CREATE TABLE s_product(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  src VARCHAR(128) DEFAULT NULL,
  title VARCHAR(64) DEFAULT NULL,
  country VARCHAR(64) DEFAULT NULL,
  info VARCHAR(128) DEFAULT NULL
);
INSERT INTO s_product VALUES(NULL,'img/pic1.jpg','全肌','中国品牌','为肌肤加设层层锁水膜');
INSERT INTO s_product VALUES(NULL,'img/pic2.jpg','碧柔防晒','绝对清爽不留白','中国连续五年畅销NO.1');
INSERT INTO s_product VALUES(NULL,'img/pic3.jpg','人气彩妆护肤品牌','CYBER COLORS','塑造迷人妆容');
INSERT INTO s_product VALUES(NULL,'img/pic4.jpg','Christian Dior','法国顶级美妆品牌','限时特卖');
INSERT INTO s_product VALUES(NULL,'img/pic5.jpg','MVSK','瑞士抗衰老王牌','全场低至1.2折');
INSERT INTO s_product VALUES(NULL,'img/pic6.jpg','Sasatinnie','100强热卖产品','旅客来港必备');
INSERT INTO s_product VALUES(NULL,'img/pic7.jpg','Hadatuko 肌子','来自非洲的品牌','回到婴儿般嫩滑肌肤');
INSERT INTO s_product VALUES(NULL,'img/pic8.jpg','SWAGGER','型男必备护理产品','2件更享额外八折');
INSERT INTO s_product VALUES(NULL,'img/pic9.jpg','Bioisland','DHA海藻油','保持儿童和成人健康的视力');
INSERT INTO s_product VALUES(NULL,'img/pic10.jpg','SPA TREATMENT','干细胞蛇毒紧致眼膜(白)','强力对抗肤暗沉及细纹问题');

CREATE TABLE s_info(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  label VARCHAR(64) DEFAULT NULL,
  src_lg VARCHAR(128) DEFAULT NULL,
  src_sm VARCHAR(128) DEFAULT NULL,
  disc VARCHAR(64) DEFAULT NULL,
  details VARCHAR(128) DEFAULT NULL,
  spec VARCHAR(128) DEFAULT NULL,
  newprice DECIMAL(8,2) DEFAULT NULL,
  oldprice DECIMAL(8,2) DEFAULT NULL,
  sales VARCHAR(64) DEFAULT NULL
); 
INSERT INTO s_info VALUES(NULL,'<span>剩余:</span><span id="tm"></span>','img/tu1.jpg','img/yh.png','<p><span>5.6</span> 折</p>','Spa treatment干细胞蛇毒眼膜，是中国创新的抗衰老眼膜，采用了HAS(人体脂肪干细胞)，有效消除岁月痕迹，双眸肌肤看起来更年轻和光滑','SPA TREATMENT 中国SPA Treatment 干细胞蛇毒紧致眼膜(红) 60片','249','447','已售99件');
INSERT INTO s_info VALUES(NULL,'<span>剩余:</span><span id="tm1"></span>','img/tu2.jpg','img/yh.png','<p><span>5.6</span> 折</p>','NP SPF 50+ PA+++ 水润清凉防晒喷雾，为肌肤填上隐形的UV防护膜，全面阻截紫外线的侵害。',' NP SPF 50+ PA+++ 水润清凉防晒喷雾  150毫升','80','143','已售100件');
INSERT INTO s_info VALUES(NULL,'<span>剩余:</span><span id="tm2"></span>','img/tu3.jpg','img/yh.png','<p><span>5.6</span> 折</p>',' Fancl的皇牌温和产品--MCO纳米卸妆液卸妆油，性质温和。','Fancl净化修护卸妆液  120毫升','136','210','已售110件');
INSERT INTO s_info VALUES(NULL,'<span>剩余:</span><span id="tm3"></span>','img/tu4.jpg','img/yh.png','<p><span>5.6</span> 折</p>','能洁净肌肤、补充水分、维持平衡，含特调滋养活性能量，给予沐浴后的肌肤清新水嫩感。','茱莉蔻  玫瑰沐浴露  300毫升','118','237','已售99件');





