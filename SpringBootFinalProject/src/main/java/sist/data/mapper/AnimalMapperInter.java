package sist.data.mapper;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.AnimalDto;

@Mapper
public interface AnimalMapperInter {

	public void insertAnimal(AnimalDto dto);
	//mem_num에 따른 getData
	public AnimalDto getDataByMemNum(String mem_num);
}
