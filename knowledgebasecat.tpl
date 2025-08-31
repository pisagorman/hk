<h5 class="coodiv-text-6 text-center d-block mb-10 mt-5">{lang key='knowledgebase'}
<span class="d-block coodiv-text-10 color-blackish-blue-opacity">
{lang key='knowledgebasearticles'}
</span>
</h5>


<form role="form" method="post" action="{routePath('knowledgebase-search')}" class="mb-10">
    <div class="input-group input-group-lg kb-search">
        <input type="text"  id="inputKnowledgebaseSearch" name="search" class="form-control font-weight-light kb-searchinput" placeholder="{lang key='clientHomeSearchKb'}" value="{$searchterm}" />
        <div class="input-group-append">
            <button type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive kb-searchbutton">
                {lang key='search'}
            </button>
        </div>
    </div>
</form>

{if $kbcats}
    <div class="row justify-content-start">
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
{/if}

{if $kbarticles || !$kbcats}
    <div class="kbcats">
        <div class="kbcats-list">
            {foreach $kbarticles as $kbarticle}
                <a class="border rounded-20 d-flex justify-content-between align-items-center w-100 px-8 py-8 mb-5" href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" data-id="{$kbarticle.id}">
					
					<div class="d-flex align-items-baseline">
					<i class="fal fa-file-alt fa-fw text-black-50 mr-4"></i>
                    <h5 class="coodiv-text-7">
					{$kbarticle.title}
					<small class="d-block coodiv-text-11 color-blackish-blue-opacity">{$kbarticle.article|truncate:100:"..."}</small>
					</h5>
					</div>
					
					
                    
					{if $kbarticle.editLink}
                        <button class="btn-sm btn btn-primary coodiv-text-11 rounded-20 px-10" id="btnEditArticle-{$kbarticle.id}" data-url="{$kbarticle.editLink}" type="button">
                            {lang key="edit"}
                        </button>
                    {/if}
                </a>
            {foreachelse}
                <div class="list-group-item">
                    {lang key='knowledgebasenoarticles'}
                </div>
            {/foreach}
        </div>
    </div>
{/if}


<div class="kb-footer d-flex justify-content-between mx-5 mt-10 mb-10">
<a href="javascript:history.go(-1)" class="btn btn-light rounded-20">
    {lang key='clientareabacklink'}
</a>

{if $kbcurrentcat.editLink}
    <a href="{$kbcurrentcat.editLink}" class="btn btn-primary rounded-20">
        <i class="fas fa-pencil-alt fa-fw"></i>
        {lang key='edit'}
    </a>
{/if}
</div>



