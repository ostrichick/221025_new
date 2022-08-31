<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />

<!-- !!로그인 조건에 따른 버튼 설적 c:if 같은 조건문으로 구현할 것 -->
<!-- Topbar -->
<div class="top-bar">
  <div class="content-topbar flex-sb-m h-full container">
    <c:choose>
      <c:when test="${not empty updateResult }">${updateResult }</c:when>
      <c:when test="${not empty sessionScope.member_id }">
        <div class="left-top-bar">${member_name }님
          환영합니다!!!... ${updateResult }${empty updateResult }
          <%=request.getAttribute("updateResult")%></div>
      </c:when>
      <c:otherwise>
        <div class="left-top-bar">로그인 하지 않음</div>
      </c:otherwise>
    </c:choose>

    <div class="right-top-bar flex-w h-full">
      <a href="${pageContext.request.contextPath}/#" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a>
      <c:choose>
        <c:when test="${not empty sessionScope.member_id }">
          <a href="${MaruContextPath}/member/signout.do" class="flex-c-m trans-04 p-lr-25"> 로그아웃 </a>
          <a href="${MaruContextPath}/member/myinfo.do" class="flex-c-m trans-04 p-lr-25"> 내 정보 </a>
        </c:when>
        <c:otherwise>
          <a href="${MaruContextPath}/member/signin.do" class="flex-c-m trans-04 p-lr-25"> 로그인 </a>
          <a href="${MaruContextPath}/member/signup.do" class="flex-c-m trans-04 p-lr-25"> 회원가입</a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</div>