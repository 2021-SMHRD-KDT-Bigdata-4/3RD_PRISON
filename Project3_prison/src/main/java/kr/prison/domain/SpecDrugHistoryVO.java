package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class SpecDrugHistoryVO {
	private int th_no;
	private Date taking_date;
	private int drug_management_history_dm_no;
}
