package kr.prison.web;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import kr.prison.domain.AnomalyDetectionHistoryVO;
import kr.prison.domain.CCTVVO;
import kr.prison.domain.CollectiveHistoryVO;
import kr.prison.domain.DrugManagementVO;
import kr.prison.mapper.PrisonMapper;

//POJO
@Controller // 이게 있어야 메모리 위에 올릴 수 있다 (POJO)
public class BoardController {// new BoardController(); 어딧음? 자동으로 톰켓이 실행될대 만들어짐 new안쓰는이유 클레스간 결합도가올라가서 유연성이
								// 떨어진다 대신 scan을쓴다 이는 spring컨테이너에서 관리한다

	@RequestMapping("/main.do")
	public void main(Model model) {

	}

	@RequestMapping("/login.do")
	public void login(Model model) {

	}

	@RequestMapping("/prisoner_info.do")
	public void prisoner_info(Model model) {

	}

	@RequestMapping("/prisoner_info_add.do")
	public void prisoner_info_add(Model model) {

	}

	@RequestMapping("/prison_officer_info.do")
	public void prison_officer_info(Model model) {

	}

	@RequestMapping("/prison_officer_info_add")
	public void prison_officer_info_add(Model model) {

	}

	@RequestMapping("/drug_management_history.do")
	public void drug_management_history(Model model) {

	}

	@RequestMapping("/drug_management_history_add.do")
	public void drug_management_history_add(Model model) {

	}

	@RequestMapping("/spec_drug_history.do")
	public void spec_drug_history(Model model) {

	}

	@RequestMapping("/spec_drug_history_add.do")
	public void spec_drug_history_add(Model model) {

	}

	@RequestMapping("/patrol_history.do")
	public void patrol_history(Model model) {

	}

	@RequestMapping("/patrol_history_add.do")
	public void patrol_history_add(Model model) {

	}

	@RequestMapping("/corrective_history.do")
	public void corrective_history(Model model) {

	}

	@RequestMapping("/corrective_history_content.do")
	public void corrective_history_content(Model model) {

	}

	@RequestMapping("/corrective_history_add.do")
	public void corrective_history_add(Model model) {

	}

	@RequestMapping("/cctv.do")
	public void cctv(Model model) {

	}

	@RequestMapping("/cctv_add.do")
	public void cctv_add(Model model) {

	}

	@RequestMapping("/anomaly_detection_history.do")
	public void anomaly_detection_history(Model model) {

	}

	@RequestMapping("/anomaly_detection_history_content.do")
	public void anomaly_detection_history_content(Model model) {

	}

}
