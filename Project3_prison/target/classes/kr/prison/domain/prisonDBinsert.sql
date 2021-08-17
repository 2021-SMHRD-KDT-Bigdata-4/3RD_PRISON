show tables;

-- 교도관 -------------------------------------------------------------------------------------------
-- 사진 링크는 그냥 똑같은 주소 복붙해주세요 !!
-- 재직, 휴직, 퇴사로 구분해주시면 됩니다
insert into prison_officer values('A001', '차채진', '12345', '33', '남자', '8급', '일반보안', '보안과', '재직', 'codoso-24.jpg');
insert into prison_officer values('A002', '최성우', '11111', '24', '남자', '9급', '민원처리', '민원과', '재직', 'tea-20.PNG');
insert into prison_officer values('A003', '차현석', '22222', '27', '남자', '5급', '특수보안', '보안과', '재직', 'tea-4.PNG');
insert into prison_officer values('A004', '박매일', '33333', '27', '남자', '8급', '교정교육', '직업훈련과', '퇴직', 'tea-2.PNG');
insert into prison_officer values('A005', '김미희', '44444', '34', '여자', '9급', '일반보안', '보안과', '퇴직', 'tea-6.PNG');
insert into prison_officer values('A006', '이상준', '55555', '41', '남자', '8급', '일반보안', '보안과', '재직', 'tea-22.PNG');
insert into prison_officer values('A007', '나재민', '66666', '50', '남자', '9급', '교정교육', '직업훈련과', '재직', 'tea-25.PNG');
insert into prison_officer values('A008', '강성관', '77777', '25', '남자', '8급', '일반보안', '보안과', '재직', 'tea-1.PNG');
insert into prison_officer values('A009', '황해도', '88888', '26', '남자', '3급', '일반보안', '보안과', '재직', 'tea-26.PNG');
insert into prison_officer values('A010', '장영우', '99999', '29', '남자', '8급', '민원처리', '민원과', '재직', 'tea-11.PNG');
insert into prison_officer values('A011', '박병관', '10203', '28', '남자', '8급', '일반보안', '보안과', '휴직', 'tea-5.PNG');
insert into prison_officer values('A012', '아길동', '13267', '27', '남자', '5급', '민원처리', '민원과', '재직', 'tea-20.PNG');
insert into prison_officer values('A013', '양선화', '26477', '27', '여자', '8급', '일반보안', '보안과', '퇴직', 'tea-7.PNG');
insert into prison_officer values('A014', '임명진', '45778', '30', '남자', '7급', '일반보안', '보안과', '휴직', 'tea-8.PNG');
insert into prison_officer values('A015', '이기성', '45768', '31', '남자', '8급', '특수보안', '보안과', '퇴직', 'tea-9.PNG');
insert into prison_officer values('A016', '서대희', '14578', '32', '남자', '9급', '민원처리', '민원과', '재직', 'tea-17.PNG');
insert into prison_officer values('A017', '김운비', '69890', '33', '여자', '8급', '일반보안', '보안과', '재직', 'tea-10.PNG');
insert into prison_officer values('A018', '이다운', '12368', '34', '남자', '9급', '교정교육', '직업훈련과', '재직', 'tea-12.PNG');
insert into prison_officer values('A019', '정형', '33453', '35', '남자', '8급', '일반보안', '보안과', '퇴직', 'tea-5.PNG');
insert into prison_officer values('A020', '채수민', '39343', '49', '여자', '8급', '교정교육', '직업훈련과', '재직', 'tea-14.PNG');
insert into prison_officer values('A021', '손지영', '88975', '26', '여자', '3급', '일반보안', '보안과', '재직', 'tea-13.PNG');
insert into prison_officer values('A022', '최태양', '83578', '42', '남자', '8급', '특수보안', '보안과', '재직', 'tea-15.PNG');
insert into prison_officer values('A023', '손지우', '77905', '30', '여자', '8급', '교정교육', '직업훈련과', '퇴직', 'tea-18.PNG');
insert into prison_officer values('A024', '나예호', '56278', '55', '남자', '9급', '일반보안', '보안과', '재직', 'tea-16.PNG');
insert into prison_officer values('A025', '이명훈', '58921', '32', '남자', '8급', '교정교육', '직업훈련과', '재직', 'tea-17.PNG');
insert into prison_officer values('A026', '강예진', '21468', '27', '여자', '9급', '일반보안', '보안과', '재직', 'tea-18.PNG');
insert into prison_officer values('A027', '김리현', '34357', '27', '여자', '8급', '민원처리', '민원과', '재직', 'tea-23.PNG');
insert into prison_officer values('A028', '박수현', '74383', '31', '여자', '7급', '일반보안', '보안과', '재직', 'tea-19.PNG');
insert into prison_officer values('A029', '정세연', '80724', '38', '여자', '8급', '민원처리', '민원과', '재직', 'tea-21.PNG');
insert into prison_officer values('A030', '임보미', '34572', '36', '여자', '8급', '일반보안', '보안과', '퇴직', 'tea-24.PNG');

