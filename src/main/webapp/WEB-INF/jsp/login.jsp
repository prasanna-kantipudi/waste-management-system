<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="/css/login.css" rel="stylesheet" />
    <style>
        html, body {
            min-height: 100%;
        }
    </style>
</head>
<body>

     <nav class="navigation container">
        <div class="nav-brand">Waste Management System</div>
        <ul class="list-non-bullet nav-pills">
            <li class="list-item-inline">
                <a class="link" href="/">Our Values</a>
            </li>
            <li class="list-item-inline">
                <a class="link" href="/products">Products</a>
            </li>
            <li class="list-item-inline">
                <a class="link link-active" href="/login">Login</a>
            </li> 
            <li class="list-item-inline">
                <a class="link" href="/register">Signup</a>
            </li> 
        </ul>
        </nav>

        <div class="container-center">
    <form action="/login" method="POST" class="form-content">
        <fieldset style="border: none;">            
            <div class="form-group-content">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" required style="margin-left: 11px;">
                <br>
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required style="margin-left: 20px;">
                <img id="passtog" src="images/hidden.png" width="20" style="margin-left: 0.5rem;" onclick="myFunction()">
                <script>
                    function myFunction() {
                        console.log("Hi")
                        let x=document.querySelector("#password");
                        let t=document.querySelector("#passtog");
                        if (x.type === "password") {
                            x.type = "text";
                            t.src="images/visible.png";
                        } 
                        else {
                            x.type = "password";
                            t.src="images/hidden.png";
                        }
                    }
                </script>
                <br>
                <button type="submit" class="btn btn-primary" id="sbtn">Login</button>
            </div>        
            <div class="last">
                <p> Don't Have a Account ?<a href="{% url "register" %}" style="text-decoration: none; color: #E83A59; padding:3%; cursor:pointer;">Register</a></p>        
            </div>
        </fieldset>               
    </form>
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