package team.shop.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team.shop.DAO.AdminMtmDAO;
import team.shop.DAO.clientDAO;
import team.shop.DTO.adminVO;
import team.shop.DTO.clientVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/member/login_fail.jsp";

		String id2 = request.getParameter("id");
		String pw2 = request.getParameter("pw");
		String id3 = request.getParameter("admin_id");
		String pw3 = request.getParameter("admin_pw");
		
		HttpSession session=request.getSession();
		
		//client
		clientDAO cDao = clientDAO.getInstance();
		clientVO cVo = cDao.getUser(id2);
		
		//admin
		AdminMtmDAO aDao = AdminMtmDAO.getInstance();
		adminVO aVo = aDao.getAdmin(id3);
	
		
		if(cVo != null){
			if(cVo.getPw().equals(pw2)){
				session.setAttribute("loginUser", cVo);
				url="ShopServlet?command=index";
			}
			else if(aVo.getAdmin_pw().equals(pw3)) {
				session.setAttribute("loginAdmin", aVo);
				url="ShopServlet?command=index";
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
