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
