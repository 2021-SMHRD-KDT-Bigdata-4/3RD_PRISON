package kr.prison.domain;

import lombok.Data;

@Data
public class JailerVO {
	private int jailer_no;           // 수감번호
	private String jailer_name;      // 재소자 이름
	private int jailer_age;          // 재소자 나이
	private String jailer_gender;    // 재소자 성별
	private String jailer_area;      // 재소자 수감 구역(동)
	private int jailer_room;         // 재소자 수감 방
	private String jailer_crimeclf;  // 재소자 범죄 분류crime classify
	private String jailer_pc;        // 재소자 전과 previous conviction
	private String jailer_photo;     // 재소자 사진 url로 하는게 나을듯 blob버려

}
