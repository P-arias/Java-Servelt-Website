<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.jsp"/>


    <div class="container MyFormContainer ">
        <div class="row">
            <div class="col-lg-12 col-md-12 text-center">
                <h1>
               <span class="blue">About</span>
               <span class="red"> Us </span>
               <span class="yellow"> ! </span>
               </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 text-center">
                <img src="images/MoreImages/ToysStoryPicture.png" alt="ToysStoryPicture" width="500px">
            </div>
        </div>
         <div class="row">
             
            <div class="col-lg-2 col-md-2 ">
            </div>
            <div class="col-lg-8 col-md-8">
           <h2>
            ToysWereUs was a somewhat beloved brand known in some parts of the world, and we used to know how to have fun! 
           Please do not follow us on Facebook, Twitter, Youtube or Pinterest as we no longer post about the hottest toys and 
           latest reviews.
           </h2>
            </div>
             
            <div class="col-lg-2 col-md-2">
            </div>
             
        </div>
    
        <div class="row">
             
            <div class="col-lg-2 col-md-2 ">
            </div>
            
            <div class="col-lg-8 col-md-8">
           
         <form class="form-signin">
        <h2 class="form-signin-heading">
              <span class="red">Sign</span>
               <span class="yellow">up</span>
               <span class="green">for</span>
               <span class="red">our</span>
               <span class="blue">newsletter!</span>
        </h2>
        
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address (required)" required autofocus>
        
        <label for="inputFirstName" class="sr-only">First Name</label>
        <input type="text" id="name" class="form-control" placeholder="First Name (required)" required>
        
        <label for="inputLastName" class="sr-only">Last Name</label>
        <input type="text" id="name" class="form-control" placeholder="Last Name (optional)">
        
        <label for="inputName" class="sr-only">Age</label>
        <input type="text" id="name" class="form-control" placeholder="Age (optional)">
        
        <div class="checkbox">
          <label>
              <input type="checkbox" value="isreceiveOffers" checked> 
              Yes! I want to get the latest updates on new toys & play ideas.
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Subscribe</button>
        </form>
                   
            </div>
             
            <div class="col-lg-2 col-md-2">
            </div>
             
        </div>
    </div>

 <c:import url="/includes/footer.jsp"/>