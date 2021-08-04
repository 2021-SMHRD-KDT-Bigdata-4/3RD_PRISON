package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PatrolHistoryVO {
	private int ph_no;
	private Date date;
	private String time;
	private String location;
	private String contents;
	private int prison_officer_po_no;

}
