<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<div class="container">
		<div>
			<div id="msgArea" class="row">
				<c:forEach items="${chatList }" var="chat">
					<c:choose>
						<c:when test="${chat.sender eq username }">
							<div class="d-flex justify-content-end float-end" style="width: 100%; align-items: end;">
								<span class="badge bg-white text-dark" style="margin-bottom: 8px;">${chat.chatDate }<br>${chat.chatTime}</span>
								<div class="bg-info mb-2 ps-2 pe-2 pt-2 pb-2 rounded bg-opacity-50">
									<div style="font-size: 0.7rem; text-align: right; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">${chat.sender }</div>
									<div>${chat.chatCon }</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="d-flex justify-content-start float-start" style="width: 100%; align-items: end;">								
								<div class="bg-light mb-2 ps-2 pe-2 pt-2 pb-2 rounded">
									<div style="font-size: 0.7rem; text-align: left; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">${chat.sender }</div>
									<div>${chat.chatCon }</div>
								</div>
								<span class="badge bg-white text-dark" style="margin-bottom: 8px;">${chat.chatDate }<br>${chat.chatTime}</span>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<div class="row" style="margin-top: 40px;">
				<div class="input-group fixed-bottom">
					<input type="text" id="msg" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-secondary" type="button" id="button-send">전송</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
	window.onload = function() {
		window.scrollTo(0, document.body.scrollHeight);
	}

	$(document).ready(function(){
		var roomIdx = '${roomIdx}';
		var username = '${username}';
		
		var sock = new SockJS("${pageContext.request.contextPath}/stomp/chat");
		var stomp = Stomp.over(sock);

		stomp.connect({}, function (){

        stomp.subscribe("/sub/chat/room/" + roomIdx, function (chat) {
			var content = JSON.parse(chat.body);
			
            var sender = content.sender;
            var message= $('#msg').val();
            var str = '';
            
            if(username == sender){
            	str += '<div class="d-flex justify-content-end float-end" style="width: 100%; align-items: end;">'
            	str += '<span class="badge bg-white text-dark" style="margin-bottom: 8px;">' + content.chatDate + '<br>' + content.chatTime + '</span>'
				str += '	<div class="bg-info mb-2 ps-2 pe-2 pt-2 pb-2 rounded bg-opacity-50">'
				str += '		<div style="font-size: 0.7rem; text-align: right; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">' + content.sender + '</div>'
				str += '		<div>' + content.chatCon + '</div>'
				str += '	</div>'
				str += '</div>'
                $("#msgArea").append(str);
            } else {
            	str += '<div class="d-flex justify-content-start float-start" style="width: 100%; align-items: end;">'
				str += '	<div class="bg-light mb-2 ps-2 pe-2 pt-2 pb-2 rounded bg-opacity-50">'
				str += '		<div style="font-size: 0.7rem; text-align: left; border-bottom-style: solid; border-bottom-width: 1px; border-color: lightslategray;">' + content.sender + '</div>'
				str += '		<div>' + content.chatCon + '</div>'
				str += '	</div>'
				str += '<span class="badge bg-white text-dark" style="margin-bottom: 8px;">' + content.chatDate + '<br>' + content.chatTime + '</span>' 
				str += '</div>'
				$("#msgArea").append(str);
			}
			window.scrollTo(0, document.body.scrollHeight);
			chatCheck();
		});
	});
	
	$("#button-send").on("click", function(e){
		var msg = $('#msg').val();
		
		var offset = 1000 * 60 * 60 * 9;
		var korea = new Date();
		var year = korea.getFullYear().toString().substring(2);
		
		var month = korea.getMonth() + 1;
		if(month < 10) {
			month = '0' + month;
		}
		
		var day = korea.getDate();
		if(day < 10) {
			day = '0' + day;
		}
		
		var str;
		var hour = korea.getHours();
		if(hour < 12) {
			str = '오전';
		} else if(hour == 12) {
			str = '오후';
		} else {
			str = '오후';
			hour = hour - 12;
		}
		if(hour < 10) {
			hour = '0' + hour;
		}
		
		var minute = korea.getMinutes();
		if(minute < 10) {
			minute = '0' + minute;
		}
		
		var chatDate = year + '/' + month + '/' + day;
		var chatTime = str + ' '+ hour + ':' + minute;

		stomp.send('/pub/chat/message' , {}, JSON.stringify({roomIdx: roomIdx, chatCon: msg, sender: username, chatDate: chatDate, chatTime: chatTime}));
		$('#msg').val('');
		window.scrollTo(0, document.body.scrollHeight);
	});
	
	$('#msg').keydown(function() {
		if(event.keyCode == 13) {
			$('#button-send').click();
		}
	})
	
	function chatCheck() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/check',
			type: 'get',
			success: function(result) {
				$(top.document).find('#chatCheck').text('');
				$(top.document).find('#chatCheck').prepend(result);
				$(top.document).find('.badge').text(result);
			},
			error: function() {
				swal("에러", "응답에 오류가 있습니다. 확인 후 다시 시도해 주세요.", "error");
			}
		});
	}
		
	});
	</script>
</body>
</html>