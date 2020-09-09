<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${readercard.name}的主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="img/bg5.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header" style="padding-bottom: 80px"></div>
<c:if test="${!empty succ}">
    <div class="alert alert-success alert-dismissable" style="margin-left: 10%">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${succ}
    </div>
</c:if>
<c:if test="${!empty error}">
    <div class="alert alert-danger alert-dismissable" style="margin-left: 10%">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${error}
    </div>
</c:if>
<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                我的信息
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="20%">读者证号</th>
                    <td>${readerinfo.readerId}</td>
                </tr>
                <tr>
                    <th>姓名</th>
                    <td>${readerinfo.name}</td>
                </tr>
                <tr>
                    <th>性别</th>
                    <td>${readerinfo.sex}</td>
                </tr>
                <tr>
                    <th>生日</th>
                    <td><fmt:formatDate value="${readerinfo.birth}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                </tr>
                <tr>
                    <th>地址</th>
                    <td>${readerinfo.address}</td>
                </tr>
                <tr>
                    <th>电话</th>
                    <td>${readerinfo.phone}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <a class="btn btn-success" href="reader_info_edit.html" role="button" style="margin-left: 45%">
            修改
        </a>
        <br><br>
    </div>
</div>


</body>
</html>
