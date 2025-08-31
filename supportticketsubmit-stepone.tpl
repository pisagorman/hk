<div class="card">
    <div class="card-body extra-padding">

        <div class="mb-4 text-center">
            <h3 class="card-title">{lang key="createNewSupportRequest"}</h3>
            <p class="text-muted mb-0">{lang key='supportticketsheader'}</p>
        </div>

        <div class="row mt-10 justify-content-start">
                {foreach $departments as $num => $department}
				<div class="col-md-4 col-sm-12">
				<div class="border rounded-10 px-7 pt-6 pb-8 mb-5">
                        <a class="coodiv-text-8 color-blackish-blue mt-0" href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}">
                        {$department.name}
                        </a>
                    {if $department.description}
                        <p class="coodiv-text-11 color-blackish-blue-opacity mb-0">{$department.description}</p>
                    {/if}
				</div>
				</div>
                {foreachelse}
                    {include file="$template/includes/alert.tpl" type="info" msg="{lang key='nosupportdepartments'}" textcenter=true}
                {/foreach}
        </div>

    </div>
</div>
