<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="style2.css">
<meta charset="ISO-8859-1">
<title>Employee Details</title>

</head>
<body>
	 <%
    if(session.getAttribute("username")==null){
    	response.sendRedirect("login.jsp");
    }
    %>
	<body id="body-pd">
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
            <div class="header_img"> </div>
        </header>
        <div class="l-navbar bg" id="nav-bar">
            <nav class="nav">
                <div> <a href="#" class="nav_logo">  <h4><span>EMS</span></h4> </a>
                    <div class="nav_list"> 
                        <a href="#" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span> </a> 
                        <a href="employee.jsp" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Add Employee</span> </a> 
                    </div>  
                    
                </div> <a href="login.jsp" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">Logout</span> </a>
            </nav>
        </div>
        <!--Container Main start-->
        <div class="height-100 bg-light">
            <h4>Employee Details</h4>
            <table class="table">
                <thead>
                  <tr>
                    <th>Emp ID</th>
			        <th>Name</th>
			        <th>Email ID</th>
			        <th>Phone No.</th>
			        <th>Gender</th>
			        <th>DOB</th>
			        <th>Address</th>
			        <th>Designation</th>
			        <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${employees }" var="employee">
                        <tr>
                            <td>${employee.id }</td>
                            <td>${employee.name }</td>
                            <td>${employee.email }</td>
                            <td>${employee.phone }</td>
                            <td>${employee.gender }</td>
                            <td>${employee.dob }</td>
                            <td>${employee.address }</td>
                            <td>${employee.designation }</td>
                            
                            <td><a href="edit?id=<c:out value='${employee.id }'/>"onclick="alert('Are you sure you want to edit data?');">Edit</a></td>
                            <td><a href="delete?id=<c:out value='${employee.id }'/>" onclick="alert('Are you sure you want to delete data?');">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
        </div>
     
        <script>
            document.addEventListener("DOMContentLoaded", function(event) {
   
   const showNavbar = (toggleId, navId, bodyId, headerId) =>{
   const toggle = document.getElementById(toggleId),
   nav = document.getElementById(navId),
   bodypd = document.getElementById(bodyId),
   headerpd = document.getElementById(headerId)
   
   // Validate that all variables exist
   if(toggle && nav && bodypd && headerpd){
   toggle.addEventListener('click', ()=>{
   // show navbar
   nav.classList.toggle('show')
   // change icon
   toggle.classList.toggle('bx-x')
   // add padding to body
   bodypd.classList.toggle('body-pd')
   // add padding to header
   headerpd.classList.toggle('body-pd')
   })
   }
   }
   
   showNavbar('header-toggle','nav-bar','body-pd','header')
   
  
   const linkColor = document.querySelectorAll('.nav_link')/*link active*/
   
   function colorLink(){
   if(linkColor){
   linkColor.forEach(l=> l.classList.remove('active'))
   this.classList.add('active')
   }
   }
   linkColor.forEach(l=> l.addEventListener('click', colorLink))
   
   });
        </script>
	
</body>
</html>