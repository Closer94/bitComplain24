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
        <link href="${pageContext.servletContext.contextPath}/assets/css/login.css" type = "text/css" rel = "stylesheet">

    </head>
    <body style="background:#edf1f8;">
        <div class="positionHead">
            <p title="메인페이지로 가기" style="width:300px;height:100px;font-size:60px;font-family:'Jua', sans-serif; margin-left:210px"><a href="index.html" style="text-decoration:none; ">Bit민원24</a>
            <hr>
            <div>
                <form method="post" action="${pageContext.servletContext.contextPath}/user/auth">
                    <table>
                        <tr><td style="font-family:'Jua', sans-serif;">아이디</td></tr>
                        <tr><td><input type="text" name="id" placeholder="아이디 입력" style="width:300px; height:40px; padding-left:10px;"></td><td rowspan="7"><img src="${pageContext.servletContext.contextPath}/assets/img/login.jpg" width="250" height="250" style="padding-left:20px;"></td></tr>
                        <tr><td style="font-family:'Jua', sans-serif;">비밀번호</td></tr>
                        <tr><td><input type="password" name="password" placeholder="비밀번호 입력" style="width:300px; height:40px; padding-left:10px;"></td></tr>
                        <tr><td style="height:25px;"></td></tr>
                        <c:if test="${'fail' == param.result }">
							<p>로그인을 실패 했습니다.</p>
						</c:if>
                        <tr><td><input type="submit" value="로 그 인" style="width:315px; height:40px; background:#4d87ef; color:whitesmoke;font-family: 'Noto Sans KR', sans-serif;font-size:20px;"></td></tr>
                    </table>
                </form>
            </div>
            <hr>
        </div>
    </body>

</html>
