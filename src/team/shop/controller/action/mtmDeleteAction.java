package team.shop.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.shop.DAO.mtmDAO;

public class mtmDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/member/mypage_1_purchaseList.jsp";
		
		String mNum = request.getParameter("mNum");
		System.out.println("mtmDelete들어옴..."+mNum);
		mtmDAO mtmDao = mtmDAO.getInstance();
		mtmDao.mtmDelete(mNum);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		

	}

}
