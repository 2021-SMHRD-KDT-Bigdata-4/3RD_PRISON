package kr.prison.domain;

import lombok.Data;

@Data
public class PrisonOfficerVO {
	private String po_no;          // 교도관 번호
	private String po_name;        // 교도관 이름
	private int po_age;            // 교도관 나이 
	private String po_gender;      // 교도관 성별
	private String po_rank;        // 교도관 급수(공무원 : 9, 8, 7..)
	private String po_position;    // 교도관 직책(상세업무 : 영상보안, 일반보안, 의료지원, 교육지원)
	private String po_dep;         // 교도관 부서(보안, 의료, 교육 등)
	private String po_photo;       // 교도관 사진
}
