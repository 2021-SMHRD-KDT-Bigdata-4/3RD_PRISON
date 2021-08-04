package kr.prison.domain;

import lombok.Data;


@Data
public class CCTVVO {
	private int cctv_no;
	private String area;
	private String cctv_non;
	private String location;
	private int cctv_active;
	private String cctv_unique;
	
}
