 <!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    {block name="style"}
        
        
    {/block}
    <link rel="stylesheet" type="text/css" href="public/css/sweet-alert.css">
    <script src="public/js/jquery-1.12.3.min.js"></script>
    <script src="public/js/sweet-alert.min.js"></script>
    <script type="text/javascript" src="public/js/myjs.js"></script>
</head>

<body>
    <div class="header">
        <div class="header_main">
            <div class="header_top">
                <div class="logo"></div>
                <div class="column">
                    <ul class="column1">
                        <li><a href="">官网首页HOME</a></li>
                        <li><a href="">游戏资料DATA</a></li>
                        <li><a href="">攻略中心RAIDERS</a></li>
                        <li><a href="">赛事中心MATCH</a></li>
                        <li><a href="">商城\合作STORE</a></li>
                        <li><a href="">社区互动COMMUNITY</a></li>
                    </ul>
                </div>
            </div>
            <div class="header_bottom">
                <div class="header_bottom_left">
                    <span>周免英雄(10月9日-10月15日)</span>
                    <ul class="column2">
                        <a href="">
                            <li class="l1"></li>
                        </a>
                        <a href="">
                            <li class="l2"></li>
                        </a>
                        <a href="">
                            <li class="l3"></li>
                        </a>
                        <a href="">
                            <li class="l4"></li>
                        </a>
                        <a href="">
                            <li class="l5"></li>
                        </a>
                        <a href="">
                            <li class="l6"></li>
                        </a>
                        <a href="">
                            <li class="l7"></li>
                        </a>
                    </ul>
                </div>
                <div class="header_bottom_right">
                    <a class="header_image spr"><img src="images/avatar1.jpg" /></a>
                    <div class="header_text">
                        <span id="message" style="color: #c2c1d5; font-size: 16px;">亲爱的召唤师欢迎
                            {if empty($smarty.cookies.username)}
                                
                                <a href="javascript:void(0);" class="login">&nbsp;登陆&nbsp;</a>
                            {else}
                                {$smarty.cookies.username}
                            {/if}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mt_box">
        <!--登录框-->
        <div class="mt_login my_non">
            <div class="xx">x</div>
            <br/>
            <div class="logo1"></div>
            <div class="anter">
            </div>
            <input type="text" class="inpt" name="username" id="username" placeholder="&nbsp &nbsp请输入账号" />
            <br/>
            <input type="password" class="inpt" name="password" id="pwd" placeholder="&nbsp &nbsp请输入密码" />
            <br/>
            <input type="button" class="mt_btn" id="login" value="登录" />
            <div class="logo2">
                <span><a href="javascript:void(0);" class="tz_re">注册账号</a>&nbsp;|&nbsp;<a href="">意见反馈</a></span>
            </div>
        </div>
        <!--登录框-->
        <!--注册框-->
        <div class="mt_register my_non">
            <div class="xx">x</div>
            <div class="logo1" style="margin-top: -8px;"></div>
            <div class="anter1">
            </div>
            <input type="text" class="inpt" name="username1" id="username1" placeholder="&nbsp &nbsp请输入用户名" />
            <br/>
            <input type="password" class="inpt" name="password1" id="pwd1" placeholder="&nbsp &nbsp请输入密码" />
            <br/>
            <input type="button" class="mt_btn" id="zhuce" value="注册" />
            <div class="logo2">
                <span><a href="javascript:void(0);" class="tz_re">账号登录</a>&nbsp;|&nbsp;<a href="">意见反馈</a></span>
            </div>
        </div>
        <!--注册框-->
    </div>
    <div class="content_out">
        <div class="content">
            <div class="content_top">
                <i class="icon1"></i><span><a href="">王者荣耀首页>英雄介绍</a></span>
            </div>
            {block name="content"}
            
            
            {/block}
        </div>
    </div>
    <div class="footer">
        <div class="footer_top">
            <a href="" class="footer_logo"><img src="public/images/spr1.png" /></a>
        </div>
        <div class="footer_icon">
            <a href="" class="m1"></a>
            <a href="" class="m2"></a>
            <a href="" class="m3"></a>
            <a href="" class="m4"></a>
            <a href="" class="m5"></a>
            <a href="" class="m6"></a>
        </div>
        <div class="media">
            <select name="">
                <a>
                    <option value="">全球电竞网</option>
                </a>
                <a>
                    <option value="">52pk</option>
                </a>
                <a>
                    <option value="">游久</option>
                </a>
            </select>
        </div>
        <div class="footer_bottom">
            <div class="footer_bottom_left">
                <p>温馨提示：本游戏适合16岁(含)以上玩家娱乐</p>
                <span class="s1">抵制不良游戏拒绝盗版游戏注意自我保护谨防受骗上当适度游戏益脑沉迷游戏伤身合理安排时间享受健康生活</span>
                <span class="s2">《王者荣耀》全部背景发生于架空世界“王者大陆”中。相关人物、地理、事件均为艺术创作，并非正史。若因观看王者故事对相关历史人物产生兴趣，建议查阅正史记载。</span>
            </div>
            <div class="footer_bottom_right">
                <span><a href="">腾讯互动娱乐</a>&nbsp;|&nbsp;<a href="">服务条款</a>&nbsp;|&nbsp;<a href="">广告服务</a>&nbsp;|&nbsp;<a
                    href="">腾讯游戏招聘</a>&nbsp;|&nbsp;<a href="">腾讯游戏客服</a>&nbsp;|&nbsp;<a href="">游戏地图</a>&nbsp;|&nbsp;<a
                    href="">游戏活动</a>&nbsp;|&nbsp;<a href="">商务合作</a>&nbsp;|&nbsp;<a href="">网站导航</a></span>
                <p><span>COPYRIGHT © 1998 – 2017 TENCENT. ALL RIGHTS RESERVED.</span></p>
                <p><span>腾讯公司&nbsp;&nbsp;版权所有</span></p>
                <p><span>粤网文[2017]6138-1456号&nbsp;&&nbsp;ISBN 978-7-7979-8408-9&nbsp;|&nbsp;新出网证(粤)字010号&nbsp;|&nbsp;文网游备字[2016]M-CSG 0059</span>
                </p>
                <p><span>批准文号：新广出审[2017] 6712号 | 全国文化市场统一举报电话：12318</span></p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    // 避免smarty解析
    

    $("#login").click(function() {
        $.ajax({
            type: "post",
            url: 'index.php?c=user&a=loginData',
            data: {
                username: $("#username").val(),
                pwd: $("#pwd").val()
            },
            success: function(data) {
                if (data == 1) {

                    $(".mt_box").removeClass("modelWrap")
                    $(".mt_login").removeClass("modelInn")
                    $(".mt_register").removeClass("modelInn1")
                    $(".mt_login").addClass("my_non")
                    $(".mt_register").addClass("my_non")

                    $("#message").html('亲爱的召唤师' + $('#username').val() + '欢迎登录');

                    swal('登录成功！', '', 'success');
                } else {
                    swal('登录失败！', '', 'error');
                    $("#alert").show();
                }
            }
        })
    });


    $(function() {
        $("#zhuce").click(function() {
            $.ajax({
                type: "post",
                url: 'index.php?c=user&a=registerData',
                data: {
                    username1: $('#username1').val(),
                    pwd1: $('#pwd1').val()
                },
                success: function(data) {
                    if (data == 1) {
                        $(".mt_box").removeClass("modelWrap")
                        $(".mt_login").removeClass("modelInn")
                        $(".mt_register").removeClass("modelInn1")
                        $(".mt_login").addClass("my_non")
                        $(".mt_register").addClass("my_non")
                        swal('注册成功！', '', 'success');
                    } else {
                        swal('注册失败！', '', 'error');
                        $("#alert").show();
                    }
                }
            })
        });
    })


       
    </script>


    
</body>

</html>
