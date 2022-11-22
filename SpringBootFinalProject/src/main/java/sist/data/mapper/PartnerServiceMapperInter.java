package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.PartnerDto;

@Mapper
public interface PartnerServiceMapperInter {
	
	//insert
	public void insertPartner(PartnerDto dto);
	
	//list
	public List<PartnerDto> PartnerList();

}