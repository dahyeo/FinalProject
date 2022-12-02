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
	
	//trainer_num에 따른 mem_num
	public String getMemNum(String trainer_num);
	
	//trainer_name에 따른 trainer_num
	public String getTrainerNumByName(String trainer_name);

}