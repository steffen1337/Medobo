{namespace name="frontend/index/menu_footer"}


{block name="frontend_index_footer_column_service_menu"}
    <div class="footer--column column--menu block">
        <div class="column--headline headline-main">{s name="sFooterShopNavi1"}{/s}</div>

        {block name="frontend_index_footer_column_service_menu_content"}
            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">
                    {block name="frontend_index_footer_column_service_menu_before"}{/block}
                    {foreach $sMenu.gBottom as $item}

                        {block name="frontend_index_footer_column_service_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link"
                                   href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}"
                                   title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link"
                                                   href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}"
                                                   title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}
                </ul>
            </nav>
        {/block}
        <div class="column--headline social">{s name="socialMedia"}Social Media{/s}</div>

        <div class="column--content">
            <ul class="socialList">
                <li>{s name="footerSocialFacebookLink-f"}
                        <a href="http://www.facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    {/s}
                </li>
                <li>{s name="footerSocialPinterest"}
                        <a href="https://pinterest.com/"><i class="fa fa-pinterest-p" target="_blank"></i></a>
                    {/s}
                </li>
                <li><a href="whatsapp://send?abid="><i class="fab fa-whatsapp" target="_blank"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram" target="_blank"></i></a></li>
            </ul>
        </div>
    </div>
{/block}



        {block name="frontend_index_footer_column_service_hotline_content"}{/block}


{* Hilfe und Support *}
{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu block">
        <div class="column--headline headline-main">{s name="sFooterShopNavi2"}{/s}</div>

        {block name="frontend_index_footer_column_information_menu_content"}
            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">
                    {block name="frontend_index_footer_column_information_menu_before"}{/block}
                    {foreach $sMenu.gBottom2 as $item}

                        {block name="frontend_index_footer_column_information_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link"
                                   href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}"
                                   title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link"
                                                   href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}"
                                                   title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}
                    {block name="frontend_index_footer_column_information_menu_after"}{/block}
                </ul>
            </nav>
        {/block}
    </div>
{/block}

{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu block">
        <div class="column--headline">{s name="payEasy"}Bequem bezahlen{/s}</div>
        <div class="column--content">
            <ul class="paymentListFooter clearfix">
                <li>
                    <a class="payment-icon" href="{url controller=custom sCustom=6}">
                        <img src="{link file="frontend/_public/src/img/icons/pay/paypal.png"}"/>
                    </a>
                </li>
                <li>
                    <a class="payment-icon" href="{url controller=custom sCustom=6}">
                        <img src="{link file="frontend/_public/src/img/icons/pay/klarna.png"}"/>
                    </a>
                </li>
                <li>
                    <a class="payment-icon" href="{url controller=custom sCustom=6}">
                        <img src="{link file="frontend/_public/src/img/icons/pay/pay_now.png"}"/>
                    </a>
                </li>
                <li>
                    <a class="payment-icon" href="{url controller=custom sCustom=6}">
                        <img src="{link file="frontend/_public/src/img/icons/pay/MasterCard.png"}"/>
                    </a>
                </li>
                <li>
                    <a class="payment-icon" href="{url controller=custom sCustom=6}">
                        <img src="{link file="frontend/_public/src/img/icons/pay/Visa.png"}"/>
                    </a>
                </li>
            </ul>
        </div>
        <div class="column--headline clearfix">{s name="deliveryWith"}Versand mit{/s}</div>
        <div class="column--content">
            <ul class="deliveryListFooter clearfix">
                <li><a href="{url controller=custom sCustom=6}"><img src="{link file='frontend/_public/src/img/footer-dhl-badge.png'}"/></a></li>
                {*<li><a href="{url controller=custom sCustom=6}"><img src="{link file='frontend/_public/src/img/footer-ups-badge.png'}"/></a></li>*}
            </ul>
        </div>
    </div>
{/block}

{block name="frontend_index_footer_column_service"}
    <div class="footer--column column--menu block">
    <div class="column--headline">{s name="service"}Service Hotline{/s}</div>
        <div class="column--content">
            <i class="icon icon--phone green"></i>
            <p class="column--desc">Telefonische Unterstützung und Beratung unter:<br><br><a href="tel:+49717330230" class="footer--phone-link">01253 - 550 330</a><br>Mo-Fr, 09:00 - 17:00 Uhr</p>
            <i class="icon icon--mail grey"></i>
            <p class="column--desc"><a href="mailto:info@medobo.de">info@medobo.de</a></p>
        </div>
    </div>
{/block}