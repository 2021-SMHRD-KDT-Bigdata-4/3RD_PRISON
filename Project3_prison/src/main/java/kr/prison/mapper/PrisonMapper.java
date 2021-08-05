package kr.prison.mapper;

import java.util.List;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

import kr.prison.domain.AnomalyDetectionHistoryVO;
import kr.prison.domain.CCTVVO;
import kr.prison.domain.CollectiveHistoryVO;
import kr.prison.domain.DrugManagementVO;
import kr.prison.domain.PatrolHistoryVO;
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
    public List<AnomalyDetectionHistoryVO> adhListAjax();

    @Insert("insert into anomaly_detection_history(anomalies, actual_anomalies, prison_officer_po_no) " +
            "values(#{anomalies}, #{actual_anomalies}, #{prison_officer_po_no})")
    public void adhInsert(AnomalyDetectionHistoryVO vo);

    @Update("update anomaly_detection_history set ")
    public void adhUpdate(AnomalyDetectionHistoryVO vo);

    @Delete("delete from anomaly_detection_history where abnormal_history_number=#{abnormal_history_number}")
    public int adhDelete(int abnormal_history_number);

    // 교정사고 발생내역 (CRUD)-----------------------------------------------------------------------------------------
    @Select("select * from collective_history")
    public List<CollectiveHistoryVO> chListAjax();   // 교정사고 내역 리스트 가져오기

//    @Insert("insert into CORRECTIVE_HISTORY(occuring_place, calssification, details, prisoner_prison_number) " +
//            "values(#{occuring_place, #{classification}, #{details}, #{prisoner_prison_number})")
//    public void chInsert(CollectiveHistoryVO vo);

    @Update("update collective_history set ")
    public void chUpdate(CollectiveHistoryVO vo);

    @Delete("delete from collective_history where calibration_accident_number=#{calibration_accident_number}")
    public int chDelete(int calibration_accident_number);

    // 교도관 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from prison_officer")
    public List<PrisonOfficerVO> poListAjax();

//    @Insert("insert into prison_officer(name, age, gender, rank, position, department, photo) " +
//            "values(#{name}, #{age}, #{gender}, #{rank), #{position}, #{department}, #{photo}")
//    public void poInsert(PrisonOfficerVO vo);

    @Update("update prison_officer set ")
    public void poUpdate(PrisonOfficerVO vo);

    @Delete("delete from prison_officer where po_no=#{po_no}")
    public int poDelete(int po_no);

    // 수감자 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from prisoner")
    public List<JailerVO> jailerListAjax();

    @Insert("insert into prisoner(name, age, sex, prison_area, room_number, crime_classification, before, photo) " +
            "values(#{name}, #{age}, #{prison_area}, #{room_number}, #{crime_classification}, #{before}, #{photo}")
    public void jailerInsert(JailerVO vo);

    @Update("update prisoner set prison_area=#{prison_area}, room_number={room_number} where " +
            "prison_number=#{prison_number}")
    public void jailerUpdate(JailerVO vo);

    @Delete("delete from prisoner where prison_number=#{prison_number}")
    public int jailerDelete(int prison_number);


    
    // 약물 복용 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from drug_management_history")
    public List<DrugManagementVO> dmListAjax();

    @Insert("insert into drug_management_history(drug_type, spec_drug, prisoner_prison_number) " +
            "values(#{drug_type}, #{spec_drug}, #{prisoner_prison_number}")
    public void dmInsert(DrugManagementVO vo);

    @Update("update drug_management_history set drug_type=#{drug_type}, spec_drug=#{spec_drug} " +
            "where dm_no=#{dm_no}")
    public void dmUpdate(DrugManagementVO vo);

    @Delete("delete drug_management_history where dm_no=#{dm_no}")
    public int dmDelete(int dm_no);

    // 특수 약물 복용 내역 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from spec_drug_history")
    public List<SpecDrugHistoryVO> sdhListAjax();

    @Insert("insert into spec_drug_history(taking_date, drug_management_history_dm_no) " +
            "values(#{taking_date}, #{drug_management_history_dm_no})")
    public void sdhInsert(SpecDrugHistoryVO vo);

    @Update("update spec_drug_history set " +
            "where th_no=#{th_no}")
    public void sdhUpdate(SpecDrugHistoryVO vo);

    @Delete("delete spec_drug_history where th_no=#{th_no}")
    public int sdhDelete(int th_no);

    // 특별관리인원 정보 (CRUD)----------------------------------------------------------------------------------------
    @Select("select * from special_management_personnel")
    public List<SpecialManagementJailerVO> smjListAjax();

    @Insert("insert into special_management_personnel(reason, management_grade, prisoner_prison_number) " +
            "values(#{reason}, #{management_grade}, #{prisoner_prison_number})")
    public void smjInsert(SpecialManagementJailerVO vo);

    @Update("update special_management_personnel set management_grade=#{management_grade} " +
            "where special_admin_number=#{special_admin_number}")
    public void smjUpdate(SpecialManagementJailerVO vo);

    @Delete("delete special_management_personnel where special_admin_number=#{special_admin_number}")
    public void smjDelete(int special_admin_number);

 
}