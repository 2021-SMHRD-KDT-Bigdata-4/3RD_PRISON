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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.prison.domain.AnomalyDetectionHistoryVO;
import kr.prison.domain.CCTVVO;
import kr.prison.domain.CollectiveHistoryVO;
import kr.prison.domain.DrugManagementVO;
import kr.prison.domain.JailerVO;
import kr.prison.domain.PatrolHistoryVO;
import kr.prison.domain.PrisonOfficerVO;
import kr.prison.domain.SearchVO;
import kr.prison.domain.SpecDrugHistoryVO;
import kr.prison.mapper.PrisonMapper;


//POJO
@Controller // 이게 있어야 메모리 위에 올릴 수 있다 (POJO)
public class BoardController {// new BoardController(); 어딧음? 자동으로 톰켓이 실행될대 만들어짐 new안쓰는이유 클레스간 결합도가올라가서 유연성이
								// 떨어진다 대신 scan을쓴다 이는 spring컨테이너에서 관리한다
	@Inject
	private PrisonMapper prisonMapper;
	
	@RequestMapping("/main.do")
	public void main(Model model) {
		// 페이징
	}

	@RequestMapping("/login.do")
	public void login(Model model) {
		// 페이징
	}

//------------------------------------ 재소자 -----------------------------------
	@RequestMapping("/prisoner_info.do")
	public void prisoner_info(Model model) {
		List<JailerVO> list = prisonMapper.jailerList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/prisoner_info_add.do")
	public void prisoner_info_add(Model model) {
		// 페이징
	}
	
	@RequestMapping("/prisoner_info_search.do")
	public String prisoner_info_Search(SearchVO vo, Model model) {
		List<JailerVO> list = prisonMapper.prisonerSearch(vo);
		model.addAttribute("list", list);
		return "prisoner_info";
	}
	
	@RequestMapping("/prisoner_info_insert.do")
	public String prisoner_info_insert(JailerVO vo) {
		prisonMapper.jailerInsert(vo);
		return "redirect:/prisoner_info.do";
	}

	@RequestMapping("/prison_officer_info.do")
	public void prison_officer_info(Model model) {
		List<PrisonOfficerVO> list = prisonMapper.poList();
		model.addAttribute("list", list);

	}

	@RequestMapping("/prison_officer_info_add.do")
	public void prison_officer_info_add(Model model) {

	}
	
	@RequestMapping("/prison_officer_info_search.do")
	public String prison_officer_info_search(SearchVO vo, Model model) {
		List<PrisonOfficerVO> list = prisonMapper.poSearch(vo);
		model.addAttribute("list", list);
		return "prison_officer_info";
	}
	
//	@RequestMapping("/prison_officer_info_insert.do")
//	public String prison_officer_info_insert(PrisonOfficerVO vo) {
//		prisonMapper.poInsert(vo);
//		return "redirect:/prison_officer_info.do";
//	}

	@RequestMapping("/drug_management_history.do")
	public void drug_management_history(Model model) {
		List<DrugManagementVO> list = prisonMapper.dmList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/drug_management_history_add.do")
	public void drug_management_history_add(Model model) {

	}
	
	@RequestMapping("/drug_management_history_search.do")
	public String drug_management_history_search(SearchVO vo, Model model) {
		List<DrugManagementVO> list = prisonMapper.dmSearch(vo);
		model.addAttribute("list", list);
		return "drug_management_history";
	}

	@RequestMapping("/spec_drug_history.do")
	public void spec_drug_history(Model model) {
		List<SpecDrugHistoryVO> list = prisonMapper.sdhList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/spec_drug_history_add.do")
	public void spec_drug_history_add(Model model) {

	}
	
	@RequestMapping("/spec_drug_history_search.do")
	public String spec_drug_history_search(SearchVO vo, Model model) {
		List<SpecDrugHistoryVO> list = prisonMapper.sdhSearch(vo);
		model.addAttribute("list", list);
		return "spec_drug_history";
	}

	@RequestMapping("/patrol_history.do")
	public void patrol_history(Model model) {
		List<PatrolHistoryVO> list = prisonMapper.phList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/patrol_history_add.do")
	public void patrol_history_add(Model model) {

	}
	
	@RequestMapping("/patrol_history_search.do")
	public String patrol_history_search(SearchVO vo, Model model) {
		List<PatrolHistoryVO> list = prisonMapper.phSearch(vo);
		model.addAttribute("list", list);
		return "patrol_history";
	}

	@RequestMapping("/corrective_history.do")
	public void corrective_history(Model model) {
		List<CollectiveHistoryVO> list = prisonMapper.chList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/corrective_history_content.do")
	public void corrective_history_content(Model model) {

	}

	@RequestMapping("/corrective_history_add.do")
	public void corrective_history_add(Model model) {

	}
	
	@RequestMapping("/corrective_history_search.do")
	public String corrective_history_search(SearchVO vo, Model model) {
		List<CollectiveHistoryVO> list = prisonMapper.chSearch(vo);
		model.addAttribute("list", list);
		return "corrective_history";
	}

	@RequestMapping("/cctv.do")
	public void cctv(Model model) {
		List<CCTVVO> list = prisonMapper.cctvList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/cctv_add.do")
	public void cctv_add(Model model) {

	}
	
	@RequestMapping("/cctv_search.do")
	public String cctv_search(SearchVO vo, Model model) {
		List<CCTVVO> list = prisonMapper.cctvSearch(vo);
		model.addAttribute("list", list);
		return "cctv";
	}

	@RequestMapping("/anomaly_detection_history.do")
	public void anomaly_detection_history(Model model) {
		List<AnomalyDetectionHistoryVO> list = prisonMapper.adhList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/anomaly_detection_history_content.do")
	public void anomaly_detection_history_content(Model model) {

	}
	
	@RequestMapping("/anomaly_detection_history_search.do")
	public String anomaly_detection_history_search(SearchVO vo, Model model) {
		List<AnomalyDetectionHistoryVO> list = prisonMapper.adhSearch(vo);
		model.addAttribute("list", list);
		return "anomaly_detection_history";
	}

	@RequestMapping("/loginajax.do")
	public String jailer_info_addajax(HttpServletRequest request,HttpServletResponse response) 	
			throws ServletException, IOException {

		String po_no = request.getParameter("po_no");
		String name = request.getParameter("name");

		PrisonOfficerVO vo = new PrisonOfficerVO();
		vo.setPo_no(po_no);
		vo.setName(name);

		PrisonOfficerVO prisonOfficerVO = prisonMapper.PrisonOfficerLogin(vo);

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
	@RequestMapping("/logoutajax.do")
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/main.do";
	}
	
	@RequestMapping("/prisonInAjax.do") //여기로 요청이오면 아래 메소드를 실행해라
	public @ResponseBody int prisonInAjax(JailerVO vo) { //@ResponseBody 응답을 한다 뭐로? JSON 으로
		// TO - DO
		int cnt =prisonMapper.jailerInsert(vo);
	System.out.println(vo);
		return cnt; // --> 객체를 리턴 ---{JSON API} --> 스트링 변환 -- > 응답
	}
}


