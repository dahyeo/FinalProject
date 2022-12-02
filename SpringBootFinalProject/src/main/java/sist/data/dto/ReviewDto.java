package sist.data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("review")
public class ReviewDto {
	
	private String rev_num;
	private String res_num;
	private String trainerprof_num;
	private String partnerprof_num;
	private String mem_num;
	private String ani_type;
	private String rev_content;
	private String rev_photo;
	private String rev_star;
	private String rev_tag;
	private Timestamp rev_date;
	private String trainer_num;
	private String partner_num;
	

}
