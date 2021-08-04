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
            "values(#{area}, #{cctv_non}, #{location}, #{cctv_active}, #{cctv_unique})")
    public void cctvInsert(CCTVVO vo);   // CCTV 신규 등록

    // 활성화 비활성화 tinyint(type)

    @Update("update cctv set active=1, unique=#{unique} where cctv_no=#{cctv_no}")
    public void CCTVUpdateAbled(CCTVVO vo);    // CCTV 활성화

    @Update("update cctv set active=0, unique=#{unique} where cctv_no=#{cctv_no}")
    public void CCTVUpdateDisabled(CCTVVO vo); // CCTV 비활성화

    // 순찰기록 관련 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from patrol_history")
    public List<PatrolHistoryVO> phListAjax(); // 순찰기록 가져오기

    @Insert("insert into patrol_history(date, time, location, contents, prison_officer_po_no) " +
            "values(#{date}, #{time}, #{location}, #{contents}, #{prison_officer_po_no}")
    public void phInsert(PatrolHistoryVO vo);

    @Update("update patrol_history set contents=#{contents} where ph_no=#{ph_no}")
    public void phUpdate(PatrolHistoryVO vo);

    @Delete("delete from partorl_history where ph_no=#{ph_no}")
    public int phDelete(int ph_no);

    // 이상행동 감지 내역 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from anomaly_detection_history")
    public List<AnomalyDetectionHistory> adhListAjax();

    @Insert("insert into anomaly_detection_history(anomalies, actual_anomalies, prioson_officer_po_no) " +
            "values(#{anomalies}, #{actual_anomalies}, #{prison_officer_po_no})")
    public void adhInsert(AnomalyDetectionHistoryVO vo);

    @Update("update anomaly_detection_history set ")
    public void adhUpdate(AnomalyDetectionHistoryVO vo);

    @Delete("delete from anomaly_detection_history where abnormal_history_number=#{abnormal_history_number}")
    public int adhDelete(int abnormal_history_number);

    // 교정사고 발생내역 (CRUD)-----------------------------------------------------------------------------------------
    @Select("select * from collective_history")
    public List<CollectiveHistoryVO> chListAjax();   // 교정사고 내역 리스트 가져오기

    @Insert("insert into collective_history(occuring_place, calssification, details, prisoner_prison_number) " +
            "values(#{occuring_place, #{classification}, #{details}, #{prisoner_prison_number})")
    public void chInsert(CollectiveHistroyVO vo);

    @Update("update collective_history set ")
    public void chUpdate(CollectiveHistoryVO vo);

    @Delete("delete from collective_history where calibration_accident_number=#{calibration_accident_number}")
    public int chDelete(int calibration_accident_number);

    // 교도관 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from prison_officer")
    public List<PrisonOfficerVO vo> poListAjax();

    @Insert("insert into prison_officer(name, age, gender, rank, position, department, photo) " +
            "values(#{name}, #{age}, #{gender}, #{rank), #{position}, #{department}, #{photo}")
    public void poInsert(PrisonOfficerVO vo);

    @Update("update prison_officer set ")
    public void poUpdate(PrisonOfficerVO vo);

    @Delete("delete from prison_officer where po_no=#{po_no}")
    public int poDelete(int po_no)

    // 수감자 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from prisoner")
    public List<JailerVO vo> jailerListAjax();

    @Insert("insert into prisoner(name, age, sex, prison_area, room_number, crime_classification, before, photo) " +
            "values(#{name}, #{age}, #{prison_area}, #{room_number}, #{crime_classification}, #{before}, #{photo}")
    public void jailerInsert(JailerVO vo);

    @Update("update prisoner set prison_area=#{prison_area}, room_number={room_number} where " +
            "prison_number=#{prison_number}")
    public void jailerUpdate(JailerVO vo);

    @Delete("delete from prisoner where prison_number=#{prison_number}")
    public int jailerDelete(int prison_number)

    // 여기까지
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

    // 특별관리인원 정보 (CRUD1)----------------------------------------------------------------------------------------
    @Select()

    @Insert()

    @Update()

    @Delete()

    public List<DrugManagementVO> DrugManagementVOAjax();// 바디 부분이 없다   boardDelAjax
	
	
	public List<CollectiveHistoryVO> CollectiveHistoryVOAjax();// 바디 부분이 없다   boardDelAjax
}