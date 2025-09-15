<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Course Tracker</title>

    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
</head>
<body>

<div class="container my-2">
    <h1>Courses List</h1>

    <a href="${pageContext.request.contextPath}/add" class="btn btn-primary btn-sm mb-3"> Add Course </a>

    <table border="1" class="table table-striped table-responsive-md">
        <thead>
        <tr>
            <th>
                <a href="${pageContext.request.contextPath}/page/${currentPage}?sortField=courseName&sortDir=${reverseSortDir}">
                    Course Name</a>
            </th>
            <th>
                <a href="${pageContext.request.contextPath}/page/${currentPage}?sortField=instructor&sortDir=${reverseSortDir}">
                    Course Instructor</a>
            </th>
            <th>
                <a href="${pageContext.request.contextPath}/page/${currentPage}?sortField=email&sortDir=${reverseSortDir}">
                    Course Email</a>
            </th>
            <th> Actions </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${listCourses}">
            <tr>
                <td>${course.courseName}</td>
                <td>${course.instructor}</td>
                <td>${course.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/update/${course.id}" class="btn btn-primary">Update</a>
                    <a href="${pageContext.request.contextPath}/delete/${course.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <c:if test="${totalPages > 1}">
        <div class="row col-sm-10">
            <div class="col-sm-5">
                Total Rows: ${totalItems}
            </div>
            <div class="col-sm-3">
                <c:forEach var="i" begin="1" end="${totalPages}">
                    <c:choose>
                        <c:when test="${currentPage != i}">
                            <a href="${pageContext.request.contextPath}/page/${i}?sortField=${sortField}&sortDir=${sortDir}">${i}</a>
                        </c:when>
                        <c:otherwise>
                            <span>${i}</span>
                        </c:otherwise>
                    </c:choose>
                    &nbsp;&nbsp;
                </c:forEach>
            </div>

            <div class="col-sm-1">
                <c:choose>
                    <c:when test="${currentPage < totalPages}">
                        <a href="${pageContext.request.contextPath}/page/${currentPage + 1}?sortField=${sortField}&sortDir=${sortDir}">Next</a>
                    </c:when>
                    <c:otherwise>
                        <span>Next</span>
                    </c:otherwise>
                </c:choose>
            </div>

            <div class="col-sm-1">
                <c:choose>
                    <c:when test="${currentPage < totalPages}">
                        <a href="${pageContext.request.contextPath}/page/${totalPages}?sortField=${sortField}&sortDir=${sortDir}">Last</a>
                    </c:when>
                    <c:otherwise>
                        <span>Last</span>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </c:if>
</div>

</body>
</html>
