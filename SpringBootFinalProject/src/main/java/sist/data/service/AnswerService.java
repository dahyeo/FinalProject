package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.AnswerDto;
import sist.data.mapper.AnswerMapperInter;

@Service
public class AnswerService implements AnswerServiceInter {

	@Autowired
	AnswerMapperInter mapperInter;
	
	@Override
	public void insertAnswer(AnswerDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertAnswer(dto);
	}


	@Override
	public int getCountOfAnswer(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getCountOfAnswer(que_num);
	}


	@Override
	public AnswerDto getAnswerByQueNum(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getAnswerByQueNum(que_num);
	}


	@Override
	public List<AnswerDto> getAllAnswer(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getAllAnswer(que_num);
	}


	@Override
	public AnswerDto getTrainer(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getTrainer(que_num);
	}


	@Override
	public int getCountOfAnswerByTNum(String trainer_num) {
		// TODO Auto-generated method stub
		return mapperInter.getCountOfAnswerByTNum(trainer_num);
	}


	
}
