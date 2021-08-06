SET @tables = NULL;
SET foreign_key_checks = 0; 
 SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
   FROM information_schema.tables 
   WHERE table_schema = 'koko'; -- specify DB name here.
 SET @tables = CONCAT('DROP TABLE ', @tables);
 PREPARE stmt FROM @tables;
 EXECUTE stmt;
 DEALLOCATE PREPARE stmt;

-- 교도관 -------------------------------------------------------------------------------------------
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

insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '8급', '일반보안', '보안과', 'url');
insert into prison_officer values('A002', '정지윤', '11111', '24', 'female', '9급', '민원처리', '민원과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A003', '김은혜', '22222', '27', 'female', '8급', '특수보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A004', '정종원', '33333', '27', 'male', '8급', '교정교육', '직업훈련과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');

-- 재소자 -------------------------------------------------------------------------------------------
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer('A001', '강기웅', '12345', '33', 'male', '9급', '일반보안', '영상감시과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');


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

insert into prison_officer("DATE", "TIME", location, contents, prison_officer_po_no) values("11-23-2020", '1', 'A동', '특이사항 없음', 'A001');
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
