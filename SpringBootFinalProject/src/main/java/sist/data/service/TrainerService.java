package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.TrainerDto;
import sist.data.mapper.TrainerServiceMapperInter;

@Service
public class TrainerService implements TrainerServiceInter {
	
	@Autowired
	TrainerServiceMapperInter mapperInter;

	@Override
	public void insertTrainer(TrainerDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertTrainer(dto);
		
	}

	@Override
	public List<TrainerDto> TrainerList() {
		// TODO Auto-generated method stub
		return mapperInter.TrainerList();
	}

	@Override
	public String getMemNum(String trainer_num) {
		// TODO Auto-generated method stub
		return mapperInter.getMemNum(trainer_num);
	}


}
