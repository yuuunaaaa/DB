package com.multi.mongoDB2;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 싱글톤 + 컨트롤러 등록
public class MemoController {
	@Autowired
	MemoDAO dao;

	@RequestMapping("list.memo")
	public void list(Model model) {
		// dao의 list()해서 결과 받아오면 됨.
		List<MemoVO> list = dao.list();
		System.out.println(list.size());
		// 결과 받아온 것을 model의 속성을 지정해서 views까지 검색결과를 보내자!
		model.addAttribute("list", list);
	}
}