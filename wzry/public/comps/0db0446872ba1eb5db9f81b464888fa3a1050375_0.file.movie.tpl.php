<?php
/* Smarty version 3.1.30, created on 2017-12-25 08:46:36
  from "D:\phpStudy\WWW\mvc01\Application\Test\View\movie.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a40baec429307_68027032',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0db0446872ba1eb5db9f81b464888fa3a1050375' => 
    array (
      0 => 'D:\\phpStudy\\WWW\\mvc01\\Application\\Test\\View\\movie.tpl',
      1 => 1514191589,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a40baec429307_68027032 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTIPY html>
<html>
    <head>
        <title>123456</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['movies']->value, 'v', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
?>
        <div>
            <p>名称:<?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</p>
            <p>主演: <?php echo $_smarty_tpl->tpl_vars['v']->value['performer'];?>
</p>
        </div>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    </body>
</html><?php }
}
