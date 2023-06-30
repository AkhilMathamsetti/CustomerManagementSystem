<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>CMS - All Customers Page</title>
  </head>
  <body style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
    <div class="container">
    	<h3 class="text-center my-4">All Customers</h3>
    	<c:if test="${customer.size()==0}">
    		<p class="text-center text-danger">Sorry, No Customers data is available!!</p>
    	</c:if>
    	<c:if test="${customer.size()!=0}">
    	<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th scope="col">Customer Id</th>
		      <th scope="col">Customer Name</th>
		      <th scope="col">Customer Mobile</th>
		      <th scope="col">Customer City</th>
		      <th scope="col">Options</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${customer}" var="cust">
		    <tr>
		      <td><c:out value="${cust.cid}"/></td>
			  <td><c:out value="${cust.cname}"/></td>
			  <td><c:out value="${cust.cmobile}"/></td>
			  <td><c:out value="${cust.ccity}"/></td>
			  <td>
			  	<button class="btn btn-outline-info mr-2"><i class="bi bi-pencil-square mr-1"></i>Update</button>
			  	<button class="btn btn-outline-danger"><i class="bi bi-trash mr-1"></i>Delete</button>
			  </td>
		    </tr>
		  </c:forEach>
		  </tbody>
		</table>
		</c:if>
    </div>
    <div class="container d-flex justify-content-between">
    	<a href="/" class="text-decoration-none">Back to Home Page</a>
    	<a href="/saveCustomer" class="btn btn-primary">Regsiter</a>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>
