<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TotalGroupList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">


<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


<style type="text/css">
.content {
	position: relative;
	display: flex;
	flex-direction: column;
	flex-grow: 1;
	box-sizing: border-box;
	width: 100%;
	height: 80%;
}

.waitingGroupList {
	background-color: white;
	flex-shrink: 0;
	margin: 0 auto;
	display: block;
	width: 1000px;
	height: 350px;
	margin: 0 auto;
	justify-content: center;
	flex-shrink: 0;
	border-radius: 20px;
}

.banner1 {
	background-color: white;
	flex-shrink: 0;
	margin: 0 auto;
	display: block;
	width: 1000px;
	height: 100px;
	margin: 0 auto;
	justify-content: center;
	flex-shrink: 0;
	border-radius: 20px;
	background-size: 375px 104px;
	background-position: 50%;
	background-image:
		url(https://ssl.pstatic.net/static.talk/web/listweb/20240227153200/_next/static/media/img_tip_250.53ea691f.svg);
}

.something {
	background-color: white;
	flex-shrink: 0;
	margin: 0 auto;
	display: block;
	width: 1000px;
	height: 200px;
	margin: 0 auto;
	justify-content: center;
	flex-shrink: 0;
	border-radius: 20px;
}

.listIntro {
	color: #767678;
	font-size: 12px;
	font-weight: 500;
	margin-top: 5px;
	line-height: 17px;
	font-size: 13px;
}

.groupList {
	display: flex;
	margin-top: 16px;
	width: 940px;
	height: 240px;
	border: 1px solid rgba(0, 0, 0, .05);
	box-shadow: 0 2px 4px rgba(0, 0, 0, .06);
	border-radius: 8px;
}

.groupListul {
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, .06);
	display: flex;
	flex-direction: column;
	padding: 10px 0;
	list-style: none;
}

.groupDiv {
	display: flex;
	align-items: center;
	min-width: 0;
}

.groupProfile {
	position: relative;
	display: grid;
	overflow: hidden;
	grid-template-areas: "one";
	grid-gap: 2px;
	gap: 2px;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background-color: yellow;
}

.groupInfoUl {
	list-style: none;
}

.groupDiv {
	margin-left: 18px;
	flex-grow: 1;
	min-width: 0;
}

.SectionWrapper_content__6c8__ {
	width: 741px;
	height: 372px;
	position: relative;
	opacity: 1;
	transition: opacity .3s cubic-bezier(.33, 1, .68, 1) .2s;
	border-radius: inherit;
}

.AutoRecommendSection_wrap__ocOXD {
	position: absolute;
	top: 0;
	right: 0;
	width: 174px;
	height: 98px;
	background-repeat: no-repeat;
	background-size: contain;
}

.AutoRecommendSection_title_area__gPaaP {
	width: 685px;
	height: 49px;
}

.SectionTitle_title__1eA4E {
	isplay: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	color: #1e1e23;
	font-size: 17px;
	line-height: 25px;
}

.InvitationList_ul {
	/* display: flex;
	flex-direction: column; */
	display: block;
	overflow-y: scroll;
	border-radius: 8px;
}

.InvitationList_ul::-webkit-scrollbar {
	display: none;
}

.InvitationList_li {
	float: left;
	height: 120px;
	width: 400px;
	padding-bottom: 1px;
	list-style: none;
	margin: 0;
	margin-left: 15px;
	margin-top: 20px;
}

.Invitation {
	width: 280px;
	height: 110px;
}

.somethingList {
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, .06);
	margin-top: 14px;
	list-style: none;
	width: 811px;
	height: 146px;
}

.somethingList_li {
	width: 811px;
	height: 48px;
	display: list-item;
	list-style: none;
	padding: 0;
	margin: 0;
}

.somethingSpan {
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	color: #303038;
	margin: 0 8px 0 6px;
	font-size: 14px;
	font-weight: 500;
}

.footer-inner {
	padding: 35px 36px 55px;
	box-sizing: border-box;
	width: 100%;
	margin: 0 auto;
}

.footer-li {
	display: inline-flex;
	align-items: center;
	vertical-align: top;
	list-style: none;
	font-size: 8x;
}

a {
	text-decoration-line: none;
}

a:visited  {
	 color:  black;
	 text-decoration:  none;
}

