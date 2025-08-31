<!-- Styling -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/bootstrap.css" />
{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/bootstrap.rtl.min.css" />
{/if}
<!-- Plugin'stylesheets  -->
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/nice-select/nice-select.min.css" />
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/flickity/flickity.min.css" />
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/aos/aos.min.css" />
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/slick/slick.min.css" />

<!-- fonts & icons  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">

		
		
<!-- Main Theme Stylesheets  -->
{assetExists file="main.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
{assetExists file="whmcs.theme.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
{if ($language == 'arabic' || $language == 'hebrew' || $language == 'farsi')}
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/rtl.css" />
{/if}
<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
		whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
		{if $captcha}{$captcha->getPageJs()} {/if}
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}