package kr.prison.domain;

import java.sql.Date;
import java.sql.Time;

import lombok.Data;

@Data
public class SpecDrugHistoryVO {
	private int th_no;
	private Date taking_date;
	private Time taking_time;
	private int drug_management_history_dm_no;
	private String prisoner_prison_number;
}
