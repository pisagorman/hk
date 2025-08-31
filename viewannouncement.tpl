<div class="card">
    <div class="card-body extra-padding">
        <h3 class="coodiv-text-6 text-center d-block">
            {$title}
            {if $twittertweet}
                <div class="d-block">
                    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-size="large" data-via="{$twitterusername}">
                    Tweet
                    </a>
                    <script src="https://platform.twitter.com/widgets.js"></script>
                </div>
            {/if}
        </h3>
		<div class="announcement-ifonrmations d-flex justify-content-center mb-10">
		<span>{$carbon->createFromTimestamp($timestamp)->format('l, jS F, Y')} at {$carbon->createFromTimestamp($timestamp)->format('H:ia')}</span>
		</div>


        <div class="py-5 coodiv-text-11 announcement-arcticle">
            {$text}
        </div>

        {if $facebookrecommend}
            <div id="fb-root"></div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
            </div>
        {/if}
    </div>
</div>

{if $facebookcomments}
    <div class="card">
        <div class="card-body p-5">
            <div id="fb-root">
            </div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="100%"></fb:comments>
        </div>
    </div>
{/if}

<div class="announcement-footer d-flex justify-content-between mx-10 mb-10">
<a href="{routePath('announcement-index')}" class="btn btn-light rounded-20">
    {lang key='clientareabacklink'}
</a>

{if $editLink}
    <a href="{$editLink}" class="btn btn-primary rounded-20">
        {lang key='edit'}
    </a>
{/if}
</div>
