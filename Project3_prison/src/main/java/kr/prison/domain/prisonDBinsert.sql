show tables;

-- 교도관 -------------------------------------------------------------------------------------------

insert into prison_officer values('A001', '강기웅', '12345', '33', 'male', '8급', '일반보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A002', '정지윤', '11111', '24', 'female', '9급', '민원처리', '민원과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A003', '김은혜', '22222', '27', 'female', '8급', '특수보안', '보안과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prison_officer values('A004', '정종원', '33333', '27', 'male', '8급', '교정교육', '직업훈련과', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');

select * from prison_officer;

-- 재소자 -------------------------------------------------------------------------------------------

insert into prisoner values('0', '0', '0', '0', '0', '0', '0', '0', '0');
insert into prisoner values('3567', '최성우', '24', 'male', 'A동', '11', '절도', '2범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prisoner values('2481', '주익정', '27', 'male', 'B동', '3', '사기', '초범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');
insert into prisoner values('6758', '정지윤', '20', 'female', 'C동', '6', '폭행', '15범', 'http://file3.instiz.net/data/file3/2018/01/29/e/c/9/ec9d85b3e456d1298feb52efcbca775a.jpg');

select * from prisoner;

-- 순찰 기록 -------------------------------------------------------------------------------------------

insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no) values("2020-12-11", '1', 'A동', '특이사항 없음', 'A001');
insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no) values("2020-12-11", '2', 'B동', '특이사항 없음', 'A004');
insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no) values("2020-12-11", '3', 'C동', '특이사항 없음', 'A001');

select * from patrol_history;

-- CCTV -------------------------------------------------------------------------------------------

insert into cctv(area, cctv_non, location, active) values('A', '001', '1번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '002', '2번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '001', '1번방', 1);

select * from cctv;


-- 교정사고기록 -------------------------------------------------------------------------------------------

insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2020-12-09", '운동장', '폭행', '일반폭행', '6758');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2020-12-09", '세탁실', '흡연', '규정위반', '3567');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2020-12-09", '세탁실', '흡연', '규정위반', '2481');

select * from corrective_history;

-- 약물관리내역 -------------------------------------------------------------------------------------------

insert into drug_management_history(drug_type, spec_drug, prisoner_prison_number) values('감기약', 0, '6758');
insert into drug_management_history(drug_type, spec_drug, prisoner_prison_number) values('정신질환약', 1, '3567');
insert into drug_management_history(drug_type, spec_drug, prisoner_prison_number) values('진통제', 0, '2481');

select * from drug_management_history;
-- 특별약물복용기록 -------------------------------------------------------------------------------------------

insert into spec_drug_history(taking_date, drug_management_history_dm_no) values("2020-12-15", 3);

select * from spec_drug_history;
-- 특별관리죄수 -------------------------------------------------------------------------------------------

insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행', '1', '6758');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('규정위반', '3', '3567');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('규정위반', '3', '2481');

select * from special_management_personnel;


-- 이상행동감지내역 -------------------------------------------------------------------------------------------
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2020-12-09", '폭행', '폭행', 'A001', 2);

select * from anomaly_detection_history;

