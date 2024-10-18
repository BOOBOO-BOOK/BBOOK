<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="topMenu">
    <div id="logo">
        <img alt="로고" src="${pageContext.request.contextPath}/image/booboobooklogo-remove.jpeg" id="logo_image" onclick="location='${pageContext.request.contextPath}/'" style="width:60px; height:60px; cursor: pointer;">
    </div>
    <ul id="menu">
        <li><a href="${pageContext.request.contextPath}/bookboard/bookList">Book</a></li>
        <li><a href="${pageContext.request.contextPath}/qna/qnaList">Q&A</a></li>
        <li><a href="${pageContext.request.contextPath}/mypage">My Page</a></li>
        <c:if test="${sessionScope.loginUser.id == 'admin'}">
            <li><a href="${pageContext.request.contextPath}/bookboard/bookListForm">Admin Upload Book</a></li>
        </c:if>
    </ul>
    <ul id="authMenu">
        <c:choose>
            <c:when test="${empty sessionScope.loginUser}">
                <li><a href="#" id="loginBtn">로그인</a></li>
                <li><a href="#" id="registerBtn">회원가입</a></li>
            </c:when>
            <c:otherwise>
                <li><span>${sessionScope.loginUser.name}님</span></li>
                <li><a href="#" id="logoutBtn">로그아웃</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
    <div id="hamburgerMenu" onclick="toggleMenu()">
        &#9776;
    </div>
</div>