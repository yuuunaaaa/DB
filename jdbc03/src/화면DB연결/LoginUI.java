package 화면DB연결;

import javax.swing.JOptionPane;

import 자바DB연결.MemberDAO2;

public class LoginUI {
	public static void main(String[] args) {
		String id = JOptionPane.showInputDialog("아이디 입력");
		String pw = JOptionPane.showInputDialog("패스워드 입력");
		
		MemberDAO2 dao = new MemberDAO2();
		MemberVO bag = new MemberVO();
		bag.setId(id);
		bag.setPw(pw);
		
		int result = dao.login(bag);
		if (result == 1) {
			JOptionPane.showMessageDialog(null, "로그인 성공");
			NoticeUI notice = new NoticeUI();
			notice.open();
		} else {
			JOptionPane.showMessageDialog(null, "로그인 실패");
			StartUI start = new StartUI();
			start.open();
		}
	}
}
