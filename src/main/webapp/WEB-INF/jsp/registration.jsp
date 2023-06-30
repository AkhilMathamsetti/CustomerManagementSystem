<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>CMS - Registration</title>
  </head>
  <body class="container" style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
    <h2 class="text-center mt-4">Customer Registration Page</h2>
    
    <form action="saveCustomer" method="post" class="w-50 mx-auto mt-5">
	  <div class="form-group">
	    <label for="customerName">Customer Name</label>
	    <input type="text" class="form-control" id="customerName" name="cname" placeholder="Please enter name here..." required>
	  </div>
	  <div class="form-group">
	    <label for="customerMobile">Customer Mobile</label>
	    <input type="text" class="form-control" id="customerMobile" name="cmobile" placeholder="Please enter mobile number here..." required>
	  </div>
	  <div class="form-group">
	    <label for="customerCity">Customer City</label>
	    <select class="form-control" id="customerCity" name="ccity">
	      <option>--Select Your City--</option>
	      <option>Hyderabad</option>
	      <option>Visakhapatnam</option>
	      <option>Banglore</option>
	      <option>Chennai</option>
	    </select>
	  </div>
	  <div class="w-100 mx-auto d-flex justify-content-between align-items-baseline">
	  	<a href="/" class="text-decoration-none">Back to Home Page</a>
	  	<button type="submit" class="btn btn-primary">Register</button>
	  </div>
	</form>
	
	<c:choose>  
	    <c:when test="${customer!=null}">  
	       <p class="text-center my-3 text-success">Dear,<c:out value="${customer.cname}"/>, Your Registration is Success!</p>  
	    </c:when>  
	    <c:when test="${customer==null}">  
	        <p class="text-center my-3 text-danger">Please Add required details</p>  
	    </c:when>  
	    <c:otherwise>  
	       <p class="my-3 text-primary text-center">Customer is not registered...</p>  
	    </c:otherwise>  
	</c:choose>  

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    
  </body>
</html>