{extends file="parent:frontend/index/search.tpl"}
{* Search input *}
{block name='frontend_index_search_field_submit'}
    <button type="submit" class="main-search--button">

        {* Search icon *}
        {block name='frontend_index_search_field_submit_icon'}
            <i class="btn-main lnr lnr-magnifier"></i>
        {/block}

        {* Search text *}
        {block name='frontend_index_search_field_submit_text'}
            <span class="main-search--text">{s name="IndexSearchFieldSubmit"}{/s}</span>
        {/block}
    </button>
{/block}