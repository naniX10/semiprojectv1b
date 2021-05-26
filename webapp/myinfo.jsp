<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang = "ko">

     <head>
         <meta charset = "utf-8">
         <title>세미프로젝트V1-myinfo</title>
         <link rel = "stylesheet" href=css/base.css>
         <style>
             #myinfo { width: 300px; margin: 125px auto}
             #myinfo div { padding-bottom: 5px }
             .label { display: inline-block; width: 120px; text-align: right;
                 font-weight: bold; padding-right: 7px }

         </style>

    </head>

    <body>
         <div id = "wrap">
        <%@ include file="/layout/header.jsp" %>
        <div id = "container">
            <h2>회원정보</h2>

            <div id = "myinfo">
                <div>
                    <span class = "label"><strong>아이디</strong></span>
                    <span>pizza</span>
                </div>
                <div>
                    <span class = "label"><strong>이름</strong></span>
                    <span>pizza</span>
                </div>
                <div>
                    <span class = "label"><strong>이메일</strong></span>
                    <span>pizza@pizza.com</span>
                </div>
                <div>
                    <span class = "label"><strong>가입일</strong></span>
                    <span>2020-02-20 02:02:02</span>
                </div>
            </div>


        </div>

        <%@ include file="/layout/footer.jsp" %>

        </div>
    </body>

</html>