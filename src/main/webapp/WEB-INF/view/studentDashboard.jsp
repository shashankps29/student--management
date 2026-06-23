        <%@ taglib prefix="c" uri="jakarta.tags.core" %>

        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport"
                  content="width=device-width, initial-scale=1.0">

            <title>Student Dashboard</title>

            <!-- Bootstrap -->

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
                  rel="stylesheet">

            <!-- Bootstrap Icons -->

            <link rel="stylesheet"
                  href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            background:#f1f5f9;
            font-family:Arial,sans-serif;
            overflow-x:hidden;
        }

        /* Sidebar */

        .sidebar{
            width:260px;
            height:100vh;
            position:fixed;
            background:linear-gradient(180deg,#0f172a,#1e293b);
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
            background:#334155;
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
            color:#1e293b;
            font-weight:bold;
        }

        /* Cards */

        .dashboard-card{
            border:none;
            border-radius:20px;
            color:white;
            padding:25px;
            transition:0.3s;
            cursor:pointer;
        }

        .dashboard-card:hover{
            transform:translateY(-7px);
        }

        .attendance{
            background:linear-gradient(135deg,#2563eb,#1d4ed8);
        }

        .assignments{
            background:linear-gradient(135deg,#7c3aed,#5b21b6);
        }

        .fees{
            background:linear-gradient(135deg,#059669,#047857);
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

        /* Profile */

        .profile-box{
            display:flex;
            align-items:center;
            gap:20px;
        }

        .profile-img{
            width:100px;
            height:100px;
            border-radius:50%;
            object-fit:cover;
            border:4px solid #2563eb;
        }

        /* Progress */

        .progress{
            height:22px;
            border-radius:20px;
        }

        /* Notice */

        .notice{
            background:linear-gradient(135deg,#0ea5e9,#0284c7);
            color:white;
            border-radius:20px;
            padding:25px;
        }

        /* Buttons */

        .btn-custom{
            border:none;
            padding:10px 16px;
            border-radius:10px;
            color:white;
        }

        .download-btn{
            background:#2563eb;
        }

        .pay-btn{
            background:#059669;
        }
        .dark{
            background-color:black;
            color:white;
        }
        .light{
        background-color:white;
        color:black;
        }

    </style>

</head>

<body class="light">

<!-- Sidebar -->

<div class="sidebar">

    <h2>Student Panel</h2>

    <p></p>

    <a href="#">
        <i class="bi bi-speedometer2"></i>
        Dashboard
    </a>

   <a href="profile">
       <i class="bi bi-person-fill"></i>
       Profile
   </a>

   <%--
    <a href="/attendanceDashboard">
        <i class="bi bi-calendar-check-fill"></i>
        Attendance
    </a>

    --%>

    <a href="#assign">
        <i class="bi bi-journal-bookmark-fill"></i>
        Assignments
    </a>

   <%--

    <a href="#">
        <i class="bi bi-clipboard-data-fill"></i>
        Results
    </a>

    --%>

   <%--
    <a href="#">
        <i class="bi bi-cash-stack"></i>
        Fees
    </a>



    <a href="#">
        <i class="bi bi-chat-dots-fill"></i>
        Messages
    </a>

     --%>

    <a href="${pageContext.request.contextPath}/allNotice">
        <i class="bi bi-megaphone-fill"></i>
        Notices
    </a>

    <a href="login">
        <i class="bi bi-box-arrow-right"></i>
        Logout
    </a>

</div>

<!-- Main -->

<div class="main">

    <!-- Topbar -->


    <div class="topbar">

        <h3>Welcome</h3>

          <button class="btn btn-dark" id="themeToggle">
                    <i class="bi bi-moon-fill" id="themeIcon"></i>
                </button>

    </div>

    <!-- Dashboard Cards -->

  <div class="row mt-7">

      <!-- Student Profile -->
      <div class="col-md-5">
          <div class="section">
              <h4>Student Profile</h4>

              <div class="profile-box d-flex align-items-center">
                  <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
                       class="profile-img me-4">

                  <div>
                      <p><strong>Email:</strong> ${student.email}</p>
                      <p><strong>Branch:</strong> ${student.branch}</p>
                      <p><strong>Section:</strong> ${student.section}</p>
                      <p><strong>Course:</strong> ${student.course}</p>
                  </div>
              </div>
          </div>
      </div>


      <!-- Right Side Cards -->
      <div class="col-md-7">
          <div class="row">

              <div class="col-md-6">
                  <div class="dashboard-card attendance">
                      <h5>Attendance</h5>
                      <h2>${attendancePercentage}%</h2>
                      <p>Current Attendance</p>
                  </div>
              </div>

              <div class="col-md-6">
                  <div class="dashboard-card assignments">
                      <h5>Assignments</h5>
                      <h2>5</h2>
                      <p>Pending Tasks</p>
                  </div>
              </div>

          </div>
      </div>

  </div>


    <%--

    <div class="section-box">

        <h4 class="mb-4">Attendance Progress</h4>

        <p>Java</p>

        <div class="progress mb-3">

            <div class="progress-bar"
                 style="width:90%">
                90%
            </div>

        </div>

        <p>DBMS</p>

        <div class="progress mb-3">

            <div class="progress-bar bg-success"
                 style="width:95%">
                95%
            </div>

        </div>

        <p>OS</p>

        <div class="progress">

            <div class="progress-bar bg-danger"
                 style="width:72%">
                72%
            </div>

        </div>

    </div>
--%>
    <!-- Assignments -->

    <div id ="assign" class="section-box">

        <h4 class="mb-4">Assignments</h4>

        <table class="table table-hover">

            <thead>

            <tr>

                <th>Subject</th>
                <th>Assignment</th>
                <th>Deadline</th>
                <th>Status</th>
                <th>Action</th>

            </tr>

            </thead>

            <tbody>

            <tr>

                <td>Java</td>
                <td>Spring MVC Project</td>
                <td>30 May 2026</td>
                <td>Pending</td>

                <td>

                    <button class="btn-custom download-btn">
                        Upload
                    </button>

                </td>

            </tr>

            <tr>

                <td>DBMS</td>
                <td>Normalization</td>
                <td>28 May 2026</td>
                <td>Submitted</td>

                <td>

                    <button class="btn btn-success">
                        Done
                    </button>

                </td>

            </tr>

            </tbody>

        </table>

    </div>

    <!-- Results

    <div class="section-box">

        <h4 class="mb-4">Results</h4>

        <table class="table table-hover">

            <thead>

            <tr>

                <th>Subject</th>
                <th>Marks</th>
                <th>Grade</th>

            </tr>

            </thead>

            <tbody>

            <tr>

                <td>Java</td>
                <td>85</td>
                <td>A</td>

            </tr>

            <tr>

                <td>DBMS</td>
                <td>90</td>
                <td>A+</td>

            </tr>

            <tr>

                <td>OS</td>
                <td>76</td>
                <td>B+</td>

            </tr>

            </tbody>

        </table>

    </div>

    -->

    <!-- Fee Payment

    <div class="section-box">

        <h4 class="mb-4">Fee Payment</h4>

        <p>Total Fees: ₹80,000</p>

        <p>Paid: ₹68,000</p>

        <p>Remaining: ₹12,000</p>

        <button class="btn-custom pay-btn">
            Pay Fees
        </button>

    </div>

    -->

    <!-- Notices -->

<div id="importantNotices" class="notice mt-4">
    <h4>Important Notices</h4>

   <ul class="mt-3">
      <c:forEach items="${notices}" var="notice">
          <li>
              ${notice.message}
              <br>
              <small class="text-muted">
                                            Posted on: ${notice.localDateTime.toLocalDate()}
                                     </small>
          </li>
      </c:forEach>
   </ul>
</div>
<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
let toggleBtn = document.querySelector("#themeToggle");
let icon = document.querySelector("#themeIcon");

toggleBtn.addEventListener("click", () => {

    if (document.body.classList.contains("light")) {
        document.body.classList.remove("light");
        document.body.classList.add("dark");

        icon.classList.remove("bi-moon-fill");
        icon.classList.add("bi-sun-fill");
    } else {
        document.body.classList.remove("dark");
        document.body.classList.add("light");

        icon.classList.remove("bi-sun-fill");
        icon.classList.add("bi-moon-fill");
    }

});

</script>

</body>
</html>