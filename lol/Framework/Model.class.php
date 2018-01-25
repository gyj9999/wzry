<?php
//所有模型类的父类
class Model{
    protected $link;
    function __construct() {
       // require FRAMEWORK.'mysqlDB.class.php';
        $this->link = mysqlDB::getInstance(["dbname"=>"wzry"]);
    }
}