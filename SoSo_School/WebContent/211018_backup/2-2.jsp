<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
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

        body{
            min-height: 100vh;
            background-color: white;
            font-family: sans-serif;
        }
        .container{
            margin: auto;
            width: 500px;
            max-width: 90%;
        }
        .container form{
            width: 100%;
            height: 100%;
            padding: 20px;
            background-color: white;
            border-radius: 4px;
            box-shadow: 0 8px 16px reba(0,0,0,.3);
        }
        .container form h1{
            text-align: center;
            margin-bottom: 24px;
            color:#222
        }
        .container form .form-control{
            width: 100%;
            height: 40px;
            background-color: white;
            border-radius: 4px;
            border: 1px solid silver;
            margin: 10px 0 18px 0;
            padding: 0 10px;
        }

        .container form .btn{
            margin-left: 50%;
            transform: translateX(-50%);
            width: 110px;
    		height: 46px;
            border: none;
            outline: none;
            background: cornflowerblue;
            cursor: pointer;
            font-size: 16px;
            color: white;
            border-radius: 4px;
            transition: .3s;
        }
        .container form .btn:hover{
        
            opacity: .7;
        }

       .btn-link{
            display: flex;
            justify-content: center;
            width: 100%;
            height: 100%;
            padding: 10px;
            margin-bottom: 160px;
            background-color: white;
            border-radius: 4px;
            box-shadow: 0 8px 16px reba(0,0,0,.3);
            
        }
        .btn-link > .btn{
            background: lightgrey;
            cursor: pointer;
            font-size: 15px;
            color: black;
            border-radius: 4px;
            transition: .3s;
            margin:0 15px;
            padding: 10px;
            border: none;
            outline: none;
        }
        
        .btn-link > .btn:hover{
        	background-color:rgb(14, 14, 14);
        	color:white;
    		opacity: 0.6;
        }
        
        p{
            text-align: center;
            font-size: 16px;
        }
  
	
    </style>
</head>
<body>

  <header><h1><a href="4.jsp">soso school</a></h1></header>
    <nav>
    <%@ include file="/form/navi.jsp"%>
</nav>
    
    <div class="btn-link">
        <input type="button" class="btn" value="로그인" onclick="location.href='2.jsp'">
        <input type="button" class="btn" value="회원가입" onclick="location.href='3.jsp'">
        <input type="button" class="btn" value="아이디/비밀번호 찾기" onclick="location.href='2.jsp'">
    </div>
    
    <div class="container">
        <form action="">
            <div class="form-group">
                <label for="">ID</label>
                <input type="text" class="form-control" placeholder="아이디를 입력하세요." required>
            </div>
            <div class="form-group">
                <label for="">PASSWORD</label>
                <input type="password" class="form-control" placeholder="●●●●●●●●●●●●" required>
            </div>
            <input type="submit" class="btn" value="로그인">
        </form>

        
        <p>개인정보 보호를 위해 공용 PC에서 사용 후,<BR>
        계정의 로그아웃 상태를 반드시 확인해 주세요.</p>
    </div>

  
  

</body>
</html>