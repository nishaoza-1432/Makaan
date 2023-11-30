<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.springboot.web.model.Owner"%>
<%@ page import="com.springboot.web.model.Tenant"%>
<%@ page import="com.springboot.web.model.Property"%>
<%@ page import="com.springboot.web.model.ImageItem"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
        rel="stylesheet">

        <!-- Bootstrap JS and jQuery (Make sure to include them after the body) -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
    

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Navigation Bar</title>

    <!--jquery-->
    
        <script src="Script/index.js">
       </script>
</head>

<body>
<header>
<!-- Navbar Start -->
<nav>

        <div class="logo">
           <a href=""> <img src="css/image/icon-villa.png" alt="Logo">Makaan</a>
            
            </div>
            
            <div class="toggle">
                <a href="#"><ion-icon name="menu-outline"></ion-icon></a>
                
            </div></ul>
            <li> <a href="#" style="padding: 17px 6px;
font-size: 16px;
text-transform: uppercase;
margin-right: 1px;
display: inline-block;
margin: 0 8px;">Home</a></li>
            <li><a href="index">About</a></li> &nbsp&nbsp
            <li><a href="#">Listproperty</a></li>
    <div class="link"><div class="owner>
<div class="tenant"> 
       
         
           
           
             <%
			// Check if the user is not logged in
			if (session.getAttribute("name") == null) {
				// Display the list button for users who are not logged in
			%>
			
			
			
            <li class="dropdown">
<a class="btn btn-primary px-3 d-none d-lg-flex dropdown-toggle" href="#" id="signupDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    SignUp
</a>
    <div class="dropdown-menu" aria-labelledby="signupDropdown">
        <a class="dropdown-item" href="signUp">Owner</a>
        <a class="dropdown-item" href="signUpT">Tenant</a>
       
    </div></li>
            <li><a href="login1" class="btn btn-primary px-3 d-none d-lg-flex">Login</a></li></ul>                    						
            
    </div>
   
   
   
    <%
                } else {
                    Object roleAttribute = session.getAttribute("role");
                    if (roleAttribute != null) {
                        String role = roleAttribute.toString();

                        // Check if the user is an owner
                        if ("owner".equals(role)) {
                %>
                <div id="btnO">
                <ul>
                    <li><a href="/listform" id="listproperty">List Property</a></li>
                    <li><a href="/logout">Logout</a></li><li><h2 style="color: white;">${name}</h2><li></ul></ul>
                </div></div>
                <%
                    } else if ("tenant".equals(role)) {
                %>
                <div id="btnT">
                    <ul>
                   
                    <li><a href="/logout">Logout</a></li><li> <h2 style="color: white;">${name}</h2></li></ul></ul>
                </div></div>
                <%
                    }
                }
            }
            %>
       </div>
       </div>
    
</nav>
  
</header>
<!-- Navbar End -->

    <bottom>
            <div id="bottom-bar">
                <div id="content">
                    <h1 class="display">Find A <span class="text-primary">Perfect Home</span> To Live With Your Family</h1>
                       
                </div>
                <!-- Slideshow container -->
<div class="slideshow-container">

    <!-- Full-width images with number and caption text -->
    <div class="mySlides fade">
      <div class="numbertext">1 / 3</div>
      <img src="css/image/slide-img1.jpg"  style="width:100%; display: block;">
      
    </div>
  
    <div class="mySlides fade">
      <div class="numbertext">2 / 3</div>
      <img src="css/image/slide-img2.jpg" style="width:100%; ">
      
    </div>
  
    <div class="mySlides fade">
      <div class="numbertext">3 / 3</div>
      <img src="css/image/slide-img3.jpg" style="width:100%">
      
    </div>
  
    <!-- Next and previous buttons -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
  </div>
 </div> 
    </bottom>
    <main>
        <!-- Search Bar start -->
        <div class="search-bar">
        <form  action="/multiplepageview" method="get" >
              <div class="input-container">
               <label>PropertyType</label>
                <select id="type" value="PropertyType" >
                  <option value="type1">1RK</option>
                  <option value="type2">1BHK</option>
                  <option value="type3">2BHK</option>
                  <option value="type3">3BHK</option> 
                </select>
            <div class="search-box">
              <input type="text" id="search-input" placeholder="Localities..." />
              <i class="fa-solid fa-magnifying-glass" onclick="performSearch()">SearchProperty</i>
               </div>
               </div>
               </div></form>
    </main>
    <cart>
        <div class="property-head">
            <h1>-----------------------PROPERTY LISTING-----------------------</h1>
        </div>
        <div class="property-list">
        
        
        
        
            <div class="property-card">
               <div class="slideshow-container2" id="slideshow-container-2">
           
