<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<%
          String pid = request.getParameter("pid");
          String fullname = request.getParameter("fullname");
          String email= request.getParameter("email");
          String address = request.getParameter("address");
          String cardname = request.getParameter("cardname");
          String cardnumber = request.getParameter("cardnumber");

%>

<div class="container">
        <form action="updateServlet" method="post">
            <div class="billing-address">
                <h2>Billing Address</h2>
                 PID
                <input type="text"  name="pid" value="<%=pid%>" readonly>
                
                Full Name
                <input type="text"  name="fullname" value="<%=fullname%>">

                Email
                <input type="email"  name="email" value="<%=email%>">

                Address
                <input type="text"  name="address" value="<%=address%>">
            </div>

            <div class="payment">
                <h2>Payment</h2>
                <label>Accepted Cards</label>
                <div class="cards">
                    <img src="visa.jpg" alt="Visa">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/b/b7/MasterCard_Logo.svg" alt="Mastercard">
                    <img src="images.png" alt="American Express">
                </div>

                Name on Card
                <input type="text" name="cardname" value="<%=cardname%>">

                Credit card number
                <input type="text"  name="cardnumber" value="<%=cardnumber%>">
                
                <input type="submit" >
            </div>
        </form>
    </div>
    
     <script src="script.js"></script>

</body>
</html>