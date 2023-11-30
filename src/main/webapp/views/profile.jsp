<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.springboot.web.model.Owner"%>
<%@ page import="com.springboot.web.model.Tenant"%>
<%@ page import="com.springboot.web.model.Property"%>
<%@ page import="com.springboot.web.model.ImageItem"%>
<%@ page import="java.util.List" %>
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
     <link rel="stylesheet" href="css/multipageview.css">
    <title>Navigation Bar</title>

    <!--jquery-->
    
        <script src="Script/index.js">
       </script>
       <script src="Script/property.js">
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
                    <li> <a href="profile" style="padding: 17px 6px;
    font-size: 16px;
    text-transform: uppercase;
    margin-right: 1px;
    display: inline-block;
    margin: 0 8px;">Home</a></li>
                    <li><a href="profile">About</a></li>
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
      <img src="css/image/slide-img1.jpg" style="width:100%">
      
    </div>
  
    <div class="mySlides fade">
      <div class="numbertext">2 / 3</div>
      <img src="css/image/slide-img2.jpg" style="width:100%">
      
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
    <form  action="/multiplepageview" method="get"  >
          <div class="input-container">
           <label>PropertyType</label>
            <select id="type"  name="property_type" >
              <option value="1RK">1RK</option>
              <option value="1BHK">1BHK</option>
              <option value="2BHK">2BHK</option>
              <option value="3BHK">3BHK</option> 
            </select>
        <div class="search-box">
          <input type="text" name="property_location" id="search-input" placeholder="Localities..." />
          <button id="searchbtn" type="search" >Search Property</button>
           </div>
           </div>
           </div></form>
           
           
           

    </main>
    <cart>
        <div class="property-head">
            <h1>-----------------------PROPERTY LISTING-----------------------</h1>
        </div>
    <div class="property-list">
     <a class="prev1" onclick="plusSlides6(-1)">&#10094;</a>
    <%
        Object roleAttribute = session.getAttribute("role");

        if (roleAttribute != null) {
            String role = roleAttribute.toString();

            if ("owner".equals(role)) {
                Owner owner = (Owner) request.getAttribute("owner");
    %>
                <h1>Welcome, <%=owner.getName()%></h1>
                <p>Email ID: <%=owner.getEmail()%></p>

                <div id="list_container" class="property-cardo">
                    <% 
                        List<Property> properties = (List<Property>) request.getAttribute("ownerProperties");
                        for (Property prop : properties) {
                    %>
                        <div class="property-cardo" id="list_container">
                            <div class="slider">
                                <% 
                                    List<ImageItem> imageItem = prop.getImageItems();
                                    if (imageItem != null && !imageItem.isEmpty()) {
                                        for (ImageItem imgl : imageItem) {
                                %>
                                            <img id="listimage" class="slider-image"
                                                src="data:image/*;base64,<%= imgl.getBase64ImageData() %>" />
                                <% 
                                        }
                                    }
                                %>
                            </div>

                        <div class="w3-section">
                           
                            <a class="next1" href="multiplepageview" onclick="plusSlides6(1)">&#10095;</a>
                        </div>
                        <div style="text-align:center">
                            <span class="dot" onclick="currentSlide6(1)"></span>
                            <span class="dot" onclick="currentSlide6(2)"></span>
                            <span class="dot" onclick="currentSlide6(3)"></span>
                        </div>

                        <div id="prop_desc">
                            <h1><%= prop.getProperty_title()%></h1>
                            <div id="prop_details">
                                <div id="left">
                                    <h3>Type</h3>
                                    <p><%=prop.getProperty_type()%></p>
                                    <h3 id="pp">Price</h3>
                                    <p>₹<%=prop.getProperty_price()%> /per month</p>
                                    <button id="editbtn"><a href="edit?property_id=<%=prop.getProperty_id()%>">Edit Property</a></button><br>
                                </div>
                                <div id="right">
                                    <h3>Location</h3>
                                    <p><%=prop.getProperty_location()%></p>
                                    <button id="ownbtn"><a href="singlepropertyview?property_id=<%= prop.getProperty_id() %>">View full details</a></button><br>
                                    
                                    <form action="/deleteProperty" method="post">
				<input type="hidden" name="property_id" value="<%=prop.getProperty_id()%>">
				<button type="submit" id="delbtn">Delete Property</button>
			     </form>
			    
                                    
                                </div></div>
                            </div>
                        
                       </div>
                    <% } %>
                </div>
    
                <%
            } else if ("tenant".equals(role)) {
                // Display tenant's profile
                Tenant tenant = (Tenant) request.getAttribute("tenant");
               
            %>
            <div class="container">
                <!-- Display tenant details -->
                <h1>Welcome, <%=tenant.getName()%></h1>
                <p>Email: <%=tenant.getEmail()%></p>
                <h1 class="next3">Click Here to View Properties</h1>

               </div>
            <a class="next2" href="multiplepageview" onclick="plusSlides6(1)">&#10095;</a>
            <%
            }
        }
            %>
			
			
			
			
        </cart>         
                              
       </div>
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


