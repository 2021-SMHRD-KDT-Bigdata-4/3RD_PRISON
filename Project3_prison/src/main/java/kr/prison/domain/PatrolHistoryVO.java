package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PatrolHistoryVO {
	private int ph_no;
	private Date ph_date;
	private String ph_time;
	private String ph_location;
	private String ph_content;

}
