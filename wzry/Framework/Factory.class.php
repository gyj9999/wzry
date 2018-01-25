<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Factory
 *
 * @author 喜宝。
 */

//工厂类 它生产想要的对象
class Factory {
    static function M($classname){
        //存储所有的模型对象
        static $arr=array();
        if(!isset($arr[$classname])){
            //生产对象
            $fullname = $classname."Model";
            //require_once APPLICATION.GROUP."/Model/".$fullname.".class.php";
            $arr[$classname] = new $fullname();
        }
            return  $arr[$classname];
        
    }
}
