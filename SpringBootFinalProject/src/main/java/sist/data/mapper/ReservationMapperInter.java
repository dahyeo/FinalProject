package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.ReservationDto;

@Mapper
public interface ReservationMapperInter {

	public void insertReservation(ReservationDto dto);
	public ReservationDto getData(String res_num);
	public void deleteReservation(String res_num);
	public void updateReservation(ReservationDto dto);
	//mem_num에 따른 데이터
	public ReservationDto getDataByMNum(String mem_num);
	//mem_num에 따른 리스트 전체 출력(내가 예약한 현황 출력)
	public List<ReservationDto> getAllDatas(String mem_num);
	//partnerprof_num에 따른 데이터
	public List<ReservationDto> getDataByPFNum(String partnerprof_num);
	//trainerprof_num에 따른 데이터
	public List<ReservationDto> getDataByTFNum(String trainerprof_num);
}
