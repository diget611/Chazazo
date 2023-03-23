<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default ">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navigation">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=request.getContextPath() %>"><img
				src="assets/img/logo.png" alt=""></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
				<button id="loginBtn"
					class="navbar-btn nav-button wow bounceInRight login animated" type="button" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">로그인</button>
				<button id="registerBtn"
					class="navbar-btn nav-button wow fadeInRight animated" type="button" data-wow-delay="0.48s"
					style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">회원가입</button>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				<li class="wow fadeInDown animated" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;"><a
					class="" href="<%=request.getContextPath() %>/carlist">예약</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;"><a
					class="" href="<%=request.getContextPath() %>/event">이벤트</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.3s"
					style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInDown;"><a
					class="" href="<%=request.getContextPath() %>/mypage">마이페이지</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="<%=request.getContextPath() %>/location">지점 안내</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="<%=request.getContextPath() %>/qna">문의</a></li>	
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	<script>
		$('#loginBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/login';
		});
		$('#registerBtn').on('click', function() {
			location.href='<%=request.getContextPath()%>/member/register';
		});
	</script>
</nav>