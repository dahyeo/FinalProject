package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("partnerprofile")
public class PartnerprofileDto {
	
	private String partnerprof_num;
	private String partner_num;
	private String partner_name;
	private String partner_gender;
	private String partner_date;
	private String partner_time;
	private String partner_exp;
	private String partnerprof_subject;
	private String partnerprof_star;
	private int partnerprof_price;

}