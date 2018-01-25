<?php
header("Content-type: text/html; charset=utf-8");


//
//
//include 'D:\php\WWW\lol/Framework/MySQlDB.class.php';
//include 'D:\php\WWW\lol/Framework/Model.class.php';
class indexModel extends Model{
    //英雄列表
    function allHero(){
        $sql = "select * from hero_list";
        return $this -> link ->getAll($sql);
    }
//    局内道具方法
    function propList(){
        $sql = "select * from equipment";
        return $this -> link ->getAll($sql);
    }
//    技能
    function skillList(){
        $sql = "select * from summoner_skill";
        return $this->link->getAll($sql);
    }
//    搜索英雄
    function search($search){
        $sql = "SELECT * FROM hero_list WHERE Hero_name LIKE '%$search%'";
        return $this->link->getAll($sql);
    }
//    类型
    function rad($rad){
        $sql = "SELECT * FROM `hero_list` WHERE Hero_position='$rad'";
        return $this->link->getAll($sql);
    }
    //    获取英雄详情
    function heroInfo($id){
//        英雄详情
        $sql = "SELECT * FROM hero_list WHERE id=$id";
        $info = $this->link->getRow($sql);
//        获得英雄的技能
        $sql1 = "SELECT * FROM skill_list WHERE H_id=$id";
        $heroSkill = $this->link->getAll($sql1);
        if(empty($heroSkill)){
            $heroSkill = array();
        }
        $info['skill'] = $heroSkill;
        
        
//        铭文建议
        $sql2 = "SELECT * FROM add_i WHERE H_id=$id";
        $heroIns = $this->link->getRow($sql2);
        if(empty($heroIns)){
            $heroIns = array();
        }
        
        
        $sql3 = "select * from inscription where id=".$heroIns['One'];
        $heroIns[] = $this->link->getRow($sql3);
        $heroIns[0]['I_content'] = explode(",", $heroIns[0]['I_content']);
        $sql4 = "select * from inscription where id=".$heroIns['Two'];
        $heroIns[] = $this->link->getRow($sql4);
        $heroIns[1]['I_content'] = explode(",", $heroIns[1]['I_content']);
        $sql5 = "select * from inscription where id=".$heroIns['Three'];
        $heroIns[] = $this->link->getRow($sql5);
        $heroIns[2]['I_content'] = explode(",", $heroIns[2]['I_content']);
        
        $info['ins'] = $heroIns;
//        var_dump($heroIns);
        
//        技能加点建议
        $sql6 = "SELECT * FROM add_skill WHERE H_id = $id";
        $heroSkillAdd = $this->link->getRow($sql6);
        if(empty($heroSkill)){
            $heroSkillAdd = array();
        }
        foreach ($info['skill'] as $key=>$value){
            if( $value['id']==$heroSkillAdd['first']){
                $heroSkillAdd['first'] = $value;
            }
            if( $value['id']==$heroSkillAdd['second']){
                $heroSkillAdd['second'] = $value;
            }
        }
        $info['heroSkillAdd'] = $heroSkillAdd;
//        召唤师技能
        $sql7 = "SELECT * FROM add_s_skill WHERE H_id=$id";
        $add_s_skill = $this->link->getRow($sql7);
        $sql8 = "SELECT * FROM summoner_skill WHERE id =".$add_s_skill['R_first'];
        $sql9 = "SELECT * FROM summoner_skill WHERE id =".$add_s_skill['R_Second'];
        $add_s_skill['R_first'] = $this->link->getRow($sql8);
        $add_s_skill['R_Second'] = $this->link->getRow($sql9);
        $info['add_s_skill'] = $add_s_skill;
//        关系
        $sql10 = "SELECT * FROM hero_gay WHERE H_id=$id";
        $heroGay = $this->link->getAll($sql10);
        foreach ( $heroGay as $key=>$value){
            $sql1 = "SELECT * FROM hero_list WHERE id =".$value['Gay_one'];
            $sql2 = "SELECT * FROM hero_list WHERE id =".$value['Gay_two'];
            $arr1 = $this->link->getRow($sql1);
            $arr2 = $this->link->getRow($sql2);
            $value['Gay_one'] = $arr1;
            $value['Gay_two'] = $arr2;
            $heroGay[$key] = $value;
;        }
        $info['gay'] = $heroGay;
//        出装建议
        	$sql12 = "select * from add_e where H_id = ".$id;
		$add_e = $this->link->getAll($sql12);

		foreach($add_e as $key => $value){
			$sql = "select * from equipment where id =".$value['E_One'];
			$sql1 = "select * from equipment where id =".$value['E_Two'];
			$sql2 = "select * from equipment where id =".$value['E_Three'];
			$sql3 = "select * from equipment where id =".$value['E_Four'];
			$sql4 = "select * from equipment where id =".$value['E_Five'];
			$sql5 = "select * from equipment where id =".$value['E_Six'];
			$arr = $this->link->getRow($sql);
			$arr1 = $this->link->getRow($sql1);
			$arr2 = $this->link->getRow($sql2);
			$arr3 = $this->link->getRow($sql3);
			$arr4 = $this->link->getRow($sql4);
			$arr5 = $this->link->getRow($sql5);
			$value['E_One'] = $arr;
			$value['E_Two'] = $arr1;
			$value['E_Three'] = $arr2;
			$value['E_Four'] = $arr3;
			$value['E_Five'] = $arr4;
			$value['E_Six'] = $arr5;
			$add_e[$key] = $value;

		}
                $info['add_e'] = $add_e;
                $sql13 = "select * from hero_model where H_id=".$id;
		//皮肤

		$heroModel = $this->link->getAll($sql13);//查询英雄的皮肤
		if(empty($heroModel)){
			return array();
		}
		$info['model'] = $heroModel;//push info 数组

        return $info;
        
    }
}












