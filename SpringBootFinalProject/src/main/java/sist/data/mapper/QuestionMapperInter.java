package sist.data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.QuestionDto;

@Mapper
public interface QuestionMapperInter {
	public void insertQuestion(QuestionDto dto);
	public void deleteQuestion(int que_num);
	public int getCountOfQuestion(Map<String, String> map);
	public List<QuestionDto> getListOfQuestion(Map<String, String> map);
	public QuestionDto getDataOfQuestionByNum(int que_num);
	public String getNameByNum(int que_num);
}
