<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background: black;
        color: white;
        height: auto;
        margin: auto;
        margin-top: 50px;
    }

    .list-area{
        max-width: 850px;
        margin: auto;
    }

    .thumbnail{
        display: inline-block;
        border: 1px solid white;
        padding: 12px;
        margin: 14px;
        width: 226px;
    }

    .thumbnail:hover{
        cursor: pointer;
        opacity: 0.9;
    }

    .thumbnail p > span{
        display: inline-block;
        width: 220px;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
    }


</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="outer">
        <br>
        <h2 align="center">사진게시판</h2>
        <br>

        <div class="list-area">
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="" alt="썸네일" width="200px" height="150px">
                <p>
                    <span>No. 125 빵빵이의 하루</span> <br>
                    조회수 : 155
                </p>
            </div>
        </div>
    </div>
</body>
</html>