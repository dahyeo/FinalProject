package sist.data.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public void insertMember(MemberDto dto);
	//DB에 없는 id인지 체크
	public int getSearchId(String mem_id);
	//id에 따른 name 반환
	public String getName(String mem_id); 
	//parameter가 2개 이상이면 map 또는 Hashmap
	//key값은 무조건 String / 여기서 보낼 id,password도 String
	public int getIdPassCheck(Map<String, String> map); 
	//세션에 저장된 id를 통해 dto 받아오기
	public MemberDto getDataById(String mem_id);
	//회원 탈퇴
	public void deleteMember(String mem_num);
	//num에 해당하는 data
	public MemberDto getDataByNum(String mem_num);
	//정보 수정
	public void updateMember(MemberDto dto);
}
