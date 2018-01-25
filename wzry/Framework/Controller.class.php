<?php
//这是我们所有控制器中的父类，把我们共性的内容在父类中完成
//比如smarty 模板的创建
class Controller {
    //put your code here
    private $smarty;
    //构造函数中初始化smarty
    function __construct() {
        $this->smartyConfig();
    }
    //配置smarty
    function smartyConfig(){
      //初始化smarty模板引擎的php文件
        
    //require_once FRAMEWORK."/smarty/Smarty.class.php";
    //实例化Smarty 对象
    $this->smarty = new Smarty();

    //放置所有编译后的文件目录
    $this->smarty -> setCompileDir(ROOT_PATH."public/comps/");
    //模板页的目录
    $this->smarty-> setTemplateDir(APPLICATION.GROUP."/View/");
        }
        function assign($name,$value){
            $this->smarty->assign($name,$value);
        }
         function display($tpl){
             $this->smarty->display($tpl);
         }
         
         /**
          *  post方式获取数据
          * @param string 字段名称
          * @return string 返回值
          */
          //拿到名字，并且传值
         public  function post($name = ""){
             if($name ==""){
                 return $_POST;
             }else{
                 return isset($_POST[$name])?$_POST[$name]:"";
             }
         }
         
         /**
          *  get方式获取数据
          * @param string 字段名称
          * @return string 返回值
          */
         public  function get($name = ""){
             if($name ==""){
                 return $_GET;
             }else{
                 return isset($_GET[$name])?$_GET[$name]:"";
             }
         }
         public  function redirct($url){
             echo "<script>window.location.href='{$url}';</script>";
         }
}
