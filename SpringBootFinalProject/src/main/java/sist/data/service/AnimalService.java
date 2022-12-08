package sist.data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.AnimalDto;
import sist.data.mapper.AnimalMapperInter;

@Service
public class AnimalService implements AnimalServiceInter {

	@Autowired
	AnimalMapperInter mapperInter;
	
	@Override
	public void insertAnimal(AnimalDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertAnimal(dto);
	}

	@Override
	public AnimalDto getDataByMemNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByMemNum(mem_num);
	}
	


}
