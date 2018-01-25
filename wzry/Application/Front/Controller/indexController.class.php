<?php

class indexController extends Controller{
    //put your code here
    function index(){
        $m = Factory::M("index");
        $heros = $m->allHero();
        $this -> assign("heros",$heros);
        $this -> display("hero.tpl");
    }
//    所有局内道具列表
    function prop(){
        $m = Factory::M("index");
        $props = $m->propList();
        $this -> assign("props",$props);
        $this -> display("prop.tpl");
    }
//    所有技能列表
    function skill(){
        $m = Factory::M("index");
        $skills = $m->skillList();
        $this -> assign("skills",$skills);
        $this -> display("skill.tpl");
    }
//    英雄详情
    function details(){
        $id = $this->get('id');
        $m = Factory::M("index");
        $info = $m->heroInfo($id);
         if(empty($info)){
            echo "此英雄数据不完整~";die;
         }
         $this -> assign('gay',$info['gay']);//英雄关系
         $this->assign('info',$info); //英雄信息
         $this->assign('add_e',$info['add_e']);
        $this->display("details.tpl");
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
