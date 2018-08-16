{extends file="parent:frontend/index/main-navigation.tpl"}

{block name='frontend_index_navigation_categories_top_home'}
    <li class="navigation--entry{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} is--active{/if} is--home" role="menuitem">
        {block name='frontend_index_navigation_categories_top_link_home'}
            <a class="navigation--link is--first{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} active{/if}" href="{url controller='index'}" title="{s name='IndexLinkHome' namespace="frontend/index/categories_top"}{/s}" itemprop="url">
                <i class="fa fa-home"></i>
            </a>
        {/block}
    </li>
{/block}

{block name='frontend_index_navigation_categories_top_entry'}
    {if !$sCategory.hidetop}
        <li class="navigation--entry{if $sCategory.flag} is--active{/if}" role="menuitem">
            <a class="navigation--link{if $sCategory.flag} is--active{/if}" href="{if $sCategory.attribute.coe_menutopdontclickable}#{else}{$sCategory.link}{/if}" title="{$sCategory.description}" itemprop="url">
                <span itemprop="name">{$sCategory.description}</span>
            </a>
        </li>
    {/if}
{/block}