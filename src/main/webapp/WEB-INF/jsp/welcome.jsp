<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Welcome CMS</title>
  </head>
  <body style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
  	<img src="${pageContext.request.contextPath}/resources/images/bg.png" class="image-fluid" style="position:absolute;z-index:-1;width:100%;height:100%;opacity:20%">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand font-weight-bolder" href="/">CMS</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item">
	        <a class="nav-link text-light" href="/">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-light" href="/saveCustomer">Register</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class="container d-flex flex-column text-center" style="height:90vh;justify-content:center;">
		<h2 class="mb-2 text-bolder">Customer Management System</h2>
		<p class="w-50 mx-auto mb-3">Customer relationship management is a process in which a business or other organization administers its interactions with customers, typically using data analysis to study large amounts of information.</p>
		<div class="btn-group w-75 mx-auto" role="group" aria-label="All Links">
		  <a href="/saveCustomer" type="button" class="btn btn-outline-success m-1" data-toggle="tooltip" data-placement="top" title="Regsiter Here"><img width="50" height="50" src="https://img.icons8.com/3d-fluency/94/peacock.png" alt="peacock"/></a>
		  <a href="/singleCustomer" type="button" class="btn btn-outline-primary m-1" data-toggle="tooltip" data-placement="top" title="Get Single Customer"><img width="50" height="50" src="https://img.icons8.com/3d-fluency/94/dolphin.png" alt="dolphin"/></a>
		  <a href="/allCustomers" type="button" class="btn btn-outline-secondary m-1" data-toggle="tooltip" data-placement="top" title="Get All Customers"><img width="50" height="50" src="https://img.icons8.com/3d-fluency/94/elephant.png" alt="elephant"/></a>
		  <a href="/deleteCustomer" type="button" class="btn btn-outline-danger m-1" data-toggle="tooltip" data-placement="top" title="Delete Customer"><img width="50" height="50" src="https://img.icons8.com/3d-fluency/94/pig.png" alt="pig"/></a>
		</div>
	</div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    
  </body>
</html>