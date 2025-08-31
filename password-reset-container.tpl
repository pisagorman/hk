<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Bredh flat responsive HTML & WHMCS hosting and domains template">
    <meta name="author" content="coodiv.net (nedjai mohamed)">
    <link rel="canonical" href="https://coodiv.net/blog/"/>
    <link rel="icon" href="favicon.ico">
    <meta property="og:locale" content="tr_TR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Hosting ve Domain Servisleri" />
    <meta property="og:description" content="Güçlü hosting ve domain hizmetlerimizle tanışın." />
    <meta property="og:url" content="https://www.speed.net.tr/" />
    <meta property="og:site_name" content="Speed Hosting Hizmetleri Ltd. Şti." />
    <meta property="og:image" content="https://www.speed.net.tr/placeholder.jpg" />
    <meta property="og:image:width" content="1800" />
    <meta property="og:image:height" content="900" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@speednettr" />
	
    <!-- Bootstrap ve temel stil dosyaları -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="css/main.min.css" rel="stylesheet" />

    <!-- WHMCS Template için ek başlık -->
    {if $systemsslurl}
        <base href="{$systemsslurl}" />
    {/if}
</head>

<body>
    <!-- WHMCS'nin varsayılan header ve breadcrumb'larını gizleme -->
    {literal}
    <style>
        #coodiv-header { display: none !important; }
        .breadcrumb { display: none !important; }
        table { display: none !important; }
        .fieldarea { border: none !important; padding: 0 !important; }
    </style>
    {/literal}

    <!-- Minimalist Kapsayıcı ve Form -->
    <div class="container-fluid bg-default-2 full-page-login-screen">
        <div class="main-signup-row row justify-content-center">
            <div class="col-12">
                <div class="main-signup-block row justify-content-center">
                    <div class="col-lg-4 col-md-6 col-12 px-lg-3">
                        <div class="brand-logo text-center mb-3 mt-10">
                            <a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/image/logo-main-black.png" alt="Logo" style="height: 40px;" /></a>
                        </div>
                        <div class="form-holder my-11" style="border: none !important; box-shadow: none !important; background: transparent !important; padding: 0 !important;">
                            <div class="form-items">
                                {if $loggedin && $innerTemplate}
                                    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='noPasswordResetWhenLoggedIn'}" textcenter=true}
                                {else}
                                    {if $successMessage}
                                        <div class="modpack-box-header" style="text-align: center; margin-bottom: 1rem;">
                                            <h5 class="mb-0">{lang key='pwreset'}</h5>
                                        </div>
                                        {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                                        <div class="success-box">
                                            <p class="sub-title coodiv-text-12 text-center mb-0">{$successMessage}</p>
                                        </div>
                                        <div class="text-center mt-3">
                                            <a href="{$WEB_ROOT}/index.php" class="btn btn-primary">Ana Sayfa</a>
                                        </div>
                                    {else}
                                        {if $innerTemplate}
                                            {include file="$template/password-reset-$innerTemplate.tpl"}
                                        {/if}
                                    {/if}
                                {/if}
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        <p class="mb-0 coodiv-text-12 text-center">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Stil ve WHMCS Stillerini Sıfırlama -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #fff;
            color: #1f2937;
        }

        .container-fluid, .main-signup-row, .main-signup-block, .col-lg-4, .col-md-6, .col-12, .form-holder {
            border: none !important;
            box-shadow: none !important;
            background: transparent !important;
            padding: 0 !important;
        }

        .brand-logo img {
            height: 40px;
        }

        .modpack-box-header {
            text-align: center;
            margin-bottom: 1rem;
        }

        .modpack-box-header h5 {
            font-size: 1.25rem;
            font-weight: 700;
            color: #f97316;
        }

        .sub-title {
            font-size: 0.9rem;
            color: #6b7280;
            margin-top: 0.5rem;
        }

        .form-group {
            margin-bottom: 0.75rem;
        }

        .custom-form-control {
            border: 1px solid #d1d5db;
            border-radius: 6px;
            padding: 0.5rem 0.75rem;
            font-size: 0.9rem;
            transition: border-color 0.2s;
            width: 100%;
            box-sizing: border-box;
        }

        .custom-form-control:focus {
            border-color: #14b8a6;
            outline: none;
        }

        .btn-primary {
            background: #f97316;
            border: none;
            border-radius: 6px;
            padding: 0.75rem 1.5rem;
            font-size: 0.9rem;
            font-weight: 600;
            transition: background 0.2s;
            text-decoration: none;
            color: #fff;
            display: inline-block;
        }

        .btn-primary:hover {
            background: #ea580c;
            color: #fff;
        }

        .coodiv-text-12 {
            font-size: 0.9rem;
            color: #6b7280;
        }

        /* Yalnızca çerçevesi turuncu olan başarı kutusu stili */
        .success-box {
            border: 2px solid #f97316;
            background-color: transparent;
            color: #6b7280;
            border-radius: 6px;
            padding: 0.75rem 1rem;
            margin: 1rem 0;
            text-align: center;
        }

        /* Gereksiz elemanları gizleme */
        .separte-or, .social-login-group, .form-bottom, .password-strength-meter, .alert {
            display: none !important;
        }

        /* WHMCS'nin eklediği çerçeve ve gölgeleri sıfırlama */
        .container, .row, .col-12, .col-md-9, .login-form {
            border: none !important;
            box-shadow: none !important;
            background: transparent !important;
            padding: 0 !important;
        }
    </style>

    <!-- Gerekli JS Dosyaları -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
    <script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
</body>
</html>