 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/includes/header.jsp"/>




       <div class="container carouselHeader">
       <section>
               <h2>
               <span class="blue">Sneak </span>
               <span class="red"> peek </span>
               <span class="yellow"> at </span>
               <span class="green"> new </span>
               <span class="red"> arrivals! </span>
               </h2>
       </section>
           
       </div>


    
  <div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
       <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
         <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/ToyStory/Woody.jpeg" alt="Woody" style="width:20%; margin:auto;">
      </div>
        
        <div class="item">
        <img src="images/ToyStory/Forky.jpeg" alt="Forky" style="width:20%; margin:auto;">
      </div>
        
      <div class="item">
        <img src="images/MarvelActionFigures/CaptainAmerica.jpeg" alt="CaptainAmerica" style="width:20%; margin:auto;">
      </div>
    
        <div class="item">
        <img src="images/MarvelActionFigures/IronMan.jpeg" alt="IronMan" style="width:20%; margin:auto;">
      </div>
    
        
      <div class="item">
      <img src="images/BoardGames/Operation.jpeg" alt="Operation" style="width:20%; margin:auto;">
      </div>
        
        <div class="item">
      <img src="images/BoardGames/DontStep.jpeg" alt="DontStep" style="width:20%; margin:auto;">
      </div>
        
         <div class="item">
      <img src="images/RcToys/Drone.jpeg"  alt="Drone" style="width:20%; margin:auto;">
      </div>
        
    </div>
    
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    

<div class="container">
    
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <br>
        </div>
    </div>
    
    <div class="row">
        <div class="col-lg-4 col-md-4">
               <h2>
               <span class="blue">Categories</span>
               </h2>
        </div>
        <div class="col-lg-8 col-md-8 text-center"></div>
    </div>
    
    <div class="row">
        <div class="col-lg-4 col-md-4">
               <h2>Marvel</h2>
        </div>
        
        <div class="col-lg-8 col-md-8 text-center"></div>
    </div>
    
    <div class="row">
        <div class="col-lg-3 col-md-3 text-center">   
        <img src="images/MarvelActionFigures/CaptainAmerica.jpeg"  alt="Marvel" style="width:60%; margin:auto;">
        <p>Captain America</p>
        <p>$18.47</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/MarvelActionFigures/IronMan.jpeg"  alt="Marvel" style="width:60%; margin:auto;">
            <p>Iron Man</p>
            <p>$8.92</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/MarvelActionFigures/BlackPanther.jpeg"  alt="Marvel" style="width:60%; margin:auto;">
            <p>Black Panther</p>
            <p>$9.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/MarvelActionFigures/Hulk.jpeg"  alt="Marvel" style="width:60%; margin:auto;">
            <p>Hulk</p>
            <p>$11.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
    </div>
    
     <div class="row">
        <div class="col-lg-4 col-md-4">
               <h2>Toy Story</h2>
        </div>
        
        <div class="col-lg-8 col-md-8 text-center"></div>
    </div>
    
    <div class="row">
        <div class="col-lg-3 col-md-3 text-center">   
        <img src="images/ToyStory/Woody.jpeg"  alt="Toy Story" style="width:60%; margin:auto;">
        <p>Woody</p>
        <p>$14.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/ToyStory/BuzzLightyear.jpeg"  alt="Toy Story" style="width:60%; margin:auto;">
            <p>Buzz Lightyear</p>
            <p>$13.22</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/ToyStory/Jessie.jpeg"  alt="Toy Story" style="width:60%; margin:auto;">
            <p>Jessie</p>
            <p>$19.87 </p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/ToyStory/Forky.jpeg"  alt="Toy Story" style="width:60%; margin:auto;">
            <p>Forky</p>
            <p>$12.93</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
    </div>
    
    <div class="row">
        <div class="col-lg-4 col-md-4">
               <h2>Board Games</h2>
        </div>
        
        <div class="col-lg-8 col-md-8 text-center"></div>
    </div>
    
    <div class="row">
        <div class="col-lg-3 col-md-3 text-center">   
        <img src="images/BoardGames/Operation.jpeg"  alt="Board Games" style="width:60%; margin:auto;">
        <p>Operation</p>
        <p>$13.44</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/BoardGames/Jenga.jpeg"  alt="Board Games" style="width:60%; margin:auto;">
            <p>Jenga</p>
            <p>$10.27</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/BoardGames/Uno.jpeg"  alt="Board Games" style="width:60%; margin:auto;">
            <p>Uno</p>
            <p>$5.44</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/BoardGames/DontStep.jpeg"  alt="Board Games" style="width:60%; margin:auto;">
            <p>Don't Step In It</p>
            <p>$11.28</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
    </div>
    
    <div class="row">
        <div class="col-lg-4 col-md-4">
               <h2>Rc Toys</h2>
        </div>
        
        <div class="col-lg-8 col-md-8 text-center"></div>
    </div>
    
    <div class="row">
        <div class="col-lg-3 col-md-3 text-center">   
        <img src="images/RcToys/LamboRc.jpeg"  alt="RcToys" style="width:60%; margin:auto;">
        <p>Lamborghini RC car</p>
        <p>$39.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/RcToys/RcStuntCar.jpeg"  alt="RcToys" style="width:60%; margin:auto;">
            <p>4WD RC Stunt Car</p>
            <p>$38.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/RcToys/Drone.jpeg"  alt="RcToys" style="width:60%; margin:auto;">
            <p>Sky Rider RC Drone</p>
            <p>$49.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
        
        <div class="col-lg-3 col-md-3 text-center">
            <img src="images/RcToys/RcHelicopter.jpeg"  alt="RcToys" style="width:60%; margin:auto;">
            <p>Syma RC Helicopter</p>
            <p>$21.99</p>
        <p><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button></p>
        </div>
    </div>
    
    
</div>
 <c:import url="/includes/footer.jsp"/>