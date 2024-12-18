<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <spanclass="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <br>
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-bottom">
                                <script>
                                    function validateform() {
                                            var x = document.myform.email.value;
                                            var atposition = x.indexOf("@");
                                            var dotposition = x.lastIndexOf(".");
                                            var password = document.myform.password.value;
                                            const mobile = document.getElementById("mobile");
                                            const pincode = document.getElementById("pincode");
                                            
                                            if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length) {
                                                alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);
                                                return false;
                                            } else if (password.length<6) {
                                                alert("Password must be at least 6 characters long");
                                                return false;
                                            } else if (!mobile.value.match(/^[1-9][0-9]{9}$/)) {
                                                alert("Phone number must be 10 digits numeric only!");
                                                mobile.focus();
                                                return false;
                                            } else if (!pincode.value.match(/^[1-9][0-9]{5}$/)) {
                                                alert("Pincode must be 6 digits numeric only!");
                                                pincode.focus();
                                                return false;
                                            }
                                        }
                                </script>
                                <h3 style="color: #f57967">Register now</h3>
                                <%
                                    String success = (String) session.getAttribute("success-message");
                                    if (success != null) {
                                        session.removeAttribute("success-message");
                                %>
                                <div class='alert alert-success' id='success' style="width: 680px; color: #f57967">Customer
                                    Register Successfully.</div>
                                    <%
                                        }
                                        String fail = (String) session.getAttribute("fail-message");
                                        if (fail != null) {
                                            session.removeAttribute("fail-message");
                                    %>
                                <div class="alert alert-danger" id='danger' style="width: 680px; color: #f57967">Customer
                                    Registration Fail,Please try again</div>
                                    <%
                                        }
                                    %>
                                <form name="myform" action="AddCustomer" method="post" onsubmit="return validateform()">
                                    <div class="sign-up">
                                        <h4>Your Name :</h4>
                                        <input type="text" placeholder="Your Name" required="" style="width: 680px;" color: black" name="name">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Email :</h4>
                                        <input type="text" placeholder="Type here" required="" style="width: 680px;" color: black" name="email">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Password :</h4>
                                        <input type="password" placeholder="Password" required="" style="width: 680px;" color: black" name="password">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Phone :</h4>
                                        <input type="text" placeholder="Type here" required="" style="width: 680px;" color: black" name="mobile" id="mobile">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Gender :</h4>
                                        <br> <select class="form-control" style="width: 680px;" color: black" name="gender">
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                    </div>
                                    <br>
                                    <div class="sign-up">
                                        <h4>Address :</h4>
                                        <input type="text" placeholder="Type here" required="" style="min-height: 100px; width: 680px;" color: black" name="address">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Pin Code :</h4>
                                        <input type="text" placeholder="Pincode" required="" style="width: 680px;" color: black" name="pincode" id="pincode">
                                    </div>
                                    <div class="sign-up">
                                        <input type="submit" value="Register Now" style="width: 680px;">
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <p>
                            Existing Customer? <a href="customer-login.jsp"><b>Log In</b></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
