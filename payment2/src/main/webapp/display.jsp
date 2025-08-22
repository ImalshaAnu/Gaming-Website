<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        background-image: url('d.jpeg');
        background-image: no-repeat;
        background-size: cover;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100vh;
    }

    h2 {
       
        width: 100%;
        text-align: center;
        color: #333;
        font-size: 24px;
        margin-top: 20px;
         color: white;
    }

    table {
        width: 90%;
        max-width: 1000px;
        border-collapse: collapse;
        background-color: transparent; /* Set background to transparent */
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        margin-top: 20px; /* Space between h2 and table */
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #4CAF50;
        color: white;
        font-weight: bold;
    }

    td {
       color: white;
    }

    tr:hover {
        background-color: black;
    }

    /* Style for the table border */
    table, th, td {
        border: 1px solid #ddd;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        table {
            width: 100%;
        }
        
        th, td {
            font-size: 14px;
        }
    }

    /* Action Button Style */
    td:last-child {
        text-align: center;
    }

    button {
        padding: 7px 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        
    }

    button:hover {
        background-color: #45a049;
    }
</style>


</head>
<body>
 <h2>Payment Details</h2>
    
    <table border="1" cellpadding="5" cellspacing="0">
    
       
        <tr>
           <th>Payment ID</th>
           <th>Full Name</th>
           <th>Email</th>
           <th>Address</th>
           <th> Name on Card</th>
           <th> Credit card number</th>
           <th>Action</th>
        </tr>  
        
        <c:forEach var="game" items="${allgames}">
        <tr>
           <td>${game.pid}</td>
           <td>${game.fullname}</td>
           <td>${game.email}</td>
           <td>${game.address}</td>
           <td>${game.cardname}</td>
           <td>${game.cardnumber}
           <td>
              <a href="update.jsp?pid=${game.pid}&fullname=${game.fullname}&email=${game.email}&address=${game.address}&cardname=${game.cardname}&cardnumber=${game.cardnumber}">
              <button>Update</button>
              </a><br>
              
              <form action="deleteServlet" method="post">
              	<input type="hidden" name="pid" value="${game.pid}">
              	<button>Delete</button>
              
              </form>
           
           
        </tr>   
        
    </c:forEach>
    
    </table>

</body>
</html>