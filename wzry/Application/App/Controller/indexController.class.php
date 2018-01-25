<?php

class indexController extends Controller{
    //put your code here
    function index(){
        $m = Factory::M("index");
        $heros = $m->allHero();
        echo Response::json(200,'',$heros);
    }
//    所有局内道具列表
    function prop(){
        $m = Factory::M("index");
        $props = $m->propList();
        echo Response::json(200,'',$props);
    }
//    所有技能列表
    function skill(){
        $m = Factory::M("index");
        $skills = $m->skillList();
        echo Response::json(200,'',$skills);
    }
//    英雄详情
    function details(){
        $id = $this->get('id');
        $m = Factory::M("index");
        $info = $m->heroInfo($id);
         if(empty($info)){
            echo Response::json(300,'英雄信息不完整',array());
         }
         else{
            echo Response::json(200,'英雄信息完整',$info);
         }
    }
    function search(){
        $search = $this->get('search');
        $m = Factory::M("index");
        $heros = $m->search($search);
        $this -> assign("heros",$heros);
        $this -> display("search.tpl");
    }
    function rad(){
        $rad = $this->get('rad');
        $m = Factory::M("index");
        $heros = $m->rad($rad);
        $this -> assign("heros",$heros);
        $this -> display("rad.tpl");
    }

}
