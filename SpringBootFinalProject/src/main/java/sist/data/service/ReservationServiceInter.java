package sist.data.service;

import java.util.List;

import sist.data.dto.ReservationDto;

public interface ReservationServiceInter {

	public void insertReservation(ReservationDto dto);
	public ReservationDto getData(String res_num);
	public void deleteReservation(String res_num);
	public void updateReservation(ReservationDto dto);
	public ReservationDto getDataByMNum(String mem_num);
	public List<ReservationDto> getAllDatas(String mem_num);
}
