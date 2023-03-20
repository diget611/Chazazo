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
				<button
					class="navbar-btn nav-button wow bounceInRight login animated"
					onclick=" window.open('member/login')" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">로그인</button>
				<button class="navbar-btn nav-button wow fadeInRight animated"
					onclick=" window.open('member/register')"
					data-wow-delay="0.48s"
					style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">회원가입</button>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				
				<li class="wow fadeInDown animated" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;"><a
					class="" href="/chazazo/rent">예약</a></li>

				<li class="wow fadeInDown animated" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;"><a
					class="" href="/chazazo/event">이벤트</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.3s"
					style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInDown;"><a
					class="" href="/chazazo/mypage">마이페이지</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="/chazazo/location">지점 안내</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="/chazazo/qna">문의</a></li>	
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>