<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Student Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    body{
        background:#f4f6f9;
    }

    .profile-card{
        max-width:1000px;
        margin:40px auto;
        border:none;
        border-radius:15px;
        box-shadow:0 0 15px rgba(0,0,0,0.1);
    }

    .profile-header{
        background:#0d6efd;
        color:white;
        padding:25px;
        border-radius:15px 15px 0 0;
    }

    .info-row{
        padding:12px 0;
        border-bottom:1px solid #eaeaea;
    }

    .label{
        font-weight:bold;
        color:#555;
    }

    .locked-box{
        background:#fff3cd;
        color:#856404;
        border:1px solid #ffeeba;
        padding:12px;
        border-radius:8px;
        margin-bottom:20px;
    }

</style>

</head>

<body>

<div class="container">

<div class="card profile-card">

  <div class="profile-header">

      <div class="d-flex justify-content-between align-items-center">

          <div>
              <h2>${student.name}</h2>
              <p class="mb-0">${student.email}</p>
          </div>

          <div>
              <a href="/studentDashboard"
                 class="btn btn-light fw-bold">
                   Dashboard
              </a>
          </div>

      </div>

  </div>

    <div class="card-body">

        <c:if test="${student.profileCompleted}">
            <div class="locked-box">
                Profile has been submitted and is now locked.
            </div>
        </c:if>

        <div class="row info-row">
            <div class="col-md-4 label">Student ID</div>
            <div class="col-md-8">${student.id}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Name</div>
            <div class="col-md-8">${student.name}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Email</div>
            <div class="col-md-8">${student.email}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Branch</div>
            <div class="col-md-8">${student.branch}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Section</div>
            <div class="col-md-8">${student.section}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Course</div>
            <div class="col-md-8">${student.course}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Contact Number</div>
            <div class="col-md-8">${student.contact}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Gender</div>
            <div class="col-md-8">${student.gender}</div>
        </div>

        <div class="row info-row">
                    <div class="col-md-4 label">Date Of Birth</div>
                    <div class="col-md-8">${student.dateOfBirth}</div>
                </div>

        <div class="row info-row">
            <div class="col-md-4 label">Address Line 1</div>
            <div class="col-md-8">${student.addressLine1}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Address Line 2</div>
            <div class="col-md-8">${student.addressLine2}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">City</div>
            <div class="col-md-8">${student.city}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">State</div>
            <div class="col-md-8">${student.state}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Pincode</div>
            <div class="col-md-8">${student.pincode}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Father Name</div>
            <div class="col-md-8">${student.fatherName}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Father Contact</div>
            <div class="col-md-8">${student.fatherContact}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Father Occupation</div>
            <div class="col-md-8">${student.fatherOccupation}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Mother Name</div>
            <div class="col-md-8">${student.motherName}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Mother Occupation</div>
            <div class="col-md-8">${student.motherOccupation}</div>
        </div>


         <div class="row info-row">
                    <div class="col-md-4 label">Any Guardian Name</div>
                    <div class="col-md-8">${student.guardianName}</div>
                </div>

                <div class="row info-row">
                    <div class="col-md-4 label">Guardian Contact</div>
                    <div class="col-md-8">${student.guardianContact}</div>
                </div>
<%--
        <div class="row info-row">
            <div class="col-md-4 label">Fees</div>
            <div class="col-md-8">₹ ${student.fees}</div>
        </div>

        --%>

        <div class="text-center mt-4">

            <c:if test="${!student.profileCompleted}">
                <a href="profile/edit/${student.id}"
                   class="btn btn-primary">
                    Complete Profile
                </a>
            </c:if>

            <c:if test="${student.profileCompleted}">
                <button class="btn btn-secondary"
                        disabled>
                    Profile Locked
                </button>
            </c:if>

        </div>

    </div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
