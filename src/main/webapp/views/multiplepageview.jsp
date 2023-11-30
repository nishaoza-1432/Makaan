<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springboot.web.model.Property" %>
<%@ page import="com.springboot.web.model.Owner" %>
<%@ page import="com.springboot.web.model.ImageItem" %>
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
     <link rel="stylesheet" href="css/multipagefull.css">
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
    <!-- Navbar End -->

  
                     <main> <div class="property-list">
                            <div id="list_container">
                                <h1 id="prop_heading">list properties</h1>
                                <% List <Property> properties = (List<Property>) request.getAttribute("property");
                                        if (properties != null && !properties.isEmpty()) {
                                        for (Property prop : properties) {
                                        %>
                                        <div id="prop1" class="property" data-type="<%= prop.getProperty_type().toUpperCase() %>"
                                            data-location="<%= prop.getProperty_location().toUpperCase() %>">
                                            <div id="prop_images" class="slider-container">
                                                <div class="slider">
                                                    <% List<ImageItem> imageItem = prop.getImageItems();
                                                        if (imageItem != null && !imageItem.isEmpty()) {
                                                        for (ImageItem imgl : imageItem){

                                                        %>
                                                        <img id="listimage" class="slider-image"
                                                            src="data:image/*;base64,<%= imgl.getBase64ImageData() %>" />
                                                        <%}} %>

                                                </div>
                                                <button class="prevBtn">&lt;</button>
                                                <button class="nextBtn">&gt;</button>
                                            </div>
                                            <div id="prop_desc">
                                                <h1>
                                                    <%= prop.getProperty_title()%>
                                                </h1>
                                                <div id="prop_details">
                                              <div id="left">
                                                <h3>Type</h3>
                                                <p>
                                                    <%=prop.getProperty_type()%>
                                                </p>
                                                <h3>Price</h3>
                                                <p>₹<%=prop.getProperty_price()%> /per month</p>
                                                
                                                 </div>
                                               <div id="right">
                                                <h3>Location</h3>
                                                <p>
                                                    <%=prop.getProperty_location()%>
                                                </p>
                                                <%
                                                if(prop.getOwner() !=null){
                                                %>
                                                <h3>Owner Name</h3>
                                                <p><%=prop.getOwner().getName()%></p>
                                                <% } %>
                                                <button id="conbtn"><a href="singlepropertyview?property_id=<%= prop.getProperty_id() %>">View full details</a></button><br>
                                                 
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                        <% 
                                        }
                                        } else {
                                         %>
                                         <div id="noprop"><p>No property found</p></div>
                                         <%}%>
                            </div>
                        </main>
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


