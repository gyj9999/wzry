{extends file="layout.tpl"}
    {block name="style"}
        <link rel="stylesheet" type="text/css" href="public/css/prop.css" />        
    {/block}
{block name="content"}
            <div class="content_middle" id="info">
                <i class="icon2"></i><span>局内道具</span>
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
                    <div class="list2">
                        <ul>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;全部</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;攻击</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;法术</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;防御</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;移动</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;打野</li>
                            <li>
                                <input type="radio" name="1" id="" value="">&nbsp;&nbsp;辅助</li>
                        </ul>
                        <div class="search_hero">
                            <input class="search_input" type="text" name="" id="" placeholder="搜索英雄">
                            <input class="search_btn" type="button">
                        </div>
                    </div>
                
                </div>
                
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        {foreach from=$props item=v}
                            <li>
                                <a href="javascript:void(0);"><img src="{$v['E_img']}">{$v['E_name']}</a>
                            </li>
                        {/foreach}       
                    </ul>
                </div>
                </div>
{/block}