<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>

<div class="container" id="main">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>#</th> <th>사용자 아이디</th> <th>이름</th> <th>이메일</th><th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user" varStatus="status">
                   <c:if test="${user.uuid eq sessionScope.uuid}">
                                           <tr>
                                               <th scope="row">${status.count}</th>
                                               <td>${user.userId}</td>
                                               <td>${user.name}</td>
                                               <td>${user.email}</td>
                                               <td>
                                                   <a href="../user/update.jsp?userId=${user.userId}&uuid=${user.uuid}" class="btn btn-success" role="button">수정</a>
                                               </td>
                                           </tr>
                                       </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>

