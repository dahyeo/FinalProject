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


	@Override
	public PartnerDto getData(String partner_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(partner_num);
	}


	@Override
	public String getMNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getMNum(mem_num);
	}

	@Override
	public String getName(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getName(mem_num);
	}

	@Override
	public String getGender(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getGender(mem_num);
	}


	@Override
	public String getDate(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDate(mem_num);
	}

	@Override
	public String getTime(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getTime(mem_num);
	}



	@Override
	public String getExp(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getExp(mem_num);
	}

	@Override
	public PartnerDto getDataByMNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByMNum(mem_num);
	}

	@Override
	public List<PartnerDto> PartnerMuList() {
		// TODO Auto-generated method stub
		return mapperInter.PartnerMuList();
	}

	

	

	



}