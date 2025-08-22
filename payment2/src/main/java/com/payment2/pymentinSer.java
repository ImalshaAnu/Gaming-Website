package com.payment2;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




public class pymentinSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname = request.getParameter("fullname");
		String email= request.getParameter("email");
		String address = request.getParameter("address");
		String cardname = request.getParameter("cardname");
		String cardnumber = request.getParameter("cardnumber");
		
		
boolean isTrue;
		
		isTrue=paymentDBUtil.insertdata(fullname, email, address, cardname, cardnumber);
		
		if(isTrue == true) {
			String alertMessage="Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='GetAllGames'</script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucces.jsp");
			dis2.forward(request, response);
			}
		
	}

}
