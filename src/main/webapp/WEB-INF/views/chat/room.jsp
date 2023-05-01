<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="col-6">
			<label><b>채팅방</b></label>
		</div>
		<div>
			<div id="msgArea">
				<c:forEach items="${chatList }" var="chat">
					<c:choose>
						<c:when test="${chat.sender eq username }">
							<div class="row justify-content-end">
								<div class="col-6 text-bg-warning mb-3 p-3">${chat.chatCon }</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row justify-content-start">
								<div class="col-6 text-bg-light mb-3 p-3">${chat.chatCon }</div>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<div class="col-6">
				<div class="input-group mb-3">
					
					<input type="text" id="msg" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button" id="button-send">전송</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-6"></div>
	</div>
	
	<script>
	 $(document).ready(function(){
		 var roomIdx = '${roomIdx}';
		 var username = '${username}';
		 
         var sock = new SockJS("${pageContext.request.contextPath}/stomp/chat");
         var stomp = Stomp.over(sock);

         stomp.connect({}, function (){
            console.log("STOMP Connection")

            stomp.subscribe("/sub/chat/room/" + roomIdx, function (chat) {
                var content = JSON.parse(chat.body);

                var writer = '${username}';
                var message= $('#msg').val();
                var str = '';

                if(writer == username){
                    str = "<div class='col-6'>";
                    str += "<div class='alert alert-secondary'>";
                    str += "<b>" + content.chatCon + "</b>";
                    str += "</div></div>";
                    $("#msgArea").append(str);
                } else {
                    str = "<div class='col-6'>";
                    str += "<div class='alert alert-warning'>";
                    str += "<b>" + content.chatCon + "</b>";
                    str += "</div></div>";
                    $("#msgArea").append(str);
                }
            });

         });

         $("#button-send").on("click", function(e){
             var msg = $('#msg').val();
	
             console.log(username + ":" + msg);
             
             stomp.send('/pub/chat/message' , {}, JSON.stringify({roomIdx: roomIdx, chatCon: msg, sender: username}));
             $('#msg').val('');
         });
     });
	</script>
</body>
</html>