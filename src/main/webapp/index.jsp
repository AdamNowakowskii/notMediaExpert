<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NotMediaExpert</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/navBar.css">
</head>
<body>
<%@ include file="/WEB-INF/segments/navBar.jspf" %>
<main>
    <div class="left-nav-bar-container">
        <h1>CATEGORY</h1>
        <div class="left-nav-bar-category-list">
            <c:forEach var="categoryNames" items="${requestScope.allCategory}" >
               <form method="post" action="${pageContext.request.contextPath}/category">
                   <button name="categoryButton" value="${categoryNames.name}">${categoryNames.name}</button>
               </form>
            </c:forEach>
        </div>
    </div>
    <div class="phone-container">
        <c:forEach var="allPhones" items="${requestScope.allPhone}">
        <div class="phone-inof">
                <div class="phone-cost">
                    <h1 id="price">${allPhones.phonePrice}</h1>
                    <p id="loan">${allPhones.loanPrice()} x 20 Loan  0 % PRSO </p>
                    <p id="payment-in-loan">in installments ${allPhones.discountLoanPrice()} <br>
                        first installments is free!!
                    </p>
                    <div class="delivery">
                        <img src="${pageContext.request.contextPath}/images/delivery.png" alt="">
                        <p>Delivery Tomorrow</p>
                    </div>
                    <div class="location-point">
                        <img src="${pageContext.request.contextPath}/images/location-point.svg" alt="">
                        <p>Avaliable Today</p>
                    </div>
                    <div class="time-icon">
                        <img src="${pageContext.request.contextPath}/images/time-icon.png" alt="">
                        <p>Available in shop</p>
                    </div>
                    <form method="get" action="${pageContext.request.contextPath}/addToCart">
                        <button name="addToShoppingBasket" value="${allPhones.getIdPhone()}">To shoppingBasket </button>
                    </form>
                    <div class="order-phone">
                        <p>Order By Phone</p>
                        <p>XXX-XXX-XXX</p>
                    </div>
                </div>
                    <h1>${allPhones.description}</h1>
                    <p>Id Phone : ${allPhones.idPhone}</p>
                    <div class="phone-specification">
                        <img src="${pageContext.request.contextPath}/images${allPhones.phoneUrl}" alt="">
                        <div class="technical-detalis">
                            <p>screen:  ${allPhones.screen} </p>
                            <p>battery : ${allPhones.battery} </p>
                            <p>ram :${allPhones.ram} </p>
                        </div>
                </div>
        </div>
    </c:forEach>
    </div>
</main>
</body>
</html>