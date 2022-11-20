<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp" %>
</head>
<body>
  
   <div class="container mt-3">
   <h1 class="text-center py-3">Product App</h1>
    <div class="row" >
      <div class="col-md-12 py-3">
			         <table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th scope="col">ID</th>
						      <th scope="col">Name</th>
						      <th scope="col">Description</th>
						      <th scope="col">Price</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						  
				<c:forEach var="p" items="${products }">
						  
						  <tbody>
						    <tr>
						      <th scope="row">GRTPROD${p.id}</th>
						      <td>${p.name }</td>
						      <td>${p.description }</td>
						      <td class="font-weight-bold"> <span>&#8377;</span> ${p.price }</td>
						      <td>
						      <a href="delete/${p.id }"><i class="fa-sharp fa-solid fa-trash" style="font-size: 20px"></i></a>
						      <a href="update/${p.id }"><i class="fa-sharp fa-solid fa-file-pen" style="font-size: 20px"></i></a>
						      
						      </td>
						    </tr>
						  </tbody>
			   </c:forEach>			  
			</table>
			
			<div class="container text-center" >
			  <a href="product_form" class="btn btn-outline-success">Add Product</a>
			</div>
			
      </div>
     
    </div>
     
     
   </div>
 
</body>
</html>