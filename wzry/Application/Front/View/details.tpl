<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="public/css/details.css" />
    <script src="public/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="public/js/myjs.js"></script>
            <link rel="stylesheet" type="text/css" href="./public/css/sweet-alert.css">
    <script src="public/js/sweet-alert.min.js"></script>
</head>

<body>
    <div class="header">
        {foreach from=$info['model'] key=k item="model" }
        <div class="banner" style="background-image: url({$model['src']}); {if $k neq 0} display: none; {/if} ">
        </div>
        {/foreach}
        <div class="header_main">
            <div class="header_top">
                <div class="logo"></div>
                <div class="column">
                    <ul class="column1">
                        <li>
                            <a href="">官网首页HOME</a>
                        </li>
                        <li>
                            <a href="">游戏资料DATA</a>
                        </li>
                        <li>
                            <a href="">攻略中心RAIDERS</a>
                        </li>
                        <li>
                            <a href="">赛事中心MATCH</a>
                        </li>
                        <li>
                            <a href="">商城\合作STORE</a>
                        </li>
                        <li>
                            <a href="">社区互动COMMUNITY</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="header_logo">
                <div id="header_logo_main">
                    <a href="">
                        <div class="logo_img"></div>
                    </a>
                    <a href="javascript:void(0);" class="weilcome_logo login">欢迎登录</a>
                </div>
            </div>
            <div class="hero_intro">
                {foreach from=$info['model'] key=k item="model" }
                <p class="p1" style="{if $k neq 0 } display: none; {/if}">{$model['face_name']} </p>
                {/foreach}
                <p class="p2">{$info['Hero_name']} </p>
                <div class="herodetail-sort">
                    <i class="{if $info['Hero_position'] eq '战士'}
					    herodetail-sort-1
					{elseif $info['Hero_position'] eq '法师'}
					    herodetail-sort-2
					    {elseif $info['Hero_position'] eq '坦克'}
					    herodetail-sort-3
					    {elseif $info['Hero_position'] eq '刺客'}
					    herodetail-sort-4
					    {elseif $info['Hero_position'] eq '射手'}
					    herodetail-sort-5
					{else}
					    herodetail-sort-6
					{/if}"></i>
                </div>
                <ul class="cover-list">
                    <li>
                        <em class="cover-list-text fl">生存能力</em>
                        <span class="cover-list-bar data-bar1 fl">
							<b class="icon"></b>
							<i class="ibar" style="width:{$info['Hero_live']}0%"></i>
						</span>
                    </li>
                    <li>
                        <em class="cover-list-text fl">攻击伤害</em>
                        <span class="cover-list-bar data-bar2 fl">
							<b class="icon"></b>
							<i class="ibar" style="width:{$info['Hero_ hurt']}0%"></i>
						</span>
                    </li>
                    <li>
                        <em class="cover-list-text fl">技能效果</em>
                        <span class="cover-list-bar data-bar3 fl">
							<b class="icon"></b>
							<i class="ibar" style="width:{$info['Hero_ Skill']}0%"></i>
						</span>
                    </li>
                    <li>
                        <em class="cover-list-text fl">上手难度</em>
                        <span class="cover-list-bar data-bar4 fl">
							<b class="icon"></b>
							<i class="ibar" style="width:{$info['Hero_difficulty']}0%"></i>
						</span>
                    </li>
                </ul>
                <div class="hero_skin">
                    <ul class="hero_skin_pic">
                        <!-- <li style="border:#F6CC6A solid 3px;">
                            <img src="public/images/196-smallskin-1.jpg" />
                        </li>
                        <li>
                            <img src="public/images/196-smallskin-2.jpg" />
                        </li> -->
                        {foreach from=$info['model'] key=k item="model" } {if $k eq 0 }
                        <li style="border:#F6CC6A solid 3px;">
                            <img src="{$model['Face_src']}" />
                        </li>
                        {else}
                        <li>
                            <img src="{$model['Face_src']}" />
                        </li>
                        {/if} {/foreach}
                    </ul>
                    <a href="javascript:;" class="pf">
                        <span>皮</br>肤</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="content_out">
        <div class="content">
            <div class="content_top">
                <i class="icon1"></i>
                <span>
					<a href="">王者荣耀首页 > 英雄介绍</a>
				</span>
            </div>
            <div class="content_middle">
                <div class="content_middle_left">
                    <h3 class="tlt">
						<i class="icon2"></i> 英雄技能</h3>
                    <div class="skill-info">
                        <ul class="skill-ul">
                            <!--                             <li>
    <img src="public/images/j1.png" alt="" style="border:3px solid #F6CC6A">
