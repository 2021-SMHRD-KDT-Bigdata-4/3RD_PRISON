package kr.prison.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.executor.ReuseExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
import kr.prison.domain.chclfChartVO;
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

	@RequestMapping("/CCTVstreamingTest.do")
	public void CCTVsreamingTest(Model model) {
		// 페이징
	}

	@RequestMapping("/BbungEzRong.do")
	public void BbungEzRong(Model model) {

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

	@RequestMapping("/prisoner_info_form.do")
	public String prisoner_info_form(int prison_number, Model model) {
		JailerVO vo = prisonMapper.jailer_select(prison_number);
		model.addAttribute("vo", vo);
		return "prisoner_info_form";
	}

	@RequestMapping("/prisoner_info_form_up.do")
	public String prisoner_info_form_up(JailerVO vo) {
		prisonMapper.jailerUpdate(vo);
		return "redirect:/prisoner_info.do";
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

	@RequestMapping("/prison_officer_info_form.do")
	public String prison_officer_info_from(String po_no, Model model) {
		PrisonOfficerVO vo = prisonMapper.po_select(po_no);
		model.addAttribute("vo", vo);
		return "prison_officer_info_form";
	}

	@RequestMapping("/prison_officer_info_from_up.do")
	public String prison_officer_info_from(PrisonOfficerVO vo) {
		prisonMapper.poUpdate(vo);
		return "redirect:/prison_officer_info.do";

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

	@RequestMapping("/prison_officer_info_insert.do")
	public String prison_officer_info_insert(PrisonOfficerVO vo) {
		prisonMapper.poInsert(vo);
		return "redirect:/prison_officer_info.do";
	}

	@RequestMapping("/drug_management_history.do")
	public void drug_management_history(Model model) {
		List<DrugManagementVO> list = prisonMapper.dmList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/drug_management_history_add.do")
	public void drug_management_history_add(Model model) {

	}

	@RequestMapping("/drug_management_history_del.do")
	public void drug_management_history_del(int dm_no) {
		System.out.println(dm_no);
	}

	@RequestMapping("/drug_management_history_insert.do")
	public String drug_management_history_insert(DrugManagementVO vo) {
		prisonMapper.dmInsert(vo);
		return "redirect:/drug_management_history.do";
	}

	@RequestMapping("/drug_management_history_search.do")
	public String drug_management_history_search(SearchVO vo, Model model) {
		List<DrugManagementVO> list = prisonMapper.dmSearch(vo);
		model.addAttribute("list", list);
		return "drug_management_history";
	}

	@RequestMapping("/drug_management_history_delete.do")
	public String boardDeleteAjax(int dm_no) {
		prisonMapper.dmDelete(dm_no);
		return "redirect:/drug_management_history.do";
	}

	@RequestMapping("/spec_drug_history.do")
	public void spec_drug_history(Model model) {
		List<SpecDrugHistoryVO> list = prisonMapper.sdhList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/spec_drug_history_add.do")
	public void spec_drug_history_add(Model model) {

	}

	@RequestMapping("/spec_drug_history_insert.do")
	public String spec_drug_history_insert(SpecDrugHistoryVO vo) {
		prisonMapper.sdhInsert(vo);
		return "redirect:/spec_drug_history.do";
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

	@RequestMapping("/patrol_history_search.do")
	public String patrol_history_search(SearchVO vo, Model model) {
		List<PatrolHistoryVO> list = prisonMapper.phSearch(vo);
		model.addAttribute("list", list);
		return "patrol_history";
	}

	@RequestMapping("/patrol_history_start.do")
	public String patrol_history_start(PatrolHistoryVO vo, Model model) {
		prisonMapper.phInsert(vo);
		model.addAttribute("prison_officer_po_no1", vo.getPrison_officer_po_no1());
		model.addAttribute("prison_officer_po_no2", vo.getPrison_officer_po_no2());
		System.out.println(vo.getPrison_officer_po_no1());
		return "patrol_history_end";
	}

	@RequestMapping("/patrol_history_end.do")
	public String patrol_history_end(PatrolHistoryVO vo) {
		System.out.println("end");
		System.out.println(vo);
		prisonMapper.phUpdate(vo);
		return "redirect:/patrol_history.do";
	}

	@RequestMapping("/corrective_history.do")
	public void corrective_history(Model model) {
		List<CollectiveHistoryVO> list = prisonMapper.chList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/corrective_history_content.do")
	public String corrective_history_content(int calibration_accident_number, Model model) {
		CollectiveHistoryVO vo = prisonMapper.chSelect(calibration_accident_number);
		model.addAttribute("vo", vo);
		return "corrective_history_content";
	}

	@RequestMapping("/corrective_history_add.do")
	public void corrective_history_add(Model model) {

	}

	@RequestMapping("/corrective_history_insert.do")
	public String corrective_history_insert(CollectiveHistoryVO vo) {
		prisonMapper.chInsert(vo);
		return "redirect:/corrective_history.do";
	}

<<<<<<< HEAD
	// 교정사고 내역의 분류를 기준으로 select
	@RequestMapping("/corrective_history_clfchart.do")
	public @ResponseBody List<chclfChartVO> corrective_history_clfchart(CollectiveHistoryVO vo,Model model) {
=======
	@RequestMapping("/corrective_history_content_update.do")
	public String corrective_history_content_update(CollectiveHistoryVO vo) {
		System.out.println(vo);
		prisonMapper.chUpdate(vo);
		return "redirect:/corrective_history.do";
	}

	public @ResponseBody List<chclfChartVO> corrective_history_clfchart(chclfChartVO vo, Model model) {
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/3RD_PRISON.git
		System.out.println(vo);
		List<chclfChartVO> data1 = prisonMapper.chclfChart(vo);
		System.out.println(data1);
		return data1;
	}

	// 교정사고 내역의 발생장소를 기준으로 select

	@RequestMapping("/corrective_history_search.do")
	public String corrective_history_search(SearchVO vo, Model model) {
		List<CollectiveHistoryVO> list = prisonMapper.chSearch(vo);
		model.addAttribute("list", list);
		return "corrective_history";
	}

	@RequestMapping("/corrective_history_chart.do")
	public void corrective_history_chart(Model model) {

	}

	@RequestMapping("/cctv.do")
	public void cctv(Model model) {
		List<CCTVVO> list = prisonMapper.cctvList();
		model.addAttribute("list", list);
	}

	@RequestMapping("/cctv_add.do")
	public void cctv_add(Model model) {

	}

	@RequestMapping("/cctv_insert.do")
	public String cctv_insert(CCTVVO vo) {
		prisonMapper.cctvInsert(vo);
		return "redirect:/cctv.do";
	}

	@RequestMapping("/cctv_search.do")
	public String cctv_search(SearchVO vo, Model model) {
		List<CCTVVO> list = prisonMapper.cctvSearch(vo);
		model.addAttribute("list", list);
		return "cctv";
	}

	@RequestMapping("/cctv_now.do")
	public void cctv_now(Model model) {

	}

	@RequestMapping("/anomaly_detection_history.do")
	public void anomaly_detection_history(Model model) {
		List<AnomalyDetectionHistoryVO> list = prisonMapper.adhList();
		model.addAttribute("list", list);
	}

	// 이상행동 번호 누르면 상세화면 넘어가기 !
	@RequestMapping("/anomaly_detection_history_content.do")
	public String anomaly_detection_history_content(int abnormal_history_number, Model model) {
		AnomalyDetectionHistoryVO vo = prisonMapper.adh_select(abnormal_history_number);
		model.addAttribute("vo", vo);
		return "anomaly_detection_history_content";
	}

	@RequestMapping("/anomaly_detection_history_insert.do")
	public void anomaly_detection_history_insert(AnomalyDetectionHistoryVO vo) {
		prisonMapper.adhInsert(vo);
	}

	@RequestMapping("/anomaly_detection_history_search.do")
	public String anomaly_detection_history_search(SearchVO vo, Model model) {
		List<AnomalyDetectionHistoryVO> list = prisonMapper.adhSearch(vo);
		model.addAttribute("list", list);
		return "anomaly_detection_history";
	}

	@RequestMapping("/anomaly_detection_history_update.do")
	public String anomaly_detection_history_update(AnomalyDetectionHistoryVO vo) {
		System.out.println(vo);
		prisonMapper.adhUpdate(vo);
		return "redirect:/anomaly_detection_history.do";
	}

	@RequestMapping("/loginajax.do")
	public String jailer_info_addajax(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String po_no = request.getParameter("po_no");
		String password = request.getParameter("password");

		PrisonOfficerVO vo = new PrisonOfficerVO();
		vo.setPo_no(po_no);
		vo.setPassword(password);

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

	@RequestMapping("/prisonInAjax.do") // 여기로 요청이오면 아래 메소드를 실행해라

	public @ResponseBody int prisonInAjax(JailerVO vo) { // @ResponseBody 응답을 한다 뭐로? JSON 으로
		// TO - DO
		int cnt = prisonMapper.jailerInsert(vo);
		System.out.println(vo);
		return cnt; // --> 객체를 리턴 ---{JSON API} --> 스트링 변환 -- > 응답
	}

}
