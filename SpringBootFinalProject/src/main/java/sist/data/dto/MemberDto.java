package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
public class MemberDto {

	public String mem_num;
	public String mem_id;
	public String mem_pass;
	public String mem_name;
	public String mem_email;
	public String mem_birth;
	public String mem_phone;
	public String mem_addr;
	public int mem_point;
	public int status;
}
