package shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.service.MemberService;
import shop.vo.MemberVO;

public class IdChkController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("uid");	
		MemberService service = MemberService.getInstance();
		MemberVO check = service.memberSearch(id);
		if(check!=null) {
			request.setAttribute("iderror", "��� �Ұ���");
		}else {
			request.setAttribute("iderror", "��� ����");			
		}
		request.setAttribute("member", check);
		request.setAttribute("id", id);

		HttpUtil.forward(request, response, "/join.jsp");	
	}
}
