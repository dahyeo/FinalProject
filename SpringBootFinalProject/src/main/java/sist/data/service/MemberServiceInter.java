package sist.data.service;

import sist.data.dto.MemberDto;

public interface MemberServiceInter {

	public void insertMember(MemberDto dto);
	public int getSearchId(String mem_id);
	public String getName(String mem_id);
	public String getNum(String mem_id);
	public int getIdPassCheck(String mem_id, String mem_pass); 
	public MemberDto getDataById(String mem_id);
	public void deleteMember(String mem_num);
	public MemberDto getDataByNum(String mem_num);
	public void updateMember(MemberDto dto);
	public int getMaxNum();
	public void updateTrainerStatus(String mem_num);
	public void updatePetsitterStatus(String mem_num);
	public int getStatus(String mem_num);
	public String getMNumByMName(String mem_name);
}
