<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AcademEase</title>
<%@include file="Components/allcss.jsp" %>

</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card paint-card">
                <div class="card-header bg-primary text-white">
                    <h1 class="text-center">Student Details</h1>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Name: ${studentObj.fullname}</h5>
                    <h5 class="card-text">Email: ${studentObj.email}</h5>
                    <h5 class="card-text">Course: ${studentObj.course}</h5>
                    <h5 class="card-text">Branch: ${studentObj.branch}</h5>
                    <h5 class="card-text">DOB: ${studentObj.dob}</h5>
                    <h5 class="card-text">Mobile No: ${studentObj.phone}</h5>
                    <h5 class="card-text">StudentID: ${studentObj.studentid}</h5>
                    <a href="logout" class="btn btn-primary">Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>