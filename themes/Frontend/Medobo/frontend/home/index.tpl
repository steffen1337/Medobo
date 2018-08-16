{extends file='frontend/index/index.tpl'}

{block name="frontend_index_content_top"}{/block}

 {*Page title*}
{block name='frontend_index_header_title'}{strip}
    {if $sCategoryContent.metaTitle}
        {$sCategoryContent.metaTitle|escapeHtml} | {{config name=sShopname}|escapeHtml}
    {else}
        {$smarty.block.parent}
    {/if}
{/strip}{/block}

 {*Google optimized crawling*}
{block name='frontend_index_header_meta_tags' append}
    {if $hasEmotion && !$hasEscapedFragment}
        <meta name="fragment" content="!">
    {/if}
{/block}

 {*Canonical URL*}
{block name='frontend_index_header_canonical'}
    <link rel="canonical" href="{url controller='index'}" />
{/block}

 {*Main content*}
{block name='frontend_index_content'}
    <div class="content content--home">

        {block name='frontend_home_index_banner'}
             {*Banner*}
            {include file='frontend/listing/banner.tpl'}
        {/block}

        {block name='frontend_home_index_text'}
             {*Category headline*}
            {if !$hasEmotion}
                {include file='frontend/listing/text.tpl'}
            {/if}
        {/block}


        {*Promotion*}
        {block name='frontend_home_index_promotions'}
            {if $hasEmotion}
                <div class="content--emotions">
                    {foreach $emotions as $emotion}
                        {if $hasEscapedFragment}
                            {if 0|in_array:$emotion.devicesArray}
                                <div class="emotion--fragment">
                                    {action module=widgets controller=emotion action=index emotionId=$emotion.id controllerName=$Controller}
                                </div>
                            {/if}
                        {else}
                            <div class="emotion--wrapper container"
                                 data-controllerUrl="{url module=widgets controller=emotion action=index emotionId=$emotion.id controllerName=$Controller}"
                                 data-availableDevices="{$emotion.devices}">
                            </div>
                        {/if}
                    {/foreach}
                </div>
            {/if}
            {*<div class="column-info-wrapper">*}
                {*<div class="s-4 column-info">*}
                    {*<a href="#">*}
                        {*<img alt="test" src="http://medobo.de/media/image/00/bc/58/floor.jpg">*}
                    {*</a>*}
                    {*<h3>*}
                        {*<a class="column--emotion-headline" href="zz">Blindtest bla</a>*}
                    {*</h3>*}
                        {*<p class="lh-20">bfauifbai iaudhad dahoih ahod hdaho adhoha dah da.</p>*}
                    {*<a class="btn is--primary button-text" href="#">Zu den Produkten</a>*}
                {*</div>*}
                {*<div class="s-4 column-info">*}
                    {*<a href="#">*}
                        {*<img alt="test" src="http://medobo.de/media/image/d6/fe/cc/floor2.png">*}
                    {*</a>*}
                    {*<h3>*}
                        {*<a class="column--emotion-headline" href="#">Blindtest bla</a>*}
                    {*</h3>*}
                    {*<p class="lh-20">bfauifbai iaudhad dahoih ahod hdaho adhoha dah da.</p>*}
                    {*<a class="btn is--primary button-text" href="#">Zu den Produkten</a>*}
                {*</div>*}
                {*<div class="s-4 column-info">*}
                    {*<a href="#">*}
                        {*<img alt="test" src="http://medobo.de/media/image/7b/46/37/floor3.png">*}
                    {*</a>*}
                    {*<h3>*}
                        {*<a class="column--emotion-headline" href="#">Blindtest bla</a>*}
                    {*</h3>*}
                    {*<p class="lh-20">bfauifbai iaudhad dahoih ahod hdaho adhoha dah da.</p>*}
                    {*<a class="btn is--primary button-text" href="#">Zu den Produkten</a>*}
                {*</div>*}
            {*</div>*}
            <div class="customer-service text-center container">
                <h2 class="headline-help">Brauchst du Hilfe?</h2>

                <a class="customer-phone" href="tel:00493092033120" rel="nofollow">
                    <img src="{link file='frontend/_public/src/img/smartphone.png'}" alt="telegram" />+49 (0) 30 920 331 20
                </a>
                <a class="customer-email" href="mailto:medobo@info.de" rel="nofollow">
                    <img src="{link file='frontend/_public/src/img/telegram.png'}" alt="telegram" />info@medobo.de
                </a>
                <a class="customer-phone" href="tel:00493092033120" rel="nofollow">
                    <img src="{link file='frontend/_public/src/img/whatsapp.png'}" alt="wp" />+49 (0) 30 920 331 20
                </a>

            </div>
        {/block}

        {block name='frontend_home_index_blog'}
             {*Blog Articles*}
            {if $sBlog.sArticles|@count}
                <div class="listing_box">
                    <h2 class="headingbox_nobg largesize">{s name='WidgetsBlogHeadline'}{/s}:</h2>
                    {foreach from=$sBlog.sArticles item=article key=key name="counter"}
                        {include file="frontend/blog/box.tpl" sArticle=$article key=$key homepage=true}
                    {/foreach}
                </div>
            {/if}
        {/block}

         {*Tagcloud*}
        {block name='frontend_home_index_tagcloud'}
            {if {config name=show namespace=TagCloud } && !$isEmotionLandingPage}
                {action module=widgets controller=listing action=tag_cloud sController=index}
            {/if}
        {/block}
    </div>
{/block}

{block name='frontend_index_left_last_articles'}{/block}
