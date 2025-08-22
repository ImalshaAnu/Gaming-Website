package com.payment2;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String fullname = request.getParameter("fullname");
		String email= request.getParameter("email");
		String address = request.getParameter("address");
		String cardname = request.getParameter("cardname");
		String cardnumber = request.getParameter("cardnumber");
		
		boolean isTrue;
		
		isTrue=paymentDBUtil.updatedata(pid, fullname, email, address, cardname, cardnumber);
		
		if(isTrue == true) {
			
			List<payment> gamedetails =paymentDBUtil.getGames(pid);
			request.setAttribute("gamedetails", gamedetails);
			
			String alertMessage="Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='GetAllGames'</script>");
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucces.jsp");
			dis2.forward(request, response);
			}
		
	}

}
