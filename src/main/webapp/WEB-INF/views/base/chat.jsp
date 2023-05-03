<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()" var="isLogin">
	<sec:authentication property="principal.authorities" var="auth"/>
	<sec:authentication property="principal.username" var="username"/>
</sec:authorize>

<button type="button" class="chat-btn btn btn-primary btn-square" id="chatBtn" data-toggle="modal" data-target="#myModal">
	<span class="material-symbols-outlined">chat</span>
	<span class="round-pill bg-danger" id="chatCheck" hidden="true">0</span>
</button>

<div class="modal" id="myModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">채팅 문의</h4>
			</div>
			<div class="modal-body" style="height: 640px;"></div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function(){
		chatCheck();
		
		var isLogin = ${isLogin};
		var username = '${username}';
		var auth = '${auth}';
		
		function checkRoom() {
			$.ajax({
				url: '${pageContext.request.contextPath}/chat/checkroom',
				type: 'get',
				data: {username: username},
				success: function(result) {
					openSocket(result);
				},
				error: function() {
					alert("에러임");
				}
			});
		}
		
		function openSocket(result) {
			if(isLogin == true && auth == '[ROLE_ADMIN]') {
				var sock = new SockJS("${pageContext.request.contextPath}/stomp/chat");
				var stomp = Stomp.over(sock);
				
				stomp.connect({}, function (){
			        stomp.subscribe("/sub/chat/room/*", function() {
						chatCheck();
					});
				})
			} else if(isLogin == true && auth == '[ROLE_USER]' && result != '') {
				var sock = new SockJS("${pageContext.request.contextPath}/stomp/chat");
				var stomp = Stomp.over(sock);
				
				stomp.connect({}, function (){
			        stomp.subscribe("/sub/chat/room/" + result, function() {
						chatCheck();
					});
				})
			}	
		}
		
		function chatCheck() {
			$.ajax({
				url: '${pageContext.request.contextPath}/chat/check',
				type: 'get',
				success: function(result) {
					$('#chatCheck').text('');
					$('#chatCheck').prepend(result);
				},
				error: function() {
					alert('에러');
				}
			});
		}
		
		checkRoom();
	});

	$('#chatBtn').on('click', openModal);
	
	var roomIdx = '';
	
	function openModal() {
		var auth = '${auth}';
		if(auth == '[ROLE_USER]') {
			createRoom();
			$('#chatCheck').css('display', 'none');
		} else if(auth == '[ROLE_ADMIN]') {
			chatRoomList();
			$('#chatCheck').css('display', 'none');
		} else {
			alert('안됨');
		}
	}
	
	function createRoom() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/room',
			type: 'get',
			success: function(result) {
				if(result != '') {
					roomIdx = result;
					makeFrame(result);
				} else {
					console.log('방 생성 실패');
				}
			},
			error: function() {
				alert('에러');
			}
		});
	}
	
	function makeFrame(result) {
		$('.modal-body').children().remove();
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + result + '" style="width:100%; height:600px; border: none;"></iframe>';
		document.body.scrollTop = document.body.scrollHeight;
		$('.modal-body').append(html);
		
		$('.modal-footer').children().remove();
		var btn = '<button type="button" id="closeBtn" class="btn btn-default" data-dismiss="modal">닫기</button> <button type="button" id="chatEndBtn" class="btn btn-primary">상담 종료</button>';
		$('.modal-footer').append(btn);
		$('#closeBtn').on('click', modalClose);
		$('#chatEndBtn').on('click', chatEnd);
		chatCheck();		
	}
	
	function chatRoomList() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/rooms',
			type: 'get',
			dataType: 'json',
			success: function(result) {
				makeList(result);
			},
			error: function() {
				alert('에러');
			}
		});
	}
	
	function makeList(result) {
		$('.modal-body').children().remove();
		$('.modal-footer').children().remove();
		var html = '';
		for(var i in result) {
			html += '<div class="alert alert-warning mb-3" onclick="toChat(this)" id="' + result[i].idx + '">'
			html += '<div>' + result[i].sender  + '</div>'
			html += '<div>' + result[i].chatCon + '</div>'
			html += '</div>'
		}
		$('.modal-body').append(html);
		
		var btn = '<button type="button" id="closeBtn" class="btn btn-default" data-dismiss="modal">닫기</button>';
		$('.modal-footer').append(btn);
		$('#closeBtn').on('click', modalClose);
		chatCheck();
	}
	
	function toChat(e) {
		$('.modal-body').children().remove();
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + $(e).attr('id') + '" style="width:100%; height:600px; border: none;"></iframe>';
		document.body.scrollTop = document.body.scrollHeight;
		$('.modal-body').append(html);
		
		var btn = '<button type="button" class="btn btn-primary" id="pageBack">뒤로가기</button>';
		$('.modal-footer').append(btn);
		$('#pageBack').on('click', chatRoomList);
		chatCheck();
	}

	function chatEnd() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/room',
			data: {roomIdx: roomIdx},
			type: 'patch',
			success: function(result) {
				if(result == 1) {
					alert('1:1 상담을 종료하셨습니다.');
					$('.modal').css('display', 'none');	
				} else {
					alert('오류 발생');
				}
			},
			error: function() {
				alert('에러');
			}
		});
		
		window.location.reload();
	}
	
	function chatCheck() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/check',
			type: 'get',
			success: function(result) {
				$(top.document).find('#chatCheck').text('');
				$(top.document).find('#chatCheck').prepend(result);
			},
			error: function() {
				alert('에러');
			}
		});
	}
	
	function modalClose() {
		chatCheck();
		$('#chatCheck').css('display', 'block');
		$('.modal-body').children().remove();
	}
</script>