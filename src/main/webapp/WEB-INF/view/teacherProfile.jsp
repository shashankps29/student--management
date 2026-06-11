<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Teacher Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#eef2ff;
    font-family:Arial,sans-serif;
}

.profile-card{
    max-width:1000px;
    margin:40px auto;
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 4px 15px rgba(0,0,0,0.1);
}

.profile-header{
    background:linear-gradient(135deg,#2563eb,#1d4ed8);
    color:white;
    padding:30px;
}

.section-title{
    background:#f8fafc;
    padding:12px;
    font-weight:bold;
    border-left:5px solid #2563eb;
    margin-top:20px;
}

.info-row{
    padding:12px;
    border-bottom:1px solid #e5e7eb;
}

.label{
    font-weight:600;
    color:#1e293b;
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
                <h2>${user.name}</h2>
                <p class="mb-0">${user.designation}</p>
                <small>${user.email}</small>
            </div>

            <div>
                <a href="/teacher/dashboard"
                   class="btn btn-light fw-bold">
                    Dashboard
                </a>
            </div>

        </div>

    </div>

    <div class="card-body">

        <c:if test="${user.profileCompleted}">
            <div class="locked-box">
                Profile has been submitted and is now locked.
            </div>
        </c:if>

        <div class="section-title">
            Personal Information
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Employee ID</div>
            <div class="col-md-8">${user.employeeId}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Name</div>
            <div class="col-md-8">${user.name}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Email</div>
            <div class="col-md-8">${user.email}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Contact</div>
            <div class="col-md-8">${user.contact}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Gender</div>
            <div class="col-md-8">${user.gender}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Date of Birth</div>
            <div class="col-md-8">${user.dateOfBirth}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Blood Group</div>
            <div class="col-md-8">${user.bloodGroup}</div>
        </div>

        <div class="section-title">
            Professional Information
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Qualification</div>
            <div class="col-md-8">${user.qualification}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Specialization</div>
            <div class="col-md-8">${user.specialization}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Experience</div>
            <div class="col-md-8">${user.experience}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Designation</div>
            <div class="col-md-8">${user.designation}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Branch</div>
            <div class="col-md-8">${user.branch}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Domain</div>
            <div class="col-md-8">${user.domain}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Joining Date</div>
            <div class="col-md-8">${user.joiningDate}</div>
        </div>

        <div class="section-title">
            Address Information
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Address Line 1</div>
            <div class="col-md-8">${user.addressLine1}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Address Line 2</div>
            <div class="col-md-8">${user.addressLine2}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">City</div>
            <div class="col-md-8">${user.city}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">State</div>
            <div class="col-md-8">${user.state}</div>
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Pincode</div>
            <div class="col-md-8">${user.pincode}</div>
        </div>

        <div class="section-title">
            Emergency Information
        </div>

        <div class="row info-row">
            <div class="col-md-4 label">Emergency Contact</div>
            <div class="col-md-8">${user.emergencyContact}</div>
        </div>

        <div class="text-center mt-4">

            <c:if test="${!user.profileCompleted}">
                <a href="/teacher/profile/edit"
                   class="btn btn-primary">
                    Complete Profile
                </a>
            </c:if>

            <c:if test="${user.profileCompleted}">
                <button class="btn btn-secondary" disabled>
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
