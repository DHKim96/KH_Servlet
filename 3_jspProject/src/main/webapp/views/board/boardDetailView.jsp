<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="com.kh.board.model.vo.Board,com.kh.common.vo.Attachment" %>
    
<%
    Board b = (Board)request.getAttribute("board");
	// 글번호, 카테고리명, 제목, 내용, 작성자, 작성일
	Attachment at = (Attachment)request.getAttribute("attachment");
	// 없을 수도 있음(null)
	// 존재 시 파일 번호, 원본명, 수정파일명, 저장 경로
	
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        .outer {
            background-color: black;
            color: white;
            width: 1000px;
            height: 500px;
            margin: auto;
            margin-top: 50px;
        }

        .outer table {
            border: 1px solid white;
            border-collapse: collapse;
        }

        .outer > table tr, .outer > table td{
            border: 1px solid white;
        }
    </style>
</head>

<body>
    <%@ include file="../common/menubar.jsp" %>
        <div class="outer" align="center">
            <br>
            <h2 align="center">일반게시판 상세보기</h2>
            <br>
            <table id="detail-area" border="1" align="center">
                <tr>
                    <th width="70px">카테고리</th>
                    <td width="70px"><%=b.getCategory()%></td>
                    <th width="70px">제목</th>
                    <td colspan="3" width="350px"><%=b.getBoardTitle()%></td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td><%=b.getBoardWriter()%></td>
                    <th>작성일</th>
                    <td><%=b.getCreateDate()%></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3">
                        <p style="height: 200px;"><%=b.getBoardContent()%></p>
                    </td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td colspan="3">
                        <!--case 1 : 첨부파일 없을 때 => 첨부파일이 없습니다-->
                        <%if(at == null) {%>
                        	첨부파일이 없습니다.
                        <%} else { %>
                       		<!--case 2 : 첨부파일 있을 때-->
                        	<a download="<%=at.getOriginName()%>" href="<%=contextPath%><%=at.getFilePath() + at.getChangeName()%>"><%=at.getOriginName()%></a>
                        <%} %>
                    </td>
                </tr>
            </table>
            <br><br>
             <% if(loginUser != null && loginUser.getUserId().equals(b.getBoardWriter())) { %>
            <!-- 현재 로그인한 유저가 해당 게시글의 작성자일 때만 수정/삭제 가능하도록 제한-->
	            <div align="center">
	                <a href="<%=contextPath %>/list.bo?cpage=1" class="btn btn-sm btn-secondary">목록가기</a>
	                <a href="<%=contextPath %>/updateForm.bo?num=<%=b.getBoardNo() %>" class="btn btn-sm btn-warning">수정</a>
	                <a href="<%=contextPath %>/delete.bo?num=<%=b.getBoardNo() %>" class="btn btn-sm btn-danger">삭제</a>
	            </div>
            <% } else { %>
            	<div align="center">
	                <a href="<%=contextPath %>/list.bo?cpage=1" class="btn btn-sm btn-secondary">목록가기</a>
	                <!-- url 을 치고 들어올 경우 history.back 사용하면 잘못된 곳으로 돌아갈 수 있기에 유의-->
	            </div>
            <% } %>
        </div>
</body>

</html>