{if $kbarticle.voted}
    {include file="$template/includes/alert.tpl" type="success alert-bordered-left" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
{/if}

<div class="card">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center">
        <h5 class="coodiv-text-8">{$kbarticle.title}</h5>
        <a href="#" class="btn btn-warning btn-sm rounded-20 px-10 coodiv-text-12 py-2" onclick="window.print();return false">
            <i class="fas fa-print"></i>
            {lang key='print'}
        </a>
		</div>
		

        <ul class="list-inline">
            {if $kbarticle.tags}
                <li class="list-inline-item pr-3">
                    <span class="badge badge-pill badge-info">
                        <i class="fas fa-code mr-1"></i>
                        {$kbarticle.tags}
                    </span>
                </li>
            {/if}
            <li class="list-inline-item text-sm pr-3 text-muted"><i class="fas fa-thumbs-up mr-2"></i>{$kbarticle.useful}</li>
        </ul>


        <article class="announcement-arcticle">
            {$kbarticle.text}
        </article>

        {if !$kbarticle.voted}
			<div class="d-flex justify-content-end align-items-center mt-10">
            <h4 class="coodiv-text-10 mb-0 mr-8">{lang key='knowledgebasehelpful'}</h4>
            <form action="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" method="post" class="d-flex justify-content-between">
                <input type="hidden" name="useful" value="vote">
                <div>
                    <button class="btn btn-sm btn-secondary px-4" type="submit" name="vote" value="yes">
                        <i class="fas fa-thumbs-up"></i>
                        {lang key='knowledgebaseyes'}
                    </button>
                    <button class="btn btn-sm btn-secondary px-4" type="submit" name="vote" value="no">
                        <i class="fas fa-thumbs-down"></i>
                        {lang key='knowledgebaseno'}
                    </button>
                </div>
            </form>
			</div>
        {/if}

    </div>
</div>

{if $kbarticles}

    <h3 class="coodiv-text-10 text-center mb-3">
        {lang key='knowledgebaserelated'}
    </h3>
		
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

{if $kbarticle.editLink}
    <a href="{$kbarticle.editLink}" class="btn btn-primary rounded-20">
        {lang key='edit'}
    </a>
{/if}
</div>