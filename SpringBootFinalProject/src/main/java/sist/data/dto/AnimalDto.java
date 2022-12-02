package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("animal")
public class AnimalDto {
	
	private String ani_num;
	private String mem_num;
	private String ani_photo;
	private String ani_name;
	private String ani_gender;
	private String ani_type;
}
