<?php
/* Smarty version 3.1.30, created on 2017-12-31 09:24:23
  from "D:\php\WWW\lol\Application\Front\View\hero.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a48acc7cebda9_85895246',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'be18eadaea57b05cab82ab7606089c7534f8eea9' => 
    array (
      0 => 'D:\\php\\WWW\\lol\\Application\\Front\\View\\hero.tpl',
      1 => 1514712261,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:layout.tpl' => 1,
  ),
),false)) {
function content_5a48acc7cebda9_85895246 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_104975a48acc7ccee19_46091085', "style");
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_296065a48acc7ce7266_42776197', "content");
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:layout.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block "style"} */
class Block_104975a48acc7ccee19_46091085 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

        <link rel="stylesheet" type="text/css" href="public/css/hero.css" />        
    <?php
}
}
/* {/block "style"} */
/* {block "content"} */
class Block_296065a48acc7ce7266_42776197 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <div class="content_middle" id="info">
                <i class="icon2"></i><span>英雄介绍</span>
            </div>
            <div class="content_colum">
                <a href="index.php?c=index&a=index#info">
                    <div class="content_colum_hero"><span>英雄</span></div>
                </a>
                <a href="index.php?c=index&a=prop#info">
                    <div class="content_colum_prop"><span>局内道具</span></div>
                </a>
                <a href="index.php?c=index&a=skill#info">
                    <div class="content_colum_skill"><span>召唤师技能</span></div>
                </a>
            </div>
            <div class="content_bottom">
                <div class="content_bottom_list">
                    <div class="content_bottom_list_left">
                        <p>综合</p>
                        <p>定位</p>
                    </div>
                    <div class="content_bottom_list_right">
                        <div class="list1">
                            <ul>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;本周免费</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;新手推荐</li>
                            </ul>
                        </div>
                        <div class="list2">
                            <form action="index.php" method="get">
                                <input type="hidden" name="c" value="index">
                                <input type="hidden" name="a" value="rad">
                            <ul>
                                <li>
                                    <input type="radio" name="rad" value="全部" onClick=submit();>&nbsp;&nbsp;全部</li>
                                <li>
                                    <input type="radio" name="rad" value="坦克" onClick=submit();>&nbsp;&nbsp;坦克</li>
                                <li>
                                    <input type="radio" name="rad" value="战士" onClick=submit();>&nbsp;&nbsp;战士</li>
                                <li>
                                    <input type="radio" name="rad" value="刺客" onClick=submit();>&nbsp;&nbsp;刺客</li>
                                <li>
                                    <input type="radio" name="rad" value="法师" onClick=submit();>&nbsp;&nbsp;法师</li>
                                <li>
                                    <input type="radio" name="rad" value="射手" onClick=submit();>&nbsp;&nbsp;射手</li>
                                <li>
                                    <input type="radio" name="rad" value="辅助" onClick=submit();>&nbsp;&nbsp;辅助</li>
                            </ul>
                            </form>
                            <form class="search_hero" action="index.php" method="get">
                                <input type="hidden" name="c" value="index">
                                <input type="hidden" name="a" value="search">
                                <input class="search_input" type="text" name="search" id="" placeholder="搜索英雄">
                                <input class="search_btn" type="submit" value="">
                            </form>
                        </div>
                        
                    </div>
                </div>
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['heros']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
                            <li>
                                <a href="index.php?c=index&a=details&id=<?php echo $_smarty_tpl->tpl_vars['v']->value['id'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['v']->value['default_face'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['Hero_name'];?>
</a>
                            </li>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                    </ul>
                </div>
                </div>
<?php
}
}
/* {/block "content"} */
}
