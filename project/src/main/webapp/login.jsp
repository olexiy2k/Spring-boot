<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Log in with your account</title>

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

  <body>

    <div class="col-md-3 offset-md-4"><br><br>
    <center><h1><b>login</b></h1></center>
        <form th:action="@{/login}" method="post" class="form-signin">
  <div class="form-group">
    <label for="exampleInputEmail1">User Name :</label>
    <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
     <input name="password" type="password" class="form-control" placeholder="Password"/>
  </div>
  <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  <button type="submit" class="btn btn-primary btn-lg btn-block">Log In</button>
</form>
<center><a href="${contextPath}/registration">Create an account</a></center>
</div>
  </body>
</html>