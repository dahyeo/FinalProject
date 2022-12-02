package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import sist.data.dto.PartnerDto;
import sist.data.dto.PartnerprofileDto;



@Mapper
public interface PartnerprofileMapperInter {
	


 //디테일 클릭전 num	
 public PartnerprofileDto getData(String partnerprof_num);
 
    


 //파트너 인서트
 public void insertPartnerProf(PartnerprofileDto dto);	
 
 //파트넘값 전체출력
 public List<PartnerprofileDto> getAllList();
 
 //번호에 따라 출력
 public List<PartnerprofileDto> getSList(String partnerprof_num);

 
   
}