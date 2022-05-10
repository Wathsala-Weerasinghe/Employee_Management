package com.timesheet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/TimeServlet")
public class TimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usemail =  request.getParameter("usemail");
		
		try {		
		List<Timesheet> tshDetails = TimeDBUtil.validate(usemail);
		
		request.setAttribute("tshDetails", tshDetails);
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher di = request.getRequestDispatcher("tsaccount.jsp");
		di.forward(request, response);
	}

}
