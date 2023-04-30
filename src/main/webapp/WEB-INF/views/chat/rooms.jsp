<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
 	<div class="container">
 		<ul>
	 		<c:forEach items="${list }" var="room">
	 			<li><a href="<%=request.getContextPath()%>/chat/room/${room.roomId}">${room.name }</a></li>
	 		</c:forEach>
 		</ul>
 		<form action="<%=request.getContextPath() %>/chat/room" method="post">
            <input type="text" name="name" class="form-control">
            <button type="button" class="btn btn-secondary btn-create">개설하기</button>
        </form>
 	</div>
 	
 	<script>
        $(".btn-create").on("click", function (e){
            e.preventDefault();

            var name = $("input[name='name']").val();

            if(name == "")
                alert("Please write the name.")
            else
                $("form").submit();
        });
 	</script>
</body>
</html>