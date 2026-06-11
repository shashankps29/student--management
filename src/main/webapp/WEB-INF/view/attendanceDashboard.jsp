
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>

        Student Attendance Dashboard

    </title>

    <!-- Bootstrap -->

    <link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->

    <link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Chart JS -->

    <script src=
"https://cdn.jsdelivr.net/npm/chart.js">
    </script>

    <style>

        *{

            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{

            background:
            linear-gradient(
            135deg,
            #0f172a,
            #1e293b,
            #111827);

            min-height:100vh;

            font-family:Arial,sans-serif;

            color:white;

            overflow-x:hidden;
        }

        /* Main */

        .main{

            padding:35px;
        }

        /* Topbar */

        .topbar{

            background:
            rgba(255,255,255,0.08);

            backdrop-filter:blur(12px);

            border-radius:24px;

            padding:20px 30px;

            display:flex;

            justify-content:space-between;

            align-items:center;

            box-shadow:
            0 8px 32px rgba(0,0,0,0.2);
        }

        .topbar h3{

            font-weight:bold;
        }

        /* Attendance Section */

        #attendance-section{

            margin-top:40px;

            background:
            rgba(255,255,255,0.08);

            backdrop-filter:blur(14px);

            padding:35px;

            border-radius:28px;

            box-shadow:
            0 8px 32px rgba(0,0,0,0.25);
        }

        /* Cards */

        .attendance-card{

            border:none;

            border-radius:24px;

            padding:25px;

            color:white;

            transition:0.4s;

            cursor:pointer;

            overflow:hidden;

            position:relative;

            box-shadow:
            0 8px 32px rgba(0,0,0,0.2);
        }

        .attendance-card:hover{

            transform:
            translateY(-8px)
            scale(1.03);
        }

        .present-card{

            background:
            linear-gradient(
            135deg,
            #16a34a,
            #15803d);
        }

        .absent-card{

            background:
            linear-gradient(
            135deg,
            #dc2626,
            #991b1b);
        }

        .percentage-card{

            background:
            linear-gradient(
            135deg,
            #2563eb,
            #1d4ed8);
        }

        .class-card{

            background:
            linear-gradient(
            135deg,
            #7c3aed,
            #5b21b6);
        }

        /* Table */

        .attendance-table{

            margin-top:30px;

            overflow:hidden;

            border-radius:20px;
        }

        .attendance-table thead{

            background:#0f172a;

            color:white;
        }

        .attendance-table tbody{

            background:white;

            color:black;
        }

        /* Progress */

        .progress{

            height:26px;

            border-radius:20px;

            overflow:hidden;

            background:#d1d5db;
        }

        /* Notice */

        .attendance-notice{

            background:
            linear-gradient(
            135deg,
            #0ea5e9,
            #0284c7);

            color:white;

            padding:30px;

            border-radius:24px;
        }

        .attendance-notice li{

            margin-bottom:10px;
        }

        /* Animation */

        @keyframes fadeUp{

            from{

                opacity:0;

                transform:
                translateY(30px);
            }

            to{

                opacity:1;

                transform:
                translateY(0);
            }
        }

        .attendance-card{

            animation:
            fadeUp 0.8s ease;
        }

    </style>

</head>

<body>

<div class="main">

    <!-- Topbar -->

    <div class="topbar">

        <h3>

            Student Attendance Dashboard

        </h3>

        <button class="btn btn-light">

            <i class="bi bi-calendar-check-fill"></i>

            Live Attendance

        </button>

    </div>

    <!-- Attendance Section -->

    <div id="attendance-section">

        <!-- Cards -->

        <div class="row g-4">

            <!-- Present -->

            <div class="col-md-3">

                <div class="attendance-card present-card">

                    <h5>

                        Present Days

                    </h5>

                    <h2 id="presentDays">

                        Loading...

                    </h2>

                    <p>

                        Total Present

                    </p>

                </div>

            </div>

            <!-- Absent -->

            <div class="col-md-3">

                <div class="attendance-card absent-card">

                    <h5>

                        Absent Days

                    </h5>

                    <h2 id="absentDays">

                        Loading...

                    </h2>

                    <p>

                        Total Absent

                    </p>

                </div>

            </div>

            <!-- Percentage -->

            <div class="col-md-3">

                <div class="attendance-card percentage-card">

                    <h5>

                        Attendance %

                    </h5>

                    <h2 id="attendancePercentage">

                        Loading...

                    </h2>

                    <p>

                        Overall Attendance

                    </p>

                </div>

            </div>

            <!-- Classes -->

            <div class="col-md-3">

                <div class="attendance-card class-card">

                    <h5>

                        Total Classes

                    </h5>

                    <h2 id="totalClasses">

                        Loading...

                    </h2>

                    <p>

                        Classes Conducted

                    </p>

                </div>

            </div>

        </div>

        <!-- Subject Table -->

        <div class="mt-5">

            <h4 class="mb-4">

                Subject Wise Attendance

            </h4>

            <table class="table table-hover attendance-table">

                <thead>

                <tr>

                    <th>Subject</th>
                    <th>Present</th>
                    <th>Absent</th>
                    <th>Percentage</th>
                    <th>Status</th>

                </tr>

                </thead>

                <tbody>

                <tr>

                    <td>Java</td>
                    <td>22</td>
                    <td>2</td>
                    <td>91%</td>

                    <td>

                        <span class="badge bg-success">

                            Excellent

                        </span>

                    </td>

                </tr>

                <tr>

                    <td>Spring Boot</td>
                    <td>20</td>
                    <td>4</td>
                    <td>83%</td>

                    <td>

                        <span class="badge bg-primary">

                            Good

                        </span>

                    </td>

                </tr>

                <tr>

                    <td>DBMS</td>
                    <td>18</td>
                    <td>6</td>
                    <td>75%</td>

                    <td>

                        <span class="badge bg-warning text-dark">

                            Average

                        </span>

                    </td>

                </tr>

                </tbody>

            </table>

        </div>

        <!-- Chart -->

        <div class="mt-5">

            <h4 class="mb-4">

                Attendance Analytics

            </h4>

            <canvas id="attendanceChart">

            </canvas>

        </div>

        <!-- Progress -->

        <div class="mt-5">

            <h4 class="mb-4">

                Performance Progress

            </h4>

            <p>Java</p>

            <div class="progress mb-4">

                <div class="progress-bar"
                     style="width:91%">

                    91%

                </div>

            </div>

            <p>Spring Boot</p>

            <div class="progress mb-4">

                <div class="progress-bar bg-success"
                     style="width:83%">

                    83%

                </div>

            </div>

            <p>DBMS</p>

            <div class="progress">

                <div class="progress-bar bg-warning"
                     style="width:75%">

                    75%

                </div>

            </div>

        </div>

        <!-- Notice -->

        <div class="attendance-notice mt-5">

            <h4>

                 Attendance Guidelines

            </h4>

            <ul class="mt-3">

                <li>

                    Minimum 75% attendance mandatory

                </li>

                <li>

                    Below 75% may restrict exam eligibility

                </li>

                <li>

                    Attendance updates every evening

                </li>

                <li>

                    Contact faculty for mismatch

                </li>

            </ul>

        </div>

    </div>

</div>

<!-- Bootstrap -->

<script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

<!-- REAL TIME DATA FETCH -->

<script>

fetch("/student/attendance-data")

.then(response => response.json())

.then(data => {

    document.getElementById(
        "presentDays"
    ).innerText =
    data.presentDays;

    document.getElementById(
        "absentDays"
    ).innerText =
    data.absentDays;

    document.getElementById(
        "attendancePercentage"
    ).innerText =
    data.attendancePercentage + "%";

    document.getElementById(
        "totalClasses"
    ).innerText =
    data.totalClasses;

});

</script>

<!-- CHART -->

<script>

const ctx =
document.getElementById(
"attendanceChart"
);

new Chart(ctx, {

    type:'doughnut',

    data:{

        labels:[
            'Present',
            'Absent'
        ],

        datasets:[{

            data:[22,4],

            borderWidth:0
        }]
    }
});

</script>

</body>

</html>