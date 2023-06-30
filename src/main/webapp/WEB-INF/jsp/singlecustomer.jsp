<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>CMS - Customer Page</title>
  </head>
  <body style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
    <div class="container my-3">
    
	    <form action="" method="post" class="w-50 mx-auto">
		  <div class="form-group my-3">
		    <label for="customerId">Customer Id</label>
		    <input type="text" class="form-control" id="customer Id" placeholder="Please enter customer id here..." name="cid">
		  </div>
			<button type="submit" class="btn btn-success btn-block my-3">Submit</button>
		  <div class="d-flex align-items-baseline justify-content-between">
			  <a href="/" type="button" class="m-1">Back To Home</a>
			  <button type="reset" class="btn btn-outline-danger m-1">Cancel</button>
			</div>
		</form>
	
    </div>
    
	<c:if test="${customer!=null}">
	<div class="container">
		<h5>Customer Details</h5>
		<p><span class="font-weight-bolder">Name</span>: <c:out value="${customer.cname}"/></p>
		<p><span class="font-weight-bolder">Mobile</span>: <c:out value="${customer.cmobile}"/></p>
		<p><span class="font-weight-bolder">City</span>: <c:out value="${customer.ccity}"/></p>
	</div>
	</c:if>
    <!-- Optional JavaScript; choose one of the two! -->	

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
  </body>
</html>