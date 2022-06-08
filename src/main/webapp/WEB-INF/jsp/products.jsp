<%@ page language="java" contentType="text/html;"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products Page</title>
    <link href="/css/products.css" rel="stylesheet" />
    <style>
        html,
        body {
            min-height: 100%;
        }
    </style>
</head>
<body>
    
    <c:choose>
      <c:when test="${logout == logout}">
        <c:remove var="user" scope="session"/>
      </c:when>
    </c:choose>
    <nav style="margin-bottom:2rem;" class="navigation container">
        <div class="nav-brand">Waste Management System</div>
        <ul class="list-non-bullet nav-pills">
            <li class="list-item-inline">
                <a class="link link-active" href="/">Our Values</a>
            </li>
            
            <li class="list-item-inline">
                <a class="link" href="/products">Products</a>
            </li>
            
	        <c:choose>
	          <c:when test="${username!=null}">
	             <li class="list-item-inline">
	                <a class="link" href="/slotbooking">Slot Booking</a>
	            </li>
	           
		        <li class="list-item-inline">
                <a class="link" href="/logout">Logout</a>
            </li>
	          </c:when>
	        </c:choose>
	        
	         <c:choose>
	          <c:when test="${username==null}">
		         <li class="list-item-inline">
	                <a class="link" href="/login">Login</a>
	            </li> 
	            <li class="list-item-inline">
	                <a class="link" href="/register">Signup</a>
	            </li> 
	          </c:when>
	        </c:choose>
	                   
          
        </ul>
    </nav>
    <div id="all" class="card-container">
     <c:forEach items="${products}" var="product"> 
     <form action="/products/${product.getProdid()}" method="POST">
        <div class="card">
            <img class="card-img-top" src="/images/${product.getImageName()}" alt="sample-product">
            <div class="card-body">
            <form action="/prodDetail/${product.getProdid()}" method="POST">
                <h5 class="card-title">${product.getName()}</h5>
                <p class="card-text">${product.getDescription()}</p>
                <p class="card-text">${product.getCategory()}</p>
                <p class="card-price">Price: &#8377;${product.getPrice()}</p>
                
                <button type="submit" class="button">Show</button>
                  </form>
            </div>
        </div>
        </c:forEach>
    </div>
        <footer class="footer">
        <div class="footer-header">Some small heading inside footer</div>
        <ul class="social-links list-non-bullet">
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialone
                </a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialtwo
                </a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="#">
                    socialthree
                </a>
            </li>
        </ul>
    </footer>
</body>

</html>