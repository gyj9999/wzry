<?php
/* Smarty version 3.1.30, created on 2017-12-30 06:10:25
  from "D:\php\WWW\lol\Application\Back\View\register.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a472dd16ad758_53177130',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3bf183f005080ea2f455391fb1ee9f547dd1068a' => 
    array (
      0 => 'D:\\php\\WWW\\lol\\Application\\Back\\View\\register.tpl',
      1 => 1514613992,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a472dd16ad758_53177130 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
    <head>
        <title>123456</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>注册</div>
        <form action="back.php?c=User&a=register" method="post">

            用户名：<input type="text" name="username"><br>
            密码：<input type="password" name="pwd"><br>
            昵称：<input type="text" name="nickname">
            <input type="submit" name="" value="注册">
        </form>
    </body>
</html>
<?php }
}
