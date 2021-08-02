package kr.prison.domain;

import java.sql.Date;

import lombok.Data;


@Data
public class AnomalyDetectionHistory {
	private int adh_no;
	private Date adh_date;
	private String adh_pre;
	private String adh_actual;
	
}