</li>
<li>
    <img src="public/images/j2.png" alt="">
</li>
<li>
    <img src="public/images/j3.png" alt="">
</li>
<li>
    <img src="public/images/j4.png" alt="">
</li> -->
                            {foreach from=$info['skill'] key=k item="skill" } {if $k eq 0}
                            <li>
                                <img src="{$skill['Skill_img']}" alt="" style="border:3px solid #F6CC6A">
                            </li>
                            {else}
                            <li>
                                <img src="{$skill['Skill_img']}" alt="">
                            </li>
                            {/if} {/foreach}
                        </ul>
                        <div class="skill-show">

                         {foreach from=$info['skill'] key=k item="skill" } {if $k eq 0}
                            <div class="skill-list">
                                <p class="skill-name">
                                    <b>{$skill['Skill_name']}</b>

                                </p>
                                <p class="skill-desc">{$skill['Skill_content']}</p>
                                <div class="skill-tips">
                                    {$skill['S_Tips']}
                                </div>
                            </div>

                            {else}

                            <div class="skill-list" style="display:none;" >
                                <p class="skill-name">
                                    <b>{$skill['Skill_name']}</b>
                                </p>
                                <p class="skill-desc">{$skill['Skill_content']}</p>
                                <div class="skill-tips">
                                    {$skill['S_Tips']}
                                </div>
                            </div>

                            {/if}

                            {/foreach}
<!--                             <div class="skill-list" style="display:none;">
    <p class="skill-name">
        <b>静谧之眼</b>
    </p>
    <p class="skill-desc">百里守约在脚下布置一个视野装置，获取周围600范围的全部视野（随等级提升最高1000）；百里守约普攻和技能对探测视野内的野怪造成额外伤害效果；视野装置最多存在3个，持续300秒，被敌方英雄占领后失效；被动：原地不动时百里守约每秒获得一层伏击效果，增加自身7/8/9/10/11/12%物理穿透，最多叠加5层；移动后效果消失</p>
    <div class="skill-tips">
        通过静谧之眼掌控视野，把控全局，技能的被动会让百里守约狙击敌人时造成更高的伤害
    </div>
</div>
<div class="skill-list" style="display:none;">
    <p class="skill-name">
        <b>狂风之息</b>
    </p>
    <p class="skill-desc">百里守约开始瞄准，并尝试进行一次狙击，造成1050/1200/1350/1500/1650/1800（+250%额外物理加成）点物理伤害和减速效果；瞄准需要花费2秒时间，但在瞄准未完成时子弹有可能产生偏移；技能子弹每16秒获得一颗，最多储存3颗（受冷却缩减影响）</p>
    <div class="skill-tips">
        狂风之息拥有超远的射程和视野范围，是百里守约的核心技能，百里守约主要通过该技能狙击对方制造伤害，可以开启团战或收割残血敌人
    </div>
</div>
<div class="skill-list" style="display:none;">
    <p class="skill-name">
        <b>逃脱</b>
    </p>
    <p class="skill-desc">百里守约向后跳跃并进行射击，对命中的敌人造成500/700/900（+168%物理加成）点物理伤害与减速；落地后增加移动速度持续2秒，或执行一次技能攻击或普通攻击</p>
    <div class="skill-tips">
        逃脱会让百里守约摆脱近身突袭的敌人
    </div>
