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
        <link href="${pageContext.servletContext.contextPath}/assets/css/staffEvalForm.css" type = "text/css" rel = "stylesheet">

    </head>
    <body style="background:#edf1f8; margin-top:3rem;">
        <header class = "positionHead">
            <table>
                <tr>
                    <td colspan="2" style="width:300px;height:100px;font-size:60px;font-family: 'Jua', sans-serif"><a title="메인페이지로 가기" href="${pageContext.request.contextPath }" style="text-decoration:none;">Bit민원24</a></td>
    
                    <td width="600" style="font-size:30px;font-family: 'Jua', sans-serif">만사소통 모두에 의한, 모두를 위한, 모든 소통</td>
                    <td style="width:250px;font-size:15px;text-align:right; height:80px;font-family:'Noto Sans KR', sans-serif;">
                    	<c:choose>
							<c:when test="${empty authUser }">
								<a id = "up" href="${pageContext.request.contextPath }/login" title="마이페이지 이동">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a id = "up" href="${pageContext.servletContext.contextPath}/createId" title="로그아웃 하기">회원가입</a>&nbsp;&nbsp;
							</c:when>
							<c:otherwise>
								<a id = "up" href="${pageContext.request.contextPath }/user/update">회원정보수정</a> &nbsp;&nbsp;&nbsp;
								<a id = "up" href="${pageContext.request.contextPath }/user/logout">로그아웃</a> <br/><br/>
								${authUser.nickname }님 안녕하세요 ^^;
							</c:otherwise>
						</c:choose>                    	
                    </td>
                </tr>
            </table>

        <nav>
		    <ul id="ulStyle" style="margin-left:27rem;">
		        <li id="liStyle" title="1:1 문의/건의" style="margin-left: -30px;"><a href="${pageContext.servletContext.contextPath}/oneToOne">1:1 문의/건의</a></li>
		        <li id="liStyle" title="강사/매니저 평가" style="margin-left: 100px;"><a href="${pageContext.servletContext.contextPath}/staffEval">강사/매니저 평가</a></li>
		        <!-- <li id="liStyle" title="소통 게시판" style="margin-left: 100px;"><a href="${pageContext.servletContext.contextPath}/community">소통 게시판</a></li> -->
		    </ul>
		</nav>
        <div style="margin-left:140px; border: 1px solid white; width:937px; background: white">
            <div style="font-size:30px; font-weight: bold; color:#3493ff;">강사/매니저 평가</div>
            <table style="margin-left:15rem;">                
                <tr>
                    <td colspan="2" style="height:30px;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size:20px; font-weight: bold;">직원 성명 : <span>김태희</span></td>
                   
                </tr>
                <tr>
                    <td colspan="2" style="font-size:20px; font-weight: bold; height: 4rem;">
                  	      학생들의 평가 
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
			                        의견을 무시하고 방치하였다. <span>[ 1 ]<span><br/><br/>
			                        친절한 설명과 안내를 해주었다. <span>[ 5 ]<span></span> <br/><br/>
			                        불친절한 설명과 제대로 된 안내가 없었다. <span>[ 5 ]<span></span> <br/><br/>
			                        자신의 역할에 적극적인 모습을 보였다. <span>[ 2 ]<span></span> <br/><br/>
			                        자신의 역할에 적극적이지 못한 모습을 보였다. <span>[ 5 ]<span></span> <br/><br/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" onclick="return check();" value="강사/매니저 목록보기" style="width:400px; height:40px; background:#4d87ef; color:whitesmoke;font-family: 'Noto Sans KR', sans-serif;font-size:20px;">
                    </td>
                </tr>
            </table>
        </div>
        
    </body>
    

</html>
