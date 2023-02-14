package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import free.service.FreeComServiceImpl;
import free.service.IFreeComService;
import free.vo.FComVO;

@WebServlet(value="/free/insertcom.do")
public class InsertFreeComController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		IFreeComService freecomService = FreeComServiceImpl.getinstance();
		HttpSession session = req.getSession();

		String fComCon = req.getParameter("fComCon");
		String fComNick = (String) session.getAttribute("memNick");
		int fNo = Integer.parseInt(req.getParameter("fNo"));
		String memId = (String) session.getAttribute("loginCode");
		
		FComVO fcv1 = new FComVO();
		fcv1.setfComCon(fComCon);
		fcv1.setfComNick(fComNick);
		fcv1.setfNo(fNo);
		fcv1.setMemId(memId);
		
		int cnt1 = freecomService.registFreeCom(fcv1);
		
		String msg1 = "";
		if(cnt1 > 0) {
			msg1 = "성공";
		}else {
			msg1 = "실패";
		}
		System.out.println(msg1);
						
		//req.setAttribute("fNo", Integer.toString(fNo));
		//resp.sendRedirect(req.getContextPath() + "/free/detail.do");
		
	}

	
	
	
}
