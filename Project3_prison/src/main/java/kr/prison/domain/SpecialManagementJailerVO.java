package kr.prison.domain;

import lombok.Data;

@Data
public class SpecialManagementJailerVO {
	private int special_admin_number;
	private String reason;
	private int management_grade;
	private int prisoner_prison_number;
}
