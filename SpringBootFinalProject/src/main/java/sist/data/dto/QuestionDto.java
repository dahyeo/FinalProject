package sist.data.dto;


import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("question")
public class QuestionDto {
	private int que_num;
	private String que_category;
	private String mem_name;
	private String que_subject;
	private String que_content;
	private Timestamp que_date;
	
	//답변갯수 
		private int acount;

}
