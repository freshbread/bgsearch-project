<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>보드게임 관리 사이트</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="보드게임 관리 사이트">
    <meta name="keywords" content="보드게임, 모임">
    <meta name="author" content="">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <%@ include file="/WEB-INF/include/header.jsp" %>

    <div class="container-fluid">
        <!-- 보드게임 목록 -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">보드게임 보유 리스트</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>게임명</th>
                            <th>게임 영문명</th>
                            <th>난이도 (5점 만점)</th>
                            <th>플레이 시간</th>
                            <th>인원수</th>
                            <th>추천인원수</th>
                            <th> - </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="boardGame">
                        <tr>
                            <td>${boardGame.title}</td>
                            <td>${boardGame.title_eng}</td>
                            <td>${boardGame.pweight}</td>
                            <td>${boardGame.playtime}분</td>
                            <td>${boardGame.player}명</td>
                            <td>${boardGame.recommend}명</td>
                            <td><a href="/write?id=${boardGame.id}">수정</a> / <a href="javascript:deleteBg(${boardGame.id})">삭제</a></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <form name="deleteBoardGameForm" method="post" action="/boardgame/delete">
        <input type="hidden" name="id" value="">
    </form>

    <%@ include file="/WEB-INF/include/footer.jsp" %>

    <script type="text/javascript">
        function deleteBg(id) {
            var isCheck = confirm("해당 게임을 삭제하겠습니까?");
            if (isCheck) {
                $("form[name='deleteBoardGameForm']").find("input[name='id']").val(id);
                $("form[name='deleteBoardGameForm']").submit();
            }
        }
    </script>

</body>

</html>