/* 
.carousel-indicators{
	position: absolute;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 2;
    display: flex;
    justify-content: center;
    padding: 0;
    margin-right: 15%;
    margin-bottom: 1rem;
    margin-left: 15%;
    list-style: none;
}

.carousel-inner{
	position: relative;
    width: 100%;
    overflow: hidden;
    height: 300px;
    background: yellow;

}
 */
.testTitle {
	width: 85%;
	height: 160px;
	background: white;
	margin: auto;
	/* margin-top: 32px; */
	border-radius: 20px;
	display: flex;
	align-items: center;
	flex-direction: column;
	padding-top: 15px;
}

.carousel-item {
	height: 140px;
	background-repeat: no-repeat;
	background-position: 100% 0;
	background-size: 140px;
	margin-top: 50px;
}

.firstbox {
	flex-shrink: 0;
	margin: 0 auto;
	display: block;
	width: 1000px;
	height: 100px;
	margin: 0 auto;
	justify-content: center;
	flex-shrink: 0;
	border-radius: 20px;
}

.GroupProfileBtn {
	margin-top: 20px;
	right: 0;
	top: 21px;
	display: inline-block;
}

.btn_edit {
	display: inline-block;
	height: 30px;
	min-width: 50px;
	padding: 2px 9px 3px;
	border-radius: 4px;
	border: solid 1px rgba(212, 216, 229, .5);
	background-color: rgba(212, 216, 229, .25);
	box-sizing: border-box;
	text-align: center;
}

.subIndexEdit {
	font-size: 14px;
	font-weight: 500;
	line-height: 17px;
	letter-spacing: -.47px;
	color: #7b8994;
}

</style>

