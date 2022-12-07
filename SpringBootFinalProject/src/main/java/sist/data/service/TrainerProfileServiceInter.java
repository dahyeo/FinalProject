package sist.data.service;

import java.util.List;


import sist.data.dto.TrainerprofileDto;

public interface TrainerProfileServiceInter {

	//디테일 클릭전 num	
	public TrainerprofileDto getData(String trainerprof_num);
		 
		    


	//파트너 인서트
    public void insertTrainerProf(TrainerprofileDto dto);	
		 
    //파트넘값 전체출력
    public List<TrainerprofileDto> getAllList();
		 
    //번호에 따라 출력
    public List<TrainerprofileDto> getSList(String trainerprof_num);
    
  //트레이너번호에 따른 dto반환
  	 public TrainerprofileDto getDataByTnum(String trainer_num);
}
