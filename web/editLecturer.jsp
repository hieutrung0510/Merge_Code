<%-- 
    Document   : editLecturer
    Created on : Mar 24, 2022, 10:14:40 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon-fpt.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Admin</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/fonts/fontawesome-free-6.0.0-web/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/main.css " rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-hcm.jpg">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="index.jsp" class="simple-text">
                        FPT UNIVERSITY ADMIN
                    </a>
                </div>
                <ul class="nav">
                        <li>
                            <a class="nav-link" href="index.jsp">
                                <i class="nc-icon nc-chart-pie-36"></i>
                                <p>Home</p>
                            </a>
                        </li>
                        <li >
                            <a class="nav-link" href="SubjectServlet">
                                <i class="nc-icon nc-notes"></i>
                                <p>Subject</p>
                            </a>
                        </li>
                        <li >
                            <a class="nav-link" href="BookServlet">
                                <i class="nc-icon nc-single-copy-04"></i>
                                <p>Book</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="NewsServlet">
                                <i class="nc-icon nc-paper-2"></i>
                                <p>News</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="events">
                                <i class="nc-icon nc-air-baloon"></i>
                                <p>Events</p>
                            </a>
                        </li >
                        <li class="nav-item active">
                            <a class="nav-link" href="LecturerServlet">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Lecturer</p>
                            </a>
                        </li>
                        <li >
                            <a class="nav-link" href="CategoryServlet">
                                <i class="nc-icon nc-tag-content"></i>
                                <p>Category</p>                                                                                                      
                            </a>
                        </li>
                    </ul>
            </div>  
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a href="index.jsp" class="container-logo">
                        <img class="container-logo-img" src="assets/img/logo_1.png" alt="">
                    </a>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="LogOutServlet">
                                    <i class="nc-icon nc-button-power power-off" alt="Log Out"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <!-- Main -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="card-header-title">
                                            <h4 class="card-title">
                                            <a href="lecturer.jsp" class="card-header-link">
                                                Lecturer Table
                                            </a>
                                            </h4>
                                        <div class="navbar-brand-icon">
                                            <i class="fa-solid fa-angle-right"></i>
                                        </div>
                                            <h4 class="card-title-add">
                                            <a href="editLecturer.jsp" class="card-header-link">
                                                Edit Lecturer
                                            </a>
                                            </h4>
                                          </div>
                                        <p class="card-description">
                                            Here is the table for edit Lecturer
                                        </p>
                                    </div>
                                   <div class="card-body">
                                        <c:set var="listLecturer" value="${requestScope.LIST_LECTURER_ID}"/>
                                        <form action="editLecturer" class="forms-sample">
                                            <div class="form-group">
                                                <label for="exampleInputTitle">ID</label>
                                                <input value="${listLecturer.id}" name="lecId" type="text" class="form-control" id="exampleInputId" placeholder="ID" readonly required>
                                            </div>   
                                            <div class="form-group">
                                                <label for="exampleInputName">Name</label>
                                                <input value="${listLecturer.name}" name="lecName" type="text" class="form-control" id="exampleInputName" placeholder="Name">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputImage">Image</label>
                                                <textarea name="lecImage" class="form-control" id="exampleInputImage" rows="4">${listLecturer.img}</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputQuotes">Quotes</label>
                                                <textarea name="lecQuotes" class="form-control" id="exampleInputQuotes" rows="4">${listLecturer.quotes}</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputDate">Create Date</label>
                                                <input value="${listLecturer.createddate}" type="text" class="form-control" id="exampleInputDate" name="lecCreatedDate">                                       
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleDesc">Description</label>
                                                <textarea name="lecDes" class="form-control" id="exampleDesc" rows="4">${listLecturer.des}</textarea>
                                            </div>
                                            <select name="lecCategory" class="form-control" rows="4">
                                                    <c:set var="listSub" value="${requestScope.LIST_CATE_SUBJECT}"/>
                                                    <c:forEach var="subject" items="${listSub}">
                                                        <c:if test="${subject.id eq listLecturer.subjectId}">
                                                            <option value="${subject.id}" selected>
                                                                ${subject.name}
                                                            </option>
                                                        </c:if>
                                                        <c:if test="${subject.id ne listLecturer.subjectId}">
                                                            <option value="${subject.id}" >
                                                                ${subject.name}
                                                            </option>
                                                        </c:if>
                                                    </c:forEach>

                                                </select>
                                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                            <button class="btn btn-light">Cancel</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <!-- End Main -->
            <footer class="footer">
                <div class="container-fluid">
                    <nav>
                        <p class="copyright text-center">
                            ??
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            <span>GROUP 5</span>
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
</body>

<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
