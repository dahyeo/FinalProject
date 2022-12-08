package sist.data.service;

import java.util.List;

import sist.data.dto.ReservationDto;
import sist.data.dto.ReviewDto;

public interface ReviewServiceInter {

	public void insertReview(ReviewDto dto);
	public List<ReviewDto> ReviewList();
	public ReviewDto getData(String rev_num);
}
