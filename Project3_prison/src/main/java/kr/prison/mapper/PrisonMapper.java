package kr.prison.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

import kr.prison.domain.AnomalyDetectionHistory;
import kr.prison.domain.CCTVVO;
import kr.prison.domain.CollectiveHistoryVO;
import kr.prison.domain.PatrolHistoryVO;
import kr.prison.domain.DrugManagementVO;
import kr.prison.domain.JailerVO;
import kr.prison.domain.PrisonOfficerVO;
import kr.prison.domain.SpecDrugHistoryVO;
import kr.prison.domain.SpecialManagementJailerVO;

@Mapper
public interface PrisonMapper {

    // CCTV 정보 관련(CRUD)-----------------------------------------------------------------------------------------
    @Select("select * from cctv")
    public List<CCTVVO> cctvListAjax();  // CCTV 리스트 가져오기

    @Insert("insert into cctv(area, cctv_non, location, active, unique) " +
            "values(#{cctv_area}, #{cctv_non}, #{cctv_location}, #{cctv_active}, #{cctv_unique})")
    public void cctvInsert(CCTVVO vo);   // CCTV 신규 등록

    // 활성화 비활성화 tinyint(type)

    @Update("update cctv set active=1, cctv_unique=#{cctv_unique} where cctv_no=#{cctv_no}")
    public void CCTVUpdateAbled(CCTVVO vo);    // CCTV 활성화

    @Update("update cctv set active=0, cctv_unique=#{cctv_unique} where cctv_no=#{cctv_no}")
    public void CCTVUpdateDisabled(CCTVVO vo); // CCTV 비활성화

    // 순찰기록 관련 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from patrol_history")
    public List<PatrolHistoryVO> phListAjax(); // 순찰기록 가져오기

    @Insert("insert into patrol_history(date, time, location, contents, )")
    public void phInsert(PatrolHistoryVO vo);

    @Update("update")
    public void phUpdate(PatrolHistoryVO vo);

    @Delete("delete from partorl_history where ph_no=#{ph_no}")
    public int phDelete(int ph_no);

    // 이상행동 감지 내역 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from anomaly_detection_history")
    public List<AnomalyDetectionHistory> AnomalyDetectionHistoryAjax();

    @Insert()

    @Update()

    @Delete()

    // 교정사고 발생내역 (CRUD)-----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()


    // 교도관 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    // 수감자 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    // 약물 복용 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    // 특수 약물 복용 내역 (CRUD)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    // 특별관리인원 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    public List<DrugManagementVO> DrugManagementVOAjax();// 바디 부분이 없다   boardDelAjax
	
	
	public List<CollectiveHistoryVO> CollectiveHistoryVOAjax();// 바디 부분이 없다   boardDelAjax
}