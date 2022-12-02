package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import sist.data.dto.TrainerprofileDto;
import sist.data.mapper.TrainerProfileMapperInter;

@Service
public class TrainerProfileService implements TrainerProfileServiceInter {

	@Autowired
	TrainerProfileMapperInter mapperInter;

	@Override
	public TrainerprofileDto getData(String trainerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(trainerprof_num);
	}

	@Override
	public void insertTrainerProf(TrainerprofileDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertTrainerProf(dto);
	}

	@Override
	public List<TrainerprofileDto> getAllList() {
		// TODO Auto-generated method stub
		return mapperInter.getAllList();
	}

	@Override
	public List<TrainerprofileDto> getSList(String trainerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.getSList(trainerprof_num);
	}





	
	
	

}
