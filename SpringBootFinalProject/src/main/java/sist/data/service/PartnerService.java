package sist.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.PartnerDto;
import sist.data.mapper.PartnerServiceMapperInter;

@Service
public class PartnerService implements PartnerServiceInter {

	@Autowired
	PartnerServiceMapperInter mapperInter;
	
	@Override
	public void insertPartner(PartnerDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertPartner(dto);
	}

	@Override
	public List<PartnerDto> PartnerList() {
		// TODO Auto-generated method stub
		return mapperInter.PartnerList();
	}

}