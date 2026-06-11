<!DOCTYPE html>

<html>

<head>

    <title>Add Student</title>

    <link href=
    "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">

        <h2 class="text-center mb-4">

            Add Student

        </h2>

        <form action="/teacher/add-student"
              method="post">

            <div class="mb-3">

                <label>Name</label>

                <input type="text"
                       name="name"
                       class="form-control"
                       required>

            </div>

            <div class="mb-3">

                <label>Email</label>

                <input type="email"
                       name="email"
                       class="form-control"
                       required>

            </div>

            <div class="mb-3">

                <label>Password</label>

                <input type="password"
                       name="password"
                       class="form-control"
                       required>

            </div>

            <div class="mb-3">

                <label>Branch</label>

                <input type="text"
                       name="branch"
                       class="form-control">

            </div>

            <div class="mb-3">

                <label>Section</label>

                <input type="text"
                       name="section"
                       class="form-control">

            </div>

            <div class="mb-3">

                <label>Course</label>

                <input type="text"
                       name="course"
                       class="form-control">

            </div>

            <div class="mb-3">

                <label>Contact</label>

                <input type="number"
                       name="contact"
                       class="form-control">

            </div>

            <button type="submit"
                    class="btn btn-primary w-100">

                Add Student

            </button>

        </form>

    </div>

</div>

</body>

</html>