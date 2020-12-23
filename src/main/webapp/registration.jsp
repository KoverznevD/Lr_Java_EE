
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
        .register-btn{
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
    <h3 align="center">Create your account</h3>
    <form action="${pageContext.request.contextPath}/Reg" method="post">
        <div>
            <ul>
           <ul> <label>Username</label>
               <div><input type="text" name="username"></div>
        </ul><ul>
            <label>Password</label>
                <div> <input type="password" name="password"></div>
        </ul></ul></div>
        <ul class = enter-btn-sub >
        <div class="btn-box">
            <button class="register-btn" type="submit">Sing up</button>
        </div>
            </ul>
    </form>
</div>
</body>
</html>
