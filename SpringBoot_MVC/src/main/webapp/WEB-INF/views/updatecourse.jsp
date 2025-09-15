<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Course Tracker</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Course Tracker</h1>
    <hr>
    <h2>Update Course</h2>

    <!-- Spring form -->
    <form:form action="save" modelAttribute="course" method="post">

        <!-- hidden field -->
        <form:hidden path="id" />

        <form:input path="courseName" cssClass="form-control mb-4 col-4" placeholder="Course name"/>
        <form:input path="instructor" cssClass="form-control mb-4 col-4" placeholder="Course instructor"/>
        <form:input path="email" cssClass="form-control mb-4 col-4" placeholder="Email"/>

        <button type="submit" class="btn btn-info col-2">Update Course</button>
    </form:form>

    <hr>
    <a href="${pageContext.request.contextPath}/">Back to Course List</a>
</div>
</body>
</html>
