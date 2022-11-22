package sist.data.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.MemberDto;
import sist.data.mapper.MemberMapperInter;

@Service
public class MemberService implements MemberServiceInter {

	@Autowired
	MemberMapperInter mapperInter;
	
	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertMember(dto);
	}

	@Override
	public int getSearchId(String mem_id) {
		// TODO Auto-generated method stub
		return mapperInter.getSearchId(mem_id);
	}

	@Override
	public String getName(String mem_id) {
		// TODO Auto-generated method stub
		return mapperInter.getName(mem_id);
	}

	@Override
	public int getIdPassCheck(String mem_id, String mem_pass) {
		// TODO Auto-generated method stub
		Map<String, String> map=new HashMap<>();
		map.put("mem_id", mem_id);
		map.put("mem_pass", mem_pass);
		
		return mapperInter.getIdPassCheck(map);
	}

	@Override
	public MemberDto getDataById(String mem_id) {
		// TODO Auto-generated method stub
		return mapperInter.getDataById(mem_id);
	}

	@Override
	public void deleteMember(String mem_num) {
		// TODO Auto-generated method stub
		mapperInter.deleteMember(mem_num);
	}

	@Override
	public MemberDto getDataByNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByNum(mem_num);
	}

	@Override
	public void updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		mapperInter.updateMember(dto);
	}

}
