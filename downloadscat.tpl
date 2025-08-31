<form role="form" method="post" action="{routePath('download-search')}">
    <div class="input-group input-group-lg kb-search margin-bottom">
        <input type="text" name="search" id="inputDownloadsSearch" class="form-control font-weight-light kb-searchinput" placeholder="{lang key='downloadssearch'}" value="{$search}" />
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
{/if}


        <h3 class="coodiv-text-7 text-center">
            {lang key='downloadsfiles'}
        </h3>
		
    <div class="list-group list-group-flush">
        {foreach $downloads as $download}
            <a href="{$download.link}" class="list-group-item kb-article-item">
                {$download.type|replace:'alt':' class="pr-1" alt'}
                {$download.title}
                {if $download.clientsonly}
                    <div class="float-md-right">
                        <span class="label label-danger">
                            <i class="fas fa-lock fa-fw"></i>
                            {lang key='restricted'}
                        </span>
                    </div>
                {/if}
                <small>
                    {$download.description}
                    <br>
                    <strong>{lang key='downloadsfilesize'}: {$download.filesize}</strong>
                </small>
            </a>
        {foreachelse}
            <div class="list-group-item">
                {lang key='downloadsnone'}
            </div>
        {/foreach}
    </div>
	
	
	
	

<div class="kb-footer d-flex justify-content-between mx-5 mt-10 mb-10">
<a href="javascript:history.go(-1)" class="btn btn-light rounded-20">
    {lang key='clientareabacklink'}
</a>
</div>