</div> -->
                        </div>
                    </div>
                </div>
                <div class="content_middle_right">
                    <h3 class="tlt">
						<i class="icon3"></i>&nbsp;铭文搭配建议</h3>
                    <div class="sugg-info">
                        <ul class="sugg-u1">
                            <li>
                                <img src="{$info['ins']['0']['I_img']}" alt="" width="45" height="53">
                                <p>
                                    <em>{$info['ins']['0']['I_Name']}</em>
                                </p>
                                {foreach from=$info['ins']['0']['I_content'] item='value'}
                                <p>{$value}</p>
                                {/foreach}
<!--                                 <p>
    物理穿透+3.6
</p> -->
                            </li>
                                                        <li>
                                <img src="{$info['ins']['1']['I_img']}" alt="" width="45" height="53">
                                <p>
                                    <em>{$info['ins']['1']['I_Name']}</em>
                                </p>
                                {foreach from=$info['ins']['1']['I_content'] item='value'}
                                <p>{$value}</p>
                                {/foreach}
<!--                                 <p>
    物理穿透+3.6
</p> -->
                            </li>
                                                        <li>
                                <img src="{$info['ins']['2']['I_img']}" alt="" width="45" height="53">
                                <p>
                                    <em>{$info['ins']['2']['I_Name']}</em>
                                </p>
                                {foreach from=$info['ins']['2']['I_content'] item='value'}
                                <p>{$value}</p>
                                {/foreach}
<!--                                 <p>
    物理穿透+3.6
