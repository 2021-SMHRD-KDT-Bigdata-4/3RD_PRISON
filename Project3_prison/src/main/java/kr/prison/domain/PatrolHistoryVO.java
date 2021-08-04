package kr.prison.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PatrolHistoryVO {
	private int PH_NO;
	private Date DATE;
	private String TIME;
	private String LOCATION;
	private String CONTENTS;
	private int PRISON_OFFICER_PO_NO;

}
