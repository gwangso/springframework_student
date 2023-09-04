<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>
        save
    </title>

    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
    <div class="row m-5">
        <div class="col">
            <h2 class="text-center mb-3">list.jsp</h2>
            <table class="table">
                <tr class="table-dark">
                    <th>학번</th>
                    <th>이름</th>
                    <th>학과</th>
                    <th>전화번호</th>
                </tr>
                <c:forEach items="${studentList}" var="student">
                <tr>
                    <td>
                        <a href="/detail?id=${student.id}">${student.studentNumber}</a>
                    </td>
                    <td>${student.studentName}</td>
                    <td>${student.studentMajor}</td>
                    <td>${student.studentMobile}</td>
                </tr>
                </c:forEach>
            </table>
            <a class="text-end" href="/">처음으로 돌아가기</a>
        </div>
    </div>
</body>
</html>