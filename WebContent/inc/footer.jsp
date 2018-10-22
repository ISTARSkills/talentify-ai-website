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
         
        

        </div>
        <div class="col-md-3">
          <h4>About Us</h4>
          <a href="about_us.jsp" class="legal">Team</a>
          <a href="t_n_c.jsp" class="legal">Terms & Conditions</a>
          
        </div>
        <div class="col-md-3">
          <h4>Contact Us</h4>
          <p>
            Talentify 550 West B Street, 4th Floor #103, San Diego, CA 92101
            <br>
            +1(833)815-2444
            <br>
            info@talentify.ai
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
    
    if(x.length != 0){
    	
    	  x[myIndex-1].style.display = "block";  
    	  setTimeout(carousel, 2000); // Change image every 2 seconds
    }
  
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

  <script type="text/javascript">
  var isValidEmailId = true;
  $( document ).ready(function() {
	    console.log( "ready!" );
	    
	   
	    
	    $( "#example1" ).change(function() {
	    	
	    	$('#date').val($(this).val());
	    	
	    	});
	    
	    $.validator.addMethod("emailExists", function (value, element) {
	    $.ajax({
			url : 'http://business.talentify.in/istar/rest/user/contact_user/validate/email/'+value,
			type : 'GET',
			contentType : 'application/x-www-form-urlencoded',
			success : function(data, textStatus, jQxhr) {
				console.log(data);
				if(data.data.message != 'This email is valid'){
				
					isValidEmailId = false;
					
				}else{
					isValidEmailId = true;
				}
				
				
			},
			error : function(jqXhr, textStatus, errorThrown) {
				console.log(errorThrown);
			},
			async:false
		});
	 
		return isValidEmailId;
	      

	    }, 'User already exists with this email.');
	    
		  $("form[name='emailForm']").validate({
		    rules: {		     
		    	email: {
					 required:true,	
					 emailExists: true
				}
		    },
		  
		    submitHandler: function(form) {
		 
		    	initEmailSubmitData();
		   
		    }
		  });
	    
		  function initEmailSubmitData() {
			  
			  var userObject ={};
			  var contact_object = {
					  email:$('#email').val()					 
			  }		
			  
			  userObject["contact_object"]=JSON.stringify(contact_object);
			  sendData(userObject);		
			  
		  }
		  
		  $("form[name='userForm']").validate({
			  ignore: "",
			    rules: {		     
			    	name: "required",
			    	email: {
						 required:true,	
						 emailExists: true
					},
			    	mobile:{
						  required:true,
						  minlength:10,
						  maxlength:10,
						  number: true,
						  },
			    	message:"required",
			    	date:"required"
			    },
			    messages: {
			    	name: "Please Enter User Name",
			    	mobile: "Please Enter Valid Number",
			    	message:"Please Write a Message",
			    	date:"Please Select Preferred Date and Time"
			    },
			  
			    submitHandler: function(form) {
			 
			     initSubmitData();
			   
			    }
			  });
		    
			  function initSubmitData() {
				  
				  var userObject ={};				  
				  var contact_object = {
						  name:$('#name').val(),
						  email:$('#email').val(),
						  mobile:$('#mobile').val(),
						  scheduled_date:$('#date').val(),
						  message:$('#message').val()
				  }	
				  
				  userObject["contact_object"]=JSON.stringify(contact_object);
				  sendData(userObject);			  
				  
			  }
			  
			  
			  function sendData(userObject){
				  
					$.ajax({
						url : 'http://business.talentify.in/istar/rest/user/contact_user',
						type : 'POST',
						contentType : 'application/x-www-form-urlencoded',
						data: userObject,
						success : function(data, textStatus, jQxhr) {
						//	swal("Good job!", "We Will Get You Back Soon!", "success");
							
							swal({title: "Good job", text: "We Will Get You Back Soon!", type: 
							"success"}).then(function(){ 
							   location.reload();
							   }
							);
							
							
						},
						error : function(jqXhr, textStatus, errorThrown) {
							console.log(errorThrown);
							swal("Error!", "Sowthing Went Wrong Please Try Again Later!", "warning");
						}
					});
			  }
	    
	});
  
  
  </script>
   
  
 </body>
</html>
