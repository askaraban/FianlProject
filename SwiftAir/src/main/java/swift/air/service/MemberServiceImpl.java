package swift.air.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MemberDAO;
import swift.air.dto.Member;
import swift.air.util.RandomPasswd;



@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	@Autowired
	public JavaMailSender javaMailSender;
	
	@Override
	public void addMember(Member member) {
		String hashedPassword = BCrypt.hashpw(member.getMemberPswd(),BCrypt.gensalt());
		member.setMemberPswd(hashedPassword);
		memberDAO.insertMember(member);
		
	}
	

	@Override
	public Member loginAuth(Member member) {
		Member authMember = memberDAO.selectMember(member.getMemberId());
		return authMember;
	}

    
	
	@Override
	public int selectMemberId(String MemberId) {
		return memberDAO.selectMemberId(MemberId);
	}

	@Override
	public void findEmail(String memberKorName, String memberEmail) {
		String memberId = memberDAO.findEmail(memberKorName, memberEmail);
		if(memberId != null) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(memberEmail);
		message.setSubject(memberKorName+"���� ���̵� ã�� ����Դϴ�");
		message.setText(memberKorName+"���� ���̵�� " + memberId + "�Դϴ�");
		javaMailSender.send(message);

		}
		
	}

	@Override
	public void findPasswd(Member member) {
		String newPasswd = RandomPasswd.randomPasswd(10);
		member.setMemberPswd(newPasswd);
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(member.getMemberEmail());
		message.setSubject(member.getMemberId()+"���� �� ��й�ȣ�� �߱޵Ǿ����ϴ�.");
		message.setText(member.getMemberId()+"���� �� ��й�ȣ�� " + member.getMemberPswd() + "�Դϴ�");
		javaMailSender.send(message);
		String hashedPassword = BCrypt.hashpw(member.getMemberPswd(),BCrypt.gensalt());
		member.setMemberPswd(hashedPassword);
		memberDAO.findPasswd(member);
		
}

	

	

}