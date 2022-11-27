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
        <div class="row">
            <div class="col-lg-12">
                <c:choose>
                    <c:when test="${boardGame ne null}">
                <form method="post" action="/boardgame/update">
                    <input type="hidden" name="id" value="${boardGame.id}">
                    </c:when>
                    <c:otherwise>
                <form method="post" action="/boardgame/add">
                    </c:otherwise>
                </c:choose>
                    <div class="card position-relative">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">
                                <c:choose>
                                    <c:when test="${boardGame ne null}">
                                        보드게임 수정
                                    </c:when>
                                    <c:otherwise>
                                        보드게임 등록
                                    </c:otherwise>
                                </c:choose>
                            </h6>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="title">보드게임명</label>
                                <input id="title" name="title" placeholder="보드게임명을 입력해주세요" type="text" required="required" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.title}</c:if>">
                            </div>
                            <div class="form-group">
                                <label for="title_eng">보드게임 영문명</label>
                                <input id="title_eng" name="title_eng" placeholder="보드게임 영문명을 입력해주세요" type="text" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.title_eng}</c:if>">
                            </div>
                            <div class="form-group">
                                <label for="pweight">난이도</label>
                                <input id="pweight" name="pweight" placeholder="보드게임 난이도를 소수점 포함 1.0 ~ 5.0 사이로 입력해주세요" type="text" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.pweight}</c:if>">
                            </div>
                            <div class="form-group">
                                <label for="playtime">플레이시간</label>
                                <input id="playtime" name="playtime" placeholder="보드게임 플레이시간을 입력해주세요" type="text" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.playtime}</c:if>">
                            </div>
                            <div class="form-group">
                                <label for="player">인원수</label>
                                <input id="player" name="player" placeholder="적정 인원수를 입력해주세요" type="text" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.player}</c:if>">
                            </div>
                            <div class="form-group">
                                <label for="recommend">추천인원수</label>
                                <input id="recommend" name="recommend" placeholder="게임 플레이 추천 인원수를 입력해주세요" type="text" class="form-control" value="<c:if test="${boardGame ne null}">${boardGame.recommend}</c:if>">
                            </div>
                            <div class="form-group">
                                <button name="submit" type="submit" class="btn btn-primary">등록</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%@ include file="/WEB-INF/include/footer.jsp" %>

</body>

</html>