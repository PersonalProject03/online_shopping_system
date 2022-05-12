<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Defining Header for the user/customer -->
<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav menu__list">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6NPw_z-MwJwJkFl7aL6qbFvypMbv805EMdw&usqp=CAU" alt="logo" style="float: left;width: 80px;height: 75px;" />
        <li class="active menu__item"><a class="menu__link" href="index.jsp">Simple Shopping<span class="sr-only">(current)</span></a></li>
            <%
                if ((String) session.getAttribute("name") != null) {
            %>
        <li class="menu__item"><a class="menu__link" style="color: white; background: #31595a">Welcome, ${name}</a></li>
            <%
                } if ((String) session.getAttribute("name") != null) {
            %>
        <li class="menu__item"><a class="menu__link" href="my-orders.jsp">My Orders</a></li>
        <li class="menu__item"><a class="menu__link" href="logout.jsp">Logout</a></li>
            <%
            } else {
            %>
        <li class="menu__item"><a class="menu__link" href="customer-login.jsp">Customer Login</a></li>
        <li class="menu__item"><a class="menu__link" href="customer-register.jsp">Customer Register</a></li>
            <%
                }
            %>
    </ul>
</div>
