
package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.AnswerDto;

@Mapper
public interface AnswerMapperInter {
	public void insertAnswer(AnswerDto dto);
	public AnswerDto getAnswerByQueNum(int que_num);
	public int getCountOfAnswer(int que_num);
	public List<AnswerDto> getAllAnswer(int que_num);
	public AnswerDto getTrainer(int que_num);
}
