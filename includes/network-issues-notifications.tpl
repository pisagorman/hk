{if $openNetworkIssueCounts.open > 0}
    <div class="alert alert-warning network-issue-alert m-0 text-center">
            <i class="fas fa-exclamation-triangle fa-fw"></i>
            {lang key='networkIssuesAware'}
            <a href="{$WEB_ROOT}/serverstatus.php" class="alert-link">
                {lang key='learnmore'}
                <i class="far fa-arrow-right"></i>
            </a>
    </div>
{elseif $openNetworkIssueCounts.scheduled > 0}
    <div class="alert alert-info network-issue-alert m-0 text-center">
            <i class="fas fa-info-circle fa-fw"></i>
            {lang key='networkIssuesScheduled'}
            <a href="{$WEB_ROOT}/serverstatus.php" class="alert-link">
                {lang key='learnmore'}
                <i class="far fa-arrow-right"></i>
            </a>
    </div>
{/if}
