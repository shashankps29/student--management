<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Student Management System</title>

    <!-- Bootstrap CSS -->

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <!-- Google Font -->

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href=
                  "https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
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

            font-family:'Poppins',sans-serif;
        }

        body{

            min-height:100vh;

            background:
                    linear-gradient(
                            135deg,
                            #020617,
                            #0f172a,
                            #1e3a8a
                    );

            overflow-x:hidden;

            position:relative;
        }

        /* Background Glow */

        body::before{

            content:"";

            position:absolute;

            width:500px;
            height:500px;

            background:#2563eb;

            border-radius:50%;

            top:-150px;
            left:-150px;

            filter:blur(140px);

            opacity:0.5;
        }

        body::after{

            content:"";

            position:absolute;

            width:450px;
            height:450px;

            background:#06b6d4;

            border-radius:50%;

            bottom:-150px;
            right:-150px;

            filter:blur(140px);

            opacity:0.4;
        }

        /* Main Layout */

        .main-container{

            position:relative;

            z-index:2;

            display:flex;

            justify-content:space-between;

            align-items:center;

            min-height:100vh;

            padding:40px 60px;

            gap:50px;

            flex-wrap:wrap;
        }

        /* LEFT SIDE */

        .left-section{

            flex:1;

            min-width:320px;

            color:white;
        }

        .left-section h1{

            font-size:clamp(42px,6vw,72px);

            font-weight:700;

            line-height:1.1;

            margin-bottom:25px;
        }

        .left-section h1 span{

            color:#38bdf8;
        }

        .left-section p{

            font-size:18px;

            color:#cbd5e1;

            line-height:1.8;

            max-width:650px;

            margin-bottom:35px;
        }

        /* Features */

        .features{

            display:flex;

            gap:20px;

            margin-top:25px;

            flex-wrap:wrap;
        }

        .feature-card{

            background:
                    rgba(255,255,255,0.08);

            backdrop-filter:blur(10px);

            border:
                    1px solid rgba(255,255,255,0.1);

            padding:20px;

            border-radius:18px;

            width:180px;

            transition:0.2s;
        }

        .feature-card:hover{

            transform:
                    translateY(-8px);

            background:
                    rgba(255,255,255,0.15);
        }

        .feature-card i{

            font-size:30px;

            color:#38bdf8;

            margin-bottom:15px;
        }

        .feature-card h5{

            font-size:18px;

            margin-bottom:8px;
        }

        .feature-card p{

            font-size:13px;

            color:#cbd5e1;

            margin:0;
        }

        /* Student Image */

        .student-image{

            margin-top:40px;
        }

        .student-image img{

            width:100%;

            max-width:550px;

            border-radius:25px;

            box-shadow:
                    0 10px 30px rgba(0,0,0,0.4);

            object-fit:cover;
        }

        /* RIGHT SIDE */

        .right-section{

            width:420px;

            display:flex;

            justify-content:center;
        }

        .login-card{

            width:100%;

            max-width:420px;

            background:
                    rgba(255,255,255,0.08);

            backdrop-filter:blur(20px);

            border:
                    1px solid rgba(255,255,255,0.1);

            border-radius:30px;

            padding:50px 40px;

            text-align:center;

            box-shadow:
                    0 10px 35px rgba(0,0,0,0.4);
        }

        .logo{

            width:90px;
            height:90px;

            margin:auto;

            border-radius:50%;

            background:
                    linear-gradient(
                            135deg,
                            #2563eb,
                            #06b6d4
                    );

            display:flex;

            justify-content:center;

            align-items:center;

            color:white;

            font-size:40px;

            margin-bottom:25px;

            box-shadow:
                    0 8px 20px rgba(37,99,235,0.5);
        }

        .login-card h2{

            color:white;

            font-size:38px;

            font-weight:700;

            margin-bottom:15px;
        }

        .login-card p{

            color:#cbd5e1;

            font-size:15px;

            margin-bottom:35px;
        }

        /* Buttons */

        .btn-custom{

            width:100%;

            padding:14px;

            border-radius:14px;

            font-size:17px;

            font-weight:600;

            margin-bottom:18px;

            transition:0.3s;

            border:none;
        }

        .login-btn{

            background:
                    linear-gradient(
                            135deg,
                            #2563eb,
                            #1d4ed8
                    );

            color:white;
        }

        .register-btn{

            background:
                    linear-gradient(
                            135deg,
                            #16a34a,
                            #15803d
                    );

            color:white;
        }

        .btn-custom:hover{

            transform:
                    translateY(-4px);

            box-shadow:
                    0 8px 20px rgba(0,0,0,0.3);
        }

        .footer-text{

            margin-top:20px;

            color:#94a3b8;

            font-size:13px;
        }

        /* Responsive */

        @media(max-width:1100px){

            body{

                overflow:auto;
            }

            .main-container{

                flex-direction:column;

                text-align:center;

                padding:40px 20px;
            }

            .left-section{

                width:100%;
            }

            .right-section{

                width:100%;
            }

            .features{

                justify-content:center;
            }

            .student-image img{

                margin:auto;
            }

            .login-card{

                margin-top:20px;
            }
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

<body class="body">

<div class="main-container">

    <!-- LEFT SECTION -->

    <div class="left-section">

        <h1>

            Smart <span>Student</span><br>

            Management System

        </h1>

        <p>

            Manage students efficiently with a modern
            role-based management system built using
            Spring MVC, Hibernate, JPA and PostgreSQL.
            Secure authentication, clean dashboard,
            search functionality and professional
            UI all in one powerful platform.

        </p>

        <!-- Features -->

        <div class="features">

            <div class="feature-card">

                <i class="bi bi-shield-lock-fill"></i>

                <h5>Secure</h5>

                <p>

                    Role based login and authentication.

                </p>

            </div>

            <div class="feature-card">

                <i class="bi bi-database-fill"></i>

                <h5>Database</h5>

                <p>

                    PostgreSQL with Hibernate & JPA.

                </p>

            </div>

            <div class="feature-card">

                <i class="bi bi-speedometer2"></i>

                <h5>Fast UI</h5>

                <p>

                    Beautiful responsive admin dashboard.

                </p>

            </div>

        </div>

        <!-- Student Image -->

        <div class="student-image">

            <img src=
                         "https://images.unsplash.com/photo-1523050854058-8df90110c9f1?q=80&w=1200&auto=format&fit=crop"
                 alt="Students">

        </div>

    </div>

    <!-- RIGHT SECTION -->

    <div class="right-section">

        <div class="login-card">

            <div class="logo">

                <i class="bi bi-mortarboard-fill"></i>

            </div>

            <h2>

                Welcome

            </h2>

            <p>

                Access your dashboard and manage
                student records professionally.

            </p>

            <a href="login"
               class="btn btn-custom login-btn">

                <i class="bi bi-box-arrow-in-right"></i>

                Login

            </a>

            <a href="register"
               class="btn btn-custom register-btn">

                <i class="bi bi-person-plus-fill"></i>

                Register

            </a>

            <div class="footer-text">

            </div>

        </div>

    </div>

</div>

<!-- Bootstrap JS -->

<script
        src=
                "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>