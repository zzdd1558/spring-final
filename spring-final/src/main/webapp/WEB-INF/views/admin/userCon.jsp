<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
</head>

<body>
	<h2>고객 관리</h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>고객 번호</th>
        <th>고객 아이디</th>
        <th>고객 이름</th>
        <th>고객 성별</th>
        <th>고객 생년월일</th>
        <th>고객 전화번호</th>
        <th>고객 이메일</th>
        <th>고객 주소</th>
        <th>가입 답변</th>
        <th>고객 포인트</th>
        <th>고객 전체포인트</th>
        <th>고객 가입일자</th>
        <th>고객 등급</th>
        <th>고객 질문번호</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.list}" var="data">
      <tr>
        <td>${data.userKey }</td>
        <td>${data.userId }</td>
        <td>${data.userName }</td>
        <td>${data.userGender }</td>
        <td>${data.userBirth }</td>
        <td>${data.userPhone }</td>
        <td>${data.userEmail }</td>
        <td>${data.userAddr }</td>
        <td>${data.userAnswer }</td>
        <td>${data.userPoint }</td>
        <td>${data.userTotalPoint }</td>
        <td>${data.userJoinDate }</td>
        <td>${data.ratingType }</td>
        <td>${data.questionKey }</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</body>
</html>