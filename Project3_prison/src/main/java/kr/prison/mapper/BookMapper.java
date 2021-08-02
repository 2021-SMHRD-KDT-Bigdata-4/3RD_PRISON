package kr.prison.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.prison.domain.BookVO;
@Mapper
public interface BookMapper {
	// SQL --> X --> Mapper.xml File
	
	public List<BookVO> bookList();// 바디 부분이 없다 
	
	
	public List<BookVO> bookListAjax();// 바디 부분이 없다   boardDelAjax
	

}
