package kr.book.prison;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import kr.book.domain.BookVO;
import kr.book.mapper.BookMapper;


//POJO
@Controller // 이게 있어야 메모리 위에 올릴 수 있다 (POJO)
public class BoardController {// new BoardController(); 어딧음? 자동으로 톰켓이 실행될대 만들어짐 new안쓰는이유 클레스간 결합도가올라가서 유연성이 떨어진다 대신 scan을쓴다 이는 spring컨테이너에서 관리한다
	// 게시판 리스트 가져오는 동작 // spring컨테이너는 객체(bin)를 생성하고 관리한다
	// HandlerMapping
	//@Autowired //DI 인젝션
	@Inject 
	private BookMapper bookapper;
	@RequestMapping("/bookList.do") //여기로 요청이오면 아래 메소드를 실행해라 
	public void boardList(Model model) {//이메소드 이름 상관 없음 void 경우  @RequestMapping 값으로 돌아감 값 과 같은 이름의 jsp가 잇어야함
		// TO - DO
		List<BookVO>list=bookapper.bookList();
		
		
		model.addAttribute("list",list); //객체바인딩 특정 개체에 메모리를 저장하거 꺼내갈 수 있다
		//return "boardList"; // -->ViewResolver(관여(servlet-context.xml 에 설정되있음))-->/WEB-INF/views/boardList.jsp(이름 같아야함) 
	}
	@RequestMapping("/bookListAjax.do") //여기로 요청이오면 아래 메소드를 실행해라 
	public @ResponseBody List<BookVO> bookListAjax() { //@ResponseBody 응답을 한다 뭐로? JSON 으로
		// TO - DO
		List<BookVO>list=bookapper.bookListAjax();
	
		return list; // --> 객체를 리턴 ---{JSON API} --> 스트링 변환 -- > 응답
	}
	
	
	
	
	
	}
	
	

