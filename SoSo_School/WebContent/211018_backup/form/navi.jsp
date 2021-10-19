<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
    
<html>
<head>
    <title>navi</title>
</head>
<style>
      .navi{
	   font-size:16px;
        list-style-type: none;
        height: 0;
        padding: 0;
        margin: 0;
	    }
	    .navi li{
	        float: left;
	        position: relative;
	        padding: 0;
	        line-height: 40px;
	        background-color: rgb(173,175,255);
	        min-width: 180px;
	        text-align: center;
	    }
	    .navi li a{
	        color: white;
	        font-weight: bold;
	        padding: 5px 25px;
	        text-decoration: none;
	    }
	    .navi li ul{
	        list-style: none;
	        position: relative;
	        left: 0;
	        width: auto;
	        background-color: gray;
	        padding: 0;
	        margin: 0;
	        opacity: 0;
	    }
	    .navi li:hover ul{
	           opacity: 1;
	    }
	    .navi li ul li{
	        float: none;
	        position: static;
	        height: 0;
	        line-height: 0;
	        background-color: gray;
	        margin: 0;
	        padding: 0;
	    }
	    .navi li:hover ul li{
	        height: 30px;
	        line-height: 30px;
	    }
	    .navi li{
	        transition: all 0.2s;
	    }
	    .navi li a{
	        transition: all 0.2s;
	    }
	    .navi li ul li{
	        transition: height 0.3s;
	    } 

</style>
<body>
<ul class="navi">
    <li>
        <a>학습하기</a>
        <ul>
            <li><a>국어</a></li>
            <li><a>영어</a></li>
            <li><a>수학</a></li>
        </ul>
    </li>
    <li>
        <a>자료실</a>
        <ul>
            <li><a>1학년</a></li>
            <li><a>2학년</a></li>
            <li><a>3학년</a></li>
        </ul>
    </li>
    <li>
        <a>소모임</a>
        <ul>
            <li><a>지역별모임</a></li>
            <li><a>채팅하기</a></li>
        </ul>
    </li>
    <li>
        <a>마이페이지</a>
        <ul>
            <li><a>나의 학습 현황</a></li>
            <li><a>상품 교환</a></li>
            <li><a>회원 정보 수정</a></li>
            <li><a>고객 문의</a></li>
        </ul>
    </li>
    <li><a>결제하기</a></li>
</ul>
</body>
</html>
