package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

//������ �׽�Ʈ�� EventController
@Controller
@Slf4j
public class EventController {
	@RequestMapping(value = "/event/add")
	public String eventAdd() {
		log.info("[/eventAdd] ������ ��û : EventController Ŭ������ eventAdd() �޼ҵ� ȣ��");
		return "event/event_add";
	}

	@RequestMapping(value = "/event/modify")
	public String eventModify() {
		log.info("[/eventModify] ������ ��û : EventController Ŭ������ eventModify() �޼ҵ� ȣ��");
		return "event/event_modify";
	}
	
	@RequestMapping(value = "/event/main")
	public String eventMain() {
		log.info("[/eventMain] ������ ��û : EventController Ŭ������eventMain() �޼ҵ� ȣ��");
		return "event/event_main";
	}
	
	@RequestMapping(value = "/event/detail")
	public String eventDetail() {
		log.info("[/eventDetail] ������ ��û : EventController Ŭ������ eventDetail() �޼ҵ� ȣ��");
		return "event/event_detail";
	}
	
	@RequestMapping(value = "/event/list")
	public String eventList() {
		log.info("[/eventList] ������ ��û : EventController Ŭ������ eventList() �޼ҵ� ȣ��");
		return "event/event_list";
	}
}
	
	