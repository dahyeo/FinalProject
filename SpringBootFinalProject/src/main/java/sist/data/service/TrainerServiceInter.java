package sist.data.service;

import java.util.List;

import sist.data.dto.TrainerDto;

public interface TrainerServiceInter {

	//insert
	public void insertTrainer(TrainerDto dto);

	//list
	public List<TrainerDto> TrainerList();
}
