package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.ReviewDto;
import sist.data.dto.TrainerDto;

@Mapper
public interface ReviewMapperInter {

	public void insertReview(ReviewDto dto);
	public List<ReviewDto> ReviewList();
	public ReviewDto getData(String rev_num);
	
}
