<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head> 
	<meta charset='utf-8'>
        <title>
            Bit민원24
        </title>
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Stylish&display=swap&subset=korean" rel="stylesheet">
<!--아이디, 비밀번호 유효성 검사

    <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 

    <script>
        window.onload = function(){
            
            id = document.getElementById("id");
            password = document.getElementById("password");
            passwordcheck = document.getElementById("passwordcheck"); 
               
        }

        function check(){
            
            init();
            if(!(/^[a-z][a-z0-9_-]{3,11}$/.test(id.value))) //아이디 검사
            {
                alert("아이디는 소문자,숫자만 가능하고 4~12글자 입력바랍니다.");
                return false;
            }else if(!(/[a-zA-Z0-9]{8,12}$/.test(password.value))) //비밀번호 검사
            {
                alert("비밀번호는 소문자,대문자,숫자 중 8~12글자로 입력 바랍니다.");
                return false;
            }else if(!(password.value==passwordcheck.value)) //PW와 PW_RE 비교 검사
            {
                alert("비밀번호와 비밀번호 확인 값은 같아야 합니다.");
                return false;
            }
            return true;
        }
            function init(){
            id.style.backgroundColor="white";
            password.style.backgroundColor="white";
            passwordcheck.style.backgroundColor="white";
            
        
        }
    </script>
--> 

    </head>
    <body style="background:#edf1f8;">
        <div class="positionHead">
            <p style="width:400px;height:80px; font-size:50px; font-family:'Do Hyeon', sans-serif; margin-left:50rem;">Bit민원24 회원가입</p>

            <div style="margin-left:48rem;">
                <form method="post" action="${pageContext.request.contextPath }/user/join">
                    <table border="0">
                        <tr><td><input type="text" name="id" id="id" placeholder="  아이디" style="width:390px; height:40px; padding-left:10px"></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td><input type="password" name="password" id="password" placeholder="  비밀번호" style="width:390px; height:40px; padding-left:10px"></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td><input type="password" name="passwordcheck" id="passwordcheck" placeholder="  비밀번호 확인" style="width:390px; height:40px; padding-left:10px"></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td><input type="text" name="nickname" placeholder="  닉네임" style="width:390px; height:40px; padding-left:10px"></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td style="font-family: 'Noto Sans KR', sans-serif;"><label><input type="checkbox">도킹잡에서 제공하는 서비스 약관에 동의합니다.</label>&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size:13px;"><a href="">약관보기</a></st></td></tr>
                        <tr><td style="height:10px;"></td></tr>
                        <tr><td><input type="submit" onclick="return check();" value="회원가입하기" style="width:400px; height:40px; background:#4d87ef; color:whitesmoke;font-family: 'Noto Sans KR', sans-serif;font-size:20px;"></td></tr>
                        <tr><td style="height:40px;"></td></tr>
                        <tr><td style="padding-left:100px;">이미 가입 하셨다면? <strong><a href="${pageContext.request.contextPath }/user/login">로그인</a><strong></td></tr>
                    </table>
                </form>
            </div>
            <hr>
        </div>
    </body>

</html>
