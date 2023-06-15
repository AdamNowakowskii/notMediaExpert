
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/icon.jpg">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/login.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/navBar.css">
  <title>Login</title>
</head>
<body>
<%@ include file="/WEB-INF/segments/navBar.jspf" %>
<form action="j_security_check" method="post">
  <div class="user-div">
    <div class="login-icon">
      <img src="${pageContext.request.contextPath}/images/login-icon.png" alt="">
    </div>
    <h1>Logi in</h1>
    <div class="form-control">
      <input required  title="" name="j_username"  autocomplete="off">
      <label>Email </label>
      <div class="border-around"></div>
    </div>
    <div class="form-control">
      <input required type="password" name="j_password" title="" autocomplete="off">
      <label>password</label>
      <div class="border-around"></div>
    </div>
    <div class="submit">
      <input type="submit" value="Log in">
    </div>
    <div class="register-info">
      <span id="a">You don't have account?</span>
      <a href="${pageContext.request.contextPath}/register"><span>Click Here</span></a>
    </div>
  </div>
</form>
</body>
</html>