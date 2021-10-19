<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
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

    body{
        height: 100%;
        background-color: white;
        font-family: sans-serif;
    }
    .container{
        min-height: 80vh;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: flex-start;
    }

    #first{
        background-image: url(./img/student.jpg);
        background-size: 1000px 600px;
        background-position: right bottom;
        background-repeat: no-repeat;
        position: relative;
    }

    #first p{
        display: block;
        width: fit-content;
        position: relative;
        color: black;
    }

    #first .cta{
        display: inline-block;
        padding: 10px 15px;
        color: rgb(173,175,255);;
        border-radius: 10px;
        background-color: transparent;
        border: 2px solid rgb(173,175,255);;
        font-size: 16px;
        font-weight: bold;
        letter-spacing: .1rem;
        margin-top:6px;
        transition: .3s ease; 
        transition-property: background-color, color;
        text-decoration: none;
    }

    #first .cta:hover{
        color:white;
        background-color: rgb(173,175,255);;
    }

    .tt {
        position: relative;
        margin: 10px 165px;
        
    }

    #t1{
        font-size: 26px;
        font-weight: bold;
    }

    #t1 span{
        margin:5px 0;
        font-size: 15px;
        font-weight: bold;
    }
</style>
<body>
    <header><h1><a href="4.jsp">soso school</a></h1></header>
    <section id="first">
        <div class="container">
            <div class="tt">
                <p id="t1">
                여러분은,<br>
                무엇이든<br>
                배울 수 있습니다.<br>
                <span>국어,영어,수학과목을 쉽고 재미있게</span>
                </p>
                <a href="2.jsp" type="button" class="cta">학습하기</a>
            </div>
        </div>
    </section>

</body>
</html>