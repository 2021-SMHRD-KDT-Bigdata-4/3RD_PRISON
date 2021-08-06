package kr.prison.web;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.prison.domain.PrisonOfficerVO;
import kr.prison.mapper.PrisonMapper;


//POJO
@Controller // 이게 있어야 메모리 위에 올릴 수 있다 (POJO)
public class BoardController {// new BoardController(); 어딧음? 자동으로 톰켓이 실행될대 만들어짐 new안쓰는이유 클레스간 결합도가올라가서 유연성이
								// 떨어진다 대신 scan을쓴다 이는 spring컨테이너에서 관리한다
	@Inject
	private PrisonMapper prisonMapper;
	@RequestMapping("/main.do")
	public void main(Model model) {

	}

	@RequestMapping("/login.do")
	public void login(Model model) {

	}

	@RequestMapping("/jailer_info.do")
	public void jailer_info(Model model) {

	}

	@RequestMapping("/jailer_info_add.do")
	public void jailer_info_add(Model model) {

	}

	@RequestMapping("/loginajax.do")
	public String jailer_info_addajax(HttpServletRequest request,HttpServletResponse response) 	
			throws ServletException, IOException {

		String po_no = request.getParameter("po_no");
		String name = request.getParameter("name");

		PrisonOfficerVO vo = new PrisonOfficerVO();
		vo.setPo_no(Integer.parseInt(po_no));
		vo.setName(name);

		List<PrisonOfficerVO> prisonOfficerVO = prisonMapper.PrisonOfficerLogin(vo);

		PrintWriter out = response.getWriter();
		System.out.println("로그인");
		if (prisonOfficerVO != null) {
			out.print("YES"); // 인증에 성공(1)
			// 객체바인딩 : 로그인에 성공했다는 사실을 모든 웹페이지가 공유할 수 있도록 해야한다. => 세션바인딩
			// HttpServletRequest, HttpSession
			System.out.println(prisonOfficerVO);
			HttpSession session = request.getSession();
			session.setAttribute("prisonOfficerVO", prisonOfficerVO); // -> ${userVO}
		} else {
			out.print("NO"); // 인증에 실패(0)
		}

		return null;

	}

}


