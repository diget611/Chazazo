<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.authorities" var="auth"/>
	<sec:authentication property="principal.username" var="username"/>
</sec:authorize>	
<div class="modal">
	<div class="modal-body">
		<div id="content"></div>
			
	</div>
</div>
<button type="button" class="chat-btn btn btn-primary btn-square" id="chatBtn">
	<span class="material-symbols-outlined">chat</span>
	<span class="round-pill bg-danger" id="chatCheck"></span>
</button>

<script>
	$(document).ready(function() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/check',
			type: 'get',
			success: function(result) {
				$('#chatCheck').prepend(result);
			},
			error: function() {
				alert('에러');
			}
		});
	})
	
	$('#chatBtn').on('click', openModal);
	
	var roomIdx = '';
	
	function openModal() {
		var auth = '${auth}';
		if(auth == '[ROLE_USER]') {
			createRoom();			
		} else if(auth == '[ROLE_ADMIN]') {
			chatRoomList();
		} else {
			alert(안됨);
		}
	}
	
	function createRoom() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/room',
			type: 'get',
			success: function(result) {
				if(result != '') {
					roomIdx = result;
					console.log(result);
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
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + result + '" style="width:100%; height:600px; border: none;"></iframe>';
		$('#content').children().remove();
		$('#content').append(html);	
		
		var btn = '<button type="button" id="chatEndBtn" class="btn btn-secondary">상담 종료</button><button type="button" id="modalCloseBtn" class="btn btn-secondary">닫기</button>';
		$('#content').append(btn);
		$('#chatEndBtn').on('click', chatEnd);
		$('#modalCloseBtn').on('click', function() {
			$('.modal').css('display', 'none');
		});
		
		$('.modal').css('display', 'block');
		
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
		var html = '';
		for(var i in result) {
			html += '<div class="alert alert-warning mb-3" onclick="toChat(this)" id="' + result[i].idx + '">'
			html += '<div>' + result[i].sender  + '</div>'
			html += '<div>' + result[i].chatCon + '</div>'
			html += '</div>'
		}
		$('#content').children().remove();
		$('#content').append(html);
		
		var btn = '<button type="button" class="btn btn-secondary" id="modalCloseBtn">닫기</button>';
		$('#content').append(btn);
		$('#modalCloseBtn').on('click', function() {
			$('.modal').css('display', 'none');
		});
		$('.modal').css('display', 'block');
	}
	
	function toChat(e) {
		$('#content').children().remove();
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + $(e).attr('id') + '" style="width:100%; height:600px; border: none;"></iframe>';
		document.body.scrollTop = document.body.scrollHeight;
		$('#content').append(html);
		
		var btn = '<button type="button" class="btn btn-primary" id="pageBack">뒤로가기</button>';
		$('#content').append(btn);
		$('#pageBack').on('click', chatRoomList);
		
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
	}
	
	function chatCheck() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/check',
			type: 'get',
			success: function(result) {
				console.log(result);
				$('#chatCheck').text('');
				$('#chatCheck').prepend(result);
			},
			error: function() {
				alert('에러');
			}
		});
	}
</script>