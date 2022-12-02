package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("partner")
public class PartnerDto {

	private String partner_num;
	private String mem_num;
	private String partner_name;
	private String partner_gender;
	private String partner_email;
	private String partner_birth;
	private String partner_phone;
	private String partner_addr;
	private String partner_smoking;
	private String partner_job;
	private String partner_date;
	private String partner_time;
	private String partner_exp_cat;
	private String partner_exp_dog;
	private String partner_exp;
	
}
