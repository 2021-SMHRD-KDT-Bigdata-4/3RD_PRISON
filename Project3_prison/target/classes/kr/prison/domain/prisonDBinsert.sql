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

insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", '1', 'A동', '특이사항 없음', 'A001', 'A002');
insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", '2', 'B동', '특이사항 없음', 'A004', 'A003');
insert into patrol_history(ph_date, ph_time, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", '3', 'C동', '특이사항 없음', 'A001', 'A002');

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
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2020-12-10", '운동장', '폭행', '일반폭행', '3567');

select * from corrective_history;


select
	count(case when classification='폭행치사(재소자)' then 1 end) as case1,
	count(case when classification='폭행치상(재소자)' then 1 end) as case2,
	count(case when classification='교도관폭행' then 1 end) as case3,
	count(case when classification='도주' then 1 end) as case4,
	count(case when classification='변사' then 1 end) as case5,
	count(case when classification='병사' then 1 end) as case6,
	count(case when classification='밀수품반입' then 1 end) as case7,
	count(case when classification='기타규정위반' then 1 end) as case8
from corrective_history;

-- 약물관리내역 -------------------------------------------------------------------------------------------

insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('감기약', 0, '일 1회', '6758');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('정신질환약', 1, '일 2회', '3567');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('진통제', 0, '주 3회', '2481');

select * from drug_management_history;
-- 특별약물복용기록 -------------------------------------------------------------------------------------------

insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values(now(), now(), 2, "3567");

select * from spec_drug_history;
-- 특별관리죄수 -------------------------------------------------------------------------------------------

insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행', '1', '6758');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('규정위반', '3', '3567');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('규정위반', '3', '2481');

select * from special_management_personnel;


-- 이상행동감지내역 -------------------------------------------------------------------------------------------
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2020-12-09", '폭행', '폭행', 'A001', 2);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2020-12-11", '자해', '자해', 'A003', 3);

select * from anomaly_detection_history;

