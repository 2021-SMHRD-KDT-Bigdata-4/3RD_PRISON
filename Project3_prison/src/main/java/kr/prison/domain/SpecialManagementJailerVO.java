package kr.prison.domain;

import lombok.Data;

@Data
public class SpecialManagementJailerVO {
	private int SPECIAL_ADMIN_NUMBER;
	private String REASON;
	private int MANAGEMENT_GRADE;
	private int PRISONER_PRISON_NUMBER;
}
