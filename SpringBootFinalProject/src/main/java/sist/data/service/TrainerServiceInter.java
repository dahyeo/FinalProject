package sist.data.service;

import java.util.List;

import sist.data.dto.TrainerDto;

public interface TrainerServiceInter {

	//insert
	public void insertTrainer(TrainerDto dto);
	
	//list
	public List<TrainerDto> TrainerList();
	
	public List<TrainerDto> TrainerMuList();
	
	public TrainerDto getData(String trainer_num);
	
	//trainer_num에 따른 mem_num
	public String getMemNum(String trainer_num);
	

	//트레이너 memnum 반환
	public String getMNum(String mem_num);
	public String getName(String mem_num);
	public String getCareer(String mem_num);
	public String getLoc(String mem_num);
	public String getContent(String mem_num);
	public String getDate(String mem_num);
	public String getPhoto(String mem_num);
	
	
	//getDataByMem_num
	public TrainerDto getDataByMNum(String mem_num);
	
	//trainer_name에 따른 trainer_num
	public String getTrainerNumByName(String trainer_name);
}
