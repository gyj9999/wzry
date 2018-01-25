<?php

//class MovieController{
//    function getMovies(){
//        
//    }
//}

define("ROOT_PATH", "D:/phpStudy/WWW/mvc01/");
define("APPLICATION",ROOT_PATH."Application/");
define("FRAMEWORK",ROOT_PATH."Framework/");
define("GROUP","Test");

require APPLICATION.GROUP.'/init.inc.php';
require APPLICATION.GROUP."/Model/MovieModel.class.php";
require FRAMEWORK."Factory.class.php";

$model = Factory::M("movie");
$movies=$model->getMovies();

//$smarty = new Smarty();
$smarty->assign("movies",$movies);
$smarty->display("movie.tpl");

