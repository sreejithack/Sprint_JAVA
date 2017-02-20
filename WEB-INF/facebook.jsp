<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="script/fb.js"></script>
 -->
<script src="script/fbajax.js"></script>
<link rel="stylesheet" href="css/fb.css">

<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style> 
#body {
    background-color: #dfe3ee;
}
 #background
{
background-color:#4867aa;
}
#logo
{
margin-left:180px;
}
#form
{
position: fixed;
margin-left:550px;
margin-top:-100px;
}
#img
{
 position: fixed;
 margin-left:50px;
 margin-top: 25px;
}

#regform
{
 
    position: fixed;
    margin-left: 650px;
    margin-top: 20px;
}
.container
{
	padding:0;
    width: 1110px;
}
#unerror
{
  margin: 0 0 10px;
    position: absolute;
    top: 65px;
    color: red;
}
#pwderror
{
   position: absolute;
    color: red;
    margin: 65px;
    left: 160px;
    
}
input[type=text] {
    
    padding: 2px 8px;
    margin: 8px 0;
    
}
input[type=password]
{
    
    padding: 2px 8px;
    margin: 8px 0;

    
}
.lab
{
  color:#ff0000;
}


#white{
	background-color:#ffffff;
	
}


.txtarea
	{
    z-index: auto;
    position: relative;
    letter-spacing: 2px;
    width:400px;
    ine-height: 20px;
    font-size: 14px;
    transition: none;
    background: #ffffff !important;
     border: none;
   left:20px;
    
}
.spansrch
{
	position: absolute;
    left: 328px;
}

.add{
	z-index: auto;
    position: relative;
    letter-spacing: 12px;
    bottom: 20px;
    ine-height: 20px;
    font-size: 14px;
    transition: none;
    background: #3b5998 !important;
    right: 55px;
	
}
.field{
	
	height: 100px;
   
  
    width:640px;
    
}
.top-buffer { margin-top:100px; }
#diverror{
	background-color: white;
    width: 500px;
	    height: 350px;
}

.border{
	border-right:1px solid grey;
	
}
</style> 
</head>
<body id="body">

 <div  id="background">
 <div class="row">
 <form:form name="loginform" method="POST" action="/spring3/login" modelAttribute="LoginBean">
 <div class="col-xs-12 col-lg-6 col-md-2"></div>
 <div class="col-xs-12 col-lg-6 col-md-4">
 <font color="#ffffff" size="8" face="Blurry"> facebook</font> </div>
 <div class="col-xs-12 col-lg-6 col-md-2">
 <font color="white">   Email or Phone </font>
 </div>
 
 <div class="col-xs-12 col-lg-6 col-md-2">
 <font color="white">    Password </font>
 </div>

 <div class="row">
 <div class="col-xs-12 col-lg-6 col-md-6"></div>
 <div class="col-xs-12 col-lg-6 col-md-2">
 <input type="text" id="txtusername" name="uname" size="15" > 
<a href="#" data-toggle="tooltip" title="Hooray!"></a></div>

<div class="col-xs-12 col-lg-6 col-md-2">

<input type="password"  id="txtpassword"  name="pswd"  data-toggle="tooltip" data-placement="top" title="password" size="15">

</div>
<div class="col-xs-12 col-lg-6 col-md-1"></div>
<div class="col-xs-12 col-lg-6 col-md-2">
<input type="submit" class="btn btn-primary" id="btnlogin3" value="Login" >
</div>
 </div>
 
 <div class="row">
 <div class="col-xs-12 col-lg-6 col-md-6"></div>
 <div class="col-xs-12 col-lg-6 col-md-2">
 <input type="checkbox"><a href="#"> keep me logged in</a>
 </div>
 
<div class="col-xs-12 col-lg-6 col-md-3">
<font color="#9cb4d8">Forgotten password </font>
</div>

 </div>
 </form:form>
 </div>
 </div>
  
<div class="row">
<div class="col-xs-12 col-lg-6 col-md-4">
<div id="img">
<font color="#000099"><h3>Facebook helps you connect and share with <br>the people in your life</h3></font>
   <!--  <h3>Connect with friends and the world around you on <br>facebook</h3><br> -->
    <img src="images/fbb.jpg" height="40%" width="80%">
   </div>
</div>
</div>
<div class="row">
<div class="col-xs-12 col-lg-6 col-md-3">
  <div id="regform" >
  <!--  
