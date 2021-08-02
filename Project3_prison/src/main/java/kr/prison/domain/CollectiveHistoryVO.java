package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CollectiveHistoryVO {
	private int ch_no;            // 교정사고번호
	private Date ch_accdate;      // 발생일시
	private String ch_accplace;   // 발생장소
	private String ch_clf;        // 분류
	private String ch_detail;     // 상세내용
}
