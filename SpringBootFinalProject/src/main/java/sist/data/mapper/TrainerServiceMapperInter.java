package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.TrainerDto;

@Mapper
public interface TrainerServiceMapperInter {
	
	//insert
	public void insertTrainer(TrainerDto dto);
	
	//list
	public List<TrainerDto> TrainerList();

}