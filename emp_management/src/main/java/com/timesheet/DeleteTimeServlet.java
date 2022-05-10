package com.timesheet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteTimeServlet")
public class DeleteTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("eid");
		
	boolean isTrue;
		
		isTrue = TimeDBUtil.deleteTime(id);
			
		if(isTrue == true) {
			RequestDispatcher disp = request.getRequestDispatcher("tsInsert.jsp");
			disp.forward(request, response);
		} else {
			List<Timesheet> tshDetails = TimeDBUtil.validate(id);
			
			request.setAttribute("tshDetails", tshDetails);
			RequestDispatcher disp2 = request.getRequestDispatcher("tsaccount.jsp");
			disp2.forward(request, response);
		}
		
	}

}
