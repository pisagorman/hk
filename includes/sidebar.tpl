{foreach $sidebar as $item}
            <div menuItemName="{$item->getName()}" class="nav-elements-box {if $templatefile == 'viewticket'}{else}d-flex align-items-center{/if} {if $item->getClass()} {$item->getClass()}{/if}" {if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>

            <h3 class="coodiv-text-12 nav-title mb-0 pr-4 pl-2">
                {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                {$item->getLabel()}
                {if $item->hasBadge()}&nbsp;<span class="badge float-right">{$item->getBadge()}</span>{/if}
            </h3>
			
			


            {if $item->hasChildren()}
                    {foreach $item->getChildren() as $childItem}
                        {if $childItem->getUri()}
                            <a menuItemName="{$childItem->getName()}"
                               href="{$childItem->getUri()}"
                               class="nav-link list-group-item {if $childItem->isDisabled()} disabled{/if}{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"
                               {if $childItem->getAttribute('dataToggleTab')}
                                   data-toggle="list" role="tab"
                               {/if}
                               {assign "customActionData" $childItem->getAttribute('dataCustomAction')}
                               {if is_array($customActionData)}
                                   data-active="{$customActionData['active']}"
                                   data-identifier="{$customActionData['identifier']}"
                                   data-serviceid="{$customActionData['serviceid']}"
                               {/if}
                               {if $childItem->getAttribute('target')}
                                   target="{$childItem->getAttribute('target')}"
                               {/if}
                               id="{$childItem->getId()}"
                            >
                                {if is_array($customActionData)}<span class="loading hidden w-hidden" style="display: none;"><i class="fas fa-spinner fa-spin"></i></span>{/if}
							 {if $childItem->hasBadge()}<span class="badge badge-warning mr-2">{$childItem->getBadge()}</span>{/if}
                                {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>{/if}
                                {$childItem->getLabel()}
                            </a>
                        {else}
                            <div menuItemName="{$childItem->getName()}" class="html-box-headernav {if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                {if $childItem->hasBadge()}<span class="badge float-right">{$childItem->getBadge()}</span>{/if}
                                {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>{/if}
                                {$childItem->getLabel()}
                            </div>
                        {/if}
                    {/foreach}
            {/if}
		
		{if $item->hasFooterHtml()}
            <div class="panel-footer clearfix mr-8">
                {$item->getFooterHtml()}
            </div>
        {/if}
		</div>
{/foreach}
