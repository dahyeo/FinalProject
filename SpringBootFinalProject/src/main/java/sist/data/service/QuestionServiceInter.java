package sist.data.service;

import java.util.List;

import sist.data.dto.QuestionDto;

public interface QuestionServiceInter {
	public void insertQuestion(QuestionDto dto);
	public void deleteQuestion(int que_num);
	public int getCountOfQuestion(String searchcolumn, String searchword);
	public List<QuestionDto> getListOfQuestion(String searchcolumn, String searchword);
	public QuestionDto getDataOfQuestionByNum(int que_num);
	public String getNameByNum(int que_num);

}