</p> -->
                            </li>
                          <!--   <li>
                              <img src="public/images/3514.png" alt="" width="45" height="53">
                              <p>
                                  <em>鹰眼</em>
                              </p>
                              <p>物理攻击力+0.9</p>
                              <p>
                                  物理穿透+6.4
                              </p>
                          </li>
                          <li>
                              <img src="public/images/2517.png" alt="" width="45" height="53">
                              <p>
                                  <em>隐匿</em>
                              </p>
                              <p>物理攻击力+1.6</p>
                              <p>
                                  移速+1%
                              </p>
                          </li> -->
                        </ul>
                        <p class="sugg-tips">
                            Tips：{$info['ins']['I_Tips']}
                        </p>
                    </div>
                </div>
            </div>
            <div class="content-out">
                <div class="hero-left">
                    <h3 class="tlt">
						<i class="icon4"></i>&nbsp;技能加点建议</h3>
                    <div class="sugg-info2">
                        <p class="sugg-name">
                            <b>主升</b>
                            <span>{$info['heroSkillAdd']['first']['Skill_name']}</span>
                        </p>
                        <p class="sugg-icon">
                            <img src="{$info['heroSkillAdd']['first']['Skill_img']}" alt="" width="47" height="47">
                        </p>
                        <p class="sugg-name">
                            <b>副升</b>
                            <span>{$info['heroSkillAdd']['second']['Skill_name']}</span>
                        </p>
                        <p class="sugg-icon">
                            <img src="{$info['heroSkillAdd']['second']['Skill_img']}" alt="" width="47" height="47">
                        </p>
                        <p class="sugg-name">
                            <b>召唤师技能</b>
                            <span>{$info['add_s_skill']['R_first']['S_Name']}/{$info['add_s_skill']['R_Second']['S_Name']}</span>
                        </p>
                        <p>
                            <p class="sugg-icon">
                                <img src="{$info['add_s_skill']['R_first']['S_img']}" alt="">
                            </p>
                            <p class="sugg-icon">
                                <img src="{$info['add_s_skill']['R_Second']['S_img']}" alt="">
                            </p>
                        </p>
                    </div>
                    <h3 class="tlt">
						<i class="icon5"></i>&nbsp;英雄关系</h3>
                    <div class="hero-info-box">
                        <ul class="hero-hd" style="list-style:none;">
                            <li style="border-bottom:3px solid #F6CC6A">最佳搭档
                                <span></span>
                            </li>
                            <li>压制英雄
                                <span></span>
                            </li>
                            <li>被压制英雄</li>
                        </ul>
                        <div>
                            <div class="hero-info">
                                <div class="hero-f1">
                                    最佳搭档
                                </div>
                                <div class="hero-list">
                                    <ul>
                                        <li style="border:solid 4px #F6CC6A;">
                                            <img src="{$gay[0]['Gay_one']['default_face']}" alt="">
                                        </li>
                                        <li>
                                            <img src="{$gay[0]['Gay_two']['default_face']}" alt="">
                                        </li>
                                    </ul>
                                </div>
                                <div class="hero-list-desc">
                                    <p>
                                        {$gay[0]['Gay_tips']}
                                    </p>
                                    
                                </div>
                            </div>
                            <div class="hero-info" style="display:none">
                                <div class="hero-f1">
                                    压制英雄
                                </div>
                                <div class="hero-list">
                                    <ul>
                                        <li style="border:solid 4px #F6CC6A;">
                                            <img src="{$gay[1]['Gay_one']['default_face']}" alt="">
                                        </li>
                                        <li>
                                            <img src="{$gay[1]['Gay_two']['default_face']}" alt="">
                                        </li>
                                    </ul>
                                </div>
                                <div class="hero-list-desc">
                                    <p>
                                         {$gay[1]['Gay_tips']}
                                    </p>
                                    
                                </div>
                            </div>
                            <div class="hero-info" style="display:none">
                                <div class="hero-f1">
                                    被压制英雄
                                </div>
                                <div class="hero-list">
                                    <ul>
                                        <li style="border:solid 4px #F6CC6A;">
                                            <img src="{$gay[2]['Gay_one']['default_face']}" alt="">
                                        </li>
                                        <li>
                                            <img src="{$gay[2]['Gay_two']['default_face']}" alt="">
                                        </li>
                                    </ul>
                                </div>
                                <div class="hero-list-desc">
                                    <p>
                                        {$gay[2]['Gay_tips']}
                                    </p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero-right">
                    <h3 class="tlt">
						<i class="icon6"></i>&nbsp;出装建议</h3>
                    <div class="equip-box">
                        <ul class="equip-hd">
                            <li style="border-bottom:3px solid #F6CC6A;">推荐出装一
                                <span></span>
                            </li>
                            <li>推荐出装二</li>
                        </ul>
                    </div>
                    <div class="equip-bd">
                    {foreach from=$add_e key=k item=value}
                        <div class="equip-info" style='{if $k neq 0} display: none;{/if}'>
                            <ul class="equip-list">
                                <li>
                                    <img src="{$value['E_One']['E_img']}" alt="">
                                </li>
                                <li>
                                    <img src="{$value['E_Two']['E_img']}" alt="">
                                </li>
                                <li>
                                    <img src="{$value['E_Three']['E_img']}" alt="">
                                </li>
                                <li>
                                    <img src="{$value['E_Four']['E_img']}" alt="">
                                </li>
                                <li>
                                    <img src="{$value['E_Five']['E_img']}" alt="">
                                </li>
                                <li>
                                    <img src="{$value['E_Six']['E_img']}" alt="">
                                </li>
                            </ul>
                            <p class="equip-tips">
                                Tips：{$value['E_tips']}
                            </p>
                        </div>
                       
                        {/foreach}
                       <!--  <div class="equip-info" style="display:none;">
                           <ul class="equip-list">
                               <li>
                                   <img src="public/images/1137.jpg" alt="">
                               </li>
                               <li>
                                   <img src="public/images/1421.jpg" alt="">
                               </li>
                               <li>
                                   <img src="public/images/1132.jpg" alt="">
                               </li>
                               <li>
                                   <img src="public/images/1131.jpg" alt="">
                               </li>
                               <li>
                                   <img src="public/images/1138.jpg" alt="">
                               </li>
                               <li>
                                   <img src="public/images/1337.jpg" alt="">
                               </li>
                           </ul>
                           <p class="equip-tips">
                               Tips：全输出装备，对于2技能的位置选择要求更高，敌方回复能力比较突出时，可以选择制裁之刃
                           </p>
                       </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer_top">
            <a href="" class="footer_logo">
                <img src="public/images/spr1.png" />
            </a>
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
                <span>
					<a href="">腾讯互动娱乐</a>&nbsp;|&nbsp;
					<a href="">服务条款</a>&nbsp;|&nbsp;
					<a href="">广告服务</a>&nbsp;|&nbsp;
					<a href="">腾讯游戏招聘</a>&nbsp;|&nbsp;
					<a href="">腾讯游戏客服</a>&nbsp;|&nbsp;
					<a href="">游戏地图</a>&nbsp;|&nbsp;
					<a href="">游戏活动</a>&nbsp;|&nbsp;
					<a href="">商务合作</a>&nbsp;|&nbsp;
					<a href="">网站导航</a>
				</span>
                <p>
                    <span>COPYRIGHT © 1998 – 2017 TENCENT. ALL RIGHTS RESERVED.</span>
                </p>
                <p>
                    <span>腾讯公司&nbsp;&nbsp;版权所有</span>
                </p>
                <p>
                    <span>粤网文[2017]6138-1456号&nbsp;&&nbsp;ISBN 978-7-7979-8408-9&nbsp;|&nbsp;新出网证(粤)字010号&nbsp;|&nbsp;文网游备字[2016]M-CSG 0059</span>
                </p>
                <p>
                    <span>批准文号：新广出审[2017] 6712号 | 全国文化市场统一举报电话：12318</span>
                </p>
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
</body>

