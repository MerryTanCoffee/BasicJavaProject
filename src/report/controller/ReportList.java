package report.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import report.service.IReportService;
import report.service.ReportServiceImpl;
import report.vo.ReportVO;

@WebServlet("/report/reportlist")
public class ReportList extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IReportService reportService = ReportServiceImpl.getInstance();
		
		List<ReportVO> reportList = reportService.selectAllReprot();
		
		req.setAttribute("reportList", reportList);
		
		req.getRequestDispatcher("/manager/report.jsp").forward(req, resp);
	}
}
