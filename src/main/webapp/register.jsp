<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/icon.jpg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/navBar.css">
    <title>Register</title>
</head>
<body>
<%@ include file="/WEB-INF/segments/navBar.jspf" %>
<form action="${pageContext.request.contextPath}/register" method="post" class="user-form">
    <div class="user-div">
        <h1>Register</h1>
        <div class="form-control">
            <input required type="text" name="firstName"  autocomplete="off" title="" />
            <label>FistName </label>
            <div class="border-around"></div>
        </div>
        <div class="form-control">
            <input required type="text" name="lastName" autocomplete="off" title="" />
            <label>LastName</label>
            <div class="border-around"></div>
        </div>
        <div class="form-control">
            <input required type="email" name="email" autocomplete="off" title="" />
            <label>Email address</label>
            <div class="border-around"></div>
        </div>
        <div class="form-control">
            <input required type="password" name="password" autocomplete="off" title="" />
            <label>password </label>
            <div class="border-around"></div>
        </div>
        <div class="submit">
            <input type="submit" value="Register">
        </div>
        <div class="register-info">
            <span id="/WEB-INF/views/index.jsp">You have account?</span>
            <a href="${pageContext.request.contextPath}/login"> <span>Click Here</span></a>
        </div>
            <c:forEach var="validator" items="${requestScope.validate}" >
                <p style="color: red">${validator.getMessage()}</p>
            </c:forEach>

    </div>
</form>
</body>
</html>
