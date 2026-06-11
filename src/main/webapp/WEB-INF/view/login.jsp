<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login</title>

    <!-- Bootstrap -->

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <!-- Bootstrap Icons -->

    <link rel="stylesheet"
          href=
                  "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Google Font -->

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href=
                  "https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

    <style>

        *{

            margin:0;
            padding:0;

            box-sizing:border-box;

            font-family:'Poppins',sans-serif;
        }

        body{

            min-height:100vh;

            display:flex;

            justify-content:center;

            align-items:center;

            background:
                    linear-gradient(
                            135deg,
                            #020617,
                            #0f172a,
                            #1e3a8a
                    );

            overflow:hidden;

            position:relative;
        }

        /* Background Glow */

        body::before{

            content:"";

            position:absolute;

            width:450px;
            height:450px;

            background:#2563eb;

            border-radius:50%;

            top:-120px;
            left:-120px;

            filter:blur(120px);

            opacity:0.5;
        }

        body::after{

            content:"";

            position:absolute;

            width:400px;
            height:400px;

            background:#06b6d4;

            border-radius:50%;

            bottom:-120px;
            right:-120px;

            filter:blur(120px);

            opacity:0.4;
        }

        /* Login Card */

        .login-card{

            position:relative;

            z-index:2;

            width:420px;

            padding:50px 40px;

            border-radius:28px;

            background:
                    rgba(255,255,255,0.08);

            backdrop-filter:blur(18px);

            border:
                    1px solid rgba(255,255,255,0.1);

            box-shadow:
                    0 10px 35px rgba(0,0,0,0.4);

            animation:fadeIn 1s ease;
        }

        @keyframes fadeIn{

            from{

                opacity:0;

                transform:
                        translateY(40px);
            }

            to{

                opacity:1;

                transform:
                        translateY(0);
            }
        }

        /* Logo */

        .logo{

            width:90px;
            height:90px;

            margin:auto;

            margin-bottom:25px;

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

            font-size:40px;

            color:white;

            box-shadow:
                    0 8px 20px rgba(37,99,235,0.5);
        }

        /* Heading */

        .login-card h1{

            text-align:center;

            color:white;

            font-size:38px;

            font-weight:700;

            margin-bottom:10px;
        }

        .login-card p{

            text-align:center;

            color:#cbd5e1;

            margin-bottom:35px;

            font-size:15px;
        }

        /* Form Inputs */

        .form-control{

            height:55px;

            border-radius:14px;

            background:
                    rgba(255,255,255,0.08);

            border:
                    1px solid rgba(255,255,255,0.1);

            color:white;

            padding-left:45px;

            margin-bottom:20px;
        }

        .form-control:focus{

            background:
                    rgba(255,255,255,0.12);

            border-color:#38bdf8;

            box-shadow:none;

            color:white;
        }

        .form-control::placeholder{

            color:#cbd5e1;
        }

        /* Input Icons */

        .input-group{

            position:relative;
        }

        .input-group i{

            position:absolute;

            top:18px;
            left:15px;

            color:#38bdf8;

            z-index:10;
        }

        /* Button */

        .login-btn{

            width:100%;

            height:55px;

            border:none;

            border-radius:14px;

            background:
                    linear-gradient(
                            135deg,
                            #2563eb,
                            #1d4ed8
                    );

            color:white;

            font-size:18px;

            font-weight:600;

            transition:0.3s;
        }

        .login-btn:hover{

            transform:
                    translateY(-3px);

            box-shadow:
                    0 10px 25px rgba(37,99,235,0.4);
        }

        /* Register Link */

        .register-text{

            margin-top:25px;

            text-align:center;

            color:#cbd5e1;
        }

        .register-text a{

            color:#38bdf8;

            text-decoration:none;

            font-weight:600;
        }

        .register-text a:hover{

            text-decoration:underline;
        }

        /* Error Message */

        .error-msg{

            background:
                    rgba(220,38,38,0.15);

            border:
                    1px solid rgba(220,38,38,0.4);

            color:#fecaca;

            padding:12px;

            border-radius:12px;

            margin-bottom:20px;

            text-align:center;
        }

    </style>

</head>

<body>

<div class="login-card">

    <!-- Logo -->

    <div class="logo">

        <i class="bi bi-mortarboard-fill"></i>

    </div>

    <!-- Heading -->

    <h1>

        Login

    </h1>

    <p>

        Welcome back! Access your dashboard.

    </p>

    <!-- Error Message -->

    <%
        String error =
                (String) request.getAttribute("error");

        if(error != null){
    %>

    <div class="error-msg">

        <i class="bi bi-exclamation-triangle-fill"></i>

        <%= error %>

    </div>

    <%
        }
    %>

    <!-- Login Form -->

    <form action="login"
          method="post">

        <!-- Email -->

        <div class="input-group">

            <i class="bi bi-envelope-fill"></i>

            <input type="email"

                   name="email"

                   class="form-control"

                   placeholder="Enter Email"

                   required>

        </div>

        <!-- Password -->

        <div class="input-group">

            <i class="bi bi-lock-fill"></i>

            <input type="password"

                   name="password"

                   class="form-control"

                   placeholder="Enter Password"

                   required>

        </div>

        <!-- Button -->

        <button type="submit"
                class="login-btn">

            <i class="bi bi-box-arrow-in-right"></i>

            Login

        </button>

    </form>

    <!-- Register -->

    <div class="register-text">

        Don't have an account?

        <a href="register">

            Register

        </a>

    </div>

</div>

<!-- Bootstrap JS -->

<script
        src=
                "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>