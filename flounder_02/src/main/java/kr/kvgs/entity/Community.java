package kr.kvgs.entity;

import java.util.Date;
import lombok.Data;

@Data
public class Community {
	private String 	c_id;
	private String 	title;
	private Date 	c_date;
	private String 	m_name;
	private String 	img_path;
	private String 	c_text;
	private String 	m_email;
}
