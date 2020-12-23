
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
        body {
            font-size: 20px;
            width: 500px;
            margin: auto;
            background-color: lightgrey;

        }
        .enter-btn {
            flont-size: 30px;
            color: white;
            background-color: purple;
            height: 30px;
            border-width: 1px;
            border-radius: 10px;


        }.enter-btn-sub{
                     width: 500px;
                     margin-left: 40px;

                 }

    </style>
</head>
<body>
<div class="outer">
    <h3 align="center">Sign in to your account</h3>
    <form action="${pageContext.request.contextPath}/Login" method="post">
        <ul>

            <ul>
                <div>
            <label>Username</label></div>
                <div><input type="text" name="username"></div></ul>
            <ul> <div>
            <label>Password </label></div>
                <div> <input type="password" name="password">
        </div></ul>
        </ul>


        <ul class = enter-btn-sub >
        <div class="btn-box">
           <button class="enter-btn" type="submit">Log in</button>
        </div>
        </ul>

    </form>

    <form action="${pageContext.request.contextPath}/registration" method="post">
        <div class="btn-box2">
            <label>You do not have an account?</label>
            <button class="register-btn">Create an account</button>
        </div>

    </form>
</div>
</body>
</html>
