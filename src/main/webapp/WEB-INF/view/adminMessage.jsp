    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
           <div class="card-header bg-primary text-white p-4 d-flex justify-content-between align-items-center">

               <!-- Left Side -->
               <div>
                   <h3 class="mb-1">
                       <i class="bi bi-megaphone-fill"></i>
                       Admin Messages
                   </h3>

                   <small>
                       Important announcements from administration
                   </small>
               </div>

               <!-- Right Side -->
               <div>
                   <a href="/teacher/dashboard" class="btn btn-light fw-bold">
                       <i class="bi bi-house-door-fill"></i> Dashboard
                   </a>
               </div>

           </div>

       </div>

           <c:forEach items="${messages}" var="msg">

                          <div class="card notice-card shadow-sm mb-3">
                              <div class="card-body">

                                  <p class="mb-2 fs-5">
                                      ${msg.message}
                                  </p>

                                  <small class="text-muted">
                                         Posted on: ${msg.localDateTime.toLocalDate()}
                                  </small>

                              </div>
                          </div>

                      </c:forEach>
        </div>

    </div>


    </body>

    </html>

