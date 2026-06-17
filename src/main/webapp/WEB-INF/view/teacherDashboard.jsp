<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c"
uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Teacher Dashboard</title>

    <!-- Bootstrap -->

    <link href=
    "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->

    <link rel="stylesheet"
          href=
          "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            background:#eef2ff;
            font-family:Arial,sans-serif;
            overflow-x:hidden;
        }

        /* Sidebar */

        .sidebar{
            width:260px;
            height:100vh;
            position:fixed;
            background:linear-gradient(180deg,#111827,#1f2937);
            color:white;
            padding:20px;
        }

        .sidebar h2{
            text-align:center;
            margin-bottom:40px;
            font-weight:bold;
        }

        .sidebar a{
            display:block;
            color:white;
            text-decoration:none;
            padding:14px;
            margin:10px 0;
            border-radius:12px;
            transition:0.3s;
        }

        .sidebar a:hover{
            background:#374151;
            transform:translateX(5px);
        }

        /* Main */

        .main{
            margin-left:260px;
            padding:25px;
        }

        /* Topbar */

        .topbar{
            background:white;
            padding:18px 25px;
            border-radius:18px;
            box-shadow:0 2px 10px rgba(0,0,0,0.1);
            display:flex;
            justify-content:space-between;
            align-items:center;
        }

        .topbar h3{
            font-weight:bold;
            color:#1e293b;
        }

        /* Cards */

       .card-box{
           border:none;
           border-radius:20px;
           color:white;
           padding:25px;
           height:170px;   /* same height for all cards */
       }

        .card-box:hover{
            transform:translateY(-6px);
        }

        .attendance{
            background:linear-gradient(135deg,#2563eb,#1d4ed8);
        }

        .assignments{
            background:linear-gradient(135deg,#7c3aed,#5b21b6);
        }

        .students{
            background:linear-gradient(135deg,#059669,#047857);
        }

        .lectures{
                             background:linear-gradient(135deg,#7c3aed,#5b21b6);
                         }

        .results{
            background:linear-gradient(135deg,#dc2626,#991b1b);
        }

        /* Section */

        .section-box{
            background:white;
            margin-top:35px;
            padding:25px;
            border-radius:20px;
            box-shadow:0 2px 10px rgba(0,0,0,0.1);
        }

        .table thead{
            background:#1e293b;
            color:white;
        }

        /* Buttons */

        .btn-custom{
            border:none;
            padding:8px 14px;
            border-radius:8px;
            color:white;
            text-decoration:none;
        }

        .btn-attendance{
            background:#2563eb;
        }

        .btn-result{
            background:#059669;
        }

        .btn-warning-custom{
            background:#dc2626;
        }

        .btn-delete{
            background:#111827;
        }

        /* Notice */

        .notice-box{
            background:linear-gradient(135deg,#0ea5e9,#0284c7);
            color:white;
            padding:25px;
            border-radius:20px;
        }

        .success-msg{
            background:#d1fae5;
            color:#065f46;
            padding:12px;
            border-radius:10px;
            margin-top:20px;
        }

        .error-msg{
            background:#fee2e2;
            color:#991b1b;
            padding:12px;
            border-radius:10px;
            margin-top:20px;
        }

    </style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

    <h2>TEACHER</h2>

    <a href="#">

        <i class="bi bi-speedometer2"></i>
        Dashboard

    </a>

      <a href="/teacher/profile">

            <i class="bi bi-person-fill"></i>
            Teacher Profile

        </a>
<%--
    <a href="/teacher/add-student-page">

        <i class="bi bi-person-plus-fill"></i>
        Add Student

    </a>
    --%>

    <a href="/teacher/students">

        <i class="bi bi-people-fill"></i>
        Students

    </a>
<%--
    <a href="#attendance-section">

        <i class="bi bi-calendar-check-fill"></i>
        Attendance

    </a>

    --%>

    <a href="#assignment-section">

        <i class="bi bi-journal-bookmark-fill"></i>
        Assignments

    </a>
<%--
    <a href="#result-section">

        <i class="bi bi-clipboard-data-fill"></i>
        Results

    </a>
    --%>
     <a href="/teacher/getAdminMsg">

            <i class="bi bi-clipboard-data"></i>
            Admin Messages

        </a>

    <a href="#notice-section">

        <i class="bi bi-megaphone-fill"></i>
        Notices

    </a>

    <a href="/login">

        <i class="bi bi-box-arrow-right"></i>
        Logout

    </a>

</div>

<!-- Main -->

<div class="main">

    <!-- Topbar -->

    <div class="topbar">

        <h3>

            Welcome Teacher

        </h3>

        <button class="btn btn-dark">

            <i class="bi bi-bell-fill"></i>

        </button>

    </div>

    <!-- Messages -->

    <c:if test="${not empty success}">

        <div class="success-msg">

            ${success}

        </div>

    </c:if>

    <c:if test="${not empty error}">

        <div class="error-msg">

            ${error}

        </div>

    </c:if>



    <div class="row mt-4 g-4">
 <!-- Cards
        <div class="col-md-3">

            <div class="card-box attendance">

                <h5>Total Classes</h5>

                <h2>24</h2>

                <p>This Month</p>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card-box assignments">

                <h5>Assignments</h5>

                <h2>12</h2>

                <p>Pending Reviews</p>

            </div>

        </div>

        -->

        <div class="col-md-3">

            <div class="card-box students">

                <h5>Total Students</h5>

                <h2>${totalStudents}</h2>

            </div>

        </div>

          <div class="col-md-3">

                     <div class="card-box lectures">

                        <h5>Upcoming Lectures</h5>

                        <h2>Java</h2>
                        <p> 9.30 - 10.30 </p>

                    </div>

                </div>


        </div>


        <%--

        <div class="col-md-3">

            <div class="card-box results">

                <h5>Results Uploaded</h5>

                <h2>8</h2>

                <p>Recently Updated</p>

            </div>

        </div>



    --%>



    <!-- Student Table

    <div class="section-box mt-5">

        <h4 class="mb-4">

            Student Management

        </h4>

        <table class="table table-hover">

            <thead>

            <tr>

                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Branch</th>
                <th>Section</th>
                <th>Status</th>
                <th>Action</th>

            </tr>

            </thead>

            <tbody>

            <c:forEach items="${students}"
                       var="student">

                <tr>

                    <td>${student.id}</td>

                    <td>${student.name}</td>

                    <td>${student.email}</td>

                    <td>${student.branch}</td>

                    <td>${student.section}</td>

                    <td>

                        <c:choose>

                            <c:when test="${student.blocked}">

                                <span class="text-danger">

                                    Blocked

                                </span>

                            </c:when>

                            <c:otherwise>

                                <span class="text-success">

                                    Active

                                </span>

                            </c:otherwise>

                        </c:choose>

                    </td>

                    <td>

                        <a href="/teacher/block/${student.id}"
                           class="btn-custom btn-warning-custom">

                            Block

                        </a>

                        <a href="/teacher/unblock/${student.id}"
                           class="btn-custom btn-attendance">

                            Unblock

                        </a>

                        <a href="/teacher/delete-student/${student.id}"
                           class="btn-custom btn-delete">

                            Delete

                        </a>

                    </td>

                </tr>

            </c:forEach>

            </tbody>

        </table>

    </div>

    -->

    <!-- Attendance

    <div class="section-box"
         id="attendance-section">

        <h4 class="mb-4">

            Attendance Section

        </h4>

        <p>

            Teacher can mark attendance here.

        </p>

        <button class="btn btn-primary">

            Mark Attendance

        </button>

    </div>

     -->

    <!-- Assignment -->

    <div class="section-box"
         id="assignment-section">

        <h4 class="mb-4">

            Upload Assignment

        </h4>

        <form>

            <input type="text"
                   class="form-control mb-3"
                   placeholder="Assignment Title">

            <textarea class="form-control mb-3"
                      rows="4"
                      placeholder="Assignment Description"></textarea>

            <button class="btn btn-success">

                Upload Assignment

            </button>

        </form>

    </div>

    <!-- Results

    <div class="section-box"
         id="result-section">

        <h4 class="mb-4">

            Result Management

        </h4>

        <button class="btn btn-dark">

            Upload Results

        </button>

    </div>

    -->

    <!-- Notices -->

   <div class="notice-box mt-4" id="notice-section">

       <h4>Send Notice To Students</h4>

       <form action="/teacher/sendNotice" method="post">

           <textarea
                   class="form-control mt-3"
                   rows="4"
                   name="message"
                   placeholder="Write Notice"></textarea>

           <button type="submit" class="btn btn-light mt-3">
               Send Notice
           </button>

       </form>

   </div>

</div>

<!-- Bootstrap JS -->

<script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">

</script>

<script>

    // Delete Confirmation

    const deleteButtons =
        document.querySelectorAll(".btn-delete");

    deleteButtons.forEach(button => {

        button.addEventListener("click", function(event){

            const confirmDelete =
                confirm("Delete Student ?");

            if(!confirmDelete){

                event.preventDefault();
            }

        });

    });

</script>

</body>

</html>