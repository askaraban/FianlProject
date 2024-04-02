package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

//��(Model) ����� �����ϱ� ���� Ŭ���� - ��û ó�� Ŭ���� : Controller Ŭ����
//@Controller : ��û ó�� Ŭ����(Controller Ŭ����)�� Spring Bean���� ����ϱ� ���� ������̼�
// => Ŭ������ �̸��� Spring Bean�� �����ϱ� ���� �ĺ���(beanName)�� ��� - Ŭ���� �̸��� ù���ڴ� �ҹ��ڷ� ��ȯ
// => value �Ӽ��� ����Ͽ� Spring Bean�� �ĺ��� ���� ����
//@Controller ������̼��� ����ϸ� Controller �������̽��� ��ӹ��� �ʾƵ� Controller Ŭ������ ���
// => �޼ҵ忡 @RequestMapping ������̼��� ����Ͽ� ��û ó�� �޼ҵ�� ó���ǵ��� �ۼ�
// => @RequestMapping ������̼��� ����� ��û ó�� �޼ҵ带 ������ �ۼ� ����
@Controller
@Slf4j
public class HelloController {
	//��û ó�� �޼ҵ�� Front Controller���� �ݵ�� ���̸�(ViewName) ����
	// => Front Controller�� �������� ���̸��� �̿��Ͽ� ViewResolver ��ü�� ���� ó���ǵ��� ��ȯ
	//1.��û ó�� �޼ҵ��� ��ȯ���� [void]�� �ۼ��� ��� @RequestMapping ������̼��� value �Ӽ����� ���̸����� ����
	//2.��û ó�� �޼ҵ��� ��ȯ���� [String]�� �ۼ��� ��� �޼ҵ��� ��ȯ��(���ڿ�)�� ���̸����� ����
	//3.��û ó�� �޼ҵ��� ��ȯ���� [ModelAndView]�� �ۼ��� ��� �޼ҵ��� ��ȯ��(ModelAndView ��ü)�� ���̸��� �����Ͽ� ����
	
	//@RequestMapping : Controller Ŭ������ �޼ҵ带 Ŭ���̾�Ʈ�� ��û�� ó�� �ϱ� ���� ��û
	//ó�� �޼ҵ�� �����ϱ� ���� ������̼�
	// => Ŭ���̾�Ʈ�� ��� ��û���(Method - GET, POST, PUT, PATCH, DELETE ��)�� ����
	//��û�� ��� ȣ��Ǵ� ��û ó�� �޼ҵ带 �ۼ��� �� ���
	// => Ŭ���̾�Ʈ�� ��û����� �����Ͽ� ��û ó�� �޼ҵ带 ȣ���ؾߵ� ��� @GetMapping,
	//@PostMapping, @PutMapping, @PatchMapping, @DeleteMapping ���� ������̼��� ����Ͽ� ����
	//value �Ӽ� : Ŭ���̾�Ʈ�� ��û����(Command - URL �ּ�)�� �Ӽ������� ����
	// => value �Ӽ��ܿ� �ٸ� �Ӽ��� ���� ��� �Ӽ����� ���� ����
	// => ��û ó�� �޼ҵ��� value �Ӽ����� �ߺ��� ��� WAS ���α׷� ����� ���� �߻�
	@RequestMapping(value = "/hello")
	public String helloViewName() {//��û ó�� �޼ҵ�
		log.info("[/helloViewName] ������ ��û : HelloController Ŭ������ helloViewName() �޼ҵ� ȣ��");
		return "mypage/mypage";
	}	
	
	@RequestMapping("/faq")
	public ModelAndView helloModelAndView() {//��û ó�� �޼ҵ�
		log.info("[/helloMav] ������ ��û : HelloController Ŭ������ helloModelAndView() �޼ҵ� ȣ��");
		
		//ModelAndView ��ü : ��û�� ��� ó������� ���̸�(ViewName)�� �����ϱ� ���� ��ü
		/*
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("hello");//Setter �޼ҵ带 ȣ���Ͽ� ���̸�(ViewName) ����
		*/

		//ModelAndView Ŭ������ �����ڷ� ���̸�(ViewName) �ʱ�ȭ
		ModelAndView modelAndView=new ModelAndView("faq/faq_list");
		
		return modelAndView;
	}
}