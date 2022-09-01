<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>공지사항 수정</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <div class="container" style="margin: 30px auto;">
    <form action="edit_process" method="post" enctype="multipart/form-data">
      <input type="text" name="title" class="form-control mt-4 mb-2" value="${boardVo.title}" required>
      <div class="form-group">
        <textarea class="form-control" rows="10" name="content" required>${boardVo.content}</textarea>
      </div>
      <input type="file" name="uploadFile" class="btn btn-secondary mb-3" />
      <input type="hidden" name="idx" class="form-control mt-4 mb-2" value="${boardVo.idx}">
      <button type="submit" class="btn btn-secondary mb-3">수정하기</button>
    </form>
  </div>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>