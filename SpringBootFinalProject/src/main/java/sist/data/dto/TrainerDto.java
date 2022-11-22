package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("trainer")
public class TrainerDto {
	
	private String trainer_num;
	private String trainer_name;
	private String trainer_gender;
	private String trainer_birth;
	private String trainer_phone;
	private String trainer_addr;
	private String trainer_smoking;
	private String trainer_photo;
	private String trainer_date;
	private String trainer_loc;
	private String trainer_certificate;
	private String trainer_career;
	private String trainer_content;
	
	

}