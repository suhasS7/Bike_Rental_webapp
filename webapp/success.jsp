<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "test.Userbean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Bike Rental </title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card {
            width: 350px;
            height: 200px;
            margin: 10px;
            border: 2px solid red;
        }

        .card-body {
            padding: 0px;
          
            
        }

        img {
            width: 346px;
            height: 196px;

        }
          img:hover{
            border: 3px solid blue;
            box-shadow: 0px 0px 5px 5px;

        }
        
    </style>
</head>
<body>
<%String uname=(String)session.getAttribute("name"); %>

 <nav class="navbar navbar-expand-lg navbar-light bg-info">
    <a class="navbar-brand" href="#">Welcome</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="#">Sports Bikes <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AverageBikes.jsp">Average Bikes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Scooter.jsp">Scooter</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Cycle.jsp">Cycle</a>
        </li>
         <li class="nav-item" style="margin-left: 825px;">
          <a class="nav-link" href="logout">Logout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><%=uname %></a>
        </li>
      </ul>
    </div>
  </nav>

    <div class="container-fluid bg-secondary" >
        <div class="row">
            <div class="col-md-4">
                <div class="card">

                    <div class="card-body">
                        <a href="bikesection?param1=1"><img src="./asset/img1.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=2"><img src="./asset/img2.jpg"></a>

                    </div>
                </div>
               
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=3"><img src="./asset/img3.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=4"><img src="./asset/img4.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=5"><img src="./asset/img5.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=6"><img src="./asset/img6.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=7"><img src="./asset/img7.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=8"><img src="./asset/img8.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a href="bikesection?param1=9"><img src="./asset/img9.jpg"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS and jQuery Online Link (for dropdowns and toggles) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>