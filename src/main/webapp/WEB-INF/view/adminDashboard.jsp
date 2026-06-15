<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

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
            background:#f4f7fc;
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
            border-radius:10px;
            transition:0.3s;
            font-size:16px;
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

        /* Navbar */

        .topbar{
            background:white;
            padding:15px 25px;
            border-radius:15px;
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

        .dashboard-cards{
            margin-top:30px;
        }

        .card-box{
            border:none;
            border-radius:20px;
            padding:25px;
            color:white;
            transition:0.3s;
            cursor:pointer;
        }

        .card-box:hover{
            transform:translateY(-8px);
        }

        .students{
            background:linear-gradient(135deg,#2563eb,#1d4ed8);
        }

        .teachers{
            background:linear-gradient(135deg,#059669,#047857);
        }

        .blocked{
            background:linear-gradient(135deg,#dc2626,#991b1b);
        }

        .courses{
            background:linear-gradient(135deg,#7c3aed,#5b21b6);
        }

        /* Tables */

        .table-section{
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

        .status-active{
            color:green;
            font-weight:bold;
        }

        .status-blocked{
            color:red;
            font-weight:bold;
        }

        /* Buttons */

        .btn-action{
            border:none;
            padding:8px 14px;
            border-radius:8px;
            color:white;
            font-size:14px;
        }

        .block-btn{
            background:#dc2626;
        }

        .unblock-btn{
            background:#059669;
        }

        .delete-btn{
            background:#111827;
        }

        /* Announcement */

        .announcement{
            background:linear-gradient(135deg,#0ea5e9,#0284c7);
            color:white;
            padding:25px;
            border-radius:20px;
            margin-top:35px;
        }

    </style>
</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

    <h2>ADMIN PANEL</h2>

    <a href="#"><i class="bi bi-speedometer2"></i> Dashboard</a>

    <a href="/teacher/students"><i class="bi bi-people-fill"></i> Students</a>

    <a href="#"><i class="bi bi-person-badge-fill"></i> Teachers</a>

    <a href="#"><i class="bi bi-person-x-fill"></i> Blocked Users</a>

    <a href="#"><i class="bi bi-messenger"></i> Messages </a>

    <a href="#"><i class="bi bi-gear-fill"></i> Settings</a>

    <a href="#"><i class="bi bi-box-arrow-right"></i> Logout</a>

</div>

<!-- Main Content -->

<div class="main">

    <!-- Topbar -->

    <div class="topbar">

        <h3>Welcome Admin</h3>

        <div>
            <button class="btn btn-dark">
                <i class="bi bi-bell-fill"></i>
            </button>
        </div>

    </div>

    <!-- Cards -->

    <div class="row dashboard-cards g-4">

        <div class="col-md-3">

            <div class="card-box students">

                <h5>Total Students</h5>

                <h2>${totalStudents}</h2>

                <p>Active Students</p>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card-box teachers">

                <h5>Total Teachers</h5>

                <h2>${totalTeachers}</h2>

                <p>Faculty Members</p>

            </div>

        </div>

        <%--

        <div class="col-md-3">

            <div class="card-box blocked">

                <h5>Blocked Users</h5>

                <h2>12</h2>

                <p>Access Restricted</p>

            </div>

        </div>

        <div class="col-md-3">

            <div class="card-box courses">

                <h5>Total Courses</h5>

                <h2>32</h2>

                <p>Running Courses</p>

            </div>

        </div>

        --%>

    </div>

    <!-- Student Management Table -->

    <div class="table-section">

        <h4 class="mb-4">New Admissions</h4>

        <table class="table table-hover">

            <thead>

            <tr>

                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Branch</th>
                <th>Date Of Registration </th>


            </tr>

            </thead>

            <tbody>

            <tr>

                <td>101</td>
                <td>Rahul Sharma</td>
                <td>rahul@gmail.com</td>
                <td>CSE</td>

            </tr>

            <tr>

                <td>102</td>
                <td>Aman Verma</td>
                <td>aman@gmail.com</td>
                <td>IT</td>

            </tr>

            </tbody>

        </table>

    </div>

    <!-- Teacher Management -->

    <div class="table-section">

        <h4 class="mb-4">Teacher Management</h4>

        <table class="table table-hover">

            <thead>

            <tr>

                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Action</th>

            </tr>

            </thead>

            <tbody>

            <tr>

                <td>T-11</td>
                <td>Dr. Raj Singh</td>
                <td>raj.teacher@gmail.com</td>
                <td>CSE</td>

                <td>

                    <button class="btn-action block-btn">
                        Suspend
                    </button>

                </td>

            </tr>

            </tbody>

        </table>

    </div>

    <!-- Announcement -->

    <div class="announcement">

        <h4>Admin Announcement Panel</h4>

        <p>
            Send important announcements, exam notices,
            fee reminders, and placement updates to students and teachers.
        </p>

        <textarea class="form-control mt-3"
                  rows="4"
                  placeholder="Write announcement here..."></textarea>

        <button class="btn btn-light mt-3">
            Send Announcement
        </button>

    </div>

</div>


</body>
</html>