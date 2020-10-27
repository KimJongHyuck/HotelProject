<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"/>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" href="${path}/resources/css/styles.css">
</head>
<body>
 <header class="header">
        <div class="container">
            <nav class="nav">
                <a href="${path}" class="logo">
                    <img src="${path}/resources/images/logo.png" alt="">
                </a>
                <div class="hamburger-menu">
                    <i class="fas fa-bars"></i>
                    <i class="fas fa-times"></i>
                </div>
                <ul class="nav-list">
                    <li class="nav-item">
                        <a href="${path}" class="nav-link">홈</a>
                    </li>
                    <li class="nav-item">
                        <a href="${path}/login/loginpage.do" class="nav-link">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">갤러리</a>
                    </li>
                    <li class="nav-item">
                        <a href="${path}/board/list.do" class="nav-link">커뮤니티</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">업체소개</a>
                    </li>
                    <li class="nav-item">
                        <a href="admin/list" class="nav-link">관리자 페이지</a>
                    </li>
                </ul>

            </nav>
        </div>
    </header>


</body>
</html>