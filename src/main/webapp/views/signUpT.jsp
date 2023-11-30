<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/signup.css">
    <title>Document</title>
    <script type="text/javascript">
       let owner = document.querySelector(".Owner");
let Tenant = document.querySelector(".Tenant");
let slider = document.querySelector(".slider");
let formSection = document.querySelector(".form-section");
 
Owner.addEventListener("click", () => {
    slider.classList.add("moveslider");
    formSection.classList.add("form-section-move");
});
 
Tenant.addEventListener("click", () => {
    slider.classList.remove("moveslider");
    formSection.classList.remove("form-section-move");
});
       </script>
</head>
<body>
<div class="img">  
    <div class="signup-container">
        <h2>Signup</h2>
        <form class="signup-form"  action="/signUpT" method="post">
           
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contactno" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="slider"></div>
            
            <div class="form-group">
        <div class="btn">
        <button type="submit">Register</button>
        </div>
        </div>
        <div class="form-group">
            <div class="last-content">
                <h5>Already have account?<a href="login1">Login</a></h5>
            </div>
            
        </div>
            </div>
            </form>
        
    </div></div>
</body>
</html>