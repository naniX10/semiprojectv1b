<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    	<meta charset="UTF-8">
    	<title>게시판</title>
   	 	<link rel = "stylesheet" href=/css/base.css>
         <style>
             #writefrm { width: 250px; margin: 100px auto; }
             #writefrm div {margin-bottom: 15px}
             #writefrm label { display: inline-block; text-align: right; width: 35px;
                            font-weight: bold; font-size: 14px }
             input, button { padding: 3px }
             input { width: 400px }
             button { margin-left: 10px; width: 100px }
         </style>
       
    </head>
    <body>
        <div class="wrap">
            
            <%@ include file="/layout/header.jsp" %>
            
        <div id="container">
        	<h2>글 작성하기</h2>
        	<form name = "writefrm" id = "writefrm" method = "post">
                <div><label for = "title">제 목</label>
                    <input type = "text" size="50" name = "title" 
                    id = "title" required>
                </div>
				<br>
                <div><label for = "content">본 문</label>
                    <textarea rows="30" cols="50" name="content" 
                    id="content" required></textarea>
                </div>

                <div>
                    <button type = "submit">작성 완료!</button></div>

            </form>
        
        </div>

        	<%@ include file="/layout/footer.jsp" %>
        	
        </div>
     </body>
</html>        