package kr.prison.domain;

import lombok.Data;

@Data
public class DrugManagementVO {
	private int dm_no;
	private String drug_type;
	private boolean spec_drug;
	private String taking_count;
	private int prisoner_prison_number;
}
