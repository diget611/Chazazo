<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()" var="isLogin">
	<sec:authentication property="principal.username" var="username"/>
</sec:authorize>
<button type="button" id="chatBtn" class="btn btn-lg btn-primary btn-lg-square chat-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	<span class="material-symbols-outlined">chat</span>
	<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="chatCheck">
    	0
    	<span class="visually-hidden">unread messages</span>
  	</span>
</button>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">채팅 문의</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function(){
		chatCheck();
		
		var sock = new SockJS("${pageContext.request.contextPath}/stomp/chat");
		var stomp = Stomp.over(sock);
		
		stomp.connect({}, function (){
	        stomp.subscribe("/sub/chat/room/*", function() {
				chatCheck();
			});
		})
	});

	$('#chatBtn').on('click', chatRoomList);
	$('.btn-close').on('click', modalClose);
	
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
		
		$('#chatCheck').css('display', 'none');
	}
	
	function makeList(result) {
		$('.modal-body').children().remove();
		$('.modal-footer').children().remove();
		var html = '';
		for(var i in result) {
			html += '<div class="alert alert-warning mb-3" onclick="toChat(this)" id="' + result[i].idx + '" style="border-radius: 10px;">'
			html += '	<div class="mb-2" style="font-size: 1.2rem;">'+ result[i].sender +'</div>'
			html += '	<div class="ps-2" style="font-size: 0.9rem;">' + result[i].chatCon + '</div>'
			html += '	<span class="position-absolute top-50 end-0 translate-middle badge rounded-pill bg-danger">' + result[i].cnt + '</span>'
			html += '</div>'
		}
		$('.modal-body').append(html);
		
		chatCheck();
	}
	
	function toChat(e) {
		$('.modal-body').children().remove();
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + $(e).attr('id') + '" style="width:100%; height:300px" id="chatFrame"></iframe>';
		document.body.scrollTop = document.body.scrollHeight;
		$('.modal-body').append(html);
		
		var btn = '<button type="button" class="btn btn-primary" id="pageBack">뒤로가기</button>';
		$('.modal-footer').append(btn);
		$('#pageBack').on('click', updateClose);
		$('#pageBack').on('click', chatRoomList);
		chatCheck();
	}
	
	function chatCheck() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/check',
			type: 'get',
			success: function(result) {
				$(top.document).find('#chatCheck').text('');
				$(top.document).find('#chatCheck').prepend(result);
				$('.badge').text(result);
			},
			error: function() {
				alert('에러');
			}
		});
	}
	
	function modalClose() {
		updateClose();
		chatCheck();
		$('#chatCheck').css('display', 'block');
		$('.modal-body').children().remove();
	}
	
	function updateClose() {
		var isIframe = $('iframe').length;
		
		if(isIframe == 1) {
			var room = ($('iframe').attr('src')).toString().substring(19);
			var username = '${username}'
			$.ajax({
				url: '${pageContext.request.contextPath}/chat/checkclose',
				data: {roomIdx: room, username: username},
				type: 'get',
				async: 'false',	
				success: function(result) {
					console.log('업데이트');
				},
				error: function() {
					console.log('에러');
				}
			})			
		}
	}
</script>