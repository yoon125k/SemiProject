<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
		* { 
		    text-decoration: none;
		    padding: 0; margin: 0;
		    box-sizing: border-box;
		}
		
		body {
			min-height: 100vh;
			background-color: white;
			font-family: sans-serif;
		}
		
		li{
		    list-style: none;
		}


 	    header {
        display: inline;
        position: relative;
        color: #333;
        width: 100%;
        float: left;
        padding: 10px;
        border: 1px solid #ccc;
        height: 100px;
        margin: 10px 0px 5px 0px;
        background-color:white
        }
        
        header h1 a{
            color: black;
            text-decoration: none;
        }
        
        nav{
            display: block;
            position: relative;
            width: 100%;
            height: 45px;
            float: left;
            border: 1px solid black;
            margin: 10px 0px;
            background-color: rgb(173,175,255);
        }
        
		#left { 
		 color: #333;
		 border: 1px solid #ccc;
		 background:white;
		 margin: 0px 5px 5px 0px;
		 padding: 10px;
		 height: auto;
		 width: 80%;
		 float: left;
		}
		#right { 
		 float: right;
		 color: #333;
		 border: 1px solid #ccc;
		 background:white;
		 margin: 0px 0px 5px 0px;
		 padding: 10px;
		 height: auto;
		 width: 15%;
		 display: inline;
		}
		#footer { 
		 width: 100%;
		 clear: both;
		 color: #333;
		 border: 1px solid #ccc;
		 background-color:white;
		 margin: 0px 0px 10px 0px;
		 padding: 10px;
		}
		
		#right #login{
		font-size:15px;
		}
		
		#right #login .btn{
            margin: 15px 15px 5px 50%;
            transform: translateX(-50%);
            width: 120px;
            height:34px;
            border: none;
            outline: none;
            background: rgb(173,175,255);
            cursor: pointer;
            font-size: 16px;
            color: white;
            border-radius: 4px;
            transition: .3s;
            
        }
        
        #right #login .btn:hover{
        
            opacity: .7;
        }
        
		#right > #rank{
		font-size:16px;
		}
		#right > #rank h3{
		margin:10px 0;
		padding:10px 0;
		font-size:15px;
		}

</style>
<body>
    <header><h1><a href="4.jsp">soso school</a></h1></header>
    <nav><%@ include file="/form/navi.jsp"%></nav>
  <div id="left">
    <!-- 동영상 -->
    <div id="video">
      <h3>가장 많이 조회된 동영상</h3>
      <iframe width="220" height="200" src="https://www.youtube.com/embed/k_g7sBJ3fBg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  
      <iframe width="220" height="200" src="https://www.youtube.com/embed/k_g7sBJ3fBg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  
      <iframe width="220" height="200" src="https://www.youtube.com/embed/k_g7sBJ3fBg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  
    </div>
    
    <!-- 소모임 -->
    <div>
      <h3>내 주변 소모임</h3>
      <div id="group"></div>
    </div>
    
    <!-- 공지사항 -->
    <div>
      <h3>공지사항</h3>
      <div id="notic">
        <table border="1">
          <th width="900px">제목</th>
          <th width="200px">날짜</th>
          <tr>
            <td><a href="">공지사항</a></td>
            <td>2021-10-10</td>
          </tr>
        </table>
      </div>
    </div>
  </div>

  <div id="right">
    <!-- 회원 정보 -->
    <div id="login">
      <form action="">
        <ul>
          <li>님 환영합니다.</li>
          <li><a href="">나의 소속 소모임</a></li>
          <li>시 별무리 도서관</li>
          <li>스티커 개수 2</li>
          <input type ="button" class="btn" value="로그아웃" onclick="location.href='1.jsp'">
        </ul>
      </form>
    </div>

    <!-- 회원 랭킹 -->
    <div id="rank">
      <h3>우리 학년에서 나는 몇위 ?</h3>
      <table id="rank-table" border="1">
          <col width="100px"><col width="100px"><col width="100px">
          <tr>
          <td>1</td>
          <td>이름</td>
          <td>별</td>
          </tr>
          <tr>
          <td>1</td>
          <td>이름</td>
          <td>별</td>
          </tr>
          <tr>
          <td>1</td>
          <td>이름</td>
          <td>별</td>
          </tr>
          <tr>
          <td>1</td>
          <td>이름</td>
          <td>별</td>
          </tr>
          <tr>
          <td>1</td>
          <td>이름</td>
          <td>별</td>
          </tr>
          
          <table border="2">
            <col width="100px"><col width="100px"><col width="100px">
            <td>1</td>
            <td>이름</td>
            <td>별</td>
          </table>
      </table>
    </div>
  </div>

  <div id="footer"> Footer </div>

</body>
</html>