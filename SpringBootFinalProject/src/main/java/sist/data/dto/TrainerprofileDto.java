package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("trainerprofile")
public class TrainerprofileDto {

	private String trainerprof_num;
	private String trainer_num;
	private String trainer_name;
	private String trainer_career;
	private String trainer_loc;
	private String trainer_content;
	private String trainer_date;
	private String trainer_photo;
	private String trainerprof_subject;
	private String trainerprof_star;
	private String trainerprof_field;
	private String trainerprof_price;
	
	
}
