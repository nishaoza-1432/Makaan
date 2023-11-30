package com.springboot.web.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.web.model.Login;
import com.springboot.web.model.Owner;
import com.springboot.web.model.Property;
import com.springboot.web.model.Tenant;
import com.springboot.web.service.OwnerService;
import com.springboot.web.service.TenantService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private OwnerService ownerservice;

	@Autowired
	private TenantService tenantservice;

	@GetMapping({ "/", "/index" })
	public String showHomePage(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name != null ? name : " ");
		return "index";
	}

	@GetMapping("/login1")
	public String showLogin(Model model) {
		model.addAttribute("login", new Login());
		return "login1";
	}

	@PostMapping("/login1")
	public String processLogin(@ModelAttribute("loginForm") Login loginForm, HttpSession session, Model model) {
	    try {
	        String email = loginForm.getEmail();
	        String password = loginForm.getPassword();
	        String userType = loginForm.getUserType();

	        if ("ownobj".equals(userType)) {
	            Owner ownobj = ownerservice.getOwnerByEmail(email);
	            if (ownobj != null && ownobj.getPassword().equals(password)) {
	                session.setAttribute("name", ownobj.getName());
	                session.setAttribute("role", "owner");
	                return "redirect:/profile";
	            }
	        } else if ("tenobj".equals(userType)) {
	            Tenant tenobj = tenantservice.getTenantByEmail(email);
	            if (tenobj != null && tenobj.getPassword().equals(password)) {
	                session.setAttribute("name", tenobj.getName());
	                session.setAttribute("role", "tenant");
	                return "redirect:/profile";
	            }
	        }
	        // If no valid user found
	        return "redirect:/login1?error";
	    } catch (Exception e) {
	        // Log the exception or print the stack trace
	        e.printStackTrace();
	        // Redirect to the login page with an error message
	        model.addAttribute("error", "An error occurred during login");
	        return "login1";
	    }
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}
	
	 @GetMapping("/profile")
	 public String userDetails(HttpSession session, Model model) {
		    Object roleAttribute = session.getAttribute("role");
		    if (roleAttribute != null) {
		        String role = roleAttribute.toString();

		        if ("owner".equals(role)) {
		            // Fetch owner details and their listed properties
		            Owner owner = ownerservice.getOwnerByName(session.getAttribute("name").toString());
		            List<Property> ownerProperties = ownerservice.getPropertiesForOwner(owner);

		            // Add owner and properties to the model
		            model.addAttribute("owner", owner);
		            model.addAttribute("ownerProperties", ownerProperties);
		            model.addAttribute("userType", "owner");

		            // Return the owner details view (create an appropriate view for displaying owner details)
		            return "profile"; // Update this with your view name
		        } else if ("tenant".equals(role)) {
		            // Fetch tenant details
		            Tenant tenant = tenantservice.getTenantByName(session.getAttribute("name").toString());

		            // Add tenant to the model
		            model.addAttribute("tenant", tenant);
		            model.addAttribute("userType", "tenant");

		            // Return the tenant details view (create an appropriate view for displaying tenant details)
		            return "profile"; // Update this with your view name
		        }
		      
		    
		    }
		    return "redirect:/index";
		}  
	  

}
