<div class="card">
    <div class="card-body">
        <h3 class="coodiv-text-6 text-center d-block mb-15">{lang key="announcementstitle"}</h3>

        <div class="announcements-group">
            {foreach $announcements as $announcement}
                <div class="announcement-item border-bottom mb-10 pb-10">
				<div class="announcment-header d-flex justify-content-between">
                    <h5 class="coodiv-text-7 mb-0">
                        <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">
                            {$announcement.title}
                        </a>
                    </h5>
					{if $announcement.editLink}
                            <a href="{$announcement.editLink}" class="btn btn-primary btn-sm px-10 rounded-20">{lang key='edit'}</a>
                    {/if}
				</div>
                <span class="badge badge-pill badge-warning coodiv-text-12 px-7">{$carbon->createFromTimestamp($announcement.timestamp)->format('jS F Y')}</span>
                <article class="coodiv-text-11 d-block mt-5 announcement-arcticle">
				{if $announcement.text|strip_tags|strlen < 350}
                    {$announcement.text}
                {else}
                    {$announcement.summary}
                {/if}
				</article>
                </div>
				
				
            {foreachelse}
                {include file="$template/includes/alert.tpl" type="info" msg="{lang key='noannouncements'}" textcenter=true}
            {/foreach}
        </div>

    </div>
</div>

{if $prevpage || $nextpage}
    <nav aria-label="Announcements navigation">
        <ul class="pagination">
            {foreach $pagination as $item}
                <li class="page-item{if $item.disabled} disabled{/if}{if $item.active} active{/if}">
                    <a class="page-link" href="{$item.link}">{$item.text}</a>
                </li>
            {/foreach}
        </ul>
    </nav>
{/if}

{if $announcementsFbRecommend}
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/{lang key='locale'}/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
{/if}
