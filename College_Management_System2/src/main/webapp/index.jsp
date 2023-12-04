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
    <style>
        .image-container {
            margin-bottom: 30px;
        }

        .image-container img {
            margin-right: 80px;
        }

        /* Add the following style for full-width carousel */
        #carouselExampleControls {
            width: 100%;
        }
      </style>
  </head>
  <body>
  <%@include file="Components/navbar.jsp" %>
<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://static.vecteezy.com/system/resources/previews/004/958/915/original/college-university-cartoon-concept-vector.jpg" class="d-block w-100" alt="..." height="450px">
    </div>
    <div class="carousel-item">
      <img src="https://www.shutterstock.com/shutterstock/videos/1098644415/thumb/1.jpg?ip=x480" class="d-block w-100" alt="..." height="450px">
    </div>
    <div class="carousel-item">
      <img src="https://www.shutterstock.com/shutterstock/videos/1106660199/thumb/9.jpg?ip=x480" class="d-block w-100" alt="..." height="450px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<br>

<hr>
 <!-- Vision and Mission -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Our Vision</h2>
                    <p class="card-text">
                        To be a leading world-class technology university playing its role as a key node in the national and global knowledge network, thus empowering India with the wings of knowledge and power of innovations.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <img src="https://www.prakashcollege.in/wp-content/uploads/2018/05/vision-mission-350x300.jpg" alt="Vision Image" class="card-img-top" height="200px" width="200px">
            </div>
        </div>
    </div>
</div>
<hr>

<!-- Mission -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <img src="https://www.prakashcollege.in/wp-content/uploads/2018/05/vision-mission-350x300.jpg" alt="Mission Image" class="card-img-top" height="200px" width="200px">
            </div>
        </div>
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Our Mission</h2>
                    <p class="card-text">
                        Our college envisions becoming a global leader in education, fostering innovation, diversity, and excellence. Committed to empowering students as future leaders, we aim to cultivate critical thinking, ethical values, and a passion for lifelong learning, ensuring our graduates make meaningful contributions to an ever-evolving society.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<hr>

 <!-- certification -->
        <h1 class="d-flex justify-content-lg-center">
          ACCREDITATIONS & AFFILIATIONS
        </h1><br>
         <div class="container">
            <div class="row">
              <div class="col-md-3 image-container">
                <img src="https://hindubabynames.info/wp-content/themes/hbn_download/download/indian-government/all-india-council-for-technical-education-logo.png" alt="Image 1" class="img-fluid">
                <h4 class="mt-3"> Approved by: AICTE</h4>
              </div>
              <div class="col-md-3 image-container" >
                <img src="https://www.globalinstitutes.edu.in/wp-content/uploads/2022/07/NAACAlogo-1.png" alt="Image 2" class="img-fluid">
                <h4 class="mt-3"> Accreditated by: NAAC</h4>
              </div>
              <div class="col-md-3 image-container">
                <img  src="https://images.squarespace-cdn.com/content/v1/58c1a70a2e69cf49f9af61d1/1495373536094-KNTJIXXV7DX403F9G08F/1.png" alt=" " class="img-fluid">
                <h4 class="mt-3 p-0">ISO 9001:2008 Certified</h4>
              </div>
              <div class="col-md-3 image-container">
                <img  src="https://png.pngtree.com/png-vector/20220905/ourmid/pngtree-iso-14001-certified-company-logo-badge-png-image_6137639.png" alt=" " class="img-fluid">
                <h4 class="mt-3 p-0 w-100 h-100">EN ISO 14001:2004 Certified</h4>
              </div>
            </div>
        </div> <hr>
  <!-- Patron -->
         <h1 class="d-flex justify-content-center">OUR PATRONS</h1><br>
           <div class="container">
            <div class="row">
              <div class="col-md-4">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1BM98aZ18HKEbruHfdxX2GxAaw5MWkSbnvw&usqp=CAU" alt="Image 1" class="img-fluid">
                <h4 class="mt-3">Director</h4>
              </div>
              <div class="col-md-4">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzcOof-1Y3MMoCNSQbZjLEjm0bd1zn58lEkA&usqp=CAU" alt="Image 2" class="img-fluid">
                <h4 class="mt-3">Head of Department</h4>
              </div>
              <div class="col-md-4">
                <img class="w-100 h-75" src="https://img.lovepik.com/photo/20230420/medium/lovepik-group-of-students-working-together-in-library-with-teacher-image_352035680.jpg" alt=" " class="img-fluid">
                <h4 class="mt-3 p-2">Faculty Members</h4>
              </div>
            </div>
          </div>
      </div>
    </div>
    <%@include file="Components/footer.jsp" %>
  </body>
</html>