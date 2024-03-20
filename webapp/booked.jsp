<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.Bikebean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    img{
        width: 700px;
        height: 350px;
        margin-left: 350px;
        margin-top: 50px;
        border: 5px solid black;
    }
    #container2{
         margin-left: 450px;
        width: 700px;
       
        font-weight: bolder;
        width: 1000px;
    }
     #cbody{
      background-color: rgb(194, 169, 169);

    }
  </style>
  
</head>
<body>
 <!-- Navbar -->
 <% HttpSession hs=request.getSession(false);
 	Bikebean bb=(Bikebean)hs.getAttribute("bike");
	String uname=(String)session.getAttribute("name");
 %>
  <nav class="navbar navbar-expand-lg navbar-light bg-info">
    <a class="navbar-brand" href="#">Details</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="success.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="logout" style="margin-left:1130px;">Logout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><%=uname %></a>
        </li>
      </ul>
    </div>
  </nav>
  <div id="imgcontainer">
    
        <img id="imgloder" src="">
    
  </div>

  <!-- Content -->
  <div class="container " id="container2">
    <div class="row">
      <div class="col-md-6">
        <div class="card ">
          <div class="card-body " id="cbody">
            <!-- Labels -->
            <h5 class="card-title">Bike Details </h5>
            <div>
              <label for="label1">Bike Name  :</label>
              <label id="label1"><%=bb.getBname() %></label> 
            </div>
            <div>
              <label for="label">Type :</label>
              <label id="label2"><%=bb.getBtype() %></label>
            </div>
            <div>
              <label for="label3">Rent Per Day:</label>
              <label id="label3"><%=bb.getBrent() %></label>
            </div>
            <div>
                <label for="label1">Bike Number:</label>
                <label id="label1"><%=bb.getBnumber()%></label>
              </div>
              <div>
              <form  onsubmit="return validate()" action="final" method="post">
              <label>Days Insert:</label>
                <input type="text" name="days" id="val1"> 
              <input type="submit"  value="Next" style="background-color:green"> 
            	</form>
              </div>
              
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>

    var imgsrc=document.getElementById("imgloder");
    var num=<%= bb.getBid()%>;
    imgsrc.src="./asset/img"+num+".jpg";
  
  </script>
  
    <script>
    function validate(){
    	var val1=document.querySelector("#val1").value;
    	if(val1=="" ){
    		alert("Days field is manatory");
    		return false;
    	}else if(val1 < 1 || val1 > 15 ){
    		alert("Days must between 1 to 15 only");
    		return false;
    	}else{
    		return true;
    	}
    	
    }
    </script>

  <!-- Bootstrap JS CDN (Optional, for Bootstrap components that require JavaScript) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>