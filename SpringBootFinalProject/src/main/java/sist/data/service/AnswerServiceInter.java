package sist.data.service;

import java.util.List;

import sist.data.dto.AnswerDto;

public interface AnswerServiceInter {
	public void insertAnswer(AnswerDto dto);
	public AnswerDto getAnswerByQueNum(int que_num);
	public int getCountOfAnswer(int que_num);
	public List<AnswerDto> getAllAnswer(int que_num);
	public AnswerDto getTrainer(int que_num);
}
