<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bike_rent</title>
    <link rel="stylesheet" href="./project.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">

</head>

<body id="bg">
    <div class="navbar">
        <h1 style="margin-left: 400px">Welcome To Raghav Bike Services</h1>
    </div>
    <div class="container1">
        <div id="left">
            <div id="img_container">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="2000" >
                            <img src="./corousalimg/Bullet.jpg">
                        </div>
                        <div class="carousel-item " data-bs-interval="2000">
                            <img src="./corousalimg/ktm.jpg">
                        </div>
                        <div class="carousel-item " data-bs-interval="2000">
                            <img src="./corousalimg/scooty.png">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                      </button>
                </div>

            </div>
        </div>

        <div id="right">
            <div id="logpanal">
                <form  onsubmit="return validate()"  method="post" action="login">
                    <label>User Name :</label><br>
                    <input class="btn1" type="text" name="uname" placeholder="Enter User Name" id="val1"><br><br>
                    <label>Password :</label><br>
                    <input class="btn1" type="text" name="upassword" placeholder="Enter The Password" id="val2"><br><br>
                    <div style="color:red;">${error}</div>
                    <input class="btn1"  type="submit" value="Log In">
                </form>

                <br><label>Create an account :</label><br><br>
                <button class="btn1" id="btn2" ><a id="a" href="register.jsp">Sign Up</a> </button>


            </div>
        </div>

    </div>
      <script>
    function validate(){
    	var val1=document.querySelector("#val1").value;
    	var val2=document.querySelector("#val2").value;
   
    	
    	if(val1=="" || val2=="" ){
    		alert("All Fields Are Mandatory");
    		return false;
    	}else{
    		return true;
    	}
    	
    }
    
    
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>


</body>
</html>