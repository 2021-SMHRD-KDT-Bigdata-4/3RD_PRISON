package kr.prison.domain;

import lombok.Data;


@Data
public class CCTVVO {
	private int CCTV_NO;
	private String AREA;
	private String CCTV_NON;
	private String LOCATION;
	private int cctv_active;
	private String cctv_unique;
	
}
