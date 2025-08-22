<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GameZone</title>
<link rel = "stylesheet" href = "CSS/homepage.css">
</head>
<body>
	
	<c:forEach var = "cus" items = "${cusDetails}">
		<c:set var="id" value = "${cus.id}"/>
	    <c:set var="fname" value = "${cus.firstName}"/>
	    <c:set var="lname" value = "${cus.lastName}"/>
	    <c:set var="email" value = "${cus.email}"/>
	    <c:set var="username" value = "${cus.username}"/>
	    <c:set var="password" value = "${cus.password}"/>
	    
	    <nav class="navbar">
        <div class="navdiv">
            <div class="logo">
                <a href="#">GameZone</a>
                <input type="search" placeholder="Search games">
            </div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="savecard.jsp">Card</a></li>
                <li><a href="#">Payments</a></li>
                <li><a href="InqInsert.jsp">User inquiries</a></li>
                <li><a href="read?id=${cus.id}">${cus.username}</a></li>
                <li>
                    <a href="#">
                        <img src="CSS/user-solid.svg" alt="userIcon" class="user-icon">
                    </a>
                </li>
            </ul>
        </div>
    </nav>
	    
	  </c:forEach>
	  
	  <div class="coverimage">
        <img src="CSS/gameimages/f12020.png">
    </div>

    <div class="specialOffers">
        <h3>Special Offers</h3>
        <div class="card-container">
            <div class="card">
                <img src="CSS/gameimages/wingspandeal.png">
                <div class="card-content">
                    <h4>Wing Span</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/thunderfulldeal.jpg">
                <div class="card-content">
                    <h4>ThunderFul</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/aerosoftdeal.jpg">
                <div class="card-content">
                    <h4>AeroSoft</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/FC-25.jpg">
                <div class="card-content">
                    <h4>FC 25</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <img src="CSS/gameimages/watchdogs2.jpg">
                <div class="card-content">
                    <h4>Watch dogs 2</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/lou.jpg">
                <div class="card-content">
                    <h4>Last Of Us part 1</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/lifeisstrange.jpg">
                <div class="card-content">
                    <h4>Life Is Strange</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <img src="CSS/gameimages/cyberpunk.jpg">
                <div class="card-content">
                    <h4>Cyberpunk 2077</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <img src="CSS/gameimages/ghostoftsushima.jpg">
                <div class="card-content">
                    <h4>Ghost Of Tsushima</h4>
                    <p>Offer ends on 14 oct @10.30pm</p>
                    <div class="cardButtonscontainer">
                        <div class="buyButton"><a href="paymentHomePage.jsp">BUY NOW</a></div>
                        <div class="prices">
                            <p class="ogprice">30.21$</p>
                            <p class="discount">12.69$</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="footerContainer">
            <div class="socialicons">
                <a href="#"><img class="footericons" src="CSS/logos/facebook-white.svg"></a>
                <a href="#"><img class="footericons" src="CSS/logos/google-plus-white.svg"></a>
                <a href="#"><img class="footericons" src="CSS/logos/instagram-white.svg"></a>
                <a href="#"><img class="footericons" src="CSS/logos/youtube-white.svg"></a>
            </div>
            <div class="footernav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">News</a></li>
                </ul>
            </div>
        </div>
    </footer>
	    
	    
	
	
</body>
</html>