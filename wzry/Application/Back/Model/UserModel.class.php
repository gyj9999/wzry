<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserModel
 *
 * @author guoyongjie
 */
class userModel extends Model{
    public function queryUser($username,$pwd){
        $sql = "select * from user where user_name='$username' and user_pwd='$pwd'";
        return $this->link->getRow($sql);
    }
    function add($username,$pwd,$nickname){
        $sql = "INSERT INTO `user` VALUES(NULL,'$username','$pwd','$nickname',null)";
        return $this->link->query($sql);
    }
}