<form name="signup"  action="signup.jsp" method="get">
     <div>
   	<b><font size="4">Create an account </font></b> <br>
   	<b><font size="3">It's free and always will be</font></b><br>
    <label id="ferror" class="lab"></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="lerror" class="lab"></label> <br>
   	<input type="text" id="txtuname"  name="fname" placeholder="First Name" size="10" maxlength="15"> 
   	<input type="text" id="txtlname" name="lname" placeholder="Last Name" size="10" maxlength="15"><br> 
   	<input type="text" id="txtnumber" name="number" placeholder="Mobile Number" size="27" maxlength="10"><label id="mnerror" class="lab"></label><br>
   	<input type="text" id="txtemail" name="email" placeholder="Email" size="27" maxlength="30"><label id="emerror" class="lab"></label><br>
   	<input type="password" id="txtpassword"  name="pwd" placeholder="Password" size="27" maxlength="15" id=pserror ><label id="pserror" class="lab"></label>
   	<h4>Birthday</h4> <label id="lbldob" class="lab"></label><br>
   	 <select name="Day" id="slctday" >
     <option value="">Day</option>
   	 <option value="sun">Sunday</option>
 <option value="mon">Monday</option>
<option value="tue">Tuesday</option>
<option value="wed">Wednesday</option>
<option value="thu">Thursday</option>
<option value="fri">Friday</option>
<option value="sat">Saturday</option>
</select>
<select name="Month" id="slctmnth">
<option value="">Month</option>
   <option value="jan">Jan</option>
<option value="feb">feb</option>
<option value="march">March</option>
<option value="april">april</option>
<option value="may">may</option>
<option value="june">june</option>
<option value="july">july</option>
</select>
<select name="Year" id="slctyear">
<option value="">Year</option>
   <option value="90">1990</option>
<option value="91">1991</option>
<option value="92">1992</option>
<option value="93">1993</option>
<option value="94">1994</option>
<option value="89">1989</option>
<option value="88">1988</option>
</select>
<font size="1" color=" #3b5998">Why do I need to provide my date of birth</font>  
<input type="Radio"  name="gender" id="rbtngender" value="female"> Female
<input type="Radio" name="gender" id="rbtngender" value="male"> Male <label id="lblgender" class="lab"></label> <br>
<font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font>
<font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br>
<input type="submit" class="btn btn-success" id="btnacc" value="Create an account">
   </div>
   </form>
   </div>
   -->
   <form:form name="submitform" method="POST" action="/spring3/Registration" modelAttribute="userBean">
   ${error}
   <div class="col-xs-12 col-lg-6 col-md-12">
   <b><font size="5">Create an account </font></b>
   </div>
   <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    	<b><font size="3">It's free and always will be</font></b>
   </div>
   </div>
   <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-4">
    <input type="text" id="txtuname"  name="fname" placeholder="First Name" size="13" maxlength="15"> 
    </div>
    <div class="col-xs-12 col-lg-6 col-md-6">
    <input type="text" id="txtlname" name="lname" placeholder="Last Name" size="13" maxlength="15">
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    <input type="text" id="txtnumber" name="number" placeholder="Mobile Number" size="35" maxlength="10">
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    <input type="text" id="txtemail" name="email" placeholder="Email" size="35" maxlength="30">
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    <input type="password" id="txtpassword"  name="pwd" placeholder="Password" size="35" maxlength="15" id=pserror >
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
   <b><font size="4"> Birthday</font></b>
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-3">
    <select name="Day" id="slctday" >
     <option value="">Day</option>
   	 <option value="sun">Sunday</option>
 <option value="mon">Monday</option>
<option value="tue">Tuesday</option>
<option value="wed">Wednesday</option>
<option value="thu">Thursday</option>
<option value="fri">Friday</option>
<option value="sat">Saturday</option>
</select>
    </div>
    <div class="col-xs-12 col-lg-6 col-md-2">
    <select name="Month" id="slctmnth">
<option value="">Month</option>
   <option value="jan">Jan</option>
<option value="feb">feb</option>
<option value="march">March</option>
<option value="april">april</option>
<option value="may">may</option>
<option value="june">june</option>
<option value="july">july</option>
</select>
    </div>
    <div class="col-xs-12 col-lg-6 col-md-2">
    <select name="Year" id="slctyear">
<option value="">Year</option>
   <option value="90">1990</option>
<option value="91">1991</option>
<option value="92">1992</option>
<option value="93">1993</option>
<option value="94">1994</option>
<option value="89">1989</option>
<option value="88">1988</option>
</select>
    </div>
    <div class="col-xs-12 col-lg-6 col-md-5">
    <font size="1" color=" #3b5998">Why do I need to provide my date of birth</font> 
    </div> 
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-3">
    <input type="Radio"  name="gender" id="rbtngender" value="female"> Female
    </div>
    <div class="col-xs-12 col-lg-6 col-md-2">
    <input type="Radio" name="gender" id="rbtngender" value="male"> Male 
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    <font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font>
<font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font>
    </div>
    </div>
    <div class="row">
    <div class="col-xs-12 col-lg-6 col-md-12">
    <input type="submit" class="btn btn-success" id="btnacc" value="Create an account">
    </div>
    </div>
    </div>
    </div> 
    </div>
    </form:form>
</body>
</html>