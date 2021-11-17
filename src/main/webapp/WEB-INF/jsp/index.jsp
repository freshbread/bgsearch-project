<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>테스트페이지</title>
    <meta charset="UTF-8">
    <meta name="description" content="테스트페이지">
    <meta name="keywords" content="테스트, 테스트1, 테스트2">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h1>List Group</h1>
            <ul class="list-group">
                <c:forEach items="${list}" var="board">
                    <li class="list-group-item">${board.title} / ${board.title_eng}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>