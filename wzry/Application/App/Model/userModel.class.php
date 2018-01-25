<?php

class userModel extends Model{
    //put your code here
    public function loginData($username,$pwd){
        $sql = "SELECT * FROM `user` WHERE user_name='$username' and user_pwd='$pwd'";
        return $this->link->getRow($sql);
    }
}
