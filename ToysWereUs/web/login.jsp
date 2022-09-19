<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp"/>


       
     <div class="container MyFormContainer ">
         
         <div class="row">
             <div class="col-lg-4 col-md-4 text-center">
              
            </div>
             <div class="col-lg-4 col-md-4 text-center">
               <img src="images/MoreImages/DefaultUser.png" class="img-circle" alt="Image Not available" 
               style="width:50%; margin:auto;">
            </div>
             <div class="col-lg-4 col-md-4 text-center">
                
            </div>
             
         </div>
         
      
        <form class="form-signin" action="LogInServ" method="post" >
             <p><c:if test="${error != null}" > <span style="color: red"> <c:out value="${error}"/></span></c:if></p>
        <h2 class="form-signin-heading">Please sign in</h2>
        <label  class="sr-only">Email address</label>
        <input type="email" name="email" class="form-control" placeholder="Email address" required autofocus
               value="${email}">
        <label class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="Login">Sign in</button>
      </form>
    </div>
    
    <div class="container MyFormContainer">
        <br>
        <br>
        <br>
        <br>
    </div>
     
   

 <c:import url="/includes/footer.jsp"/>