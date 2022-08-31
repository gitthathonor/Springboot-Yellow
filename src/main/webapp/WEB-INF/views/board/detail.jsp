<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../layout/header.jsp" %>

	<h1>detail page</h1>
	<hr>
	<div>아이디가 2번인 페이지면 관리자 메시지를 걸어보자</div>
	
	<h1>${role}</h1>
	
	<%-- <c:if test="${board.id == 2}">
		<h1>관리자</h1>
	</c:if> --%>
	<hr>
	
	<div>아이디가 1번이면 OK를 출력하고, 1번이 아니면 NO를 출력하자.</div>
	<c:choose>
		<c:when test="${id==1}">
			<h2>OK</h2>
		</c:when>
		<c:otherwise>
			<h2>NO</h2>
		</c:otherwise>
	</c:choose>
	
	
	<table border="1">
		<tr>
			<th>번호 : ${board.id}</th>
			<th>제목 : ${board.title}</th>
			<th>내용 : ${board.content}</th>
		</tr>
	</table>
	
<%@ include file="../layout/footer.jsp"%>