package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.MemberDto;
import sist.data.dto.PartnerDto;
import sist.data.dto.PartnerprofileDto;

@Mapper
public interface PartnerServiceMapperInter {
	
	//insert
	public void insertPartner(PartnerDto dto);
	
	//list
	public List<PartnerDto> PartnerList();
	
    public List<PartnerDto> PartnerMuList();
	
	public PartnerDto getData(String partner_num); 
	

		   
	 //파트너 memnum 반환
	 public String getMNum(String mem_num);
	 public String getName(String mem_num);
	 public String getGender(String mem_num);
	 public String getDate(String mem_num);
	 public String getTime(String mem_num);   
     public String getExp(String mem_num);
     
     //getDataByMem_num
     public PartnerDto getDataByMNum(String mem_num);

	   

}
