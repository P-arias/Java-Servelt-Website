<%-- 
    Document   : signUp
    Created on : Mar 27, 2020, 11:10:59 AM
    Author     : paria
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ToysWTags" uri="/WEB-INF/tlds/ToysWTags.tld"%>
<c:import url="/includes/header.jsp"/>


       
     <div class="container MyFormContainer ">
               
      <form class="form-signin" action="SignUpServ" method="post">  
          <p><c:if test="${error != null}" > <span style="color: red"> <c:out value="${error}"/></span></c:if></p>
        <h2 class="form-signin-heading">Please fill in all required fields </h2>
        
        <label class="sr-only">First Name</label>
        <input type="text" name="firstName" class="form-control" placeholder="First Name *" required autofocus 
               value="${firstName}">
        
         <label class="sr-only">Last Name</label>
         <input type="text" name="lastName" class="form-control" placeholder="Last Name *" required autofocus
                value="${lastName}">
       
 
         <label  class="sr-only ">Email address</label>
        <input type="email" name="email" class="form-control" placeholder="Email address *" required autofocus
               value="${email}">
        
         <label  class="sr-only">Address</label>
        <input type="text" name="address" class="form-control" placeholder="Address" autofocus
               value="${address}">
         
        <label class="sr-only">Phone Number</label>
        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone Number" autofocus
               value="${phoneNumber}">
        
         <label class="sr-only">Password</label>
         <input type="password" name="password_1" class="form-control" placeholder="Password *" required autofocus>
         
        <label class="sr-only form-signinInput ">Re-enter password</label>
        <input type="password" name="password_2" class="form-control" placeholder="Re-enter password *" required autofocus>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="signUp">Submit</button>
      </form>
    </div>
    
    <div class="container MyFormContainer">
        <br>
        <br>
        <br>
        <br>
    </div>
     
   

 <c:import url="/includes/footer.jsp"/>