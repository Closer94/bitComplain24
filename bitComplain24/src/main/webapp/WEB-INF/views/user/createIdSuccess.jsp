<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            Bit민원24
        </title>
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Stylish&display=swap&subset=korean" rel="stylesheet">
        <link href = "${pageContext.request.contextPath }/assets/css/login.css" type = "text/css" rel = "stylesheet">

    </head>
    <body style="background:#edf1f8;">
        <div class="positionHead">
            <p title="메인페이지로 가기" style="width:300px;height:100px;font-size:60px;font-family:'Jua', sans-serif; margin-left:210px"><a href="index.html" style="text-decoration:none; ">Bit민원24</a>
            <div style="width:600px;height:100px;font-size:60px;font-family:'Jua', sans-serif; margin-left:180px">
                회원 가입 성공
            </div>
            <div>
                <img src="${pageContext.request.contextPath }/assets/img/createIdSuccess.jpg" style="margin-left:5rem" alt="회원가입 성공이미지">
            </div>
            <div style="height: 3rem;"></div>
            <div>
                <input type="button" onclick="location.href='${pageContext.request.contextPath }/user/login'" value="로그인 하기" style="width:400px; height:40px; background:#4d87ef; color:whitesmoke;font-family: 'Noto Sans KR', sans-serif; font-size:20px; margin-left:8.5rem;">
            </div>
        </div>
    </body>

</html>
