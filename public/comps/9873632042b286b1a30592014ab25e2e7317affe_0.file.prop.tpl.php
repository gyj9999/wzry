<?php
/* Smarty version 3.1.30, created on 2017-12-31 04:49:09
  from "D:\php\WWW\lol\Application\Front\View\prop.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a486c452237b5_18969894',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9873632042b286b1a30592014ab25e2e7317affe' => 
    array (
      0 => 'D:\\php\\WWW\\lol\\Application\\Front\\View\\prop.tpl',
      1 => 1514695747,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:layout.tpl' => 1,
  ),
),false)) {
function content_5a486c452237b5_18969894 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_297035a486c45207d44_25525150', "style");
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_146445a486c45220220_32302455', "content");
$_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:layout.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block "style"} */
class Block_297035a486c45207d44_25525150 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

        <link rel="stylesheet" type="text/css" href="public/css/prop.css" />        
    <?php
}
}
/* {/block "style"} */
/* {block "content"} */
class Block_146445a486c45220220_32302455 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <div class="content_middle" id="info">
                <i class="icon2"></i><span>局内道具</span>
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
                    <div class="list2">
                        <ul>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;全部</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;攻击</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;法术</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;防御</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;移动</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;打野</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;辅助</li>
                        </ul>
                        <div class="search_hero">
                            <input class="search_input" type="text" name="" id="" placeholder="搜索英雄">
                            <input class="search_btn" type="button">
                        </div>
                    </div>
                
                </div>
                
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['props']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
                            <li>
                                <a href="javascript:void(0);"><img src="<?php echo $_smarty_tpl->tpl_vars['v']->value['E_img'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['E_name'];?>
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
