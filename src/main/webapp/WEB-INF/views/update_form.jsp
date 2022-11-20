<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <%@include file="./base.jsp" %>
</head>
<body>
     
     <div  class="conatiner mt-5">
        <div class="row">
           <div class="col-md-6 offset-md-3">
              <h1 class="text-center mb-3">Update the Product details</h1>
              <form action="handle-product" method="post">
                 
                 <div class="form-group">
                   <input type="hidden" class="form-control" id="id" name="id" 
                   value="${product.id }">
                 </div>
                 
                 
                 <div class="form-group">
                   <label for="name">Product Name</label>
                   <input type="text" class="form-control" id="name" name="name" placeholder="Enter product name here"
                   value="${product.name }">
                 </div>
                 
                 <div class="form-group">
                   <label for="description">Product Description</label>
                   <textarea type="text" rows="5" class="form-control"  id="name" name="description" placeholder="Enter product description here">${product.description }</textarea>
                 </div>
                 
                 <div class="form-group">
                   <label for="price">Product Price</label>
                   <input type="text" class="form-control" id="price" name="price" placeholder="Enter product price here"
                   value="${product.price }">
                 </div>
                  <br>
                  <div class="container text-center">
                     <a href="${pageContext.request.contextPath}/index" class="btn btn-danger">Back</a>
                     <button class="btn btn-success">Update</button>
                  </div>
                
              </form>
           </div>
        </div>
     </div>
</body>
</html>