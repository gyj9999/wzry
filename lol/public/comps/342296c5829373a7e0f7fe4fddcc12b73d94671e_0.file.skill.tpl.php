<?php
/* Smarty version 3.1.30, created on 2017-12-31 04:49:10
  from "D:\php\WWW\lol\Application\Front\View\skill.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a486c46692389_45613828',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '342296c5829373a7e0f7fe4fddcc12b73d94671e' => 
    array (
      0 => 'D:\\php\\WWW\\lol\\Application\\Front\\View\\skill.tpl',
      1 => 1514695742,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:layout.tpl' => 1,
  ),
),false)) {
function content_5a486c46692389_45613828 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_217145a486c46659342_74778277', "style");
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_188515a486c4668cb68_19565087', "content");
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:layout.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block "style"} */
class Block_217145a486c46659342_74778277 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

        <link rel="stylesheet" type="text/css" href="public/css/skill.css" />        
    <?php
}
}
/* {/block "style"} */
/* {block "content"} */
class Block_188515a486c4668cb68_19565087 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <div class="content_middle" id="info">
                <i class="icon2"></i><span>召唤师技能</span>
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
                       
                    </div>
                </div>
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['skills']->value, 'v');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
?>
                            <li>
                                <a href="javascript:void(0);"><img src="<?php echo $_smarty_tpl->tpl_vars['v']->value['S_img'];?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value['S_Name'];?>
</a>
                            </li>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                    </ul>
                </div>
                    
                    
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['skills']->value, 'v', false, NULL, 'skill', array (
  'index' => true,
));
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['__smarty_foreach_skill']->value['index']++;
?>
                        <?php if ((isset($_smarty_tpl->tpl_vars['__smarty_foreach_skill']->value['index']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_skill']->value['index'] : null) == 0) {?>
                            <div class="skill_img" style="display:block;">
                        <?php } else { ?>
                            <div class="skill_img" style="display:none;">
                        <?php }?>
                            <img src="<?php echo $_smarty_tpl->tpl_vars['v']->value['con_img'];?>
">
                            <div class="spell-title">
                                <h4><?php echo $_smarty_tpl->tpl_vars['v']->value['S_Name'];?>
</h4>
                                <p><?php echo $_smarty_tpl->tpl_vars['v']->value['LV'];?>
</p>
                            </div>
                            <div class="spell-desc"><?php echo $_smarty_tpl->tpl_vars['v']->value['cont'];?>
</div>
                        </div>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                    
                
            </div>
            <?php echo '<script'; ?>
 type="text/javascript">
                $(".hero_list li").click(function() {
                    var index = $(".hero_list li").index(this); //第几个技能
                    var skill = $(".skill_img")[index]; //相应的技能详情
                    var $skill = $(skill); //js转jq对象
                    $(".skill_img").css('display', 'none');
                    $skill.css('display', 'block');
                });
            <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "content"} */
}
