<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Teacher Profile</title>

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
                <h2>${teacher.name}</h2>
                <p class="mb-0">${teacher.designation}</p>
                <small>${teacher.email}</small>
            </div>

            <a href="/teacher/dashboard" class="btn btn-light">
                Dashboard
            </a>

        </div>

    </div>

    <div class="card-body">

        <c:if test="${user.profileCompleted}">
            <div class="locked-box">
                Profile has already been submitted and cannot be edited.
            </div>
        </c:if>

        <form action="/teacher/profile/update" method="post">

            <input type="hidden" name="id" value="${user.id}">

            <!-- PERSONAL INFORMATION -->

            <div class="section-title">
                Personal Information
            </div>

            <div class="row mt-3">

                <div class="col-md-6 mb-3">
                    <label class="form-label">Contact Number</label>
                    <input type="text"
                           name="contact"
                           value="${user.contact}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Gender</label>
                    <select name="gender"
                            class="form-select"
                            ${user.profileCompleted ? 'disabled' : ''}>
                        <option value="Male"
                            ${user.gender=='Male'?'selected':''}>Male</option>

                        <option value="Female"
                            ${user.gender=='Female'?'selected':''}>Female</option>

                        <option value="Other"
                            ${user.gender=='Other'?'selected':''}>Other</option>
                    </select>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Date of Birth</label>
                    <input type="date"
                           name="dateOfBirth"
                           value="${user.dateOfBirth}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Blood Group</label>
                    <input type="text"
                           name="bloodGroup"
                           value="${user.bloodGroup}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

            </div>

            <!-- PROFESSIONAL INFORMATION -->

            <div class="section-title">
                Professional Information
            </div>

            <div class="row mt-3">

                <div class="col-md-6 mb-3">
                    <label class="form-label">Qualification</label>
                    <input type="text"
                           name="qualification"
                           value="${user.qualification}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Specialization</label>
                    <input type="text"
                           name="specialization"
                           value="${user.specialization}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Experience</label>
                    <input type="text"
                           name="experience"
                           value="${user.experience}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Designation</label>
                    <input type="text"
                           name="designation"
                           value="${user.designation}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Branch</label>
                    <input type="text"
                           name="branch"
                           value="${user.branch}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Domain</label>
                    <input type="text"
                           name="domain"
                           value="${user.domain}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Joining Date</label>
                    <input type="date"
                           name="joiningDate"
                           value="${user.joiningDate}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

            </div>

            <!-- ADDRESS INFORMATION -->

            <div class="section-title">
                Address Information
            </div>

            <div class="row mt-3">

                <div class="col-md-12 mb-3">
                    <label class="form-label">Address Line 1</label>
                    <input type="text"
                           name="addressLine1"
                           value="${user.addressLine1}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="form-label">Address Line 2</label>
                    <input type="text"
                           name="addressLine2"
                           value="${user.addressLine2}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-4 mb-3">
                    <label class="form-label">City</label>
                    <input type="text"
                           name="city"
                           value="${user.city}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-4 mb-3">
                    <label class="form-label">State</label>
                    <input type="text"
                           name="state"
                           value="${user.state}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

                <div class="col-md-4 mb-3">
                    <label class="form-label">Pincode</label>
                    <input type="text"
                           name="pincode"
                           value="${user.pincode}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

            </div>

            <!-- EMERGENCY INFORMATION -->

            <div class="section-title">
                Emergency Information
            </div>

            <div class="row mt-3">

                <div class="col-md-6 mb-3">
                    <label class="form-label">Emergency Contact</label>
                    <input type="text"
                           name="emergencyContact"
                           value="${user.emergencyContact}"
                           class="form-control"
                           ${user.profileCompleted ? 'disabled' : ''}>
                </div>

            </div>

            <c:if test="${!user.profileCompleted}">
                <div class="text-center mt-4">
                    <button type="submit"
                            class="btn btn-primary btn-lg">
                        Save & Submit Profile
                    </button>
                </div>
            </c:if>

        </form>

    </div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>