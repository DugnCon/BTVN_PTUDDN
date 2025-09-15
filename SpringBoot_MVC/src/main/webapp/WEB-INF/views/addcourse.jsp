<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Course Tracker</h1>
    <hr>
    <h2>Save Course</h2>

    <form:form action="${pageContext.request.contextPath}/save" modelAttribute="course" method="post">
    <form:input path="courseName" placeholder="Course Name" />
    <form:input path="instructor" placeholder="Instructor" />
    <form:input path="email" placeholder="Course Email" />
    <button type="submit">Save</button>
</form:form>


    <hr>

    <a href="${pageContext.request.contextPath}/">Back to Course List</a>
</div>
</body>
</html>
