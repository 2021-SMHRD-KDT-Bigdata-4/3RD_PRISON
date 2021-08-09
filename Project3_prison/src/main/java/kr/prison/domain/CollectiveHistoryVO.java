package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CollectiveHistoryVO {
	private int calibration_accident_number;            // 교정사고번호
	private Date occuring_time;      // 발생일
	private String occuring_place;   // 발생장소
	private String classification;        // 분류
	private String details;     // 상세내용
	private int prisoner_prison_number; 
}
