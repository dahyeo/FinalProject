package sist.data.dto;


import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("answer")
public class AnswerDto {
	private String ans_num;
	private int que_num;
	private String trainer_num;
	private String trainer_name;
	private String ans_content;
	private Timestamp ans_date;
}
