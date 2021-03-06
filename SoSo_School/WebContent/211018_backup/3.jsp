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

        .btn-link{
            display: flex;
            justify-content: center;
            width: 100%;
            height: auto;
            padding: 10px;
            margin-bottom: 50px;
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
        
        
        .outer {
            text-align: center;
        }

        .inner{
            display: inline-block;
        }

        form fieldset {
            margin: 10px 0px;
        }

        legend {
            font-size: 18px;
            color: black;
            font-weight: 600;
        }

        li > input {
            width:330px;
            height:37px;
            font-size:14px;
            margin: 5px;
            border : 1px solid #80808082;
        }

        form ul li{
            list-style: none;
            margin: 5px;
        }
        form label.reg{
            font-size : 14px;
            width : 120px;
            float: left;
            margin: 10px;
        }

        form label em {
            font-size: 15px;
            color: red;
            font-weight: 800;
        }

        form fieldset.sendform{
            text-align: center;
        }

        .regisform{
            text-align: right;
            width:525px;
        }

        #parent_id{
            width: 248px
        }

        #new_email{
            width: 171px;
        }

        #chkid-btn{
            background: rgb(173,175,255);
            cursor: pointer;
            font-size: 10px;
            color: white;
            border-radius: 2px;
            height: 37px;
            margin:0 3px;
            padding: 9px;
            transition: .3s;
            border: none;
            outline: none;
        }
        
        #chkid-btn:hover{
        	opacity: 0.6;
        }
        p{
            font-size: 16px;
            font-weight: bold;
        }
        
       	fieldset{
  			border: 0;
  		}
  		
  		.sendform > .btn{
	        background: rgb(173,175,255);
            cursor: pointer;
            font-size: 20px;
            color: white;
            border-radius: 4px;
            margin:0 3px;
            padding: 9px;
            transition: .3s;
            border: none;
            outline: none;
  		}
  		
  		.sendform > .btn:hover{
  			opacity: 0.6;
  		}
  		
  		span {
  		font-size:16px;
  		}
 
  		select{
  		height:37px;
  		width:129px;
  		font-size:16px;
  		margin:5px;
  		border : 1px solid #80808082;
  		}
  		
  		input::-webkit-input-placeholder {
		padding:7px;
		}
    </style>
</head>
<body>
	<header><h1><a href="4.jsp">soso school</a></h1></header>
    <nav><%@ include file="/form/navi.jsp"%></nav>
    
    <div class="btn-link">
        <input type="button" class="btn" value="?????????" onclick="location.href='2.jsp'">
        <input type="button" class="btn" value="????????????" onclick="location.href='3.jsp'">
        <input type="button" class="btn" value="?????????/???????????? ??????" onclick="location.href='2.jsp'">
    </div>
    
    <div class="outer">
        <form>
        <div class="inner">
        <fieldset class="regisform">
            <legend> *?????? ?????? ?????? ??????</legend>
            <ul>
                <li><label class="reg" for="parent_name">????????? ??????<em>*</em></label>
                    <input type="text" id="parent_name" name="parent_name" maxlength="10" autocomplete="on" required></li>

                <li><label class="reg" for="parent_id">????????? ?????????<em>*</em></label>
                        <input type="text" id="parent_id" name="parent_id" maxlength="10"  placeholder="6?????? ????????? ?????? ?????????,?????? ??????" required>
                        <button type="button" id="chkid-btn" onclick="">????????????</button></li>

                <li><label class="reg" for="student_name">?????? ??????<em>*</em></label>
                    <input type="text" id="student_name" name="student_name" maxlength="10"  required></li>
                <li><label class="reg" for="nick_name">?????????<em>*</em></label>
                    <input type="text" id="nick_name" name="nick_name" maxlength="10"  required></li>
                <li><label class="reg" for="new_password">????????????<em>*</em></label>
                    <input type="password" id="new_password" name="new_password" maxlength="15"placeholder="8?????? ????????? ?????? ?????????, ?????? ??????" required></li>
                <li><label class="reg" for="chk_password">???????????? ??????<em>*</em></label>
                    <input type="password" id="chk_password" name="chk_password" maxlength="15" placeholder="???????????? ?????????" required></li>
                
                 <li><label class="reg" for="chk_tel">????????? ??????<em>*</em></label>
                    <input type="tel" id="chk_tel" name="chk_tel" maxlength="15" placeholder="-?????? ????????? ??????????????????." required></li>
                
                <li><label class="reg" for="new_email">?????????</label>
                    <input type="text" id="new_email" name="new_email" maxlength="15" ><span>@</span> 
                    <select name="mailslc">
                        <option value="self" selected>??????</option>
                        <option value="naver">naver.com</option>
                        <option value="gm">gmail.com</option>
                        <option value="da">daum.com</option>
                        <option value="yah">yahoo.com</option>
                        <option value="driect">?????? ??????</option>
                    </select>
                </li>
                
                <li><label class="reg" for="new_address">??????1</label>
                    <input type="text" id="new_address" name="new_address" maxlength="30" ><br>

                    <label class="reg" for="new_address">??????2</label>
                    <input type="text" id="new_address" name="new_address" maxlength="30" ><br>

                    <label class="reg" for="new_address">????????????</label>
                    <input type="text" id="new_address" name="new_address" maxlength="30" >
                    <p>?????? ????????? ?????? ????????? ????????? ??????????????????.</p>
                </li>
            </ul>
        </fieldset>
        <fieldset class="sendform">
            <input type="submit" class="btn" value="????????????">
            <input type="reset" class="btn" value="??????">
        </fieldset>
      </div>
    </form>
</div>
</body>
</html>