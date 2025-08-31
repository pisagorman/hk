<form role="form" method="post" action="{routePath('download-search')}">
    <div class="input-group input-group-lg kb-search margin-bottom">
        <input type="text" name="search" id="inputDownloadsSearch" class="form-control font-weight-light kb-searchinput" placeholder="{lang key='downloadssearch'}" />
        <div class="input-group-append">
            <button type="submit" id="btnDownloadsSearch" class="btn btn-primary btn-input-padded-responsive kb-searchbutton">
                {lang key='search'}
            </button>
        </div>
    </div>
</form>

	{if $dlcats}
    <div class="row justify-content-center">
        {foreach $dlcats as $category}
            <div class="col-md-4 col-12">
                <div class="mb-4 border rounded-10 px-8 py-8">
				<div class="kb-box-header d-flex justify-content-center mb-8">
                    <a class="coodiv-text-9 font-weight-bold" href="{routePath('download-by-cat', {$category.id}, {$category.urlfriendlyname})}" data-id="{$category.id}">
                    {$category.name}
					<span class="badge badge-warning coodiv-text-12 font-weight-light rounded-20 px-7 d-block">
                    {lang key="downloads.numDownload{if $kbcat.numarticles != 1}s{/if}" num=$category.numarticles}
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
    {include file="$template/includes/alert.tpl" type="info" msg="{lang key='downloadsnone'}" textcenter=true}
{/if}


