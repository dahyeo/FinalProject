package sist.data.service;

import java.util.List;

import sist.data.dto.PartnerDto;

public interface PartnerServiceInter {

	//insert
	public void insertPartner(PartnerDto dto);
		
	//list
	public List<PartnerDto> PartnerList();
}
