<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>


<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Complete Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    body{
        background:#f4f6f9;
    }

    .profile-form{
        max-width:900px;
        margin:40px auto;
        background:white;
        padding:30px;
        border-radius:15px;
        box-shadow:0 0 15px rgba(0,0,0,0.1);
    }

    .title{
        text-align:center;
        margin-bottom:30px;
        color:#0d6efd;
        font-weight:bold;
    }

</style>

</head>

<body>

<div class="container">

<div class="profile-form">

    <h2 class="title">
        Complete Student Profile
    </h2>

    <form action="/profile/update"
          method="post">

        <input type="hidden"
               name="id"
               value="${student.id}">

        <div class="row">

            <div class="col-md-6 mb-3">
                <label>Name</label>
                <input type="text"
                       class="form-control"
                       value="${student.name}"
                       readonly>
            </div>

            <div class="col-md-6 mb-3">
                <label>Email</label>
                <input type="email"
                       class="form-control"
                       value="${student.email}"
                       readonly>
            </div>

            <div class="col-md-6 mb-3">
                <label>Branch</label>
                <input type="text"
                       name="branch"
                       class="form-control"
                       required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Section</label>
                <input type="text"
                       name="section"
                       class="form-control"
                       required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Course</label>
                <input type="text"
                       name="course"
                       class="form-control"
                       required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Contact Number</label>
                <input type="number"
                       name="contact"
                       class="form-control"
                       required>
            </div>

            <div class="col-md-6 mb-3">
                <label>Gender</label>
                <select name="gender"
                        class="form-select">

                    <option value="">
                        Select Gender
                    </option>

                    <option value="Male">
                        Male
                    </option>

                    <option value="Female">
                        Female
                    </option>

                    <option value="Other">
                        Other
                    </option>

                </select>
            </div>

<div class="col-md-6 mb-3">
    <label for="dateOfBirth">Date Of Birth</label>
    <input type="date"
           class="form-control"
           id="dateOfBirth"
           name="dateOfBirth"
           value="${student.dateOfBirth}">
</div>

<div class="col-md-6 mb-3">
                <label>State</label>
                <input type="text"
                       name="state"
                       class="form-control">
            </div>
            <div class="col-md-6 mb-3">
                <label>City</label>
                <input type="text"
                       name="city"
                       class="form-control">
            </div>



            <div class="col-md-6 mb-3">
                <label>Pincode</label>
                <input type="text"
                       name="pincode"
                       class="form-control">
            </div>

            <div class="col-md-12 mb-3">
                <label>Address Line 1</label>
                <input type="text"
                       name="addressLine1"
                       class="form-control">
            </div>

            <div class="col-md-12 mb-3">
                <label>Address Line 2</label>
                <input type="text"
                       name="addressLine2"
                       class="form-control">
            </div>

            <div class="col-md-6 mb-3">
                <label>Father Name</label>
                <input type="text"
                       name="fatherName"
                       class="form-control">
            </div>

            <div class="col-md-6 mb-3">
                <label>Father Contact</label>
                <input type="number"
                       name="fatherContact"
                       class="form-control">
            </div>

            <div class="col-md-6 mb-3">
                <label>Father Occupation</label>
                <input type="text"
                       name="fatherOccupation"
                       class="form-control">
            </div>

            <div class="col-md-6 mb-3">
                <label>Mother Name</label>
                <input type="text"
                       name="motherName"
                       class="form-control">
            </div>

            <div class="col-md-6 mb-3">
                <label>Mother Occupation</label>
                <input type="text"
                       name="motherOccupation"
                       class="form-control">
            </div>

              <div class="col-md-6 mb-3">
                            <label>Guardian Name</label>
                            <input type="text"
                                   name="guardianName"
                                   class="form-control">
                        </div>

                         <div class="col-md-6 mb-3">
                                                    <label>Guardian Contact</label>
                                                    <input type="text"
                                                           name="guardianContact"
                                                           class="form-control">
                                                </div>

        </div>

        <div class="text-center mt-4">

            <button type="submit"
                    class="btn btn-primary btn-lg">
                Submit Profile
            </button>

        </div>

    </form>

</div>


</div>

</body>

</html>
