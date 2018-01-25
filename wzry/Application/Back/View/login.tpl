<!DOCTYPE html>
<html>
    <head>
        <title>123456</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="back.php?c=User&a=login" method="post">
<!--             <input type="hidden" name="a" value="login">

            <input type="hidden" name="c" value="User"> -->
            用户名：<input type="text" name="username"><br>
            密码：<input type="password" name="pwd"><br>
            <input type="submit" name="" value="登陆">
            <a href="back.php?c=User&a=reg">注册</a>
        </form>
    </body>
</html>
