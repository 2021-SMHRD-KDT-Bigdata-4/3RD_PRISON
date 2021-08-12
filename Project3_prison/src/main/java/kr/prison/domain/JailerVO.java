package kr.prison.domain;

import lombok.Data;

@Data
public class JailerVO {
	private int prison_number; // 수감번호
	private String name; // 재소자 이름
	private int age; // 재소자 나이
	private String sex; // 재소자 성별
	private String prison_area; // 재소자 수감 구역(동)
	private int room_number; // 재소자 수감 방
	private String crime_classification; // 재소자 범죄 분류crime classify
	private String before_crime; // 재소자 전과 previous conviction
	private String present; // 재소자 현재 상태(수감중, 퇴소)
	private String photo; // 재소자 사진 url로 하는게 나을듯 blob버려

}
