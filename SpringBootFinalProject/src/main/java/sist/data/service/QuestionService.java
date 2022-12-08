package sist.data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.QuestionDto;
import sist.data.mapper.QuestionMapperInter;

@Service
public class QuestionService implements QuestionServiceInter {

	@Autowired
	QuestionMapperInter mapperInter;
	
	@Override
	public void insertQuestion(QuestionDto dto) {
		// TODO Auto-generated method stub	
		mapperInter.insertQuestion(dto);

	}

	@Override
	public void deleteQuestion(int que_num) {
		// TODO Auto-generated method stub
		mapperInter.deleteQuestion(que_num);
	}

	@Override
	public int getCountOfQuestion(String searchcolumn, String searchword) {
		
		Map<String, String> map = new HashMap<>();
		map.put("searchcolumn", searchcolumn);
		map.put("searchword", searchword);
		
		return mapperInter.getCountOfQuestion(map);
	}

	@Override
	public List<QuestionDto> getListOfQuestion(String searchcolumn, String searchword) {
		Map<String, String> map = new HashMap<>();
		map.put("searchcolumn", searchcolumn);
		map.put("searchword", searchword);
		
		return mapperInter.getListOfQuestion(map);
	}

	@Override
	public QuestionDto getDataOfQuestionByNum(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataOfQuestionByNum(que_num);
	}

	@Override
	public String getNameByNum(int que_num) {
		// TODO Auto-generated method stub
		return mapperInter.getNameByNum(que_num);
	}
}