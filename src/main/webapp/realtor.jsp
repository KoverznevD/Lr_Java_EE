<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="db.DAOService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>RealtorTable</title>
    <style>
        body{
            background-color: lightgray;
        }
        button{
            background-color: #e7e7e7;
            border:  2px solid black;
            border-radius: 5px;
        }header {
             background-color: lightgray;
         }
        .table {
            margin-top: 50px;
            width: 100%;
            border: 1px solid black;

        }
        td {
            text-align: center;
            border: 1px solid black;

        }
        input {
            background-color: lightgray;
        border: 1px solid black;
        }
        .red-table {

            width: 100%;

            border: 1px solid black;

        }

    </style>
</head>
<body>
<header>
    <nav>
        <ul>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">
                <form action="${pageContext.request.contextPath}/Realtor" method="post">
                    <button><a class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">Ріелтор</a></button>
                </form>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">
                <form action="${pageContext.request.contextPath}/Contract" method="post">
                    <button><a class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">Контракти</a></button>
                </form>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">
                <form action="${pageContext.request.contextPath}/Apartment" method="post">
                    <button><a class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64855">Апартаменти</a></button>
                </form>
            </li>
        </ul>
    </nav>
    <table class = "table">
        <th>id</th><th>name</th><th>surname</th><th>commission</th><th>phoneNumber</th></tr>
        <c:forEach var="realtor" items="${DAOService.realtorDAO.realtorList}">
            <tr>
                <td><c:out value="${realtor.id}"/></td>
                <td><c:out value="${realtor.name}"/></td>
                <td><c:out value="${realtor.surname}"/></td>
                <td><c:out value="${realtor.commission}"/></td>
                <td><c:out value="${realtor.phoneNumber}"/></td>
            </tr>
        </c:forEach>
    </table>
    <h3 align="center">Edit table</h3>
    <table class = "red-table">
        <form action="${pageContext.request.contextPath}/AddingRealtor" method="post"><tr><th><input type="text" name="id"></th><th><input type="text" name="name"></th><th><input type="text" name="surname"></th><th><input type="text" name="commission"></th><th><input type="text" name="phoneNumber"><th><button class="enter-btn">Input</button></th></tr></form>
        <form action="${pageContext.request.contextPath}/EditRealtor" method="post"><tr><th><input type="text" name="id"></th><th><input type="text" name="name"></th><th><input type="text" name="surname"></th><th><input type="text" name="commission"></th><th><input type="text" name="phoneNumber"><th><button class="enter-btn">Edit</button></th></tr></form>
        <form action="${pageContext.request.contextPath}/DeletingRealtor" method="post"><tr><th><input type="text" name="id"></th><th><button class="enter-btn">Delete</button></th></tr></form>
        </table>

</header>
</body>
</html>
