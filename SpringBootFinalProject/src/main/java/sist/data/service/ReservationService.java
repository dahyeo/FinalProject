package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.ReservationDto;
import sist.data.mapper.ReservationMapperInter;

@Service
public class ReservationService implements ReservationServiceInter {

	@Autowired
	ReservationMapperInter mapperInter;

	@Override
	public void insertReservation(ReservationDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertReservation(dto);
	}

	@Override
	public ReservationDto getData(String res_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(res_num);
	}

	@Override
	public void deleteReservation(String res_num) {
		// TODO Auto-generated method stub
		mapperInter.deleteReservation(res_num);
	}

	@Override
	public void updateReservation(ReservationDto dto) {
		// TODO Auto-generated method stub
		mapperInter.updateReservation(dto);
	}

	@Override
	public ReservationDto getDataByMNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByMNum(mem_num);
	}

	@Override
	public List<ReservationDto> getAllDatas(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getAllDatas(mem_num);
	}
}
