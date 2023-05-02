<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal">
	<div class="modal_body">
		<div id="content"></div>
		<button type="button" id="chatEndBtn" class="btn btn-secondary">상담 종료</button>
		<button type="button" id="modalCloseBtn" class="btn btn-secondary">닫기</button>
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
	
	$('#chatBtn').on('click', craeteRoom);
	
	var roomIdx = '';
	
	function craeteRoom() {
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
		})
		
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
	
	function makeFrame(result) {
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + result + '" style="width:100%; height:600px; border: none;"></iframe>';
		$('#content').children().remove();
		$('#content').append(html);	
		$('.modal').css('display', 'block');
	}
	
	$('#modalCloseBtn').on('click', function() {
		$('.modal').css('display', 'none');
	});
	
	$('#chatEndBtn').on('click', chatEnd);
	
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
</script>