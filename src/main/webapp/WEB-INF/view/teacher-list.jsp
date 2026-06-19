<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Students List</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body{
            background-color:#eef2f7;
        }

        .container-box{
            margin-top:40px;
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0px 2px 10px rgba(0,0,0,0.1);
        }

        h2{
            font-weight:bold;
            margin-bottom:20px;
        }

        table{
            border-radius:10px;
            overflow:hidden;
        }

        .btn-edit{
            background:#0d6efd;
            color:white;
        }

        .btn-edit:hover{
            background:#084298;
            color:white;
        }
    </style>

</head>

<body>

<div class="container">

    <div class="container-box">

        <h2>All Students</h2>

        <table class="table table-bordered table-hover">

            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Specialization</th>
            </tr>
            </thead>

            <tbody>

            <c:forEach var="user" items="${users}">

                <tr>

                    <td>${user.id}</td>

                    <td>${user.name}</td>

                    <td>${user.email}</td>

                    <td>${user.specialization}</td>

                    <td>
                        <a href="${pageContext.request.contextPath}/teacher/editStudent/${student.id}"
                           class="btn btn-edit btn-sm">
                            Edit
                        </a>
                    </td>

                </tr>

            </c:forEach>

            </tbody>

        </table>

    </div>

</div>

</body>
</html>