package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PatrolHistoryVO {
	private int ph_no;
	private Date ph_date;
	private String ph_time_start;
	private String ph_time_end;
	private String location;
	private String contents;
	private String prison_officer_po_no1;
	private String prison_officer_po_no2;

}
