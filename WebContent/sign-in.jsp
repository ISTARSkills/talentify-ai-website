<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<jsp:include page="inc/head.jsp"></jsp:include>
</head>

   
    <jsp:include page="inc/nav_bar.jsp" ></jsp:include>
<body>
   <div style="background-image: url('images/bgs/hero-02.jpg');" class="agency-contact-hero">
    <div class="container">
      <h3 class="customFadeInUp">
       Are you ready to rock n roll?
      </h3>
    </div>
  </div>

  <div class="agency-contact-intro px-3">
    <div class="container">
      <p>
        Drop us a line and we'll have a rep call you and show you how easy it is to get your team to play like all-stars!
      </p>
    </div>
  </div>

  <div class="agency-contact-form  px-3" style="margin-bottom: 80px;">
    <div class="container">
       <form id='userForm' name="userForm">
        <input id="name" type="text" placeholder="Your name" name="name" required />
        <input id="email" type="email" placeholder="Email address" name="email" required  />
         <input id="companyname" type="text" placeholder="Company name" name="email" required  />   
        <input id="mobile" type="number"  placeholder="Phone number" name="mobile" required />
       <div class="selectnew">
        <select class="selectpicker span3" >
    <option value="" selected disabled>Choose Plan</option>
    <option value="">Silver at 50$</option>
    <option value="">Gold at 100$</option>
    
    </select>  
    </div>      
      <br>
     <label> By signing up, you accept our <a style="color:#eb384f" href="t_n_c.html"> Terms of Service </a> and <a style="color:#eb384f" href="privacypolicy.html"> Privacy Policy </a> </label>
      <div class="mx-auto text-center">
        
        <input id="signup" type="submit" class="btn-pill btn-pill-primary btn-pill-lg" value="Sign Up" />
      </div>
      </form>
    </div>
  </div>
  
   <jsp:include page="inc/footer.jsp" ></jsp:include>
