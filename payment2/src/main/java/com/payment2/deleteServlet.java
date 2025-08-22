	package com.payment2;
	
	import jakarta.servlet.RequestDispatcher;
	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import java.io.IOException;
	import java.util.List;
	
	
	public class deleteServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	   
	  
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
	
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pid =request.getParameter("pid");
			boolean isTrue;
			isTrue = paymentDBUtil.deletedata(pid);
			if(isTrue == true) {
				String alertMessage = "Data Delete Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='GetAllGames'</script>");
			}
			
			else {
				List<payment> gamedetails =paymentDBUtil.getGames(pid);
				request.setAttribute("gamedetails", gamedetails);
				
				RequestDispatcher dispacher = request.getRequestDispatcher("unsucces.jsp");
				dispacher.forward(request, response);
			}
		}
	
	}
