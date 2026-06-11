<html>
<head>
<!-- Bootstrap Icons -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">


<title> Admin Message </title>
<style>

.chat-card{
    border-radius:20px;
    overflow:hidden;
}

.chat-header{
    background:linear-gradient(135deg,#0d6efd,#4f8cff);
    color:white;
    padding:20px;
}

.chat-body{
    height:500px;
    overflow-y:auto;
    background:#f4f7fb;
    padding:25px;
}

.message-row{
    display:flex;
    margin-bottom:20px;
}

.left-message{
    justify-content:flex-start;
}

.right-message{
    justify-content:flex-end;
}

.message-box{
    max-width:70%;
    padding:15px;
    border-radius:18px;
    box-shadow:0 4px 12px rgba(0,0,0,0.08);
}

.admin-message{
    background:white;
    border-left:5px solid #0d6efd;
}

.teacher-message{
    background:#0d6efd;
    color:white;
}

.message-user{
    font-weight:700;
    margin-bottom:8px;
}

.message-text{
    font-size:15px;
    line-height:1.5;
}

.message-time{
    font-size:12px;
    margin-top:8px;
    opacity:0.8;
}

.message-input{
    border-radius:50px;
    padding:12px 18px;
}

.send-btn{
    border-radius:50px;
    padding:0 25px;
}

.chat-body::-webkit-scrollbar{
    width:8px;
}

.chat-body::-webkit-scrollbar-thumb{
    background:#cfd8dc;
    border-radius:10px;
}

</style>

</head>

<body>
<div class="container mt-4">

    <div class="card border-0 shadow-lg rounded-4">

        <!-- Header -->
        <div class="card-header bg-primary text-white p-4">

            <h3 class="mb-1">
                <i class="bi bi-megaphone-fill"></i>
                Admin Messages
            </h3>

            <small>
                Important announcements from administration
            </small>

        </div>

        <!-- Messages -->
        <div class="card-body bg-light" style="max-height:600px; overflow-y:auto;">

            <!-- Message Card -->
            <div class="card border-0 shadow-sm mb-3">

                <div class="card-body">

                    <div class="d-flex justify-content-between">

                        <h5 class="text-primary mb-2">
                            <i class="bi bi-person-workspace"></i>
                            Admin
                        </h5>

                        <span class="badge bg-primary">
                            New
                        </span>

                    </div>

                    <p class="mb-2">
                        Please submit attendance reports before 5 PM today.
                    </p>

                    <small class="text-muted">
                        02 Aug 2026 • 10:15 AM
                    </small>

                </div>

            </div>

            <!-- Message Card -->
            <div class="card border-0 shadow-sm mb-3">

                <div class="card-body">

                    <h5 class="text-primary mb-2">
                        <i class="bi bi-person-workspace"></i>
                        Admin
                    </h5>

                    <p class="mb-2">
                        Verify student records before result publication.
                    </p>

                    <small class="text-muted">
                        01 Aug 2026 • 03:45 PM
                    </small>

                </div>

            </div>

            <!-- Message Card -->
            <div class="card border-0 shadow-sm mb-3">

                <div class="card-body">

                    <h5 class="text-primary mb-2">
                        <i class="bi bi-person-workspace"></i>
                        Admin
                    </h5>

                    <p class="mb-2">
                        Staff meeting scheduled tomorrow at 11:00 AM in Seminar Hall.
                    </p>

                    <small class="text-muted">
                        31 Jul 2026 • 06:30 PM
                    </small>

                </div>

            </div>

        </div>

    </div>

</div>


</body>

</html>

