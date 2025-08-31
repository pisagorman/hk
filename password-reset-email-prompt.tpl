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

    <!-- Minimalist Form -->
    <section class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-9 col-12">
                    <div class="modpack-box" style="border: none !important; box-shadow: none !important; background: transparent !important; padding: 0 !important;">
                        <div class="modpack-box-header" style="text-align: center; margin-bottom: 1rem;">
                            <p class="sub-title">{lang key='pwresetemailneeded'}</p>
                        </div>
                        {if $errorMessage}
                            {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
                        {/if}

                        <div class="login-form">
                            <form method="post" action="{routePath('password-reset-validate-email')}" role="form">
                                <input type="hidden" name="action" value="reset" />

                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="inputEmail">{lang key='loginemail'}</label>
                                        <input type="email" class="form-control custom-form-control" name="email" id="inputEmail" placeholder="info@hostingkontrol.com" autofocus>
                                    </div>
                                </div>

                                {if $captcha->isEnabled()}
                                    <div class="col-12 text-center margin-bottom">
                                        {include file="$template/includes/captcha.tpl"}
                                    </div>
                                {/if}

                                <div class="col-12">
                                    <div class="form-group mt-4 text-center">
                                        <button type="submit" class="btn btn-primary w-100{$captcha->getButtonClass($captchaForm)}">
                                            {lang key='pwresetsubmit'}
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Stil ve WHMCS Stillerini Sıfırlama -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #fff;
            color: #1f2937;
        }

        .modpack-box {
            border: none !important;
            box-shadow: none !important;
            background: transparent !important;
            padding: 0 !important;
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

        .modpack-box-header .sub-title {
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
            padding: 0.75rem;
            font-size: 0.9rem;
            font-weight: 600;
            transition: background 0.2s;
        }

        .btn-primary:hover {
            background: #ea580c;
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

        /* Captcha için stil düzenlemesi */
        .margin-bottom {
            margin-bottom: 1rem;
        }
    </style>

    <!-- Gerekli JS Dosyaları -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
    <script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
</body>
</html>