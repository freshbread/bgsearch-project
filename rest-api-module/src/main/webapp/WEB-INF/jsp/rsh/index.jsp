<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <title>인덱스 페이지</title>
    <script type="text/javascript" src="/js/query-1.8.3.min.js"></script>
<%--    <script type="text/javascript" src="/js/rsh/json2007.js"></script>--%>
<%--    <script type="text/javascript" src="/js/rsh/rsh.js"></script>--%>
    <script type="text/javascript" src="/js/rsh/dhtmlHistory.js"></script>

</head>
<body>
<div id="historyStorage"></div>
<div id="main">
    <span>인덱스 페이지입니다.</span><br>
    <a href="javascript:;" class="rsh_test">rsh test</a> | <a href="/rsh/detail" class="detail">detail</a> | <a href="javascript:;" class="type">type click test</a><br>
    <div class="content">

            문제 보기
            주제(시나리오)
            고양이를 좋아하는 당신은 고양이 사진 전용 검색 웹사이트를 운영하고 있었습니다. 지금까지는 혼자 소소하게 운영해왔는데, 생각보다 고양이 사진을 원하는 사람들이 많아지면서 해결해야 할 문제들이 하나씩 드러나기 시작했어요. 몇 개의 문제는 금세 고칠 수 있지만, 기존 코드를 자세히 봐야만 고칠 수 있는 문제들도 있어서 조금 골치아픈 상황! 심지어 최대 4시간 내에 수정한 뒤 배포를 해야만 합니다. 당신이라면 기존 서비스의 여러 버그를 제한시간 내에 고치고, 유저를 위한 추가 기능까지 구현해볼 수 있을까요? 도전해보세요!

    </div>
</div>

<script type="text/javascript">

    function historyfunc() {
        console.log("call function historyfunc");
        var historyStorageField = $.parseJSON($("#historyStorageField").val());
        $(".content").html(historyStorageField.HIS_ID);
    }

    $(function () {

        console.log("call javascript init func");

        $(".rsh_test").on("click", function() {
            var content = $(".content").html();
            dhtmlHistory.add("DhtmlHistory_pageLoaded", true);
            var historyStorageField = $.parseJSON($("#historyStorageField").val());
            if (historyStorageField.HIS_ID == null || historyStorageField.HIS_ID == "") {
                console.log("input HIS_ID text");
                var text = "2021-08-31 16:46:47.468  INFO 47554 --- [  restartedMain] trationDelegate$BeanPostProcessorChecker : Bean 'jacksonObjectMapper' of type [com.fasterxml.jackson.databind.ObjectMapper] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying) ";
                dhtmlHistory.add("HIS_ID", text);
            }
            $(".content").html(historyStorageField.HIS_ID);
        });

        $(".type").on("click", function() {
            if ($(this).hasClass("list")) {
                $(this).removeClass("list");
            } else {
                $(this).addClass("list");
            }
        });

        $(".type").on("click", function() {
            console.log("$(this).hasClass('list'): " + $(this).hasClass("list"));
            if ($(this).hasClass("list")) {
                // (모바일) 상품이 한줄에 하나씩 있는 경우 (?)
                dhtmlHistory.add("type_list", true);
            } else {
                // (모바일) 상품이 한줄에 두개씩 있는 경우 (?)
                dhtmlHistory.add("type_list", false);
            }
        });

        // dhtmlHistory.create({
        //     //set this to false, or just don't pass in an options bundle, to see real-world, non-debug conditions
        //     debugMode: true
        //     , baseTitle: "@@@ RSH Test Page"
        // });
        // dhtmlHistory.initialize(historyfunc);
        // history 저장을 위해 초기화
        dhtmlHistory.initialize();
        // 뒤로가기가 실행될때 실행할 이벤트 함수를 지정
        dhtmlHistory.addListener(historyfunc);
    });

</script>
</body>
</html>