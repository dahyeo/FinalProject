package sist.data.service;

import java.util.List;

import sist.data.dto.TrainerDto;

public interface TrainerServiceInter {

	//insert
	public void insertTrainer(TrainerDto dto);

	//list
	public List<TrainerDto> TrainerList();
	
	//trainer_num에 따른 mem_num
	public String getMemNum(String trainer_num);
	
	//trainer_name에 따른 trainer_num
	public String getTrainerNumByName(String trainer_name);
}
