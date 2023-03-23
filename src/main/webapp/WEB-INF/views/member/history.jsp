<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역확인</title>
</head>
<body>



		<div>
			<input type="hidden" value="${reservation.idx }" readonly="readonly">
		</div>
										
		<c:choose>
			<c:when test="${empty reservation }">
				예약정보가 없습니다.
			</c:when>
			<c:otherwise>
				<tr>
					<th scope="row">예약자</th>
					<td>${RESERVATION.MEMBER_IDX }</td>
				</tr>
			</c:otherwise>
		</c:choose>
</body>
</html>