select * from prison_officer;

-- 재소자 -------------------------------------------------------------------------------------------
-- 사진 링크는 그냥 똑같은 주소 복붙해주세요 !!
-- 수감번호는 아무값이나 넣어주시면 돼요 !
-- 교도관 이름이랑 재소자 이름이 안겹치게 넣어주세요 
-- 전과 종류 : 절도, 사기, 폭행, 살인 등 좀 더 찾아봐야할거 같아욥 ㅜ-ㅜ
-- 복역, 출소로 구분해주시면 됩니다 !
insert into prisoner values('0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
insert into prisoner values('1541', '정종원', '27', '남자', 'B동', '1', '방화', '14범', '복역', 'codoso-10.jpg');
insert into prisoner values('2460', '김온유', '26', '여자', 'B동', '6', '마약', '8범', '복역', 'codoso-11.jpg');
insert into prisoner values('1466', '남수환', '77', '남자', 'B동', '1', '사기', '14범', '복역', 'codoso-13.jpg');
insert into prisoner values('7761', '박윤빈', '56', '여자', 'B동', '6', '마약', '8범', '복역', 'codoso-14.jpg');
insert into prisoner values('3567', '주익정', '24', '남자', 'A동', '11', '폭행', '2범', '복역', 'codoso-12.jpg');
insert into prisoner values('2481', '김남진', '27', '남자', 'B동', '3', '사기', '초범', '복역', 'codoso-6.jpg');
insert into prisoner values('6758', '김채원', '24', '여자', 'C동', '6', '폭행', '15범', '출소', 'codoso-8.jpg');
insert into prisoner values('7513', '김은혜', '19', '여자', 'C동', '3', '상해', '6범', '복역', 'codoso-2.jpg');
insert into prisoner values('8639', '김성은', '23', '여자', 'B동', '2', '사기', '4범', '출소', 'codoso-3.jpg');
insert into prisoner values('1234', '김영주', '30', '남자', 'A동', '7', '살인미수', '6범', '복역', 'codoso-9.jpg');
insert into prisoner values('1588', '장영우', '35', '남자', 'B동', '8', '강간', '11범', '복역', 'codoso-4.jpg');
insert into prisoner values('6792', '주익쩡', '54', '남자', 'B동', '7', '강제추행', '12범', '복역', 'codoso-5.jpg');
insert into prisoner values('2768', '최강준', '62', '남자', 'A동', '10', '살인', '17범', '복역', 'codoso-7.jpg');
insert into prisoner values('4563', '최강우', '62', '남자', 'A동', '10', '살인', '17범', '복역', 'codoso-30.jpg');
insert into prisoner values('1155', '이준혁', '56', '여자', 'C동', '5', '폭행', '15범', '복역', 'codoso-15.png');
insert into prisoner values('2758', '이대교', '51', '남자', 'A동', '8', '절도', '7범', '복역', 'codoso-16.jpg');
insert into prisoner values('1236', '강호동', '51', '남자', 'A동', '8', '절도', '7범', '복역', 'codoso-29.jpg');
insert into prisoner values('3768', '고창석', '45', '남자', 'C동', '6', '절도', '6범', '복역', 'codoso-28.jpg');
insert into prisoner values('9572', '김네네', '48', '여자', 'A동', '6', '방화', '3범', '출소', 'codoso-1.jpg');
insert into prisoner values('7412', '사대한', '27', '남자', 'B동', '4', '절도', '5범', '복역', 'codoso-10.jpg');
insert into prisoner values('8523', '정온유', '37', '여자', 'C동', '1', '살인', '15범', '복역', 'codoso-11.jpg');
insert into prisoner values('9632', '최대동', '29', '남자', 'B동', '2', '횡령', '3범', '출소', 'codoso-29.jpg');
insert into prisoner values('1478', '채채', '21', '여자', 'C동', '7', '배임', '초범', '복역', 'codoso-8.jpg');
insert into prisoner values('2589', '나익수', '28', '여자', 'C동', '2', '절도', '초범', '출소', 'codoso-12.jpg');
insert into prisoner values('3698', '최수환', '47', '여자', 'C동', '4', '도박', '5범', '복역', 'codoso-13.jpg');
insert into prisoner values('2587', '도대웅', '31', '남자', 'A동', '1', '절도', '9범', '복역', 'codoso-4.jpg');
insert into prisoner values('7896', '하이루', '54', '남자', 'A동', '9', '살인', '2범', '복역', 'codoso-15.png');


select * from prisoner;


-- 순찰 기록 -------------------------------------------------------------------------------------------
-- 순찰시작시간과 끝나는시간은 한시간 이상 차이나게 해주세요
-- 교도관 아이디는 교도관 테이블에 있는 데이터로 가져와주세요
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", "00:05:42", "01:11:25", 'A동', '특이사항 없음', 'A001', 'A002');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", "04:00:10", "05:02:13", 'B동', '특이사항 없음', 'A004', 'A003');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-11", "15:07:16", "16:09:03", 'C동', '특이사항 없음', 'A011', 'A012');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-12", "10:30:56", "11:43:11", 'A동', '특이사항 없음', 'A013', 'A023');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-12", "13:10:01", "14:12:17", 'B동', '특이사항 없음', 'A014', 'A022');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-12", "14:00:01", "15:02:35", 'C동', '특이사항 없음', 'A015', 'A021');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-13", "02:05:14", "03:12:58", 'A동', '특이사항 없음', 'A016', 'A020');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-13", "13:40:01", "14:53:11", 'B동', '특이사항 없음', 'A017', 'A019');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-13", "06:00:01", "07:02:14", 'C동', '특이사항 없음', 'A018', 'A024');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-14", "09:29:15", "10:43:02", 'A동', '특이사항 없음', 'A030', 'A025');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-14", "18:00:01", "19:02:57", 'B동', '특이사항 없음', 'A029', 'A026');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-14", "13:16:25", "14:31:22", 'C동', '특이사항 없음', 'A028', 'A027');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-15", "22:08:31", "23:48:02", 'A동', '특이사항 없음', 'A010', 'A009');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-15", "14:06:01", "15:15:11", 'B동', '특이사항 없음', 'A007', 'A008');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-15", "12:00:21", "13:18:20", 'C동', '특이사항 없음', 'A006', 'A005');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-16", "13:13:26", "14:45:13", 'A동', '특이사항 없음', 'A001', 'A030');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-16", "23:02:55", "00:24:32", 'B동', '특이사항 없음', 'A002', 'A029');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-16", "03:29:24", "04:48:13", 'C동', '특이사항 없음', 'A003', 'A028');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-17", "10:00:01", "11:25:14", 'A동', '특이사항 없음', 'A004', 'A027');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-17", "00:42:18", "01:52:11", 'B동', '특이사항 없음', 'A005', 'A026');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-17", "04:50:01", "05:57:54", 'C동', '특이사항 없음', 'A006', 'A025');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-18", "15:10:08", "16:26:16", 'A동', '특이사항 없음', 'A007', 'A024');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-18", "01:04:03", "02:14:44", 'B동', '특이사항 없음', 'A008', 'A023');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-18", "13:04:37", "14:11:11", 'C동', '특이사항 없음', 'A009', 'A022');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-19", "22:00:06", "23:02:55", 'A동', '특이사항 없음', 'A010', 'A021');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-19", "04:16:01", "05:33:20", 'B동', '특이사항 없음', 'A011', 'A020');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-19", "15:38:01", "16:50:49", 'C동', '특이사항 없음', 'A012', 'A019');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-20", "02:11:01", "03:15:34", 'A동', '특이사항 없음', 'A013', 'A018');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-20", "21:00:42", "22:02:11", 'B동', '특이사항 없음', 'A014', 'A017');
insert into patrol_history(ph_date, ph_time_start, ph_time_end, location, contents, prison_officer_po_no1, prison_officer_po_no2) values("2020-12-20", "15:57:12", "17:03:08", 'C동', '특이사항 없음', 'A015', 'A016');
select * from patrol_history;

