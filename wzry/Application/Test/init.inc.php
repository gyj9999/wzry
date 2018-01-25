<?php

//初始化smarty模板引擎的php文件
//define("ROOT",getcwd()."/");

require_once FRAMEWORK."/smarty/Smarty.class.php";
//实例化Smarty 对象
$smarty = new Smarty();

//放置所有编译后的文件目录
$smarty -> setCompileDir(ROOT_PATH."public/comps/");
//模板页的目录
$smarty -> setTemplateDir(APPLICATION.GROUP."/View/");
//指定初始化文件所在目录
//$smarty ->setCacheDir(ROOT.'configs/');
//
//$smarty -> left_delimiter = "<{";
//$smarty -> right_delimiter = "}>";
