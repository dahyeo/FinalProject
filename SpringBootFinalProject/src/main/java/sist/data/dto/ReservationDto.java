package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("reservation")
public class ReservationDto {

	public String res_num;
	public String mem_num;
	public String trainerprof_num;
	public String partnerprof_num;
	public String ani_num;
	public String res_visit;
	public String res_norm_date;
	public String res_rout_date;
	public String res_rout_start;
	public String res_time;
	public String res_pub_pass;
	public String res_priv_pass;
	public String res_key_loc;
	public String res_contact_method;
}
