$(document).ready(function()
    {
    	
      $("#btnlogin").click(function()
      {
    	  var username=$("#txtusername").val();
          var password=$("#txtpassword").val();
       console.log(username);
       console.log(password);
    	  $.ajax(
    			  {
    			  'url':'http://services.trainees.baabtra.com/LoginService/login.php',
    			  'DataType':'jsonp',
    			  'data':{email:username,password:password},
    			 // 'data':{username:username,password:password},
    			  success:function(data)
    			  { 
    				  var obj=jQuery.parseJSON(data);
    				  console.log(obj);
    				  if(obj[0].ResponseCode==200)
    					  {
    					  window.location.href=("http://localhost:8080/Facebook/home.jsp");
    					  
    					  }
    				  else if(obj[0].ResponseCode==500)
    				  {
    					  window.location.href=("http://localhost:8080/Facebook/Error.jsp");
    					  
    				  }
    				  else
    					  {
    					  window.location.href=("http://localhost:8080/Facebook/erroruname.jsp");
    					  }
    				 //console.log(data);
    				// window.location.replace("home.jsp");
    				// window.location.href = "http://localhost:8080/Facebook/home.jsp";
    				//window.location.href="home.jsp";
    				 //window.location.href="submit.jsp" 

    			  },
    			  error:function()
    				  {
    				  //alert("error");
    				  window.location.href="Error.jsp";
    				  }
      } );
      
          
      });
    });