</html>
<script>
$(function() {
    // 头部轮播
    $(".hero_skin_pic li").mouseover(function() {
        $(".hero_skin_pic li").css("border", "3px solid #666666");
        $(this).css("border", "3px solid #F6CC6A");
        var index = $(".hero_skin_pic li").index(this); //第几个技能
        var skill = $(".banner")[index]; //相应的技能详情
        var $skill = $(skill); //js转jq对象
        $(".banner").css('display', 'none');
        $skill.css('display', 'block');

        var tit = $(".p1")[index];
        var $tit = $(tit);
        $(".p1").css('display', 'none');
        $tit.css('display', 'block');

        // console.log(tit);

    });



    //英雄技能开始
    $(".skill-ul img").mouseover(function() {
        $(".skill-ul img").css("border", "3px solid transparent");
        $(this).css("border", "3px solid #F6CC6A");
        var index = $(".skill-ul img").index(this); //第几个技能
        var skill = $(".skill-list")[index]; //相应的技能详情
        var $skill = $(skill); //js转jq对象
        $(".skill-list").css('display', 'none');
        $skill.css('display', 'block');
    });
    //英雄技能结束
    //英雄关系
    $(".hero-hd li").mouseover(function() {
        $(".hero-hd li").css("borderBottom", "3px solid transparent");
        $(this).css("borderBottom", "3px solid #F6CC6A");
        var index = $(".hero-hd li").index(this);
        var heroInfo = $(".hero-info")[index];
        var $heroInfo = $(heroInfo);
        $(".hero-info").css('display', 'none');
        $heroInfo.css('display', 'block');
    });

    //英雄关系in
    $(".hero-list li").mouseover(function() {
        var li = $(this).parent().find("li");
        li.css("border", "4px solid #7a7a7a");
        $(this).css("border", "4px solid #F6CC6A");
       /* var index = $(".hero-list li").index(this); //英雄关系里的第几个
        if (index == 2) {
            index = 0;
        }
        if (index == 3) {
            index = 1;
        }
        if (index == 4) {
            index = 0;
        }
        if (index == 5) {
            index = 1;
        }
        var info = $(this).parent().parent().parent().find('p');
        var $desc = $(info);
        $desc.css("display", "none");
        var desc1 = $($desc[index]);
        desc1.css('display', 'block');*/

    });


    $(".equip-hd li").mouseover(function() {
        $(".equip-hd li").css("borderBottom", "3px solid transparent");
        $(this).css("borderBottom", "3px solid #F6CC6A");
        var index = $(".equip-hd li").index(this);
        var skill = $(".equip-info")[index];
        var $skill = $(skill);
        $(".equip-info").css('display', 'none');
        $skill.css('display', 'block');
    });
});


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
</script>
