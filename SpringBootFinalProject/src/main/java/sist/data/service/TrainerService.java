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

	@Override
	public List<TrainerDto> TrainerMuList() {
		// TODO Auto-generated method stub
		return mapperInter.TrainerMuList();
	}

	@Override
	public TrainerDto getData(String trainer_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(trainer_num);
	}

	@Override
	public String getMNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getMNum(mem_num);
	}

	@Override
	public String getName(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getName(mem_num);
	}

	@Override
	public String getCareer(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getCareer(mem_num);
	}

	@Override
	public String getLoc(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getLoc(mem_num);
	}

	@Override
	public String getContent(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getContent(mem_num);
	}

	@Override
	public String getDate(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDate(mem_num);
	}

	@Override
	public String getPhoto(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getPhoto(mem_num);
	}

	@Override
	public TrainerDto getDataByMNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByMNum(mem_num);
	}

	@Override
	public String getNumByTName(String trainer_name) {
		// TODO Auto-generated method stub
		return mapperInter.getNumByTName(trainer_name);
	}

	
	
}
