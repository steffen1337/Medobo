{* Notepad entry *}
{block name="frontend_index_checkout_actions_notepad"}

    <li class="trust-steps">
        <img alt="haendlerbund"
             src="{link file="frontend/_public/src/img/haendlerbund.png"}"/>
    </li>


    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='note'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}"|escape}" class="btn-main">
            <i class="lnr lnr-heart" aria-hidden="true"></i>
            <span class="account--display">
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}
            </span>
            {if $sNotesQuantity > 0}
                <span class="badge notes--quantity">
                    {$sNotesQuantity}
                </span>
            {/if}
        </a>
    </li>
{/block}

{* My account entry *}
{block name="frontend_index_checkout_actions_my_options"}
    <li class="navigation--entry entry--account" role="menuitem">
        {block name="frontend_index_checkout_actions_account"}
            <a href="{url controller='account'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}" class="btn-main is--icon-left entry--link">
                <i class="lnr lnr-user" aria-hidden="true"></i>
                <span class="account--display">
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}Mein Konto{/s}
                </span>
            </a>
        {/block}
    </li>
{/block}

{* Cart entry *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        <a class="btn-main is--icon-left" href="{url controller='checkout' action='cart'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}"|escape}">
            <span class="cart--display">
                {if $sUserLoggedIn}
                    {s name='IndexLinkCheckout' namespace='frontend/index/checkout_actions'}{/s}
                {else}
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}
                {/if}
            </span>

            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>
            <span class="cart-basket">
                <i class="lnr lnr-cart" aria-hidden="true"></i>

                {*<span class="cart--amount">*}
                    {*{$sBasketAmount|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}*}
                {*</span>*}
            </span>
            <span class="account--display">
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}
            </span>
        </a>
        <div class="ajax-loader">&nbsp;</div>
    </li>
{/block}

{block name="frontend_index_checkout_actions_inner"}{/block}