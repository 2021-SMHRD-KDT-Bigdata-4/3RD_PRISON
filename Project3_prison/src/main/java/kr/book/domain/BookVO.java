package kr.book.domain;

import lombok.Data;

@Data
public class BookVO { // 이클립스가 해준다 셋터 겟터 ( 롬복  )
	private int num;
	private String title;
	private String author;
	private String company;
	private String isbm;
	private int count;
}
