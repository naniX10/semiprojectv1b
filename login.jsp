<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang = "ko">

     <head>
         <meta charset = "utf-8">
         <title>세미프로젝트V1-login</title>
         <link rel = "stylesheet" href=css/base.css>
         <style>
             #loginfrm { width: 300px; margin: 100px auto; }
             #loginfrm div {margin-bottom: 5px}
             #loginfrm label { display: inline-block; text-align: right; width: 90px;
                            font-weight: bold; font-size: 14px }
             input, button { padding: 3px }
             input { width: 125px }
             button { margin-left: 95px; width: 60px }
         </style>
    </head>

    <body>
         <div id = "wrap">
        <%@ include file="/layout/header.jsp" %>
        <div id = "container">
             <h2>로그인</h2>
            <form name = "loginfrm" id = "loginfrm" method = "post">
                <div><label for = "userid">아이디</label>
                    <input type = "text" name = "userid" id = "userid" required>
                </div>

                <div><label for = "passwd">패스워드</label>
                    <input type = "password" name = "passwd" id = "passwd" required>
                </div>

                <div>
                    <button type = "button" id="loginbtn">
                    로그인</button>
                </div>

            </form>

        </div>

        <%@ include file="/layout/footer.jsp" %>
        
        </div>
        
        <script>
        var loginbtn = document.getElementById('loginbtn');
        loginbtn.addEventListener('click',loginok);
        
        function loginok() {
        	var frm = document.getElementById('loginfrm');
        	if(frm.userid.value == '')
        		alert('아이디를 입력해주세요!');
        	else if (frm.passwd.value == '')
        		alert('비밀번호를 입력해주세요!');
        	else {
        		frm.action = 'loginok.jsp';
        		frm.submit();
        	}
        }
        </script>
        
        
    </body>

</html>