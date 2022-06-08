<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slot Booking</title>
    <link href="/css/slotbooking.css" rel="stylesheet" />
    <style>
        html, body {
            min-height: 100%;
        }
    </style>
</head>

<body>
    <nav class="navigation container">
        <div class="nav-brand">Congenial Recycling</div>
        <ul class="list-non-bullet nav-pills">
            <li class="list-item-inline">
                <a class="link" href="/">Our Values</a>
            </li>
            
             <li class="list-item-inline">
                <a class="link" href="/products">Products</a>
            </li>
            
            <li class="list-item-inline">
                <a class="link link-active" href="#">Slot Booking</a>
            </li>
            
            <li class="list-item-inline">
                <a class="link" href="/logout">Logout</a>
            </li>
        
        </ul>
    </nav>
      <div class="parent" style="margin: 30px;">
        <div class="div1">
            <form style="width: auto;" method="POST" modelAttribute="newslot" action="/slotbooking">
                <div class="formsub">
                    <fieldset>
                        <legend style="font-size: 1.5rem;">Slot Booking</legend>
                        <div class="parentform">
                            <div class="div1form">
                                Full Name: <input type="text" class="tt" name="name"
                                    required><br>
                                <label for="address" style="display: inline-block; vertical-align: super;">Address:
                                </label>
                                <textarea class="tt" required name="address" id="address"
                                    style="display: inline-block; vertical-align: middle; border-bottom: 1px solid;">
                                </textarea><br>
                                Mobile No: <input type="number" class="tt" name="mobile"><br>
                                Email: <input type="email" class="tt" name="email"><br>
                                Select the category of waste:<br>
                                <label for="category-dry">Dry</label>
                                <input type="radio" name="category" value="Dry" />
                                <label for="category-wet">Wet</label>
                                <input type="radio" name="category" value="Wet" />
                                <label for="category-both">Both</label>
                                <input type="radio" name="category" value="Dry and Wet" />
                                <br>
                                Weight : <input type="number" class="tt" name="weight">
                                <br>
                                Upload a picture of products to be recycled:<br>
                                <input type="file" name="recycled-waste" accept="image/*" onchange="loadFile(event)" style="border-bottom: none;">
                                <script>
                                    var loadFile = function (event) {
                                        var output = document.getElementById('output');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                        output.onload = function () {
                                            URL.revokeObjectURL(output.src) // free memory
                                        }
                                    };
                                </script>
                                <br>
                                <input type="checkbox" id="agree" name="agree" value="agree" onchange="handlecheck()">
                                <label for="agree">I agree to share my information with recycling facilities</label><br>
                                <button id="submitbtn" type="submit">Submit</button>
                                <script>
                                    btn = document.querySelector("#submitbtn");

                                    function handlecheck() {
                                        chk = document.querySelector("#agree")
                                        if (chk.checked) {
                                            btn.disabled = false;
                                        } else {
                                            btn.disabled = true;
                                        }
                                    }
                                </script>
                            </div>
                            <div class="div2form">
                                <span style="font-size: 1.2rem; font-style: oblique;">Image Preview: </span><br>
                                <img id="output" style="max-width:250px; max-height:300px;">
                            </div>
                        </div>
                    </fieldset>
                </div>
            </form>
        </div>
        <div class="div2">
            <div class="parent1">
                <div class="div11">
                    <h2>Offices</h2>
                    <span>
                        Rajahmundry<br>
                        2-29, A.V.Apparao Road
                    </span>
                    <br><br>
                    <span>
                        Vijayawada<br>
                        6th Street Avenue, M.G.Road
                    </span>
                </div>
                <div class="div21">
                    <h2>For Quick Inquiries</h2>
                    <span>+91 8919923433</span><br>
                    <span>+91 8309044075</span>
                </div>
            </div>
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