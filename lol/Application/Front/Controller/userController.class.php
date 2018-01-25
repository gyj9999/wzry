<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of userController
 *
 * @author guoyongjie
 */
class userController extends Controller{
    var $model;
    public function __construct() {
        parent::__construct();
        $this->model = Factory::M("user");
    }
    public function loginData(){
        $username = $this->post("username");
        $pwd = $this->post("pwd");
//        $pwd = md5($pwd);
        $b = $this->model->loginData($username, $pwd);
        if ($b){
            echo 1;
            setcookie("username","$username");
        }
        else {
            echo 2;
        }
        
    }
}
