## 介绍
这是一个王者荣耀英雄展示系统，功能包括：

* 英雄展示
* 局内道具展示
* 召唤师技能展示
* 英雄搜索
* 登陆功能
* 详情功能
* App


## 导入数据库
数据库文件保存在Data文件夹下，导入即可.

## 修改数据库连接配置

修改`Framework/mysqlDB.class.php`：

```php
$this->host = isset($config['host']) ? $config['host'] : '127.0.0.1';  //地址
$this->username = isset($config['username']) ? $config['username'] : 'root';       //用户名
$this->password = isset($config['password']) ? $config['password'] : 'root';            //密码
$this->dbname = isset($config['dbname']) ? $config['dbname'] : 'wzry';    //数据库名
```

## App
文件保存在App文件夹中，用HBuilder编译器运行即可。请把App文件夹中的js文件夹中的ip.js中的ip改本本机ip
