<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        #outer{
            border: 2px solid black;
            width: 500px;
            margin-top: 50px;
            
         
        }
       
        body{
            display: flex;
            justify-content: center;
            align-items: center;
             background-color: rgb(202, 172, 188);
        }
        .container{
          background-color: rgb(88, 161, 157);
          padding: 10px;

        }
        .btn1{
          background-color:green;
        }

    </style>
     <script>
    function validate(){
    	var val1=document.querySelector("#val1").value;
    	var val2=document.querySelector("#val2").value;
    	var val3=document.querySelector("#val3").value;
    	var val4=document.querySelector("#val4").value;
    	var val5=document.querySelector("#val5").value;
    	var val6=document.querySelector("#val6").value;
    	var val7=document.querySelector("#val7").value;
    	
    	if(val1=="" || val2=="" || val3=="" || val4=="" || val5=="" || val6=="" || val7==""){
    		alert("All Fields Are Mandatory");
    		return false;
    	}else{
    		return true;
    	}
    	
    }
    
    
    </script>
</head>
<body>

<div id="outer">
    <form onsubmit="return validate()" action="register" method="post">
        <div class="container">
          <h1>Register</h1>
          <p>Please fill in this form to create an account.</p>
        
      
          <label for="Uname"><b>USERNAME</b></label><br>
          <input type="text" placeholder="Enter USERNAME " name="uname" id="val1"><br>
      
          <label for="fname"><b>FIRST NAME</b></label><br>
          <input type="text" placeholder="Enter FIRST NAME" name="fname"  id="val2"><br>
      
          <label for="lname"><b>LAST NAME</b></label><br>
          <input type="text" placeholder="Enter LAST NAME" name="lname"  id="val3"><br>

          <label for="city"><b>CITY</b></label><br>
          <input type="text" placeholder="Enter CITY" name="city"  id="val4"><br>
      
          <label for="licence"><b>LICENCE</b></label><br>
          <input type="text" placeholder="Enter LICENCE" name="licence"  id="val5"><br>
      
          <label for="mobile"><b>MOBILE</b></label><br>
          <input type="text" placeholder="Enter MOBILE" name="mobile" id="val6"><br>
          
          <label for="password"><b>PASSWORD</b></label><br>
          <input type="password" placeholder="Enter PASSWORD" name="password"  id="val7"><br><br>
        
      
          <input type="submit" class="btn1" class="registerbtn" value="Register"><br><br>
        </div>
      
        
      </form>
      <div class="container signin">
          <p>Already have an account? <br><br><a href="index.jsp"><button class="btn1"> LOG IN</button></a>.</p>
        </div>
    </div>
    
    
   
    


</body>
</html>