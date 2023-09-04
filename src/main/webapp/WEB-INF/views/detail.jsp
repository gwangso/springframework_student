<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div clas="col">
            <h2>detail.jsp</h2>
            학번 : ${student.studentNumber}
            이름 : ${student.studentName}
            학과 : ${student.studentMajor}
            전화번호 : ${student.studentMobile}
            <a href="/list">list로 돌아가기</a>
        </div>
    </div>
</body>
</html>