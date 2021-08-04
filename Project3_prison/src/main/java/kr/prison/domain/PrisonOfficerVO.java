package kr.prison.domain;

import lombok.Data;

@Data
public class PrisonOfficerVO {
	private int PO_NO;          // 교도관 번호
	private String NAME;        // 교도관 이름
	private String AGE;            // 교도관 나이 
	private String GENDER;      // 교도관 성별
	private String RANK;        // 교도관 급수(공무원 : 9, 8, 7..)
	private String POSITION;    // 교도관 직책(상세업무 : 영상보안, 일반보안, 의료지원, 교육지원)
	private String DEPARTMENT;         // 교도관 부서(보안, 의료, 교육 등)
	private String PHOTO;       // 교도관 사진
}
