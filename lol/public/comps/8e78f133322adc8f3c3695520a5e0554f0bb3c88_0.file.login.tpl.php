<?php
/* Smarty version 3.1.30, created on 2017-12-30 06:10:24
  from "D:\php\WWW\lol\Application\Back\View\login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a472dd01143f0_79252648',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8e78f133322adc8f3c3695520a5e0554f0bb3c88' => 
    array (
      0 => 'D:\\php\\WWW\\lol\\Application\\Back\\View\\login.tpl',
      1 => 1514613874,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a472dd01143f0_79252648 (Smarty_Internal_Template $_smarty_tpl) {
?>
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
<?php }
}
