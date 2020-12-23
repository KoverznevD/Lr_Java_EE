
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USERACCESS</title>
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
         }</style>
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
</header>
</body>
</html>
