<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<footer role="contentinfo">
	 <div class="agency-footer" id="footer">
    <a href="#" class="go-top">
      <i class="fa fa-angle-up"></i>
      TOP
    </a>
    <div class="container">
      <div class="row m-0">
        <div class="col-md-3">
          <h4>Talentify</h4>
          <a href="about_us.jsp" class="legal">About</a>
          <a href="pricing.jsp" class="legal">Pricing</a>
          
          <a href="sign-in.jsp" class="legal">Sign Up</a>
        </div>
        <div class="col-md-3">
          <h4>Product</h4>
          <a href="features.jsp" class="legal">Features</a>
          <a href="features.jsp" class="legal">App & Integrations</a>
         
          <a href="features.jsp" class="legal">API</a>

        </div>
        <div class="col-md-3">
          <h4>About Us</h4>
          <a href="about_us.jsp" class="legal">Team</a>
          <a href="t_n_c.jsp" class="legal">Terms & Conditions</a>
          
        </div>
        <div class="col-md-3">
          <h4>Contact Us</h4>
          <p>
            MAKAM PLAZA 63/1, 18TH CROSS, MALLESHWARAM, BANGALORE, KARNATAKA 560055
            <br>
            +91-80 4128 1021
            <br>
            contact@istarindia.com
          </p>
          
        </div>
      </div>
    </div>
  </div>
    </footer>

  <script>

  

    // (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    // function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    // e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    // e.src='//www.google-analytics.com/analytics.js';
    // r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    // ga('create','UA-XXXXX-X','auto');ga('send','pageview');


    $(document).ready(function(){
  var scrollTop = 0;
  $(window).scroll(function(){
    scrollTop = $(window).scrollTop();
     $('.counter').html(scrollTop);
    
    if (scrollTop >= 30) {
      $('#global-nav').removeClass('bg-transparent');
        $('#global-nav').removeClass('navbar-dark');
      $('#global-nav').addClass('navbar-fixed-bottom');
      $('#global-nav').addClass('navbar-light');


    } else if (scrollTop < 30) {
      $('#global-nav').addClass('bg-transparent');
        $('#global-nav').addClass('navbar-dark');
      $('#global-nav').removeClass('navbar-fixed-bottom');
       $('#global-nav').removeClass('navbar-light');
    } 
    
  }); 
  
  $("#example1").datetimepicker({
	   uiLibrary:'bootstrap4'
	});
  
});

    
 var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124910681-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-124910681-1');
</script>


   
  
 </body>
</html>
