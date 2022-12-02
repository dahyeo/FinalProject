package sist.data.service;

import sist.data.dto.AnimalDto;

public interface AnimalServiceInter {

	public void insertAnimal(AnimalDto dto);
	public AnimalDto getDataByMemNum(String mem_num);
}
