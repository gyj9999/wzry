{extends file="layout.tpl"}
    {block name="style"}
        <link rel="stylesheet" type="text/css" href="public/css/skill.css" />        
    {/block}
{block name="content"}
            <div class="content_middle" id="info">
                <i class="icon2"></i><span>召唤师技能</span>
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
                       
                    </div>
                </div>
                <div class="content_bottom_hero">
                    <ul class="hero_list">
                        {foreach from=$skills item=v}
                            <li>
                                <a href="javascript:void(0);"><img src="{$v['S_img']}">{$v['S_Name']}</a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
                    
                    
                    {foreach from=$skills item=v name=skill}
                        {if $smarty.foreach.skill.index==0}
                            <div class="skill_img" style="display:block;">
                        {else}
                            <div class="skill_img" style="display:none;">
                        {/if}
                            <img src="{$v['con_img']}">
                            <div class="spell-title">
                                <h4>{$v['S_Name']}</h4>
                                <p>{$v['LV']}</p>
                            </div>
                            <div class="spell-desc">{$v['cont']}</div>
                        </div>
                    {/foreach}
                    
                
            </div>
            <script type="text/javascript">
                $(".hero_list li").click(function() {
                    var index = $(".hero_list li").index(this); //第几个技能
                    var skill = $(".skill_img")[index]; //相应的技能详情
                    var $skill = $(skill); //js转jq对象
                    $(".skill_img").css('display', 'none');
                    $skill.css('display', 'block');
                });
            </script>
{/block}
