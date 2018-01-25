<?php
//自动加载的函数
function autoload($classnanme){
    $frame_work_list=array(
        'Controller'=>FRAMEWORK.'Controller.class.php',
        'Model'=>FRAMEWORK.'Model.class.php',
        'Factory'=>FRAMEWORK.'Factory.class.php',
        'mysqlDB'=>FRAMEWORK.'mysqlDB.class.php',
        'Smarty'=>FRAMEWORK.'smarty/Smarty.class.php',
        'Response'=>FRAMEWORK.'Response.class.php'
    ); 
    if(isset($frame_work_list[$classnanme])){
        require_once $frame_work_list[$classnanme];
    }
    else if(substr($classnanme,-10) == 'Controller'){
        require_once APPLICATION.GROUP.'./Controller/'.$classnanme.'.class.php';
    }
    else if(substr($classnanme,-5) == 'Model'){
        require_once APPLICATION.GROUP.'/Model/'.$classnanme.'.class.php';
    }
}
spl_autoload_register('autoload');