<div class="w3-content" style="max-width:800px">
  <img class="mySlides1" src="css/image/Property4.jpg" style="width:100%; display: block;">
  <img class="mySlides1" src="css/image/Property2.jpg" style="width:100%">
  <img class="mySlides1" src="css/image/Property3.jpg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs1(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs1(1)">Next ❯</button>
  </div>
  <button class="w3-button demo" onclick="currentDiv1(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv1(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv1(3)">3</button> 
</div>

                <div class="property-details">
                  <h3>1BHK</h3>
                  <p>Price: ₹25,000 <button class="btn1" type="submit" >Contact Owner</button></p>
                </div></div></div>
                
                
                
                
                <div class="property-card">
               
<div class="slideshow-container2" id="slideshow-container-2">

                    <div class="w3-content" style="max-width:800px">
  <img class="mySlides2" src="css/image/Property1.jpg" style="width:100%; display: block;">
  <img class="mySlides2" src="css/image/Property3.jpg" style="width:100%">
  <img class="mySlides2" src="css/image/Property5.jpg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs2(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs2(1)">Next ❯</button>
  </div>
  <button class="w3-button demo" onclick="currentDiv2(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv2(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv2(3)">3</button> 
</div>
                    <div class="property-details">
                      <h3>1RK</h3>
                      <p>Price: ₹15,000 <button class="btn1" type="submit">Contact Owner</button></p>
                    </div></div></div>
                    
                    
                    
                    
                    <div class="property-card">
                    <div class="slideshow-container2" id="slideshow-container-3">
                        <div class="w3-content" style="max-width:800px">
  <img class="mySlides3" src="css/image/Property2.jpg" style="width:100%; display: block;">
  <img class="mySlides3" src="css/image/Property4.jpg" style="width:100%">
  <img class="mySlides3" src="css/image/Property6.jpg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs3(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs3(1)">Next ❯</button>
  </div>
  <button class="w3-button demo" onclick="currentDiv3(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv3(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv3(3)">3</button> 
</div>
                        <div class="property-details">
                          <h3>1BHK</h3>
                          <p>Price: ₹20,000 <button class="btn1" type="submit">Contact Owner</button></p>
                        </div></div></div>
                        
                        
                        <div class="property-card">
                        <div class="slideshow-container2" id="slideshow-container-4">
                            <div class="w3-content" style="max-width:800px">
  <img class="mySlides4" src="css/image/Property3.jpg" style="width:100%; display: block;">
  <img class="mySlides4" src="css/image/Property5.jpg" style="width:100%">
  <img class="mySlides4" src="css/image/Property1.jpg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs4(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs4(1)">Next ❯</button>
  </div>
  <button class="w3-button demo" onclick="currentDiv4(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv4(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv4(3)">3</button> 
</div>
                            <div class="property-details">
                              <h3>2BHK</h3>
                              <p>Price: ₹45,000 <button class="btn1" type="submit">Contact Owner</button></p>
                            </div></div></div>
                            
                            
                            <a class="prev1" onclick="plusSlides2(1)" >&#10094;</a>
                            <a class="next1" onclick="plusSlides2(-1)" href="multipageview">&#10095;</a>
                            
                            
                            <div class="property-card">
                            <div class="slideshow-container2" id="slideshow-container-5">
                             <div class="w3-content" style="max-width:800px">
  <img class="mySlides5" src="css/image/Property5.jpg" style="width:100%; display: block;">
  <img class="mySlides5" src="css/image/Property1.jpg" style="width:100%">
  <img class="mySlides5" src="css/image/Property3.jpg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs5(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs5(1)">Next ❯</button>
  </div>
  <button class="w3-button demo" onclick="currentDiv5(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv5(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv5(3)">3</button> 
</div>
                              <div class="property-details">
                                <h3>1RK</h3>
                                <p>Price: ₹17,000 <button class="btn1" type="submit" href="#">Contact Owner</button></p>
                              </div></div></div>
                          </div>
        </cart>
        <about>
            <div class="about">
            <div class="head">
            <h1>ABOUT US</h1>
            <img class="about-image" src="css/image/about.jpg" alt="Property Image">
              <div class="about-content">
            <h3>#1 Place To Find The Perfect Property</h3>
            <p>Home is the best place for many people for they like to stick with what they know, and don’t yearn for new horizons.
             They prefer being with familiar customs and culture.But what if you are tempted to move away? What will you do to find a home away from your real home? </p>
             <p>You will surely seek for a place where familiarity, language, easy, family, connections, knowledge, roots, and belonging will make you feel at home.</p>
              <i  id="smile" class="bi bi-emoji-smile fa-6x"></i>
            </div></div></div>
        </about>

</body>

</html>


</body>

</html>