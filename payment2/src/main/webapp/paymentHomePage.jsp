<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link rel="stylesheet" href="styles.css">

</head>
<body>

<div class="container">
        <form action="pymentinSer" method="post">
            <div class="billing-address">
                <h2>Billing Address</h2>
                Full Name
                <input type="text" id = "name" name="fullname"  placeholder="Enter your full name">

                Email
                <input type="email" id = "email" name="email"  placeholder="Enter your email">

                Address
                <input type="text" id ="address" name="address"  placeholder="Enter your address">
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
                <input type="text" name="cardname" placeholder="Enter name on card">

                Credit card number
                <input type="text"  name="cardnumber"  placeholder="Enter card number">
                
                <input type="submit" >
            </div>
        </form>
    </div>
 <script src="script.js"></script>


</body>
</html>