</head>
<body>

	<header>
		<h1>나의 그룹 전체 조회</h1>
	</header>


	<div class="content">


		<!-- <div class="TotalGroupCategory"></div> -->

		<div class="TotalGroupList" style="background-color: #f4f6f8;">


			<div class="firstbox"
				style="padding: 24px 28px 28px; margin-top: 30px;">
				<div class="title"
					style="display: flex; align-items: center; justify-content: center";>
					<h2 style="font-size: 30px;">
						<span style="font-weight: bold; color: #ff8a3d;">우리만의 그룹을 확인하세요!</span>
					</h2>
				</div>
			</div>


			<div class="carousel"
				style="display: flex; width: 1000px; padding: 24px 28px 28px; background-color: white; margin: 30px 106.5px 0px; border-radius: 20px; height: 300px; margin-left: 450px;">
				<!-- 추가 -->


				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel" style="float: left; width: 50%;">
					
					<div class="carousel-inner" style="height: 250px; display: flex; border-radius: 20px;">
					
					<c:forEach var="inviteGroupList" items="${inviteGroupList }">
						<div class="carousel-item active" data-bs-interval="10000" 
						style="width: 100%; height: 300px; float: left; background-color: #f4f6f8; background-size: 100px; ">
						
						<!-- 그룹명, 그룹프사, 그룹장닉네임, 그룹한줄소개, 그룹초대발신일 -->
						<div class="testTitle" >
	
							<div class="testGroupProfile" style="width: 85%; height: 70px; background-color: #fafafa;
								display: flex;">
								<div class="testProfileImage" style="flex-direction: left; 
									width:20%; height:60px; margin-top: 3px;">
										<img alt="그룹프사" src="image/profile.jpg" style="width: 90%; height: 60px; border-radius: 100%;">
								</div>
									
								<div class="testGroupInfo" style="flex-direction: right; 
								width:80%; height:60px; margin-top: 3px;">
									<ul class="testUl" style="list-style: none;">
										<li class="testLi" style="font-size: 13px;">${inviteGroupList.cg_name }</li>
										<li class="testLi" style="font-size: 13px;">그룹장이름</li>
										<li class="testLi" style="font-size: 13px;">${inviteGroupList.gi_request }</li>
									</ul>
								</div>
		    				</div>
							<div class="GroupIntro" style="width: 85%; height: 30px; background-color: #fafafa; ">
									<span>${inviteGroupList.cg_intro }</span>
							</div>
							
							
							<div class="GroupProfileBtn">
								<a href="" class="add">
									<span style="font-weight: 700;">수락</span>
								</a>
								<a href="" class="refuse">
									<span style="font-weight: 700;">거절</span>
								</a>
							</div>
								
						</div>
						
						
						</div>
						
					</c:forEach>
						
						<!-- 
						<div class="carousel-item" data-bs-interval="2000"
						style="width: 100%; height: 300px; float: right; background-color: green;">


						<div class="testTitle">
							<div class="testGroupProfile" style="width: 85%; height: 70px; background-color: #fafafa;
							display: flex;">
								<div class="testProfileImage" style="flex-direction: left; 
								width:20%; height:60px; margin-top: 3px;">
									<img alt="그룹프사" src="image/profile.jpg" style="width: 90%; height: 60px; border-radius: 100%;">
								</div>
								<div class="testGroupInfo" style="flex-direction: right; 
								width:80%; height:60px; margin-top: 3px;">
									<ul class="testUl" style="list-style: none;">
										<li class="testLi" style="font-size: 13px;">젤리를 먹는 그룹</li>
										<li class="testLi" style="font-size: 13px;">그룹장젤리</li>
										<li class="testLi" style="font-size: 13px;">그룹초대발신일</li>
									</ul>
								</div>
							</div>
							<div class="GroupIntro" style="width: 85%; height: 30px; background-color: #fafafa; ">
								<span>젤리를 먹는 그룹입니다</span>
							</div>
							
							<div class="GroupProfileBtn">
							<a href="" class="add">
								<span style="font-weight: 700;">수락</span>
							</a>
							<a href="" class="refuse">
								<span style="font-weight: 700;">거절</span>
							</a>
						</div>
							
						
						</div>


						</div>
						
						
						<div class="carousel-item" style="width: 100%; height: 300px; background-color: #f4f6f8;">
						
						<div class="testTitle">
							<div class="testGroupProfile" style="width: 85%; height: 70px; background-color: #fafafa;
							display: flex;">
								<div class="testProfileImage" style="flex-direction: left; 
								width:20%; height:60px; margin-top: 3px;">
									<img alt="그룹프사" src="image/profile.jpg" style="width: 90%; height: 60px; border-radius: 100%;">
								</div>
								<div class="testGroupInfo" style="flex-direction: right; 
								width:80%; height:60px; margin-top: 3px;">
									<ul class="testUl" style="list-style: none;">
										<li class="testLi" style="font-size: 13px;">정수기를 가는 그룹</li>
										<li class="testLi" style="font-size: 13px;">그룹장물</li>
										<li class="testLi" style="font-size: 13px;">그룹초대발신일</li>
									</ul>
								</div>
							</div>
							
							<div class="GroupIntro" style="width: 85%; height: 30px; background-color: #fafafa; ">
								<span>물을 뜨는 그룹입니다</span>
							</div>
							
							<div class="GroupProfileBtn">
							<a href="" class="add">
								<span style="font-weight: 700;">수락</span>
							</a>
							<a href="" class="refuse">
								<span style="font-weight: 700;">거절</span>
							</a>
							</div>
						
						</div>
						
						</div>
						 -->
						
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

				<!-- 두 번째 캐러셀 -->
				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel" style="float: right; width: 50%;">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="10000">
								
							<c:forEach var="inviteGroupList" items="${inviteGroupList }">
								<div class="carousel-item active" data-bs-interval="10000" 
								style="width: 100%; height: 300px; float: left; background-color: #f4f6f8; background-size: 100px; ">
								
								<!-- 그룹명, 그룹프사, 그룹장닉네임, 그룹한줄소개, 그룹초대발신일 -->
								<div class="testTitle"" >
			
									<div class="testGroupProfile" style="width: 85%; height: 70px; background-color: #fafafa;
										display: flex;">
										<div class="testProfileImage" style="flex-direction: left; 
											width:20%; height:60px; margin-top: 3px;">
												<img alt="그룹프사" src="image/profile.jpg" style="width: 90%; height: 60px; border-radius: 100%;">
										</div>
											
										<div class="testGroupInfo" style="flex-direction: right; 
										width:80%; height:60px; margin-top: 3px;">
											<ul class="testUl" style="list-style: none;">
												<li class="testLi" style="font-size: 13px;">${inviteGroupList.cg_name }</li>
												<li class="testLi" style="font-size: 13px;">그룹장이름</li>
												<li class="testLi" style="font-size: 13px;">${inviteGroupList.gi_request }</li>
											</ul>
										</div>
				    				</div>
									<div class="GroupIntro" style="width: 85%; height: 30px; background-color: #fafafa; ">
											<span>${inviteGroupList.cg_intro }</span>
									</div>
									
									
									<div class="GroupProfileBtn">
										<a href="" class="add">
											<span style="font-weight: 700;">수락</span>
										</a>
										<a href="" class="refuse">
											<span style="font-weight: 700;">거절</span>
										</a>
									</div>
								</div>
								
								</div>
						
					</c:forEach>
							
						</div>


						<div class="carousel-item" data-bs-interval="2000">
							<img src="..." class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="..." class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>


			</div>
			<!-- 캐러셀 끝 -->

			<section class="GroupListSection">
				<div class="waitingGroupList"
					style="padding: 24px 28px 28px; margin-top: 30px;">
					<div class="title">
						<h2 style="font-size: 18px; display: flex;">
							<span style="font-weight: bold;">가입그룹 리스트</span>
						</h2>
					</div>

					<div class="listIntro">나의 가입그룹을 조회하세요!</div>

					<div class="groupList">
						<ul class="InvitationList_ul">

							<c:forEach var="myGroupList" items="${myGroupList }">
							<!-- 그룹명, 그룹프사, 그룹멤버등록일, 그룹카테고리, 그룹 한줄소개 -->

								<li class="InvitationList_li">
									<div class="Invitation" style="margin: 0 auto;">

										<div class="GroupProfileImage"
											style="float: left; padding-right: 20px;">
											<img alt="대체이미지" src="image/img_account.png"
												style="width: 50px; height: 50px;">
										</div>
										<div class="GroupProfile_txt"
											style="width: 450px; height: 200px;">
											<div class="GourpProfileName">
												<span class="GroupName" style="font-weight: bold;">${myGroupList.cg_name}</span>
												<span class="GroupName_Category" style="color: #767678; font-size: 13px;">${myGroupList.gm_regDate}</span>
												<br> 
												<span class="GroupName_Category" style="color: #767678; font-size: 13px;">${myGroupList.gc_name }</span>
												<br>
												<div class="GroupIntroduce">
													<p>${myGroupList.cg_intro }</p>
												</div>
											</div>


										</div>
									</div>
								</li>
								
							</c:forEach>
						</ul>
					</div>
				</div>
			</section>


			<section class="GroupListSection">
				<div class="waitingGroupList"
					style="padding: 24px 28px 28px; margin-top: 80px;">
					<div class="title">
						<h2 style="font-size: 18px; display: flex;">
							<span style="font-weight: bold;">대기그룹 리스트</span>
						</h2>
					</div>

					<div class="listIntro">그룹원 정보 입력 대기중인 그룹입니다!
					</div>

					<div class="groupList">
						<ul class="InvitationList_ul">
							
							<!-- 그룹명, 그룹프사, 그룹카테고리, 그룹장닉네임, 그룹한줄소개, 그룹초대응답일 -->
							<c:forEach var="waitingGroupList" items="${waitingGroupList }">

								<li class="InvitationList_li">
									<div class="Invitation" style="margin: 0 auto;">

										<div class="GroupProfileImage"
											style="float: left; padding-right: 20px;">
											<img alt="대체이미지" src="image/img_account.png"
												style="width: 50px; height: 50px;">
										</div>
										<div class="GroupProfile_txt"
											style="width: 450px; height: 200px;">
											<div class="GourpProfileName">
												<span class="GroupName" style="font-weight: bold;">${waitingGroupList.cg_name}</span>
												<span class="GroupName_Category" style="color: #767678; font-size: 13px;">${waitingGroupList.gi_response}</span>
												<br> 
												<span class="GroupName_Category" style="color: #767678; font-size: 13px;">${waitingGroupList.gc_name }</span>
												<br>
												<div class="GroupIntroduce">
													<p>${waitingGroupList.cg_intro }</p>
												</div>
											</div>

										</div>
									</div>
									
									<button type="button" class="btn_edit">
									  <span class="subIndexEdit">그룹원 정보 등록하기</span>
									</button>
									
								</li>
								
								
							</c:forEach>
						</ul>
					</div>
				</div>
			</section>

			<div class="banner1"
				style="padding: 24px 28px 28px; margin-top: 40px; margin-bottom: 40px;">
				<a href="" class="banner"></a>
			</div>

			<footer class="footer"
				style="border-top: 1px solid #e2e6e9; text-align: center;">
				<div class="footer-inner">
					<ul>
						<li class="footer-li"><a href="">로그아웃</a></li>

						<li class="footer-li"><a href="">이용가이드</a></li>

						<li class="footer-li"><a href="">고객센터</a></li>
					</ul>
				</div>
			</footer>



		</div>
	</div>
</body>
</html>