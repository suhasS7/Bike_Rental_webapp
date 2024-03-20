<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="test.Userbean"
    import="test.Bikebean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booked</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    #printbutton{
        margin-top: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
  </style>
</head>
<body>
<% HttpSession hs= request.getSession(false);
	Userbean ub=(Userbean)hs.getAttribute("ubean");
	int days=Integer.parseInt((String)request.getAttribute("days"));
	int bikeid=Integer.parseInt((String)hs.getAttribute("bikeid"));	 
	 	Bikebean bb=(Bikebean)hs.getAttribute("bike");
	 	
	 	Double amount=bb.getBrent()*days;
	 	String uname=(String)session.getAttribute("name");
    %>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <a class="navbar-brand" href="#">Final Process</a>
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
          <a class="nav-link" href="logout" style="margin-left: 1070px;">Logout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><%=uname %></a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <table class="table table-bordered">
      <thead class="bg-warning">
        <tr>
          <th scope="col">Parameter </th>
          <th scope="col"> User Details</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>First Name </td>
          <td><%=ub.getFname() %></td>
        </tr>
        <tr>
          <td>Last name</td>
          <td><%=ub.getLname() %></td>
        </tr>
        <tr>
          <td>Bike Name</td>
          <td><%=bb.getBname() %></td>
        </tr>
        <tr>
          <td>Bike Number</td>
          <td><%=bb.getBnumber() %></td>
        </tr>
        <tr>
          <td>Licence Number</td>
          <td><%=ub.getLicence() %></td>
        </tr>
        <tr>
          <td>Days</td>
          <td><%=days %></td>
        </tr>
        <tr>
          <td>Book date</td>
          <td id="dateloader"></td>
        </tr>
        <tr>
            <td>Amount To pay</td>
            <td><%=amount %> Rs</td>
          </tr>
      </tbody>
    </table>
<h1 style="margin-left: 150px;">Pay Amount To Owner  And Get Your Keys..!</h1>


  </div>
  <div id="printbutton">
    <button  onclick="window.print()" style="background-color:green;">PRINT</button>
  </div>
  <script>
    const currentDateTime = new Date().toLocaleString();
    document.querySelector("#dateloader").innerHTML=currentDateTime;
  </script>

  <!-- Bootstrap JS CDN -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>