

<?php
//这是一个单入口文件
error_reporting(E_ALL^E_NOTICE^E_WARNING);

define("ROOT_PATH", getcwd()."/");
define("APPLICATION",ROOT_PATH."Application/");
define("FRAMEWORK",ROOT_PATH."Framework/");
define("GROUP","Back");
include_once FRAMEWORK.'autoload.php';
//下面获取传值参数
//$controller得到哪个控制器
$controller = isset($_GET["c"])?$_GET["c"]:"User";
//调的控制器中的方法
$action = isset($_GET["a"])?$_GET["a"]:"welcome";

//引入控制器文件
//require_once APPLICATION.GROUP.'/Controller/'.$controller.'Controller.class.php';
$controllerName = $controller.'Controller';

$controller = new $controllerName();
$controller->$action(); 

