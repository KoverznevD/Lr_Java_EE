<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="db.DAOService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>ContractsTable</title>
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
        <th>id</th><th>apartmentid</th><th>realtorid</th></tr>
        <c:forEach var="contract" items="${DAOService.contractDAO.contractList}">
            <tr>
                <td><c:out value="${contract.id}"/></td>
                <td><c:out value="${contract.apartmentid}"/></td>
                <td><c:out value="${contract.realtorid}"/></td>
            </tr>
        </c:forEach></table> <h3 align="center">Edit table</h3>
    <table class = "red-table">
        <form action="${pageContext.request.contextPath}/AddingContract" method="post"><tr>
            <th><input type="text" name="id"></th>
            <th><input type="text" name="apartmentid"></th>
            <th><input type="text" name="realtorid"></th>
            <th><button class="enter-btn">Input</button></th>
        </tr></form>
        <form action="${pageContext.request.contextPath}/EditContract" method="post"><tr>
            <th><input type="text" name="id"></th>
            <th><input type="text" name="apartmentid"></th>
            <th><input type="text" name="realtorid"></th>
            <th><button class="enter-btn">Edit</button></th>
        </tr></form>
        <form action="${pageContext.request.contextPath}/DeletingContract" method="post"><tr>
            <th><input type="text" name="id"></th>
            <th><button class="enter-btn">Delete</button></th>
        </tr></form>
    </table>
</header>
</body>
</html>
