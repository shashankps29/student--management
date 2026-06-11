<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Notices</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body{
            background:#f5f7fa;
        }

        .notice-card{
            border-left:5px solid #0d6efd;
            transition:0.3s;
        }

        .notice-card:hover{
            transform:translateY(-2px);
        }
    </style>
</head>
<body>



<div class="container mt-5">

    <h2 class="mb-4 text-center">
       Important Notices
    </h2>

    <c:choose>

        <c:when test="${empty notices}">
            <div class="alert alert-info text-center">
                No notices available.
            </div>
        </c:when>

        <c:otherwise>

            <c:forEach items="${notices}" var="notice">

                <div class="card notice-card shadow-sm mb-3">
                    <div class="card-body">

                        <p class="mb-2 fs-5">
                            ${notice.message}
                        </p>

                        <small class="text-muted">
                               Posted on: ${notice.localDateTime.toLocalDate()}
                        </small>

                    </div>
                </div>

            </c:forEach>

        </c:otherwise>

    </c:choose>

</div>

</body>
</html>