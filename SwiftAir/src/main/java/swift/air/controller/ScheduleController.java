package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;


//������ �׽�Ʈ�� ScheduleController
@Controller
@Slf4j
public class ScheduleController {
	@RequestMapping(value = "/schedule/add")
	public String scheduleAdd() {
		log.info("[/scheduleAdd] ������ ��û : ScheduleController Ŭ������ scheduleAdd() �޼ҵ� ȣ��");
		return "schedule/schedule_add";
	}
	
	@RequestMapping(value = "/schedule/modify")
	public String scheduleModify() {
		log.info("[/scheduleModify] ������ ��û : ScheduleController Ŭ������ scheduleModify() �޼ҵ� ȣ��");
		return "schedule/schedule_modify";
	}
	
	@RequestMapping(value = "/schedule/list")
	public String scheduleList() {
		log.info("[/scheduleList] ������ ��û : ScheduleController Ŭ������ scheduleList() �޼ҵ� ȣ��");
		return "schedule/schedule_list";
	}	
}