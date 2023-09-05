1. 실습
   1. project name: student_20230904
   2. base-package: com.icia.student
   3. 주요 동작 및 파일
      1. Class
         1. HomeController
            - 기본주소 요청에 대해 index.jsp 출력
         2. StudentController
            - 도서 등록, 조회, 목록 출력 등을 위한 메서드 있음
         3. StudentService
            - Controller로 부터 호출되며 로직 처리
         4. StudentDTO
            - 번호(id), 학번(studentNumber, String), 이름(studentName), 학과
            (studentMajor), 전화번호(studentMobile) 정보를 담기 위한 필드 있
            음.
         5. StudentRepository
            - mapper 호출 및 리턴
      2. 화면
         1. index.jsp
            - save.jsp를 출력하기 위한 링크 있음(요청주소: /save)
            - detail.jsp를 출력하기 위한 링크 있음(요청주소: /detail)
            - list.jsp를 출력하기 위한 버튼 있음(요청주소: /list)
         2. save.jsp
            - 학생 등록을 위한 페이지
            - 학번(studentNumber, String), 이름(studentName), 학과
            (studentMajor), 전화번호(studentMobile) 정보를 입력받음
         3. list.jsp
            - DB에서 조회한 학생 전체 정보를 화면에 출력함
            - 각 학생의 id에 링크가 있으며, 링크를 클릭하면 학생의 상세조회 페이
            지로 넘어감
         4. detail.jsp
            - 해당 학생의 상세 정보를 화면에 출력
      3. database 관련
         1. mybatis-config.xml
         2. student-mapper.xml
      4. Database Table
         1. student_table
            - id(pk, auto_increment)
            - studentNumber
            - studentName
            - studentMajor
            - studentMobile