<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserController
 *
 * @author guoyongjie
 */
class UserController extends Controller{
    //put your code here
    function login(){
        $username = $this->post("username");
        $pwd = $this->post("pwd");
        $model = Factory::M("User");
        $user = $model->queryUser($username,$pwd);
        if(!$user){
//            密码错误
            echo "error";
        }
        else{
//            正确
            $_SESSION['user'] = $user;
            $this->display("guanli.tpl");
             
        }
    }
    function welcome(){
            $this->display("login.tpl");
        }
        function reg(){
            $this->display("register.tpl");
        }
        function register(){
            $username = $this->post("username");
            $pwd = $this->post("pwd");
            $nickname = $this->post("nickname");
            $model = Factory::M("User");
            $b = $model->add($username,$pwd,$nickname);
            if ($b){
                $this->display("login.tpl");
            }
            else {
                $this->display("register.tpl");
            }
        }
}
