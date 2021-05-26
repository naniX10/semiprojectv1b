<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<fmt:setBundle basename="nanix.jdbc" />
<fmt:message key="url" var="url" />
<fmt:message key="drv" var="drv" />
<fmt:message key="usr" var="usr" />
<fmt:message key="pwd" var="pwd" />

<sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}" 
var="mariadb"/>

<sql:update dataSource="${mariadb}" var="cnt">
	insert into member (userid, passwd, name, email)
	values (?,?,?,?)
	<sql:param value="${param.userid}" />
	<sql:param value="${param.passwd}" />
	<sql:param value="${param.name}" />
	<sql:param value="${param.email}" />
	
</sql:update>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 가입 처리 결과</title>
		<link rel = "stylesheet" href="css/base.css">

         <style>
             container { margin: 0 auto }
         </style>
	</head>
	<body>
		<div id = "wrap">
        
        <%@ include file="/layout/header.jsp" %>
        
		<h1>회원 가입 처리 결과</h1>
		
		<c:if test="${cnt gt 0}"> 
		<h3 style="color:yellow">회원 가입 성공!!</h3> 
		</c:if>
		
		<p><a href="/login.jsp">로그인 하러 가자!</a></p>
		
		<%@ include file="/layout/footer.jsp" %>

        </div>
		
	</body>
</html>