<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/animate.css"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
</head>
<body>
	<jsp:include page="header.jsp"/>
<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    
                    <div class="blog-asside-right col-md-3">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
                            <div class="panel-heading">
                                <h3 class="panel-title">지점 안내</h3>
                            </div>
                   
                        </div>

                        
                <div class="btn-group btn-group-lg btn-group-vertical" role="group" aria-label="Basic outlined example">
				<div class="ofc-list" style="overflow-y: auto;height: 710px;">
					
						
						<!-- 지도 onload하기 위한 좌표/지점명 저장 -->
						<script type="text/javascript">
							var mname_kor = new Array();
							var mlti_point = new Array();
							var mlng_point = new Array();
							var mbranchgubun = new Array();
							var mbranchcode = new Array();
							var mareacode = new Array();
							var mimgatchfileid = new Array();
							
								mname_kor.push("가산디지털");
								mlti_point.push("37.481663");
								mlng_point.push("126.881843");
								mbranchgubun.push("0");
								mbranchcode.push("421");
								mareacode.push("100");
								mimgatchfileid.push("FILE0000000001910175");
							
								mname_kor.push("강남");
								mlti_point.push("37.511951");
								mlng_point.push("127.065501");
								mbranchgubun.push("0");
								mbranchcode.push("402");
								mareacode.push("100");
								mimgatchfileid.push("");
							
								mname_kor.push("강남(삼성)");
								mlti_point.push("37.5105356");
								mlng_point.push("127.05561");
								mbranchgubun.push("0");
								mbranchcode.push("40209");
								mareacode.push("100");
								mimgatchfileid.push("FILE0000000001570130");
							
								mname_kor.push("강남(장기)");
								mlti_point.push("37.5105356");
								mlng_point.push("127.05561");
								mbranchgubun.push("1");
								mbranchcode.push("401");
								mareacode.push("100");
								mimgatchfileid.push("");
							
								mname_kor.push("강릉");
								mlti_point.push("37.7550406");
								mlng_point.push("128.881918");
								mbranchgubun.push("0");
								mbranchcode.push("521");
								mareacode.push("130");
								mimgatchfileid.push("");

						</script>
							<ul class="listCardPCTop" style="width:400px;">
								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart010" class="icon heart3" value="421" data-id="">
										<label for="chkHeart010"></label>
										
										<input type="hidden" value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]" id="fileList" disabled="">
										
											<input type="hidden" name="fileList_FILE0000000001910175" value="0" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('421', this);" class="layer-details-open " data-branchcode="421" data-areacode="100" data-img_atchfile_id="FILE0000000001910175" data-layer="layer-sel-branch">
											
										<strong>가산디지털</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>서울시 금천구 가산디지털1로 186 제이플라츠 지하 1층 B106호</p>
											<p><i class="icon call"></i>02-3664-8000</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart011" class="icon heart3" value="402" data-id="">
										<label for="chkHeart011"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('402', this);" class="layer-details-open " data-branchcode="402" data-areacode="100" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>강남</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>서울시 강남구 봉은사로114길 46 건호빌딩 1층 1호 (삼성동 서울의료원 강남분원 "정문 맞은 편")</p>
											<p><i class="icon call"></i>02-3443-8000</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart012" class="icon heart3" value="40209" data-id="">
										<label for="chkHeart012"></label>
										
										<input type="hidden" value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]" id="fileList" disabled="">
										
											<input type="hidden" name="fileList_FILE0000000001570130" value="0" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('40209', this);" class="layer-details-open " data-branchcode="40209" data-areacode="100" data-img_atchfile_id="FILE0000000001570130" data-layer="layer-sel-branch">
											
										<strong>강남(삼성)</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>서울특별시 강남구 테헤란로81길 53, 1층</p>
											<p><i class="icon call"></i>02-511-1001</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart013" class="icon heart3" value="401" data-id="">
										<label for="chkHeart013"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('401', this);" class="layer-details-open " data-branchcode="401" data-areacode="100" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>강남(장기)</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>서울시 강남구 테헤란로81길 53, 2층 롯데렌터카 강남지점</p>
											<p><i class="icon call"></i>02-548-8116</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart014" class="icon heart3" value="521" data-id="">
										<label for="chkHeart014"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('521', this);" class="layer-details-open " data-branchcode="521" data-areacode="130" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>강릉</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>강원도 강릉시 원대로 6</p>
											<p><i class="icon call"></i>033-642-8000</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart015" class="icon heart3" value="530" data-id="">
										<label for="chkHeart015"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('530', this);" class="layer-details-open " data-branchcode="530" data-areacode="130" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>강릉KTX</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>강원도 강릉시 용지로 176, 강릉역내 2번출구 렌터카하우스 </p>
											<p><i class="icon call"></i>033-645-8002</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart016" class="icon heart3" value="427" data-id="">
										<label for="chkHeart016"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('427', this);" class="layer-details-open " data-branchcode="427" data-areacode="100" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>강북(장기)</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>서울시 용산구 청파로 369, 1층</p>
											<p><i class="icon call"></i>02-6711-1004</p>
										</div>
										</a>
									</li>

								

									<li class="listCardPC" style="display: block;">
										<input type="checkbox" id="chkHeart017" class="icon heart3" value="615" data-id="">
										<label for="chkHeart017"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('615', this);" class="layer-details-open " data-branchcode="615" data-areacode="230" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>거제</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>경남 거제시 거제중앙로 1796 1층</p>
											<p><i class="icon call"></i>055-637-8009</p>
										</div>
										</a>
									</li>

						
								

									<li class="listCardPC" style="display:none;">
										<input type="checkbox" id="chkHeart018" class="icon heart3" value="511" data-id="">
										<label for="chkHeart018"></label>
										
										<input type="hidden" value="" id="fileList" disabled="">
										

										<!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
										<a onclick="createBranchInfo('511', this);" class="layer-details-open " data-branchcode="511" data-areacode="120" data-img_atchfile_id="" data-layer="layer-sel-branch">
											
										<strong>경기동부(장기)</strong>
										<div>
											<p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;" class="ellipsis_txt"><i class="icon address"></i>경기도 의왕시 고산로 56, 롯데첨단소재 비즈동 3층</p>
											<p><i class="icon call"></i>031-238-8000</p>
										</div>
										</a>
									</li>

								


								

							</ul>
						
						
						
					
				</div>
                            


                	    </div>   
                    
                                      
                 
                </div>

            </div>
        </div>
	
	
	
	
	<jsp:include page="footer.jsp"/>
	
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>

</body>
</html>