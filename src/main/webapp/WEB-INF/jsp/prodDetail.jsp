<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link href="/css/productDetail.css" rel="stylesheet" />
    <style>
        html,
        body {
            min-height: 100%;
        }
    </style>
</head>

<body>
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

    <div class="product clear prodet">
        <header class="hds">
            <hgroup>
                <h1>${product.getName()}</h1>
                <h4>${product.getCategory() }</h4>
            </hgroup>
        </header>
        <figure>
            <img class="card-img-top" src="/images/${product.getImageName()}" alt="sample-product"">
        </figure>
        <section>
            <p>
                ${product.getDescription() }
            </p>
            <div class="rating">
                <input class="star" type="checkbox" title="bookmark page">
                <input class="star" type="checkbox" title="bookmark page">
                <input class="star" type="checkbox" title="bookmark page">
                <input class="star" type="checkbox" title="bookmark page">
                <input class="star" type="checkbox" title="bookmark page"><br><br>
            </div>
            <span>Price: <strong style="font-size:1rem ;">&#8377; ${product.getPrice()}</strong></span><br><br>            
            <div class="action">
                <button class="sbtn">Add to Cart</button>
            </div>
        </section>
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
                <p>${username }</p>
            </li>
        </ul>
        
    </footer>
</body>

</html>
