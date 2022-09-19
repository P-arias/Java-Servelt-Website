<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp"/>


    <div class="container MyFormContainer font-size:2em">
        <div class="row">
            <div class="col-lg-12 col-md-12 text-center">
                <h1>Your Account Information</h1>
            </div>
        </div>

         <div class="row">
             
      <div class="col-lg-2 col-md-2 ">
      </div>
         <div class="col-lg-8 col-md-8">
             <table>
                <tbody style="font-size: 2em">
                    <tr>
                        <td>
                    </tr>
                    
                    <tr>
                        <td>First Name:</td>
                        <td><c:out value="${sessionScope.user.firstName} "/></td>
                    </tr>
                    
                   
                    
                    
                    <tr>
                        <td>Last Name:</td>
                        <td><c:out value="${sessionScope.user.lastName} "/></td>
                    </tr>
                    
                    
                    
                    <tr> 
                        <td>Email Address:</td>
                        <td><c:out value="${sessionScope.user.email} "/></td>
                    </tr>
                    
                    
                    <c:if test="${sessionScope.user.address != null}" >
                    <tr>
                        <td>Address:</td>
                        <td><c:out value="${sessionScope.user.address} "/></td>
                    </tr>
                    
                    
                    
                    </c:if>
                    
                    
                    <c:if test="${sessionScope.user.phoneNumber != null}" >
                    <tr>
                        <td>Phone Number:</td>
                        <td>  <c:out value="${sessionScope.user.phoneNumber} "/></td>
                    </tr>
                    </c:if>
                    
                    <tr>
                        <td>Password:</td>
                        <td><c:out value="${sessionScope.user.password} "/></td>
                    </tr>
                    
                    
                    
                    
                </tbody>
            </table>
         </div>
             
      <div class="col-lg-2 col-md-2">
      </div>
             
        </div>
    </div>
                    
    <div class="container MyFormContainer">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    </div>
     

 <c:import url="/includes/footer.jsp"/>