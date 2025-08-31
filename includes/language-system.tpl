<div class="header-lang dropdown show position-static coodiv-z-index-1">
    <a class="coodiv-text-11 btn-header-lang position-relative" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	<div class="footer__language__container d-inline-block align-middle">
		<img src="{$WEB_ROOT}/templates/{$template}/img/flags/{$activeLocale.language}.svg" class="headerflags" alt="{$locale.localisedName}">
	</div>
	<span class="text-uppercase">{if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}</span> 
	</a>

    <div class="header-lang-container dropdown-menu px-lg-15 pb-lg-15 pb-8 pt-4 px-8 overflow-scroll-y" aria-labelledby="dropdownMenuLink">
        <div class="row justify-content-between align-items-center mb-5">
            <div class="col-lg-4 col-md-8">
                <form action="">
                    <div class="form-group position-relative mb-md-0 mb-5">
                        <input class="form-control coodiv-text-9 border rounded-8" type="text" onkeyup="FilterLanguageHeader()" id="lang-search-input" placeholder="Please entree your language" />
                    </div>
                </form>
            </div>
			
            <div class="col-lg-4 d-block d-md-flex justify-content-end align-items-center text-center">
				<a href="#" class="activecurrency-header-btn mt-lg-0 mt-3 btn btn-info white-text rounded-8 btn-auto-min-width" data-toggle="modal" data-target="#modalChooseLanguage">
					{$activeCurrency.prefix} {$activeCurrency.code}
				</a>
            </div>
        </div>
        <div class="white-bg border rounded-20 px-10 py-10 lang-box-container">
            <div class="lang-box-title position-relative coodiv-text-9 d-block color-blackish-blue font-weight-bold mb-7"><span>{lang key="chooselanguage"}</span></div>
            <div id="lang-box-ul" class="row justify-content-start">
			{foreach $locales as $locale}
			<li class="col-md-4 col-lg-3">
                <a href="{$currentpagelinkback}language={$locale.language}" class="item lang-box-item coodiv-text-9 font-weight-bold d-flex align-items-center {if $language == $locale.language} active{/if}" data-value="{$locale.language}">
				<img src="{$WEB_ROOT}/templates/{$template}/img/flags/{$locale.language}.svg" class="headerflags" alt="{$locale.localisedName}">
				{$locale.localisedName} <small>{$locale.language}</small>
                </a>
			</li>
            {/foreach}
            </div>
        </div>
    </div>
</div>
