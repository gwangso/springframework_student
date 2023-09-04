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
            <h2 class="text-center mb-3">save.jsp</h2>
            <form method="post">
                <div class="input-group mb-3">
                    <span class="input-group-text">id</span>
                    <input class="form-control" type="text" name="id" value="${student.id}" readonly>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">학번</span>
                    <input class="form-control" type="text" name="studentNumber" value="${student.studentNumber}">
                </div>
                <br>
                <div class="input-group mb-3">
                    <span class="input-group-text">이름</span>
                    <input class="form-control" type="text" name="studentName" value="${student.studentName}">
                </div>
                <br>
                <div class="input-group mb-3">
                    <span class="input-group-text">학과</span>
                    <input class="form-control" type="text" name="studentMajor" value="${student.studentMajor}">
                </div>
                <br>
                <div class="input-group mb-3">
                    <span class="input-group-text">전화번호</span>
                    <input class="form-control" type="text" name="studentMobile" value="${student.studentMobile}">
                </div>
                <br>
                <br>
                <input class="btn btn-primary" type="submit" value="저장">
                <input class="btn btn-primary" type="reset" value="취소">
            </form>
            <a  href="/">처음으로 돌아가기</a>
            <br>
            <a  href="/list">list로 돌아가기</a>
        </div>
    </div>
</body>
</html>