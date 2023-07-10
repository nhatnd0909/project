<%-- 
    Document   : scheduleDashBoard
    Created on : Jun 17, 2023, 8:22:40 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/css/index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Admin Dashboard</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">Admin Dashboard</span>
            </a>
            <ul class="side-menu top">
                <li>
                    <a href="admindashboard">
                        <i class='bx bxs-dashboard'></i>
                        <span class="text">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="cardashboard">
                        <i class="fa-solid fa-car-side fa-xs"></i>
                        <span class="text">Car Management</span>
                    </a>
                </li>
                <li>
                    <a href="userdashboard">
                        <i class='bx bxs-group'></i>
                        <span class="text">User Management</span>
                    </a>
                </li>
                <li>
                    <a href="staffdashboard">
                        <i class='bx bxs-group'></i>
                        <span class="text">Staff Management</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa-solid fa-money-bill-transfer fa-xs"></i>
                        <span class="text">Income Management</span>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="fa-solid fa-calendar-days fa-xs"></i>
                        <span class="text">Rental Schedule Management</span>
                    </a>
                </li>
                <li class="">
                    <a href="feedbackadmin">
                        <i class="fa-solid fa-calendar-days fa-xs"></i>
                        <span class="text">Feedback</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="logout" class="logout">
                        <i class='bx bxs-log-out-circle'></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu'></i>
                <a href="#" class="nav-link">Categories</a>
                <form action="#">
                    <div class="form-input">
                        <input type="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search'></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>
                <a href="#" class="notification">
                    <i class='bx bxs-bell'></i>
                    <span class="num">8</span>
                </a>
                <a href="#" class="profile">
                    <i class="fa-solid fa-user"></i>
                </a>
            </nav>
            <!-- NAVBAR -->
            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Dashboard</h1>
                        <ul class="breadcrumb">
                            <li>
                                <a href="#">Dashboard</a>
                            </li>
                            <li><i class='bx bx-chevron-right'></i></li>
                            <li>
                                <a class="active" href="#">Schedule Management</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <ul class="box-info">
                    <li>
                        <i class="fa-solid fa-calendar-days fa-2xl" style="color: #1e5cc8;"></i>
                        <span class="text">
                            <h3>${totalSchedule}</h3>
                            <p>Total Schedule</p>
                        </span>
                    </li>
                </ul>
                <h3>
                    ${mess}
                </h3>
                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>Schedule Information</h3>
                            <a href="#"><i class="fa-solid fa-plus fa-xl" data-toggle="modal" data-target="#"></i></a>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>IdOrder</th>
                                    <th>Customer id</th>
                                    <th>Car id</th>
                                    <th>Type rent</th>
                                    <th>Total price</th>
                                    <th>Method pay</th>
                                    <th>Type recieve car</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <c:forEach items="${pageSchedule}" var="list">
                                <tbody>
                                    <tr>
                                        <td>${list.idOrder}</td>
                                        <td>${list.idUser}</td>
                                        <td>${list.idCar}</td>
                                        <td>${list.typeRent}</td>
                                        <td>${list.totalPrice}</td>
                                        <td>${list.methodPay}</td>
                                        <td>${list.typeRecieve}</td>
                                        <td>${list.status}</td>
                                        <td>
                                            <a href="informationorder?oid=${list.idOrder}">
                                                <i class="fa-solid fa-circle-info fa-xl"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>                     
                            </c:forEach> 
                        </table>
                        <div >
                            <ul class="pagination">
                                <c:if test="${currentPage == 1}">
                                    <li class="page-item">
                                        <a class="page-link" href="#">First</a>
                                    </li>
                                </c:if>
                                <c:if test="${currentPage > 1}">
                                    <li class="page-item">
                                        <a class="page-link" href="?page=1">First</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${currentPage - 1}">${currentPage-1}</a>
                                    </li>
                                </c:if>
                                <li class="page-item active"><a class="page-link" href="?page=${currentPage}">${currentPage}</a></li>

                                <c:if test="${currentPage < totalPages}">
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${currentPage + 1}">${currentPage + 1}</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${totalPages}">End</a>
                                    </li>
                                </c:if>
                                <c:if test="${currentPage == totalPages}">
                                    <li class="page-item">
                                        <a class="page-link" href="#">End</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>

            </main>
        </section>
        <script src="js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
