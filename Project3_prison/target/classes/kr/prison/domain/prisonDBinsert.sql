SET @tables = NULL;
SET foreign_key_checks = 0; 
 SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
   FROM information_schema.tables 
   WHERE table_schema = 'koko'; -- specify DB name here.
 SET @tables = CONCAT('DROP TABLE ', @tables);
 PREPARE stmt FROM @tables;
 EXECUTE stmt;
 DEALLOCATE PREPARE stmt;

 select * from prison_officer;
-- 교도관 -------------------------------------------------------------------------------------------
<<<<<<< HEAD
insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '8급', '일반보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A002', '정지윤', '11111', '24', 'female', '9급', '민원처리', '민원과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A003', '김은혜', '22222', '27', 'female', '8급', '특수보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A004', '정종원', '33333', '27', 'male', '8급', '교정교육', '직업훈련과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
=======
CREATE TABLE IF NOT EXISTS `koko`.`PRISON_OFFICER` (
  `PO_NO` VARCHAR(45) NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `PASSWORD` VARCHAR(45) NULL,
  `AGE` VARCHAR(45) NULL,
  `GENDER` VARCHAR(45) NULL,
  `RANK` VARCHAR(45) NULL,
  `POSITION` VARCHAR(45) NULL,
  `DEPARTMENT` VARCHAR(45) NULL,
  `PHOTO` VARCHAR(45) NULL,
  PRIMARY KEY (`PO_NO`))
ENGINE = InnoDB;

<<<<<<< HEAD
insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '8급', '일반보안', '보안과', 'url');
insert into prison_officer values('A002', '정지윤', '11111', '24', 'female', '9급', '민원처리', '민원과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A003', '김은혜', '22222', '27', 'female', '8급', '특수보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A004', '정종원', '33333', '27', 'male', '8급', '교정교육', '직업훈련과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
=======
select * from PRISONER;

insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '8급', '일반보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A002', '정지윤', '11111', '24', 'female', '9급', '민원처리', '민원과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A003', '김은혜', '22222', '27', 'female', '8급', '특수보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A004', '정종원', '33333', '27', 'male', '8급', '교정교육', '직업훈련과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/3RD_PRISON.git
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/3RD_PRISON.git

-- 재소자 -------------------------------------------------------------------------------------------
<<<<<<< HEAD
insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');

=======
CREATE TABLE IF NOT EXISTS `koko`.`PRISONER` (
  `PRISON_NUMBER` VARCHAR(45) NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `AGE` VARCHAR(45) NULL,
  `SEX` VARCHAR(45) NULL,
  `PRISON_AREA` VARCHAR(45) NULL,
  `ROOM_NUMBER` VARCHAR(45) NULL,
  `CRIME_CLASSIFICATION` VARCHAR(45) NULL,
  `BEFORE` VARCHAR(45) NULL,
  `PHOTO` VARCHAR(1000) NULL,
  PRIMARY KEY (`PRISON_NUMBER`))
ENGINE = InnoDB;
insert into prisoner('3567', '최성우', '24', 'male', 'A동', '11', '절도', '2범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prisoner('2481', '주익정', '27', 'male', 'B동', '3', '절도', '2범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prisoner('6758', '정지윤', '20', 'female', 'C동', '6', '절도', '2범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
select 
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/3RD_PRISON.git

-- 순찰 기록 -------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `koko`.`PATROL_HISTORY` (
  `PH_NO` INT NOT NULL AUTO_INCREMENT,
  `PH_DATE` DATE NULL,
  `PH_TIME` VARCHAR(45) NULL,
  `LOCATION` VARCHAR(45) NULL,
  `CONTENTS` VARCHAR(45) NULL,
  `PRISON_OFFICER_PO_NO` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PH_NO`),
  INDEX `fk_PATROL_HISTORY_PRISON_OFFICER1_idx` (`PRISON_OFFICER_PO_NO` ASC),s
  CONSTRAINT `fk_PATROL_HISTORY_PRISON_OFFICER1`
    FOREIGN KEY (`PRISON_OFFICER_PO_NO`)
    REFERENCES `koko`.`PRISON_OFFICER` (`PO_NO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no) values("2020-12-11", '1', 'A동', '특이사항 없음', 'A001');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer();
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer();
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer();
-- 교도관 -------------------------------------------------------------------------------------------
insert into prison_officer();
