package sist.data.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import sist.data.dto.PartnerprofileDto;
import sist.data.mapper.PartnerprofileMapperInter;

@Service
public class PartnerprofileService implements PartnerprofileServiceInter {

	@Autowired
	PartnerprofileMapperInter mapperInter;





	@Override
	public PartnerprofileDto getData(String partnerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(partnerprof_num);
	}



	@Override
	public void insertPartnerProf(PartnerprofileDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertPartnerProf(dto);
	}



	@Override
	public List<PartnerprofileDto> getAllList() {
		// TODO Auto-generated method stub
		return mapperInter.getAllList();
	}



	@Override
	public List<PartnerprofileDto> getSList(String partnerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.getSList(partnerprof_num);
	}



	@Override
	public PartnerprofileDto getDataByPNum(String partner_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByPNum(partner_num);
	}


}