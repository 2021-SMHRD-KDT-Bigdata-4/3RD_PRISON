package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CollectiveHistoryVO {
	private int CALIBRATION_ACCIDENT_NUMBER;            // 교정사고번호
	private Date OCCURING_TIME;      // 발생일시
	private String OCCURING_PLACE;   // 발생장소
	private String CLASSIFICATION;        // 분류
	private String DETAILS;     // 상세내용
	private int PRISONER_PRISON_NUMBER; 
}
