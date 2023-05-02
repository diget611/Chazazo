<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<button type="button" id="chatBtn" class="btn btn-lg btn-primary btn-lg-square back-to-top" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	<span class="material-symbols-outlined">chat</span>
	<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="chatCheck">
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
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<script>
	$('#chatBtn').on('click', chatRoomList);
	
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
		
		var btn = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>';
		$('.modal-footer').append(btn);
	}
	
	function toChat(e) {
		$('.modal-body').children().remove();
		var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + $(e).attr('id') + '" style="width:100%; height:300px" id="chatFrame"></iframe>';
		document.body.scrollTop = document.body.scrollHeight;
		$('.modal-body').append(html);
		
		var btn = '<button type="button" class="btn btn-primary" id="pageBack">뒤로가기</button>';
		$('.modal-footer').append(btn);
		
		$('#pageBack').on('click', chatRoomList);
	}
</script>