-- CCTV -------------------------------------------------------------------------------------------

insert into cctv(area, cctv_non, location, active) values('A', '001', '1번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '002', '2번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '003', '3번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '004', '4번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '005', '5번방', 0);
insert into cctv(area, cctv_non, location, active) values('A', '005', '5번방', 1);
insert into cctv(area, cctv_non, location, active) values('A', '006', '수감동화장실', 1);
insert into cctv(area, cctv_non, location, active) values('A', '007', '수감동거실', 1);
insert into cctv(area, cctv_non, location, active) values('A', '008', '복도', 1);
insert into cctv(area, cctv_non, location, active) values('A', '009', '세탁실', 1);
insert into cctv(area, cctv_non, location, active) values('B', '001', '1번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '002', '2번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '003', '3번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '004', '4번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '005', '5번방', 1);
insert into cctv(area, cctv_non, location, active) values('B', '006', '수감동화장실', 1);
insert into cctv(area, cctv_non, location, active) values('B', '007', '수감동거실', 1);
insert into cctv(area, cctv_non, location, active) values('B', '008', '복도', 1);
insert into cctv(area, cctv_non, location, active) values('B', '009', '세탁실', 1);
insert into cctv(area, cctv_non, location, active) values('C', '001', '1번방', 1);
insert into cctv(area, cctv_non, location, active) values('C', '002', '2번방', 1);
insert into cctv(area, cctv_non, location, active) values('C', '003', '3번방', 1);
insert into cctv(area, cctv_non, location, active) values('C', '004', '4번방', 1);
insert into cctv(area, cctv_non, location, active) values('C', '005', '5번방', 1);
insert into cctv(area, cctv_non, location, active) values('C', '006', '수감동화장실', 1);
insert into cctv(area, cctv_non, location, active) values('C', '007', '수감동거실', 1);
insert into cctv(area, cctv_non, location, active) values('C', '008', '복도', 1);
insert into cctv(area, cctv_non, location, active) values('C', '009', '세탁실', 1);
insert into cctv(area, cctv_non, location, active) values('D', '001', '운동장', 1);
insert into cctv(area, cctv_non, location, active) values('D', '002', '기타장소', 1);

