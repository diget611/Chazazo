<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal">
	<div class="modal_body">
		<div id="content"></div>
		<button type="button" id="modalCloseBtn" class="btn btn-secondary">닫기</button>
	</div>		
</div>
<button type="button" class="chat-btn btn btn-primary btn-square" id="chatBtn">
	<span class="material-symbols-outlined">chat</span>
	<span class="round-pill bg-danger" id="chatCheck"></span>
</button>

<script>
	$('#chatBtn').on('click', craeteRoom);
	
	function craeteRoom() {
		$.ajax({
			url: '${pageContext.request.contextPath}/chat/room',
			type: 'get',
			success: function(result) {
				if(result != '') {
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
</script>