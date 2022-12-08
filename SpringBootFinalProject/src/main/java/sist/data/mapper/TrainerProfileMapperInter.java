package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.PartnerprofileDto;
import sist.data.dto.TrainerprofileDto;

@Mapper
public interface TrainerProfileMapperInter {
	
	 //디테일 클릭전 num	
	 public TrainerprofileDto getData(String trainerprof_num);
	 
	    


	 //파트너 인서트
	 public void insertTrainerProf(TrainerprofileDto dto);	
	 
	 //파트넘값 전체출력
	 public List<TrainerprofileDto> getAllList();
	 
	 //번호에 따라 출력
	 public List<TrainerprofileDto> getSList(String trainerprof_num);
	 
	 //trainer_num에 따른 정보
	 public TrainerprofileDto getDataByTNum(String trainer_num);

}