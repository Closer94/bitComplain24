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
        <link href="${pageContext.servletContext.contextPath}/assets/css/staffEvalIndex.css" type = "text/css" rel = "stylesheet">
    </head>
    <body style="background:#edf1f8; margin-top:3rem;">       
        <header class = "positionHead">
            <table>
                <tr>
                    <td colspan="2" style="width:300px;height:100px;font-size:60px;font-family: 'Jua', sans-serif"><a title="메인페이지로 가기" href="${pageContext.servletContext.contextPath }" style="text-decoration:none;">Bit민원24</a></td>
    
                    <td width="600" style="font-size:30px;font-family: 'Jua', sans-serif">만사소통 모두에 의한, 모두를 위한, 모든 소통</td>
                    <td style="width:250px;font-size:15px;text-align:right; height:80px;font-family:'Noto Sans KR', sans-serif;">
                    	<c:choose>
							<c:when test="${empty authUser }">
								<a id = "up" href="${pageContext.servletContext.contextPath }/login" title="마이페이지 이동">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a id = "up" href="${pageContext.servletContext.contextPath}/createId" title="로그아웃 하기">회원가입</a>&nbsp;&nbsp;
							</c:when>
							<c:otherwise>
								<a id = "up" href="${pageContext.servletContext.contextPath }/user/update">회원정보수정</a> &nbsp;&nbsp;&nbsp;
								<a id = "up" href="${pageContext.servletContext.contextPath }/user/logout">로그아웃</a> <br/><br/>
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
        </header>
        <div style="font-size:30px; font-weight: bold; margin-left:29rem;">강사/매니저 평가</div>
        <div style="margin-bottom:10px; margin-left:1370px;">
            <input id = "btn" type="button" value="글쓰기" onclick=location.href="${pageContext.servletContext.contextPath}/staffEval/evalForm">
         </div>

        <section class = "positionBody" >            
            <table style="margin-left:12rem; margin-top: 3rem; border-collapse: collapse;">
                <tr>
                    <td style="width:20rem;height: 13rem;"><a href="${pageContext.servletContext.contextPath}/staffEval/detail" ><img src="${pageContext.servletContext.contextPath}/assets/img/kimtaehee_staff.jpg" style="width:20rem;" alt="김태희"></a></td>
                    <td style="padding-left:10rem;"></td>
                    <td style="width:20rem;height: 13rem;"><a href="" ><img src="${pageContext.servletContext.contextPath}/assets/img/GoChangseac_staff.PNG" style="width:20rem; height: 27.5rem;" alt="고창석"></a></td>
                </tr>
                <tr>
                    <td style="text-align: center;font-family: 'Jua', sans-serif; font-size:25px;">김태희 강사님</td>
                    <td style="padding-left:10rem;"></td>
                    <td style="text-align: center;font-family: 'Jua', sans-serif; font-size:25px;">고창석 강사님</td>
                </tr>
                <tr>
                    <td style="height:3rem"></td>
                </tr>
                <tr>
                    <td style="width:20rem;height: 13rem;"><a href="" ><img src="${pageContext.servletContext.contextPath}/assets/img/OhDalsu_staff.PNG" style="width:20rem; height: 27.5rem;" alt="오달수"></a></td>
                    <td style="padding-left:10rem;"></td>
                    <td style="width:20rem;height: 13rem;"><a href="" ><img src="${pageContext.servletContext.contextPath}/assets/img/LeeJubin_staff.jpg" style="width:20rem; height: 27.5rem;" alt="이주빈"></a></td>
                </tr>
                <tr>
                    <td style="text-align: center;font-family: 'Jua', sans-serif; font-size:25px;">오달수 매니저님</td>
                    <td style="padding-left:10rem;"></td>
                    <td style="text-align: center;font-family: 'Jua', sans-serif; font-size:25px;">이주빈 매니저님</td>
                </tr>
            </table>
        </section>
       

        <footer class="positionBody" style="margin-top: 20rem;" >
            <hr>
            <p style="font-size:15px;color:gray;">
                <span style="margin-left:6%;">상호: Bit민원24&nbsp;&nbsp;&nbsp;대표: 이갑성&nbsp;&nbsp;&nbsp;주소: 서울특별시 서초구 서초대로74길33 비트빌3층&nbsp;&nbsp;&nbsp;전화번호: 010-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;대표메일: kabsung3@naver.com<p>
                <span style="margin-left:31%; color:gray;">CORYRIGHT DOCKINGJOB 2021 ALL RIGHTS RESESRVED</span>
            </p>
        </footer>
    </body>
</html>
