<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/notificationInsertForm.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/adminHeader.css">
<!-- 부트스트랩 css -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 부트스트랩 js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- 제이쿼리 적용 JS -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>


<div class="header">
	<c:import url="/AdminHeader.jsp"></c:import>
</div>

<div class="main">


<div class="container content">
    <h2>공지사항 입력</h2>
    <form action="noticeinsert.woori" method="post"  >
        <div class="form-group">
            <label for="title">제목:</label>
            <input type="text" id="title" name="title" class="txt" required>
        </div>
        <div class="form-group">
            <label for="content">내용:</label>
            <textarea id="content" name="content" class="txt" required></textarea>
        </div>
        <div class="form-group">
            <label for="image">이미지 첨부:</label>
            <input type="file" id="name" name="name">
            관리자 코드<input type="text" class="ad"  id="code" name="code"/>	
        </div>
        <div class="form-group">
            <button type="submit" class="f_btn">등록</button>
        </div>
    </form>
</div>


</div>

</body>
</html>
























































