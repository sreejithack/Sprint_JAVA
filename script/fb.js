
    $(document).ready(function()
    {
    	
      $("#btnlogin").click(function()
      {
    	  
    	  var username=$("#txtusername").val();
          var password=$("#txtpassword").val();
      
    	 /* $.ajax(
    			  {
    			  'url':'http://services.trainees.baabtra.com/LoginService/login.php',
    			  'DataType':'jsonp',
    			  //'data':{email:name,password:paswd},
    			  'data':{username:username,password:password},
    			  success:function(data)
    			  {
    				  $("#contact").html(data);
    			  },
    			  error:function()
    				  {
    				  alert("error");
    				  }
      } );
      */
      
      if(username=="")
        {
         $("#unerror").text("Required Field");
    	  //$('[data-toggle="tooltip"]').tooltip(); 
         
        }
        else{
          $("#unerror").text("");
            }
    if(password=="")
    {
       $("#pwderror").text("Required Field");
    }
    else if(password.length<=8)
    {
      $("#pwderror").text("Too short");
    }
    else
    {
      $("#pwderror").text("");
    }

      });

      $("#btnacc").click(function()
      {
         var uname=$("#txtuname").val();
        if(uname=="")
          {
         $("#ferror").text("What's your name");
        }
        else{
          $("#ferror").text("");
        }
        var lname=$("#txtlname").val();
        if(lname=="")
        {
          $("#lerror").text("What's your name");
        }
        else
        {
          $("#lerror").text("");
        }
        var ph=$("#txtnumber").val();
        if(ph=="")
        {
          $("#mnerror").text("Required Field");
        }
        else if(/^[a-zA-Z]+$/.test(ph))
        {
          $("#mnerror").text("not a valid Number");
        }
        else
        {
          $("#mnerror").text("");

        }
        var Email=$("#txtemail").val();
        
    var atpos = Email.indexOf("@");
    var dotpos = Email.lastIndexOf(".");
        if(Email=="")
        {
           $("#emerror").text("Required Field");
        }

        else if((atpos<1 || dotpos<atpos+2 || dotpos+2>=Email.length))
        {
          $("#emerror").text("invalid format");
        }
        else
        {
          $("#emerror").text("");
        }
        var pass=$("#txtpassword").val() 
        if(pass=="")
        {
           $("#pserror").text("Required Field");
        }
        else if(pass.length<=8)
        {
          $("#pserror").text("Too short");
        }
        else
        {
          $("#pserror").text("");
        }

        
         var day=$("#slctday").val();
    var month=$("#slctmnth").val();
    var Year=$("#slctyear").val();
        if(day==""||month==""||Year=="")
        {
           $("#lbldob").text("Select your date of Birth");
        }
        else
        {
          $("#lbldob").text("");
        }
     var gender= $('#rbtngender:checked').val()?true:false;
       if(gender==false)
       {
            $("#lblgender").text("Please select your gender");
       }
       else
       {
        $("#lblgender").text("");
       }
   
      });
    });

  