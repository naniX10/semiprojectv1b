<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<c:set var="cr" value="
" scope="application" />
<c:set var="br" value="<br/>" scope="application" />

<fmt:setBundle basename="nanix.jdbc" />
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />

<sql:setDataSource url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}" var="mariadb"/>	

<sql:update dataSource="${mariadb}">
	update board set views = views + 1
	where bdno = ?
	<sql:param value="${param.bdno}" />
</sql:update>

<sql:query var="rs" dataSource="${mariadb}">
	select * from board
	where bdno = ?
	<sql:param value="${param.bdno}" />
</sql:query>

    
    
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>세미프로젝트V1-view</title>
        <link rel="stylesheet" href="/css/base.css">
        <style>
        	#view { width: 600px; margin: 0 auto; padding-top: 50px  }
        	#view div { margin-bottom: 20px }
        	#view div:first-child { margin-bottom: 25px }
             #view label { display: inline-block; text-align: right; 
             				width: 125px; font-weight: bold; font-size: 14px }
             div span { border : 1px solid aqua; padding: 5px; }				
             .contents { display: inline-block; width: 450px; height:350px; }
             .dragup { vertical-align: top; }
             
        </style>
    </head>
    <body>
        <div id="wrap">
        
        <%@ include file="/layout/header.jsp" %>
        
        <div id="container">
        	<h2>게시판 - 본문보기</h2>
        	<div id="view">
        		<c:forEach var="r" items="${rs.rows}">
        		<div>
        			<label>제목</label>
        			<span>${r.title}</span>
        		</div>
        		<div>
        			<label>작성글 정보</label>
        			<span>${r.userid} / ${r.regdate} / ${r.thumbup} / ${r.views}</span>
        		</div>
        		<div>
        			<label class="dragup">본문</label>
        			<span class="contents">${fn:replace(r.contents, cr, br)}</span>
        		</div>
        		</c:forEach>
        		<div>
        			<label></label>
        			<button type="button" id="listbtn">목록으로</button>
        		</div>
        		
        	</div>
        </div>
        
        <%@ include file="/layout/footer.jsp" %>
        
        </div>
        <script>
        	var listbtn = document.getElementById('listbtn');
        	listbtn.addEventListener('click',golist);
        	
        	function golist() {
        		location.href="/board/list.jsp";
        	}
        	
        </script>
        
    </body>
</html>