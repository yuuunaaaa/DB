package 자바DB연결;

import java.util.Scanner;

public class 회원정보수정 {

	public static void main(String[] args) {
	
		//입력해보자.
		Scanner sc = new Scanner(System.in);
		System.out.println("수정할 id를 입력하세요.");
		
		String id = sc.next();
		String tel = sc.next();
		
		MemberDAO dao = new MemberDAO();
		dao.update(id, tel);
	}

}