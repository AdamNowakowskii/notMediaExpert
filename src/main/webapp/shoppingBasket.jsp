<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/icon.jpg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/basket.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/navBar.css">
    <title>shopping-Basket</title>
</head>
<body>
<%@ include file="/WEB-INF/segments/navBar.jspf" %>
<c:forEach var="phones" items="${requestScope.phoneToBasket}">
    <div class="products-container">
        <div class="photo-quantity">
        <img alt="" src="${pageContext.request.contextPath}/images/<c:out value="${phones.phoneUrl}"/>">
    </div>
    <div class="description">
        <c:out value="${phones.description}"/>
    </div>
    <div class="price">
        <form id="removeForm" action="${pageContext.request.contextPath}/removeFromBasket" method="get">
            <button id="trashCan" name="removeFromBasket" value="${phones.idPhone}">🗑</button>
        </form>
        <span id="product-price">Price: <c:out value="${phones.phonePrice}"/></span>
    </div>
    </div>
</c:forEach>
</body>
