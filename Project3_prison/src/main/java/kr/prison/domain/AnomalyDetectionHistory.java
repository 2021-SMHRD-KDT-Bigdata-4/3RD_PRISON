package kr.prison.domain;

import java.sql.Date;

import lombok.Data;


@Data
public class AnomalyDetectionHistory {
	private int ABNORMAL_HISTORY_NUMBER;
	private Date ALERT_DATE;
	private String ANOMALIES;
	private String ACTUAL_ANOMALIES;
	private int PRISON_OFFICER_PO_NO;
	private int CCTV_CCTV_NO;
	
}