select * from cctv;


-- 교정사고기록 -------------------------------------------------------------------------------------------
-- 발생 장소는 수감동화장실, 수감동거실, 출역지, 운동장, 복도, 기타장소 중에 넣어주세요 ! 띄어쓰기 틀리면 안돼용
-- classification은 아래 select문에 들어있는 8가지 중에 적어주세욥
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-01", '운동장', '폭행치사', '일반폭행', '6758');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-01", '세탁실', '교도관폭행', '규정위반', '3567');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-02", '출역지', '도주', '규정위반', '2481');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-03", '운동장', '폭행치사', '일반폭행', '3567');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-04", '운동장', '폭행치사', '일반폭행', '1588');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-04", '운동장', '폭행치사', '일반폭행', '7513');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-05", '복도', '교도관폭행', '규정위반', '8639');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-06", '출역지', '도주', '규정위반', '1234');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-07", '기타장소', '폭행치사', '일반폭행', '1541');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-08", '수감동거실', '폭행치사', '일반폭행', '1478');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-08", '운동장', '폭행치사', '일반폭행', '1155');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-09", '운동장', '교도관폭행', '규정위반', '1234');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-10", '기타장소', '도주', '규정위반', '2587');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-11", '수감동화장실', '폭행치사', '일반폭행', '1155');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-11", '복도', '폭행치사', '일반폭행', '8523');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-11", '수감동화장실', '폭행치사', '일반폭행', '9632');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-12", '복도', '교도관폭행', '규정위반', '1236');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-13", '기타장소', '도주', '규정위반', '1155');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-16", '수감동거실', '폭행치사', '일반폭행', '2589');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-17", '수감동거실', '폭행치사', '일반폭행', '1155');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-18", '수감동화장실', '폭행치사', '일반폭행', '9632');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-19", '복도', '교도관폭행', '규정위반', '3698');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-21", '출역지', '도주', '규정위반', '7896');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-23", '운동장', '폭행치사', '일반폭행', '4563');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-25", '운동장', '폭행치사', '일반폭행', '3698');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-26", '수감동화장실', '밀수품반입', '일반폭행', '9632');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-29", '복도', '기타규정위반', '규정위반', '3698');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-29", '출역지', '기타규정위반', '규정위반', '7896');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-30", '운동장', '폭행치상', '일반폭행', '4563');
insert into corrective_history(occuring_time, occuring_place, classification, details, prisoner_prison_number) values("2021-08-31", '운동장', '폭행치사', '일반폭행', '3698');

select * from corrective_history;

select
	count(case when classification='폭행치사' then 1 end) as case1,
	count(case when classification='폭행치상' then 1 end) as case2,
	count(case when classification='교도관폭행' then 1 end) as case3,
	count(case when classification='도주' then 1 end) as case4,
	count(case when classification='변사' then 1 end) as case5,
	count(case when classification='병사' then 1 end) as case6,
	count(case when classification='밀수품반입' then 1 end) as case7,
	count(case when classification='기타규정위반' then 1 end) as case8
