<?php
//require_once FRAMEWORK.'Controller.class.php';
//对电影操作的控制器
class MovieController  extends Controller {
    function getMovies(){

        require FRAMEWORK."Factory.class.php";
        
        //通过Fcatory  生产model
        $model = Factory::M("movie");
        $movies=$model->getMovies();

        $this->assign("movies",$movies);
         $this->display("movie.tpl");
    }
    function getDetailById(){
        echo 'world';
    }
    function addMovie(){
        
    }
}
