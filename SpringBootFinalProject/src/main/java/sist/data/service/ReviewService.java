package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.ReviewDto;
import sist.data.mapper.ReviewMapperInter;

@Service
public class ReviewService implements ReviewServiceInter {

	@Autowired
	ReviewMapperInter mapperInter;
	
	@Override
	public void insertReview(ReviewDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertReview(dto);
	}

	@Override
	public List<ReviewDto> ReviewList() {
		// TODO Auto-generated method stub
		return mapperInter.ReviewList();
	}

	@Override
	public ReviewDto getData(String rev_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(rev_num);
	}

}
