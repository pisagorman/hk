<!doctype html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Bredh flat responsive HTML & WHMCS hosting and domains template">
    <meta name="author" content="coodiv.net (nedjai mohamed)">
    <link rel="canonical" href="https://hostingkontrol.com/blog/"/>
    <link rel="icon" href="favicon.ico">
    <meta property="og:locale" content="tr_TR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Hosting ve Domain Servisleri" />
    <meta property="og:description" content="Güçlü hosting ve domain hizmetlerimizle tanışın." />
    <meta property="og:url" content="https://hostingkontrol.com/" />
    <meta property="og:site_name" content="Hosting Servisleri" />
    <meta property="og:image" content="https://hostingkontrol.com/placeholder.jpg" />
    <meta property="og:image:width" content="1800" />
    <meta property="og:image:height" content="900" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@yourtwitter" />
	
	<link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="icons-pack/fontawesome-5/css/all.css" rel="stylesheet" />

    <link href="css/main.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

    {if $systemsslurl}
        <base href="{$systemsslurl}" />
    {/if}
</head>

<body style="padding-bottom: 450px;"> <div id="coodiv-header" class="d-flex mx-auto flex-column moon-edition services-page">
        <span style="background: #fdebd0;" class="services-page-bg-overflow"></span>
        <main class="container" style="padding-top: 100px;">
            <div class="row justify-content-start">
                </div>
        </main>
		
        <div class="more-services-sub-page">
            <div class="container">
                <div class="row justify-content-start">
                    <div class="col-md-9 col-12">
                        </div>
                </div>
            </div>
        </div>
    </div>
		
    <div class="container" style="margin-bottom: 0px;">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6 col-12 mb-4">
                <div class="card p-4" style="border-radius: 25px; background: linear-gradient(145deg, #1e1e2f, #2a2a3b); box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2); border: none; min-height: 500px; margin: 0 auto;">
                    {if $error}
                        <div class="alert alert-danger text-center" style="font-family: 'Inter', sans-serif; font-size: 14px;">{$error}</div>
                    {/if}
                    <h2 class="text-center mb-5 text-white" style="font-weight: 700; font-family: 'Inter', sans-serif;">Giriş Yap</h2>
                    <form action="{$systemsslurl}dologin.php?goto=clientarea" method="post">
                        <div class="mb-4 position-relative">
                            <label for="email" class="form-label text-white-50" style="font-size: 14px;">E-posta Adresi</label>
                            <input type="email" class="form-control bg-transparent text-white shadow-sm" id="email" name="username" placeholder="posta@yasartetik.com" value="{$username}" required style="border-radius: 10px; background: rgba(255, 255, 255, 0.05); padding: 12px 15px; font-family: 'Inter', sans-serif; border: 2px solid #757575 !important; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1) !important; transition: all 0.3s ease;">
                        </div>
                        <div class="mb-5 position-relative">
                            <label for="password" class="form-label text-white-50" style="font-size: 14px;">Şifre</label>
                            <input type="password" class="form-control bg-transparent text-white shadow-sm" id="password" name="password" placeholder="••••••••" required style="border-radius: 10px; background: rgba(255, 255, 255, 0.05); padding: 12px 15px; font-family: 'Inter', sans-serif; border: 2px solid #757575 !important; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1) !important; transition: all 0.3s ease;">
                        </div>
                        <button type="submit" class="btn w-100" style="border-radius: 10px; background: linear-gradient(90deg, #6366f1, #a855f7); font-weight: 600; color: white; font-family: 'Inter', sans-serif; transition: all 0.3s ease; box-shadow: 0 4px 15px rgba(99, 102, 241, 0.4); padding: 10px 15px; display: flex; align-items: center; justify-content: center;" onmouseover="this.style.boxShadow='0 6px 20px rgba(99, 102, 241, 0.6)'; this.style.transform='translateY(-2px);'" onmouseout="this.style.boxShadow='0 4px 15px rgba(99, 102, 241, 0.4)'; this.style.transform='translateY(0)';">Giriş Yap</button>
                    </form>
                    <div class="d-flex justify-content-between mt-4">
                        <a href="/index.php?rp=/password/reset" style="color: #a855f7; text-decoration: none; font-size: 14px; font-family: 'Inter', sans-serif;">Şifremi Unuttum</a>
                        <a href="/index.php?rp=/register" style="color: #a855f7; text-decoration: none; font-size: 14px; font-family: 'Inter', sans-serif;">Üye Değil misin? Kayıt Ol</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12 mb-4">
                <div class="responsive-banner" style="
                    width: 100%;
                    min-height: 500px; /* Giriş kutusu ile aynı min-height */
                    background: linear-gradient(135deg, #1a2a40, #0f1a2a);
                    border-radius: 25px;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;
                    text-align: center;
                    color: white;
                    padding: 30px;
                    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
                    margin: 0 auto;
                ">
                    <i class="fas fa-rocket" style="font-size: 4rem; color: #00e676; margin-bottom: 20px;"></i>
                    <h3 style="font-weight: 700; font-family: 'Inter', sans-serif; margin-bottom: 15px; font-size: 2.2rem;">Hızlı ve Güvenilir Hosting</h3>
                    <p style="font-size: 1.1rem; font-family: 'Inter', sans-serif; line-height: 1.6; margin-bottom: 30px; color: #ff6e42;"> Web sitelerinizi en yüksek performansla barındırın. Kesintisiz hizmet, 7/24 teknik destek ve üstün güvenlik ile tanışın.
                    </p>
                    <div style="display: flex; justify-content: center; gap: 20px; margin-bottom: 30px;">
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-shield-alt" style="font-size: 2rem; color: #00b0ff;"></i>
                            <span style="font-size: 0.9rem; margin-top: 5px;">Güvenlik</span>
                        </span>
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-headset" style="font-size: 2rem; color: #ffeb3b;"></i>
                            <span style="font-size: 0.9rem; margin-top: 5px;">Destek</span>
                        </span>
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-server" style="font-size: 2rem; color: #ff6e42;"></i>
                            <span style="font-size: 0.9rem; margin-top: 5px;">Performans</span>
                        </span>
                    </div>
                    <a href="https://hostingkontrol.com/vds-sunucu.php" style=" background: linear-gradient(90deg, #00e676, #00c853); /* Yeşil degrade buton */
                        color: #ffffff;
                        text-decoration: none;
                        padding: 12px 30px;
                        border-radius: 30px;
                        font-size: 1.1rem;
                        font-weight: 600;
                        transition: all 0.3s ease;
                        box-shadow: 0 4px 15px rgba(0, 230, 118, 0.4);
                    " onmouseover="this.style.background='linear-gradient(90deg, #00c853, #00a040)'; this.style.boxShadow='0 6px 20px rgba(0, 230, 118, 0.6)';" onmouseout="this.style.background='linear-gradient(90deg, #00e676, #00c853)'; this.style.boxShadow='0 4px 15px rgba(0, 230, 118, 0.4)';">
                        VDS Paketlerini İncele </a>
                </div>
            </div>
        </div>

        <div class="row justify-content-center" style="margin-bottom: 20px;">
            <div class="col-md-12 col-lg-12">
                <div class="promo-banner-bottom" style="
                    width: 100%;
                    max-width: 1200px;
                    background: #1e3a8a;
                    border-radius: 12px;
                    display: flex;
                    flex-wrap: wrap;
                    align-items: center;
                    justify-content: center;
                    padding: 15px 20px;
                    color: #ffffff;
                    font-size: 14px;
                    font-weight: 600;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                    overflow: hidden;
                    transition: all 0.3s ease;
                    margin-top: 30px;
                ">
                    <div style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center; gap: 15px; text-align: center;">
                        <div class="sticker" style="
                            width: 60px;
                            height: 60px;
                            background: #d32f2f;
                            border-radius: 50%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: #ffffff;
                            font-size: 12px;
                            font-weight: 600;
                            text-align: center;
                            line-height: 1.2;
                            overflow: hidden;
                            flex-shrink: 0;
                        ">Ücretsiz<br>cPanel</div>
                        <div style="flex-grow: 1; text-align: center;"> <div style="font-size: 16px; font-weight: 700;">AVRUPA LOKASYON KESİNTİSİZ VDS SERVER HİZMETİ</div>
                            <div style="font-size: 12px;">Çoklu lokasyon desteği ile ister Avrupa’nın kalbinde ister Türkiye’nin en iyi veri merkezinde VDS hizmeti satın alın.</div>
                        </div>
                        <div style="display: flex; align-items: center; justify-content: center; gap: 15px; flex-wrap: wrap;">
                            <img src="https://www.hostingkontrol.com/img/de.png" alt="Almanya Lokasyon" style="width: 30px; height: 20px;">
                            <img src="img/tr_flag.png" alt="Türkiye Lokasyon" style="width: 30px; height: 20px;">
                            <img src="img/server_cloud.png" alt="Sunucu" style="width: 50px; height: 50px;">
                            <a href="https://hostingkontrol.com/ucretsiz-cpanel-sunucular.php" class="blink-button" style="
                                background: #ff6e42;
                                color: #ffffff;
                                text-decoration: none;
                                padding: 8px 20px;
                                border-radius: 20px;
                                font-size: 14px;
                                font-weight: 600;
                                transition: all 0.3s ease;
                                display: block;
                                margin: 0 auto;
                            " onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">
                                VDS Satınal
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }
        .blink-button {
            animation: blink 0.8s infinite;
        }
        .blink {
            animation: blink 0.8s infinite;
        }
        /* Input alanları için ek stil */
        .form-control:focus {
            border-color: #6366f1 !important;
            box-shadow: 0 0 5px rgba(99, 102, 241, 0.5) !important;
        }
        /* Ticket listesi için ek stil */
        .ticket-notification-card li {
            justify-content: flex-start;
            gap: 10px;
        }
        .ticket-notification-card .ticket-status {
            margin-left: 10px;
        }
        .ticket-notification-card .new-ticket-btn {
            margin-left: 10px;
        }

        /* Tüm linklerin alt çizgisini kaldırma */
        a {
            text-decoration: none !important;
        }

        /* Mobil cihazlar için responsive ayarlar */
        @media (max-width: 767px) {
            .card { /* Giriş kutusu için mobil ayarlar */
                min-height: auto !important;
                padding: 20px !important;
            }
            .responsive-banner {
                min-height: auto !important;
                padding: 20px !important;
            }
            .responsive-banner h3 {
                font-size: 1.8rem !important;
            }
            .responsive-banner p {
                font-size: 1rem !important;
            }
            .responsive-banner .fas.fa-rocket {
                font-size: 3rem !important;
            }

            .promo-banner-bottom {
                flex-direction: column !important;
                padding: 15px !important;
                height: auto !important;
            }
            .promo-banner-bottom .sticker {
                margin-bottom: 10px;
            }
            .promo-banner-bottom > div {
                flex-direction: column !important;
                gap: 10px !important;
            }
            .promo-banner-bottom img {
                width: 25px !important;
                height: 15px !important;
            }
            .promo-banner-bottom .blink-button {
                padding: 6px 15px !important;
                font-size: 13px !important;
            }
        }
    </style>
    <section class="bg-default-2" style="padding-top: 20px; padding-bottom: 20px; margin-bottom: 50px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img src="https://img.icons8.com/external-kiranshastry-gradient-kiranshastry/64/external-hosting-cyber-security-kiranshastry-gradient-kiranshastry-3.png" alt="Bayi Hosting Icon" />
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Bayi Hosting</h5>
                                <p class="coodiv-text-12 mb-0">Kendi hosting işinizi kurmak ister misiniz? Müşterilerinize özel hosting paketleri sunun.</p>
                                <div class="modpack-box-tags"><span>TR Lokasyon</span> <span>EU Lokasyon</span></div>
                            </div>
                        </div>
                        </div>
                </div>
				
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img width="64" height="64" src="https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/64/external-hosting-cyber-security-kiranshastry-lineal-color-kiranshastry-4.png" alt="Linux Hosting Icon"/>
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Linux Hosting</h5>
                                <p class="coodiv-text-12 mb-0">Linux tabanlı sunucularımızla web siteleriniz rakiplerinden kat kat daha hızlı yüklenir.</p>
                                <div class="modpack-box-tags"><span>Web Siteniz 4 Kat Daha Hızlı</span></div>
                            </div>
                        </div>
                        </div>
                </div>
				
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img src="https://www.20i.com/assets/images/managed-wordpress-hosting/tabs/wordpress-tools/wordpress-staging.svg" alt="Wordpress Hosting Icon" />
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Wordpress Hosting</h5>
                                <p class="coodiv-text-12 mb-0">WordPress siteleriniz için özel optimize edilmiş sunucularla maksimum hız ve güvenlik.</p>
                                <div class="modpack-box-tags"><span>6 Kata Kadar Daha Hızlı</span></div>
                            </div>
                        </div>
                        </div>
                </div>
            </div>

            <div class="row justify-content-center" style="margin-top: 0px;">
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img src="https://img.icons8.com/color/64/server.png" alt="Dedicated Server Icon" />
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Dedicated Server</h5>
                                <p class="coodiv-text-12 mb-0">İşletmenizin yoğun ihtiyaçları için tam kontrol ve üstün performans sunan fiziksel sunucular.</p>
                                <div class="modpack-box-tags"><span>Size Özel Sunucu</span></div>
                            </div>
                        </div>
                        </div>
                </div>
				
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img src="https://img.icons8.com/color/64/new-post.png" alt="Kurumsal Mail Hosting Icon" />
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Kurumsal Mail Hosting</h5>
                                <p class="coodiv-text-12 mb-0">İşletmenizin profesyonel e-posta ihtiyaçları için güvenli ve kesintisiz mail hosting hizmeti.</p>
                                <div class="modpack-box-tags"><span>Profesyonel İletişim</span> <span>Güvenli</span></div>
                            </div>
                        </div>
                        </div>
                </div>
				
                <div class="col-md-4">
                    <div class="modpack-box">
                        <div class="modpack-box-header">
                            <img src="https://img.icons8.com/color/64/domain.png" alt="Alan Adı Kaydı Icon" />
                            <div class="text">
                                <h5 class="coodiv-text-8 font-weight-bold mb-0">Alan Adı Kaydı</h5>
                                <p class="coodiv-text-12 mb-0">Markanıza uygun alan adınızı kolayca kaydedin ve çevrimiçi varlığınızı hemen oluşturun.</p>
                                <div class="modpack-box-tags"><span>Kolay Kayıt</span> <span>Hızlı Aktivasyon</span></div>
                            </div>
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </section>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
			
    <script src="js/jquery.min.js"></script>
    <script src="js/template-scripts.js"></script>
    <script src="js/flickity.pkgd.min.js"></script>
    <script src="owlcarousel/owl.carousel.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/mailchamp.js"></script>
    <script src="js/bootstrap.offcanvas.min.js"></script>
    <script src="js/jquery.touchSwipe.min.js"></script>
    <script src="js/particles-code.js"></script>
    <script src="js/particles.js"></script>
    <script src="js/smoothscroll.js"></script>

    <div> 
        {include file="$template/template-parts/homepage-all-services.tpl"}
    </div>
</body>
</html>
