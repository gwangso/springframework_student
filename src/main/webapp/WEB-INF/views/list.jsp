<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>
        save
    </title>
    <!-- j쿼리 -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>

    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
    <div class="row m-5">
        <div class="col">
            <h2 class="text-center mb-3">list.jsp</h2>
            <div id="div-list">
                <table class="table">
                    <tr class="table-dark">
                        <th>학번</th>
                        <th>이름</th>
                        <th>학과</th>
                        <th>전화번호</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                    <c:forEach items="${studentList}" var="student">
                    <tr>
                        <td>
                            <a href="/detail?id=${student.id}">${student.studentNumber}</a>
                        </td>
                        <td>${student.studentName}</td>
                        <td>${student.studentMajor}</td>
                        <td>${student.studentMobile}</td>
                        <!-- 수정, 삭제 버튼을 클릭하면 각각 /update, /delete 주소를 요청하면서 id값을
                                    StudentController로 보냄(javascript 함수 정의해야 함)
                                    수정버튼을 클릭하면 update.jsp화면으로 이동하며, 기존 등록한 학생의 정보가 input 태그에
                                    작성되어 있으며, 학번, 이름은 수정이 불가능하고, 학과, 전화번호만 수정할 수 있음.
                                    학과, 전화번호를 수정할 값으로 입력 후 버튼을 클릭하면 수정처리를 진행함.

                                    삭제버튼을 클릭하면 DB에서 해당 학생에 대한 삭제 처리를 진행하고 삭제처리가 끝나면
                                    index.jsp를 출력함.
                        -->
                        <td>
                            <button class="btn btn-primary" onclick="update_fn('${student.id}')" studentId="${student.id}">수정</button>
                        </td>
                        <td>
                            <button class="btn btn-danger" onclick="delete_fn('${student.id}')" studentId="${student.id}">삭제</button>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="text-end">
                <a class="text-end" href="/">처음으로 돌아가기</a>
            </div>
        </div>
    </div>
</body>

<script>
    /*
    $("#div-list").on("click", ".btn-primary", function(){
        const id = $(this).attr("studentId");
        location.href="/update?id="+id
    });

    $("#div-list").on("click", ".btn-danger", function(){
        const id = $(this).attr("studentId");
        location.href="/delete?id="+id
    });
    */
    const update_fn = (id) => {
        location.href="/update?id="+id;
    }
    const delete_fn = (id) => {
        location.href="/delete?id="+id;
    }
</script>



</html>