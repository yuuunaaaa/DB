package 화면DB연결;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class NoticeUI {
	public static void open() {

		JFrame f = new JFrame();

		JLabel l1 = new JLabel("   게시판       ");
		JLabel l2 = new JLabel("번  호");
		JLabel l3 = new JLabel("제  목");
		JLabel l4 = new JLabel("내  용");
		JLabel l5 = new JLabel("작성자");

		JTextField t1 = new JTextField(10);
		JTextField t2 = new JTextField(10);
		JTextField t3 = new JTextField(10);
		JTextField t4 = new JTextField(10);

		JButton b1 = new JButton("등록");
		JButton b2 = new JButton("제목");
		JButton b3 = new JButton("내용");

		FlowLayout flow = new FlowLayout();
		Font font = new Font("D2Coding", Font.BOLD, 20);
		Font font2 = new Font("D2Coding", Font.BOLD, 50);
		f.setSize(300, 300);
		f.setLayout(flow);

		f.add(l1);
		f.add(l2);
		f.add(l2);
		f.add(t1);
		f.add(l3);
		f.add(t2);
		f.add(l4);
		f.add(t3);
		f.add(l5);
		f.add(t4);
		f.add(b1);
		f.add(b2);
		f.add(b3);

		l1.setFont(font2);
		l2.setFont(font);
		l3.setFont(font);
		l4.setFont(font);
		l5.setFont(font);
		t1.setFont(font);
		t2.setFont(font);
		t3.setFont(font);
		t4.setFont(font);
		
		f.getContentPane().setBackground(Color.pink);
		b1.setBackground(Color.gray);
		b2.setBackground(Color.gray);
		b3.setBackground(Color.gray);
		b1.setForeground(Color.white);
		b2.setForeground(Color.white);
		b3.setForeground(Color.white);
		
		f.setLocation(600, 300);
		f.setVisible(true);
	}
}
