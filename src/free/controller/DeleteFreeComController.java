package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import free.service.FreeComServiceImpl;
import free.service.IFreeComService;

public class DeleteFreeComController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int fcomNo = Integer.parseInt(req.getParameter("fcomNo"));
		
		IFreeComService freeComService = FreeComServiceImpl.getinstance();
		
		int cnt = freeComService.removeFreeCom(fcomNo);
		
String msg = "";
		
		if(cnt > 0 ) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		
		resp.sendRedirect(req.getContextPath() + "/free/detail.do");
	}
	
}
