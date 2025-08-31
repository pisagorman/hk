<!DOCTYPE html>
<html lang="tr" class="scroll-smooth">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hosting Kontrol | Premium Bulut Santral Çözümleri</title>
    <meta name="description" content="İletişimde standartları yeniden belirleyen, premium ve çarpıcı sanal santral çözümleriyle iş dünyasında fark yaratın." />
    <meta name="keywords" content="sanal santral, bulut santral, voip, pbx, premium, modern tasarım, kurumsal iletişim, Hosting Kontrol" />
    
    <!-- Gerekli Font ve İkon Kütüphaneleri -->
    <link rel="shortcut icon" href="https://www.hostingkontrol.com/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <style>
        /* --- TEMEL SAYFA AYARLARI --- */
        :root {
            --teal: #14B8A6; /* Turkuaz */
            --orange: #F97316; /* Turuncu */
            --tile-red: #DC2626; /* Kiremit Kırmızısı */
            --slate-800: #1e293b;
            --slate-600: #475569;
            --slate-500: #64748b;
            --slate-100: #f1f5f9;
            --slate-50: #f8fafc;
            --white: #ffffff;
            --green: #22c55e;
            --red: #ef4444;
        }

        html {
            scroll-behavior: smooth;
        }

        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            overflow-x: hidden;
            background-color: var(--white);
            font-family: 'Poppins', sans-serif;
            color: var(--slate-600);
        }

        /* --- ORİJİNAL BANNER STİLLERİ (KORUNDU) --- */
        .banner-container { width: 100%; margin: 40px auto 0 auto; padding: 0; background: linear-gradient(135deg, #3b5998 0%, #2c3e50 100%); overflow: hidden; }
        .banner { max-width: 1200px; margin: 0 auto; color: #ffffff; padding: 35px 20px; display: flex; align-items: center; justify-content: space-between; box-sizing: border-box; }
        .banner-text { flex-basis: 65%; padding-right: 40px; }
        .banner-text .banner-headline { font-size: 28px; font-weight: 700; margin: 20px 0 15px 0; line-height: 1.35; color: #ffffff; }
        .banner-text .banner-headline .emphasized-word-headline { font-weight: 700; color: #a3bffa; }
        .banner-text p.main-description { font-size: 17px; margin: 0 0 20px 0; line-height: 1.75; color: #e0e7ff; }
        .banner-text ul li { list-style: none; font-size: 16px; margin-bottom: 10px; position: relative; padding-left: 30px; color: #e0e7ff; font-weight: 500; }
        .banner-text ul li i.fa-check-circle { color: #86efac; position: absolute; left: 0; top: 5px; font-size: 18px; }
        .banner-image { flex-basis: 35%; text-align: center; }
        .banner-image img { max-width: 85%; height: auto; border-radius: 10px; margin-top: 15px; }
        @media (max-width: 768px) { .banner { flex-direction: column; text-align: center; } .banner-text { padding-right: 0; margin-bottom: 25px; } }
        
        /* === YENİ BÖLÜMLER İÇİN STİLLER === */
        
        .section-full-width {
             padding: 80px 0;
        }
        
        .section-container {
            padding: 0 20px;
            max-width: 1200px;
            margin: 0 auto;
            box-sizing: border-box;
        }
        .section-header {
            text-align: center;
            margin-bottom: 60px;
        }
        .section-header h2 {
            font-size: 36px;
            font-weight: 700;
            color: var(--slate-800);
            margin: 0;
        }
        .section-header p {
            font-size: 18px;
            margin-top: 10px;
            color: var(--slate-500);
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .pricing-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }
        .price-card {
            background-color: var(--slate-50);
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
        }
        .price-card-content {
            flex-grow: 1;
        }
        
        .price-card:hover {
            border-color: #e2e8f0;
        }
        
        .price-card.popular {
            border: 2px solid var(--orange);
            transform: scale(1.05);
            position: relative;
            background-color: var(--white);
        }
        .popular-badge {
            position: absolute;
            top: -15px;
            left: 50%;
            transform: translateX(-50%);
            background-color: var(--orange);
            color: var(--white);
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
        }
        .price-card h3 { font-size: 24px; font-weight: 600; color: var(--slate-800); margin: 15px 0 5px 0; }
        .price-card .icon { font-size: 40px; margin-bottom: 15px; }
        .price-card .price { font-size: 50px; font-weight: 800; color: var(--slate-800); margin: 20px 0; }
        .price-card .price span { font-size: 16px; font-weight: 500; color: var(--slate-500); }
        .price-card ul { list-style: none; padding: 0; margin: 30px 0; text-align: left; }
        .price-card ul li { margin-bottom: 15px; display: flex; align-items: center; gap: 10px; }
        .price-card ul li .fa-check { color: var(--green); }
        .price-card ul li .fa-times { color: var(--red); }
        
        .btn {
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            width: 100%;
            padding: 15px;
            border-radius: 8px;
            font-weight: 700;
            text-decoration: none;
            transition: background-color 0.3s;
            margin-top: auto;
        }
        .btn-teal { background-color: var(--teal); color: var(--white); }
        .btn-teal:hover { background-color: #0d9488; }
        .btn-orange { background-color: var(--orange); color: var(--white); }
        .btn-orange:hover { background-color: #ea580c; }
        
        .promotion-banner {
            margin-top: 50px;
            padding: 20px;
            background-color: #f0fdfa;
            border: 1px solid #ccfbf1;
            border-radius: 12px;
            text-align: center;
            font-size: 17px;
            font-weight: 500;
            color: #0f766e;
        }
        .promotion-banner .fa-star {
            margin-right: 10px;
            color: #f59e0b;
        }

        .comparison-table-wrapper { overflow-x: auto; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1); border-radius: 10px; }
        .comparison-table { width: 100%; border-collapse: collapse; text-align: center; }
        .comparison-table th, .comparison-table td { padding: 20px 15px; }
        .comparison-table thead { background-color: var(--slate-100); }
        .comparison-table th { font-size: 16px; color: var(--slate-800); }
        .comparison-table tbody tr:nth-child(even) { background-color: var(--slate-50); }
        .comparison-table tbody tr:nth-child(odd) { background-color: var(--white); }
        .comparison-table td { color: var(--slate-600); }
        .comparison-table td:first-child { text-align: left; font-weight: 600; color: var(--slate-800); }
        .comparison-table .fa-check { color: var(--teal); font-size: 20px; }
        .comparison-table .fa-times { color: var(--red); font-size: 20px; }

        .on-premise-container { background-color: #fff7ed; border-radius: 16px; padding: 50px; display: flex; align-items: center; gap: 50px; }
        .on-premise-image { flex: 1; text-align: center; }
        
        .on-premise-image img {
            max-width: 300px;
            border-radius: 16px;
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -4px rgba(0,0,0,0.1);
        }

        .on-premise-text { flex: 2; }
        .on-premise-text h2 { font-size: 32px; font-weight: 700; color: var(--tile-red); margin: 0 0 15px 0; }
        .on-premise-text p { margin-bottom: 15px; line-height: 1.7; }
        .btn-red { display: inline-block; width: auto; background-color: var(--tile-red); color: var(--white); padding: 12px 30px; border-radius: 8px; }
        .btn-red:hover { background-color: #b91c1c; }
        
        /* SSS Bölümü (Minimalist Stil) */
        .faq-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 25px; }
        .faq-item details { background-color: var(--white); padding: 20px; border-radius: 8px; border: 1px solid #e2e8f0; cursor: pointer; transition: background-color 0.2s ease-in-out; }
        .faq-item details:hover { border-color: #cbd5e1; }
        .faq-item summary { display: flex; justify-content: space-between; align-items: center; font-weight: 600; color: var(--slate-800); list-style: none; }
        .faq-item summary::-webkit-details-marker { display: none; }
        .faq-item details[open] { background-color: var(--white); }
        .faq-item details[open] summary { color: var(--teal); }
        
        .faq-item details p { 
            padding-top: 15px; 
            margin-top: 15px; 
            border-top: 1px solid #e2e8f0; 
            line-height: 1.7; 
            color: var(--slate-500); 
            font-size: 15px; 
        }

        .faq-item summary .fa-chevron-down { transition: transform 0.3s; }
        .faq-item details[open] summary .fa-chevron-down { transform: rotate(180deg); }
        
        .main-footer {
            background-color: var(--slate-800);
            color: var(--white);
            text-align: center;
            padding: 40px 20px;
        }
        .main-footer p {
            margin: 5px 0;
            color: #cbd5e1;
            font-size: 16px;
            line-height: 1.6;
        }
        .main-footer a {
             color: var(--teal);
             font-weight: 600;
             text-decoration: none;
        }
        .main-footer a:hover {
            text-decoration: underline;
        }
        .main-footer .fa-whatsapp {
            font-size: 20px;
            margin-right: 8px;
            vertical-align: middle;
        }

        @media (max-width: 992px) {
            .pricing-grid { grid-template-columns: 1fr 1fr; }
            .on-premise-container { flex-direction: column; }
        }
        @media (max-width: 768px) {
            .pricing-grid { grid-template-columns: 1fr; }
            .price-card.popular { transform: scale(1); }
            .faq-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <div class="banner-container">
        <div class="banner">
            <div class="banner-text">
                <p class="banner-headline">Geleceğin İletişim Platformu: <strong class="emphasized-word-headline">Sanal Santral</strong></p>
                <p class="main-description">İşletmenizi coğrafi sınırlardan kurtaran modern Sanal Santral hizmetiyle tanışın. Yatırım maliyeti olmadan profesyonel bir telefon sistemine sahip olun.</p>
                <ul>
                    <li><i class="fas fa-check-circle"></i>Düşük Maliyetli ve Yatırımsız Kurulum</li>
                    <li><i class="fas fa-check-circle"></i>Konumdan Bağımsız Esnek Çalışma</li>
                    <li><i class="fas fa-check-circle"></i>Gelişmiş Çağrı Raporlama ve Analiz</li>
                </ul>
            </div>
            <div class="banner-image">
                <img src="https://www.ovhcloud.com/sites/default/files/styles/large_screens_1x/public/2024-12/adobestock_1014993315.webp" alt="Sanal Santral hizmeti alan bir çalışan" onerror="this.onerror=null;this.src='https://placehold.co/450x300/2c3e50/e0e7ff?text=Sanal+Santral';">
            </div>
        </div>
    </div>
    
    <section id="pricing" class="section-full-width">
        <div class="section-container">
            <div class="section-header">
                <h2>Kullanmadığınız özelliklere para ödemeyin</h2>
                <p>İster yeni başlıyor olun, ister büyüyen bir işletme olun, size uygun bir sanal santral çözümümüz var.</p>
            </div>
            <div class="pricing-grid">
                <div class="price-card">
                    <div class="price-card-content">
                        <i class="fas fa-rocket icon" style="color: var(--teal);"></i>
                        <h3>Başlangıç</h3>
                        <p>Küçük işletmeler ve start-uplar için</p>
                        <div class="price">299₺<span>/ay</span></div>
                        <ul>
                            <li><i class="fas fa-check"></i>1 Dahili Hat</li>
                            <li><i class="fas fa-check"></i>1 Harici Hat</li>
                            <li><i class="fas fa-check"></i>Sesli Karşılama (IVR)</li>
                            <li><i class="fas fa-times"></i>Ses Kaydı</li>
                        </ul>
                    </div>
                    <a href="https://www.hostingkontrol.com/index.php?rp=/store/sanal-santral/sanal-santral-giri-seviyesi" class="btn btn-teal">Hemen Başla</a>
                </div>
                <div class="price-card popular">
                     <div class="price-card-content">
                        <div class="popular-badge">En Popüler</div>
                        <i class="fas fa-briefcase icon" style="color: var(--orange);"></i>
                        <h3>İşletme</h3>
                        <p>Büyüyen KOBİ'ler ve ajanslar için</p>
                        <div class="price">370₺<span>/ay</span></div>
                        <ul>
                            <li><i class="fas fa-check"></i>3 Dahili Hat</li>
                            <li><i class="fas fa-check"></i>1 Harici Hat</li>
                            <li><i class="fas fa-check"></i>Ses Kaydı</li>
                            <li><i class="fas fa-times"></i>Detaylı Raporlama</li>
                        </ul>
                    </div>
                    <a href="https://www.hostingkontrol.com/index.php?rp=/store/sanal-santral/sanal-santral-isletme-seviyesi" class="btn btn-orange">Hemen Başla</a>
                </div>
                <div class="price-card">
                     <div class="price-card-content">
                        <i class="fas fa-building icon" style="color: var(--tile-red);"></i>
                        <h3>Kurumsal</h3>
                        <p>Çağrı merkezleri ve büyük ekipler için</p>
                        <div class="price">470₺<span>/ay</span></div>
                        <ul>
                            <li><i class="fas fa-check"></i>10 Dahili Hat</li>
                            <li><i class="fas fa-check"></i>3 Harici Hat</li>
                            <li><i class="fas fa-check"></i>Ses Kaydı</li>
                            <li><i class="fas fa-check"></i>Detaylı Raporlama</li>
                        </ul>
                    </div>
                    <a href="https://www.hostingkontrol.com/index.php?rp=/store/sanal-santral/sanal-santral-kurumsal-seviyesi" class="btn btn-teal">Hemen Başla</a>
                </div>
            </div>
            <div class="promotion-banner">
                <i class="fas fa-star"></i>
                Yıllık alımlarda <strong>1 profesyonel karşılama anonsu</strong> kaydı ücretsizdir.
            </div>
        </div>
    </section>

    <section id="comparison" class="section-full-width" style="background-color: var(--slate-50);">
        <div class="section-container">
            <div class="section-header">
                <h2>Özellik Karşılaştırması</h2>
                <p>Tüm paketlerimizin sunduğu özellikleri detaylıca inceleyin.</p>
            </div>
            <div class="comparison-table-wrapper">
                <table class="comparison-table">
                    <thead>
                        <tr>
                            <th style="text-align: left;">Özellikler</th>
                            <th>Başlangıç</th>
                            <th>İşletme</th>
                            <th>Kurumsal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Dahili Hat Sayısı</td>
                            <td>1</td>
                            <td>3</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>Harici Hat Sayısı</td>
                            <td>1</td>
                            <td>1</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>Sesli Karşılama (IVR)</td>
                            <td><i class="fas fa-check"></i></td>
                            <td><i class="fas fa-check"></i></td>
                            <td><i class="fas fa-check"></i></td>
                        </tr>
                        <tr>
                            <td>Ses Kaydı</td>
                            <td><i class="fas fa-times"></i></td>
                            <td><i class="fas fa-check"></i></td>
                            <td><i class="fas fa-check"></i></td>
                        </tr>
                        <tr>
                            <td>Detaylı Raporlama</td>
                            <td><i class="fas fa-check"></i></td>
                            <td><i class="fas fa-times"></i></td>
                            <td><i class="fas fa-check"></i></td>
                        </tr>
                        <tr>
                            <td>Gelişmiş IVR Senaryoları</td>
                            <td><i class="fas fa-times"></i></td>
                            <td><i class="fas fa-times"></i></td>
                            <td><i class="fas fa-check"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <section id="on-premise" class="section-full-width">
        <div class="section-container">
            <div class="on-premise-container">
                <div class="on-premise-image">
                     <img src="https://media.publit.io/file/NLXbsh77.png" alt="Kendi Sunucun" onerror="this.onerror=null;this.src='https://placehold.co/300x300/fed7aa/9a3412?text=Kendi+Sunucun';">
                </div>
                <div class="on-premise-text">
                    <h2>Santralinizi Kendi Ofisinize Kuralım!</h2>
                    <p>Bulut çözümler yerine tüm kontrolün sizde olmasını mı tercih ediyorsunuz? Sanal santralinizi, mevcut sunucunuza veya yeni bir sanal sunucuya tek seferlik kurulum bedeliyle kurabiliriz. Bu sayede aylık ödeme derdinden kurtulur, verilerinizin tam kontrolünü elinizde tutarsınız.</p>
                    <p><strong>Bu hizmeti seçtiğinizde, profesyonel ekibimiz tüm kurulumu sizin için yapar ve ilk 3 ay boyunca tamamen ücretsiz teknik destek sağlarız.</strong></p>
                    <a href="https://wa.me/902166062115" target="_blank" class="btn btn-red">Teklif Al</a>
                </div>
            </div>
        </div>
    </section>

    <section id="faq" class="section-full-width" style="background-color: var(--slate-50);">
        <div class="section-container">
            <div class="section-header">
                <h2>Sıkça Sorulan Sorular</h2>
                <p>Aklınıza takılan soruların cevaplarını burada bulabilirsiniz.</p>
            </div>
            <div class="faq-grid">
                <div class="faq-column">
                    <div class="faq-item">
                        <details>
                            <summary>Sanal Santral tam olarak nedir? <i class="fas fa-chevron-down"></i></summary>
                            <p>Sanal Santral, internet tabanlı çalışan, fiziksel bir donanım gerektirmeyen modern bir telefon sistemidir. Gelen ve giden çağrılarınızı yönetmenizi, IVR kurmanızı ve raporlamanızı sağlar.</p>
                        </details>
                    </div>
                    <div class="faq-item">
                        <details>
                            <summary>Mevcut numaramı taşıyabilir miyim? <i class="fas fa-chevron-down"></i></summary>
                            <p>Evet, mevcut 0850, 0212, 0216 gibi tüm numaralarınızı kolayca sistemimize taşıyabilir ve kullanmaya devam edebilirsiniz.</p>
                        </details>
                    </div>
                    <div class="faq-item">
                        <details>
                            <summary>Özel bir telefona ihtiyacım var mı? <i class="fas fa-chevron-down"></i></summary>
                            <p>Hayır. Sanal santrali IP telefonlar, bilgisayar yazılımları (softphone) veya akıllı telefon uygulamaları üzerinden kullanabilirsiniz.</p>
                        </details>
                    </div>
                    <div class="faq-item">
                        <details>
                            <summary>Kurulum ne kadar sürer? <i class="fas fa-chevron-down"></i></summary>
                            <p>Bulut santral paketlerimiz, siparişinizi takiben genellikle 1-2 iş günü içerisinde tamamen hazır hale gelir.</p>
                        </details>
                    </div>
                </div>
                <div class="faq-column">
                    <div class="faq-item">
                        <details>
                            <summary>0212, 0216 gibi coğrafi numaralar sağlıyor musunuz? <i class="fas fa-chevron-down"></i></summary>
                            <p>Hayır, biz yalnızca sanal santral altyapı hizmetini sağlıyoruz. Bu hizmetten faydalanabilmek için, coğrafi ya da 850'li numara sağlayan operatörlerden temin ettiğiniz SIP/VoIP giriş bilgilerinize sahip olmanız gerekmektedir. Mevcut numaranızı santralimize kolayca entegre edebilirsiniz.</p>
                        </details>
                    </div>
                     <div class="faq-item">
                        <details>
                            <summary>Fiyatlandırmaya neler dahildir? <i class="fas fa-chevron-down"></i></summary>
                            <p>Paket fiyatlarımıza seçtiğiniz paketin tüm özellikleri, kurulum ve teknik destek dahildir. Görüşmeleriniz ayrıca ekonomik tarifelerle ücretlendirilir.</p>
                        </details>
                    </div>
                     <div class="faq-item">
                        <details>
                            <summary>Ses kayıtları ne kadar süre saklanıyor? <i class="fas fa-chevron-down"></i></summary>
                            <p>Standart olarak ses kayıtları 30 gün boyunca santral ekranınızda görebileceğimiz şekilde saklanır, kullanıcı istediği zaman ses kayıtlarını kendi cihazına indirebilir. Ek olarak sipariş esnasında 1 Seneye kadar ses kaydı saklama opsiyonu satın alabilirsiniz.</p>
                        </details>
                    </div>
                    <div class="faq-item">
                        <details>
                            <summary>Destek hizmetiniz var mı? <i class="fas fa-chevron-down"></i></summary>
                            <p>Evet, tüm müşterilerimize mesai saatleri içerisinde telefon ve e-posta yoluyla ücretsiz teknik destek sağlıyoruz.</p>
                        </details>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="main-footer">
        <p>
            <i class="fab fa-whatsapp"></i>
            Size en uygun paketi seçmek veya aklınızdaki sorular için <a href="https://wa.me/902166062115" target="_blank">WhatsApp hattımız</a> üzerinden bizimle iletişime geçebilirsiniz.
        </p>
    </footer>
    
</body>
</html>
