<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	String name = (String) request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
	<head>
		<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
		<meta charset="UTF-8">
		<title>Board</title>
	</head>
	<script type="text/javascript">
		function checkForm() {
			if (!document.newWrite.name.value) {
				alert("성명을 입력하세요.");
				return false;
			}
			if (!document.newWrite.subject.value) {
				alert("제목을 입력하세요.");
				return false;
			}
			if (!document.newWrite.content.value) {
				alert("내용을 입력하세요.");
				return false;
			}
		}
	</script>
	<body>
		<jsp:include page="../header.jsp" />
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">게시판</h1>
			</div>
		</div>
		
		<div class="container">
			<form action="./BoardWriteAction.do" name="newWrite" class="form-horizontal"
				method="post" onsubmit="return checkForm()">
				<input type="hidden" class="form-control" name="id" value="${sessionId}">
				<div class="form-group row">
					<label class="col-sm-2 control-label">성명</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="name" value="<%=name%>" placeholder="name">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="subject" placeholder="subject">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">내용</label>
					<div class="col-sm-8">
						<textarea class="form-control" name="content" cols="50" rows="5" placeholder="content"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록">
						<input type="reset" class="btn btn-primary" value="취소">
					</div>
				</div>
			</form>
			<hr>
		</div>
		<jsp:include page="../footer.jsp" />
	</body>
</html>