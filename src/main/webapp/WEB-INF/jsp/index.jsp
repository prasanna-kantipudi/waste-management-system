<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link href="/css/index.css" rel="stylesheet"/>
    <style>
        html, body {
            min-height: 100%;
        }
    </style>
</head>
<body>
    
    <c:choose>
      <c:when test="${logout == logout}">
        <c:remove var="user" scope="application"/>
      </c:when>
    </c:choose>
        <nav class="navigation container">
        <div class="nav-brand">Waste Management System</div>
        <ul class="list-non-bullet nav-pills">
            <li class="list-item-inline">
                <a class="link link-active" href="#">Our Values</a>
            </li>
            
            <li class="list-item-inline">
                <a class="link" href="/products">Products</a>
            </li>
            
	        <c:choose>
	          <c:when test="${username !=null}">
	             <li class="list-item-inline">
	                <a class="link" href="/slotbooking">Slot Booking</a>
	            </li>
	           
		       <li class="list-item-inline">
                <a class="link" href="/logout">Logout</a>
            </li>
	          </c:when>
	        </c:choose>
	        
	         <c:choose>
	          <c:when test="${username == null}">
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
        
    <header class="hero">
        <div class="parent">
            <div class="div1">
                <h1 class="hero-heading">
                    <span class="heading-inverted" style="font-size: 3rem;">Congenial Recycling</span>
                    <p style="width: fit-content; font-size: 1.5rem;">Refuse what you do not need; reduce what you do need; reuse what you consume; recycle what you cannot refuse, reduce, or reuse; and rot (compost) the rest."
                        <br>- Bea Johson
                    </p>
                </h1>
                <h1>${username}</h1>
            </div>            
            <div class="div2"> 
                <img class="hero-img" src="/images/logo.png" />
            </div>            
        </div>
        <div>
            <button style="border-radius: 1.6rem; margin: 0px;">
                <a href="/products">
                    <img src="/images/explore-recycled-products.svg"/>
                </a>
            </button>
        </div>
    </header>         
    
    <div class="parent1">
        <div class="div11">
            <img src="/images/our-values.svg" width="100%">
        </div>
    </div>

    <div class="parent2" style="margin-top: 5rem;">
        <div class="div12"><img src="/images/rrr.svg"></div>
        <div class="div22">
            <p>
                <span style="font-size: 2.5rem; font-weight: bolder;">How do we achieve it?</span><br>
                <span style="font-size: 1.5rem;">
                    Materials for recycling are either delivered to a household recycling center or 
                    picked up from curbside bins, then sorted, cleaned, and reprocessed 
                    into new materials for manufacturing new products.
                </span><br>
                <button style="border-radius: 1rem; margin-top: 2rem; ">
                    <a href="/slotbooking">
                        <img src="/images/slot-booking.svg" width="100%"/>
                    </a>
                </button>
            </p>
        </div>
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
    