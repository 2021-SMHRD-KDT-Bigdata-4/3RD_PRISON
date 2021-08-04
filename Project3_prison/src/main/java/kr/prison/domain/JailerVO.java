package kr.prison.domain;

import lombok.Data;

@Data
public class JailerVO {
	private int PRISON_NUMBER;           // 수감번호
	private String NAME;      // 재소자 이름
	private int AGE;          // 재소자 나이
	private String SEX;    // 재소자 성별
	private String PRISON_AREA;      // 재소자 수감 구역(동)
	private int ROOM_NUMBER;         // 재소자 수감 방
	private String CRIME_CLASSIFICATION;  // 재소자 범죄 분류crime classify
	private String BEFORE;        // 재소자 전과 previous conviction
	private String PHOTO;     // 재소자 사진 url로 하는게 나을듯 blob버려

}
