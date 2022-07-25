package team.shop.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.shop.DAO.mtmDAO;
import team.shop.DTO.mtmVO;

public class AdminMtmListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/AdminMtm/AdminMtmList.jsp";
		
		
		 
		 mtmDAO mtmDao = mtmDAO.getInstance(); 
		 ArrayList<mtmVO> mtmVo = mtmDao.mtmList();
		
		 request.setAttribute("mtm", mtmVo);
		 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		

	}

}
