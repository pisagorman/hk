
<h5 class="coodiv-text-6 text-center d-block mb-10 mt-5">{lang key='knowledgebase'}</h5>

<form role="form" method="post" action="{routePath('knowledgebase-search')}" class="mb-10">
    <div class="input-group input-group-lg kb-search">
        <input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control font-weight-light kb-searchinput" placeholder="{lang key='clientHomeSearchKb'}" />
        <div class="input-group-append">
            <button type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive kb-searchbutton">
                {lang key='search'}
            </button>
        </div>
    </div>
</form>

{if $kbcats}
    <div class="row justify-content-center">
        {foreach $kbcats as $category}
            <div class="col-md-4 col-12">
                <div class="mb-4 border rounded-10 px-8 py-8">
				<div class="kb-box-header d-flex justify-content-center mb-8">
                    <a class="coodiv-text-9 font-weight-bold" href="{routePath('knowledgebase-category-view', {$category.id}, {$category.urlfriendlyname})}" data-id="{$category.id}">
                    {$category.name}
					<span class="badge badge-warning coodiv-text-12 font-weight-light rounded-20 px-7 d-block">
                    {lang key="knowledgebase.numArticle{if $category.numarticles != 1}s{/if}" num=$category.numarticles}
                    </span>
					</a>
				</div>
                <p class="m-0 coodiv-text-10 text-center">{$category.description}</p>
                
                    {if $category.editLink}
                    <button class="btn-sm btn btn-primary coodiv-text-11 d-block w-100 rounded-20 mt-7" id="btnEditCategory-{$category.id}" data-url="{$category.editLink}" type="button">
                        {lang key="edit"}
                    </button>
                    {/if}				
                </div>
            </div>
        {/foreach}
    </div>
{else}
    {include file="$template/includes/alert.tpl" type="info" msg="{lang key='knowledgebasenoarticles'}" textcenter=true}
{/if}

