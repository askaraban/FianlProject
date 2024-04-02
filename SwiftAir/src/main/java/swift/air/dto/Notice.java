package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
 �̸�             ��?       ����             
-------------- -------- -------------- 
NOTICE_ID      NOT NULL NUMBER         
NOTICE_TITLE            VARCHAR2(50)   
NOTICE_CONTENT          VARCHAR2(1000) 
NOTICE_DATE             DATE     
*/

@Data
@Builder
public class Notice {
	private int noticeId;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
}
