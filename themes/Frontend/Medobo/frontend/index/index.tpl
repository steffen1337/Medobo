{extends file="parent:frontend/index/index.tpl"}
<canvas id="canvas">

</canvas>
{block name="frontend_index_page_wrap"}
    <div class="page-wrap">

        {* Message if javascript is disabled *}
        {block name="frontend_index_no_script_message"}
            <noscript class="noscript-main">
                {include file="frontend/_includes/messages.tpl" type="warning" content="{s name="IndexNoscriptNotice"}{/s}" borderRadius=false}
            </noscript>
        {/block}

        {block name='frontend_index_before_page'}{/block}

        {* Shop header *}
        {block name='frontend_index_navigation'}
            <header class="header-main">
                {* Include the top bar navigation *}
                {block name='frontend_index_top_bar_container'}
                    {include file="frontend/index/topbar-navigation.tpl"}
                {/block}

                {block name='frontend_index_header_navigation'}
                    <div class="container header--navigation">

                        {* Logo container *}
                        {block name='frontend_index_logo_container'}
                            {include file="frontend/index/logo-container.tpl"}
                        {/block}

                        {* Shop navigation *}
                        {block name='frontend_index_shop_navigation'}
                            {include file="frontend/index/shop-navigation.tpl"}
                        {/block}

                        {block name='frontend_index_container_ajax_cart'}
                            <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
                        {/block}
                    </div>
                {/block}
            </header>

            {* Maincategories navigation top *}
            {block name='frontend_index_navigation_categories_top'}
                <nav class="navigation-main">
                    <div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                        {block name="frontend_index_navigation_categories_top_include"}
                            {include file='frontend/index/main-navigation.tpl'}
                        {/block}
                    </div>
                </nav>
            {/block}
        {/block}

        {block name='frontend_index_emotion_loading_overlay'}
            {if $hasEmotion && !$hasEscapedFragment}
                <div class="emotion--overlay">
                    <i class="emotion--loading-indicator"></i>
                </div>
            {/if}
        {/block}

        {block name='frontend_index_content_main'}
            <section class="content-main container block-group">

                {* Breadcrumb *}
                {block name='frontend_index_breadcrumb'}
                    {if count($sBreadcrumb)}
                        <nav class="content--breadcrumb block">
                            {block name='frontend_index_breadcrumb_inner'}
                                {include file='frontend/index/breadcrumb.tpl'}
                            {/block}
                        </nav>
                    {/if}
                {/block}

                {* Content top container *}
                {block name="frontend_index_content_top"}{/block}

                <div class="content-main--inner">
                    {* Sidebar left *}
                    {block name='frontend_index_content_left'}
                        {include file='frontend/index/sidebar.tpl'}
                    {/block}

                    {* Main content *}
                    {block name='frontend_index_content_wrapper'}
                        <div class="content--wrapper">
                            {block name='frontend_index_content'}{/block}
                        </div>
                    {/block}

                    {* Sidebar right *}
                    {block name='frontend_index_content_right'}{/block}

                    {* Last seen products *}
                    {block name='frontend_index_left_last_articles'}
                        {if $sLastArticlesShow && !$isEmotionLandingPage}
                            {* Last seen products *}
                            <div class="last-seen-products is--hidden" data-last-seen-products="true">
                                <div class="last-seen-products--title">
                                    {s namespace="frontend/plugins/index/viewlast" name='WidgetsRecentlyViewedHeadline'}{/s}
                                </div>
                                <div class="last-seen-products--slider product-slider" data-product-slider="true">
                                    <div class="last-seen-products--container product-slider--container"></div>
                                </div>
                            </div>
                        {/if}
                    {/block}
                </div>
            </section>
        {/block}

        {* Footer *}
        {block name="frontend_index_footer"}
            <footer class="footer-main">
                <div class="container">
                    {block name="frontend_index_footer_container"}
                        {include file='frontend/index/footer.tpl'}
                    {/block}
                </div>

                <div class="newsletter-block">
                    <div class="container">
                        <div class="footer-headline">
                            {block name="frontend_index_footer_column_information_menu"}
                                <div class="headline is--uppercase">{s name="FooterNewsletterInfoHeadline"}Newsletter-Anmeldung{/s}</div>
                                <div class="headline-info-desc">{s name="sFooterNewsletter_Medobo"}Abonnieren Sie den kostenlosen Medobo Newsletter und verpassen Sie keine Neuigkeit oder Aktionen mehr!{/s}</div>
                            {/block}
                        </div>
                        <div class="email-message">
                            {block name="frontend_index_footer_column_newsletter_form"}
                                <form class="newsletter--form" action="{url controller='newsletter'}" method="post">
                                    <input type="hidden" value="1" name="subscribeToNewsletter" />

                                    {block name="frontend_index_footer_column_newsletter_form_field"}
                                        <input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}Geben Sie hier Ihre E-Mail Adresse ein.{/s}"/>
                                    {/block}

                                    {block name="frontend_index_footer_column_newsletter_form_submit"}
                                        <button type="submit" class="newsletter--button btn is--secondary">
                                            <span class="mail-text">Absenden</span>
                                            <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
                                        </button>
                                    {/block}
                                </form>
                            {/block}
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="footer--bottom">
                        {* Vat info *}
                        {block name='frontend_index_footer_vatinfo'}
                            <div class="footer--bottom-column block copyright">
                                <p class="vat-info--text-copy">
                                    {s name='FooterInfoCopy' namespace="frontend/index/footer"}© 2017 - Medobo{/s}
                                </p>
                            </div>
                            <div class="footer--vat-info">
                                <p class="vat-info--text">
                                    {if $sOutputNet}
                                        {s name='FooterInfoExcludeVat' namespace="frontend/index/footer"}{/s}
                                    {else}
                                        {s name='FooterInfoIncludeVat' namespace="frontend/index/footer"}{/s}*
                                    {/if}
                                </p>
                            </div>
                        {/block}
                    </div>
                </div>
            </footer>
        {/block}

        {block name='frontend_index_body_inline'}{/block}
    </div>
{/block}
