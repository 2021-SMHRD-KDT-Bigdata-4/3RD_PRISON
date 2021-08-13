-- 빡빡 밀어서 테이블을 다 밀어버리는 파일입니다. --

SET @tables = NULL;
SET foreign_key_checks = 0; 
 SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
   FROM information_schema.tables 
   WHERE table_schema = 'koko'; -- specify DB name here.
 SET @tables = CONCAT('DROP TABLE ', @tables);
 PREPARE stmt FROM @tables;
 EXECUTE stmt;
 DEALLOCATE PREPARE stmt;
 
 