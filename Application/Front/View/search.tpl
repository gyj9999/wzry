{extends file="layout.tpl"}
    {block name="style"}
        <link rel="stylesheet" type="text/css" href="public/css/hero.css" />        
    {/block}
{block name="content"}
            <div class="content_middle" id="info">
                <i class="icon2"></i><span>英雄介绍</span>
            </div>
            <div class="content_colum">
                <a href="index.php?c=index&a=index#info">
                    <div class="content_colum_hero"><span>英雄</span></div>
                </a>
                <a href="index.php?c=index&a=prop#info">
                    <div class="content_colum_prop"><span>局内道具</span></div>
                </a>
                <a href="index.php?c=index&a=skill#info">
                    <div class="content_colum_skill"><span>召唤师技能</span></div>
                </a>
            </div>
            <div class="content_bottom">
                <div class="content_bottom_list">
                    <div class="content_bottom_list_left">
                        <p>综合</p>
                        <p>定位</p>
                    </div>
                    <div class="content_bottom_list_right">
                        <div class="list1">
                            <ul>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;本周免费</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;新手推荐</li>
                            </ul>
                        </div>
                        <div class="list2">
                            <ul>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;全部</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;坦克</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;战士</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;刺客</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;法师</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;射手</li>
                                <li>
                                    <input type="radio" name="1" value="">&nbsp;&nbsp;辅助</li>
                            </ul>
                            <div class="search_hero">
                                <input class="search_input" type="text" name="" id="" placeholder="搜索英雄">
                                <input class="search_btn" type="button">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        {foreach from=$heros item=$v}
                            <li>
                                <a href=""><img src="{$v['default_face']}">{$v['Hero_name']}</a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
                </div>
{/block}