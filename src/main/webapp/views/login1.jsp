<html>
<head>
   <link rel="stylesheet" href="css/login.css"/>
</head>
<body>
   <div class="img">
     <div class="login-container">
        <h2>Login</h2>
        <form class="login-form" action="/login1" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
             
               <label><input type="radio" class="owner" name="userType" value="ownobj"> Owner</label>
        <label><input type="radio" class="tenant" name="userType" value="tenobj"> Tenant</label>
                
            <br><br>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
            <div>
              <h5>Don't have Register?<a href="/signUp">SignUp</a></h5>
            </div>
        </form></div>
    </div>
</body>
</html>