from corrective_history;

-- 약물관리내역 -------------------------------------------------------------------------------------------
-- 약 종류는 검색해보면서 추가해야할거 같아용
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('코데날정', 0, '일 3회', '3567');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('베포린정', 0, '일 3회', '3567');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('안젤릭정', 0, '일 3회', '3567');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('징코에프정', 0, '일 3회', '3567');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('러키펜정', 0, '일 2회', '2481');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('비스원정', 0, '일 2회', '2481');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('마비드정', 0, '일 2회', '2481');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('피디정', 0, '일 1회', '6758');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('페니라민정', 0, '일 1회', '6758');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('뉴로세틸정', 1, '일 2회', '7513');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('아트로반정', 1, '일 2회', '7513');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('셀렉카정', 1, '일 2회', '7513');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values('아스피린정', 0, '일 2회', '8639');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '클자핀정', 1, '일 3회', '6792');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '리옥틴캡슐', 1, '일 3회', '6792');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '플루세틴캡슐', 1, '일 3회', '6792');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '코데날정', 0, '일 3회', '2768');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '베포린정', 0, '일 3회', '2768');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '안젤릭정', 0, '일 3회', '7412');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '징코에프정', 0,  '일 3회', '7412');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '대웅푸루나졸정', 0, '일 2회', '9572');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '비스원정', 0, '일 2회', '9572');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '마비드정', 0, '일 2회', '9572');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '나녹시딜액', 0, '일 1회', '8523');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '프로좀에이액 0.02%', 0, '일 1회', '8523');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '진크피현탁액 2%', 0, '일 2회', '1478');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '할로페리돌', 1, '일 2회', '4563');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '세레네이스', 1, '일 2회', '4563');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '세드릴', 1, '일 3회', '1236');
insert into drug_management_history(drug_type, spec_drug, taking_count, prisoner_prison_number) values( '피스페달정', 1, '일 3회', '1236');

select * from drug_management_history;

-- 특별약물복용기록 -------------------------------------------------------------------------------------------
-- drug_management_history_dm_no
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "08:57:12", 10, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "08:57:12", 11, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "08:57:12", 12, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "18:50:42", 10, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "18:50:42", 11, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-01", "18:50:42", 12, "7513");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "08:12:42", 14, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "08:12:42", 15, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "08:12:42", 16, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "12:07:51", 14, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "12:07:51", 15, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "12:07:51", 16, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "18:08:33", 14, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "18:08:33", 15, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-02", "18:08:33", 16, "6792");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-03", "08:30:12", 27, "4563");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-03", "08:30:12", 28, "4563");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-03", "18:33:41", 27, "4563");
insert into spec_drug_history(taking_date, taking_time, drug_management_history_dm_no, prisoner_prison_number) values("2021-08-03", "18:33:41", 28, "4563");

select * from spec_drug_history;
-- 특별관리죄수 -------------------------------------------------------------------------------------------

insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('규정위반', 1, '1234');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행치사', 2, '8523');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행치사 및 규정위반', 3, '1155');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행치사', 2, '9632');
insert into special_management_personnel(reason, management_grade, prisoner_prison_number) values('폭행치사 및 규정위반', 2, '3698');

select * from special_management_personnel;


-- 이상행동감지내역 -------------------------------------------------------------------------------------------
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-01", '폭행', '폭행', 'A001', 29);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-01", '폭행', '폭행', 'A015', 10);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-02", '싸움', '폭행', 'A006', 29);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-03", '폭행', '폭행', 'A019', 29);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-05", '폭행', '폭행', 'A003', 18);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-07", '폭행', '폭행', 'A025', 30);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-10", '폭행', '싸움', 'A014', 26);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-11", '폭행', '폭행', 'A005', 29);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-12", '폭행', '폭행', 'A002', 29);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-14", '폭행', '폭행', 'A026', 25);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-15", '폭행', '폭행', 'A026', 27);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-15", '폭행', '폭행', 'A019', 16);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-18", '폭행', '폭행', 'A002', 18);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-23", '폭행', '폭행', 'A011', 25);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-26", '폭행', '폭행', 'A011', 25);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-27", '폭행', '폭행', 'A029', 16);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-31", '폭행', '폭행', 'A012', 27);
insert into anomaly_detection_history(alert_date, anomalies, actual_anomalies, prison_officer_po_no, cctv_cctv_no) values("2021-08-31", '폭행', '폭행', 'A030', 29);

select * from anomaly_detection_history;

