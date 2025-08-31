{if $opencount == 0}
    <div class="alert alert-success">
        <i class="fas fa-check fa-fw"></i>
        {"{lang key='networkstatusnone'}"|sprintf:"{lang key='networkissuesstatusopen'}"}
    </div>
{/if}

{if $scheduledcount > 0}
    <div class="alert alert-info">
        <i class="fas fa-exclamation-triangle fa-fw"></i>
        {lang key='networkIssues.scheduled' count=$scheduledcount}
        <a href="serverstatus.php?view=scheduled" class="alert-link">{lang key='learnmore'}...</a>
    </div>
{/if}

{if $servers}
    <div class="card">
        <div class="card-body">
            <h3>{lang key='serverstatustitle'}</h3>

            <p>{lang key='serverstatusheadingtext'}</p>

            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>{lang key='servername'}</th>
                            <th class="text-center">{lang key='networkIssues.http'}</th>
                            <th class="text-center">{lang key='networkIssues.ftp'}</th>
                            <th class="text-center">{lang key='networkIssues.pop3'}</th>
                            <th class="text-center">{lang key='serverstatusphpinfo'}</th>
                            <th class="text-center">{lang key='serverstatusserverload'}</th>
                            <th class="text-center">{lang key='serverstatusuptime'}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $servers as $num => $server}
                            <tr>
                                <td>{$server.name}</td>
                                <td class="text-center" id="port80_{$num}">
                                    <span class="fas fa-spinner fa-spin"></span>
                                </td>
                                <td class="text-center" id="port21_{$num}">
                                    <span class="fas fa-spinner fa-spin"></span>
                                </td>
                                <td class="text-center" id="port110_{$num}">
                                    <span class="fas fa-spinner fa-spin"></span>
                                </td>
                                <td class="text-center"><a href="{$server.phpinfourl}" target="_blank">{lang key='serverstatusphpinfo'}</a></td>
                                <td class="text-center" id="load{$num}">
                                    <span class="fas fa-spinner fa-spin"></span>
                                </td>
                                <td class="text-center" id="uptime{$num}">
                                    <span class="fas fa-spinner fa-spin"></span>
                                    <script>
                                    jQuery(document).ready(function() {
                                        checkPort({$num}, 80);
                                        checkPort({$num}, 21);
                                        checkPort({$num}, 110);
                                        getStats({$num});
                                    });
                                    </script>
                                </td>
                            </tr>
                        {foreachelse}
                            <tr>
                                <td colspan="7">{lang key='serverstatusnoservers'}</td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
{/if}

{foreach $issues as $issue}
    <div class="server-status">
	
	
        <div class="server-status-title border rounded-20 px-8 py-8 d-flex justify-content-between mb-2 align-items-center">
            <h5 class="coodiv-text-10 mb-0">
			{$issue.title}
            <span class="d-block coodiv-text-12">({$issue.status})</span>
			</h5>
            <span id="issuePriorityLabel" class="px-8 py-2 rounded-20 badge badge-{if $issue.rawPriority == 'Critical'}danger{elseif $issue.rawPriority == 'High'}warning{elseif $issue.rawPriority == 'Low'}success{else}info{/if}">{$issue.priority}</span>
        </div>
		
		
        <div class="card-body">
            {if $issue.server || $issue.affecting}
                    <h5 class="coodiv-text-8 mb-0 text-center">
					{lang key='networkissuesaffecting'} {$issue.type} - 
					<small>{if $issue.type eq "{lang key='networkissuestypeserver'}"}
                        {$issue.server}
                    {else}
                        {$issue.affecting}
                    {/if}
					</small>
					</h5>
                    
            {/if}
			
			<div class="announcement-ifonrmations d-flex justify-content-center mb-10">
			<span>{$issue.startdate}{if $issue.enddate} - {$issue.enddate}{/if} {lang key='networkissueslastupdated'} {$issue.lastupdate}</span>
			</div>
			
			
            {if $issue.clientaffected}
                <div class="alert alert-warning p-1 text-center">
                    {lang key='networkIssues.affectingYou'}
                </div>
            {/if}
            <article class="py-5 coodiv-text-11 announcement-arcticle text-center">
                {$issue.description}
            </article>
        </div>
    </div>
{foreachelse}
    <p>{$noissuesmsg}</p>
{/foreach}

<nav aria-label="Network issues navigation">
    <ul class="pagination d-flex justify-content-center">
        <li class="page-item{if !$prevpage} disabled{/if}"><a class="page-link" href="?{if $view}view={$view}&amp;{/if}page={$prevpage}">{lang key='previouspage'}</a></li>
        <li class="page-item{if !$nextpage} disabled{/if}"><a class="page-link" href="?{if $view}view={$view}&amp;{/if}page={$nextpage}">{lang key='nextpage'}</a></li>
    </ul>
</nav>
