package kr.prison.domain;

import java.sql.Date;

import lombok.Data;


@Data
public class AnomalyDetectionHistoryVO {
	private int abnormal_history_number;
	private Date alert_date;
	private String anomalies;
	private String actual_anomalies;
	private int prison_officer_po_no;
	private int cctv_cctv_no;
	
}
