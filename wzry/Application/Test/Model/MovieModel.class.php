<?php
require FRAMEWORK.'Model.class.php';
class MovieModel extends Model{
    function getMovies(){
        $sql = "select * from movie";
       return $this->link->getAll($sql);
    }
}

