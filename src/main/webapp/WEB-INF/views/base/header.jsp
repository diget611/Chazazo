<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
<nav class="navbar navbar-default" style="position: sticky; top: 0px; z-index: 999;">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navigation">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=request.getContextPath() %>">
			<img src="<%=request.getContextPath() %>/resources/garoestate/assets/img/logo.png" alt=""></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
				<sec:authorize access="!isAuthenticated()">
					<button id="loginBtn"
						class="navbar-btn nav-button wow bounceInRight login animated" type="button" data-wow-delay="0.45s"
						style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight; width: 110px;">로그인</button>
					<button id="registerBtn"
						class="navbar-btn nav-button wow fadeInRight animated" type="button" data-wow-delay="0.48s"
						style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight; width: 110px;">회원가입</button>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_USER')">
				<button id="profileBtn"
					class="navbar-btn nav-button wow bounceInRight login animated" type="button" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight; width: 110px; letter-spacing: -1px;">마이페이지</button>
				<button id="logoutBtn"
					class="navbar-btn nav-button wow fadeInRight animated" type="button" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight; width: 110px;">로그아웃</button>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<button id="adminBtn"
					class="navbar-btn nav-button wow bounceInRight login animated" type="button" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight; width: 110px;">관리자</button>
				<button id="logoutBtn"
					class="navbar-btn nav-button wow fadeInRight animated" type="button" data-wow-delay="0.45s"
					style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight; width: 110px;">로그아웃</button>
				</sec:authorize>
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
					class="" href="<%=request.getContextPath() %>/member/profile">마이페이지</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="<%=request.getContextPath() %>/location">지점 안내</a></li>
				<li class="wow fadeInDown animated" data-wow-delay="0.5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;"><a
					href="<%=request.getContextPath() %>/inquiry">문의</a></li>	
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	<script>
		$('#loginBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/member/login';
		});
		
		$('#logoutBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/logout';
		});
		
		$('#registerBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/member/register';
		});
		
		$('#adminBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/admin/main';
		});
		
		$('#profileBtn').on('click', function() {
			location.href='${pageContext.request.contextPath}/경로지정해야함';
		});
		
	</script>
</nav>