<!doctype html>
<html lang="tr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Hosting Kontrol ile Avrupa ve Türkiye lokasyonlu Linux, WordPress, Bayi Hosting, Sanal/Fiziksel Sunucu ve Kurumsal Mail hizmetlerini keşfedin. Ücretsiz cPanel, NVMe disk ve 7/24 destekle işinizi büyütün!" />
    <meta name="keywords" content="hosting, sunucu, bayi hosting, linux hosting, wordpress hosting, vps, vds, dedicated server, kurumsal mail, ücretsiz cpanel, avrupa hosting, türkiye hosting, nvme hosting, hosting kontrol" />
    <meta name="robots" content="index, follow" />
    <meta name="author" content="Hosting Kontrol" />
    <meta property="og:locale" content="tr_TR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Hosting Kontrol - Güvenilir Hosting ve Sunucu Çözümleri" />
    <meta property="og:description" content="Hosting Kontrol, Avrupa ve Türkiye veri merkezlerinde yüksek performanslı Linux, WordPress, Bayi Hosting ve Sanal/Fiziksel Sunucu hizmetleri sunar. İşletmenizi bizimle güçlendirin!" />
    <meta property="og:image" content="https://hostingkontrol.com/images/og-hosting-kontrol-genel.png" />
    <meta property="og:image:secure_url" content="https://hostingkontrol.com/images/og-hosting-kontrol-genel.png" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:url" content="https://www.hostingkontrol.com/" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Hosting Kontrol - Güvenilir Hosting ve Sunucu Çözümleri" />
    <meta name="twitter:description" content="Hosting Kontrol ile Avrupa ve Türkiye'de hızlı, güvenilir ve uygun fiyatlı hosting, sunucu ve kurumsal mail çözümlerine sahip olun. Ücretsiz cPanel ve 7/24 destek!" />
    <meta name="twitter:image" content="https://hostingkontrol.com/images/og-hosting-kontrol-genel.png" />
    <link rel="canonical" href="https://www.hostingkontrol.com/" />
    <title>Hosting Kontrol - Avrupa ve Türkiye Lokasyonlu Hosting, Sunucu ve Mail Çözümleri</title>
    <link rel="shortcut icon" href="https://hostingkontrol.com/img/favicon.ico" type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/4.1.5/css/flag-icons.min.css" rel="stylesheet">
    <style>
        /* TEMEL STİLLER */
        body {
            font-family: 'Poppins', 'Roboto', 'Inter', Arial, sans-serif;
            color: #4a5568;
            margin: 0;
            padding: 0;
            line-height: 1.7;
            background-color: #f7fafc;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding-left: 15px;
            padding-right: 15px;
        }

        /* BANNER MAIN WRAPPER - Arkaplanı tüm sayfaya yayan ve sabit yükseklik veren kısım */
        .main-banner-wrapper {
            width: 100%;
            margin-top: 80px; /* 10px daha aşağıya kaydırıldı */
            padding: 0;
            overflow: hidden;
            position: relative; /* İçindeki dönen banner'lar için absolute konumlandırma */
            height: 300px; /* Banner alanının sabit yüksekliği */
            border-radius: 8px; /* Orijinal banner-container border-radius değeri */
        }

        /* DÖNEN BANNER ÖĞELERİ İÇİN ORTAK STİLLER */
        .rotating-banner-item {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0; /* Başlangıçta gizli */
            transform: scale(0.98); /* Hafifçe küçültülmüş başla */
            transition: opacity 1s ease-in-out, transform 1s ease-in-out; /* Yumuşak geçiş */
            z-index: 1;
            /* Arkaplan renkleri her bir banner-style sınıfında tanımlanacak */
        }
        .rotating-banner-item.active {
            opacity: 1; /* Aktif banner görünür */
            transform: scale(1); /* Normal boyutuna gelsin */
        }

        /* BANNER İÇERİĞİ KAPSAYICISI - Metin ve görseli ortalar */
        .banner-inner-content {
            max-width: 1200px; /* İçeriği 1200px ile sınırla */
            width: 100%; /* max-width ile birlikte çalışır */
            margin: 0 auto; /* İçeriği yatayda ortala */
            padding: 35px 20px; /* Orijinal banner içeriği padding'i */
            display: flex;
            align-items: center; /* Dikeyde ortala */
            justify-content: space-between; /* Metin ve görsel arasına boşluk bırak */
            box-sizing: border-box;
            height: 100%; /* Kapsayıcının tam yüksekliğini almasını sağla */
        }

        /* BANNER 1 İÇİN ÖZEL STİLLER (Orijinal Mavi) */
        .banner-style-1 {
            background: linear-gradient(135deg, #3b5998 0%, #2c3e50 100%);
            color: #ffffff; /* Varsayılan metin rengi */
        }
        .banner-style-1 .banner-headline {
            font-size: 28px;
            font-weight: 700;
            margin: 10px 0 15px 0;
            line-height: 1.35;
            color: #ffffff;
        }
        .banner-style-1 .emphasized-word-headline {
            font-weight: 700;
            color: #a3bffa;
        }
        .banner-style-1 .main-description {
            font-size: 17px;
            margin: 0 0 20px 0;
            line-height: 1.75;
            color: #e0e7ff;
        }
        .banner-style-1 ul { list-style-type: none; padding: 0; margin: 0; }
        .banner-style-1 ul li {
            font-size: 16px;
            margin-bottom: 10px;
            position: relative;
            padding-left: 30px;
            color: #e0e7ff;
            font-weight: 500;
        }
        .banner-style-1 ul li:last-child { margin-bottom: 0; }
        .banner-style-1 ul li i.fa-check-circle {
            color: #86efac;
            position: absolute;
            left: 0;
            top: 5px;
            font-size: 18px;
        }
        .banner-style-1 .banner-text { flex-basis: 60%; padding-right: 20px; } /* Metin kutusu genişliği ayarlandı */
        .banner-style-1 .banner-image { flex-basis: 40%; text-align: center; } /* Görsel kutusu genişliği ayarlandı */
        .banner-style-1 .banner-image img {
            max-width: 75%; /* Resim %25 küçültüldü */
            height: auto;
            border-radius: 10px;
            box-shadow: none;
            display: block; /* img'yi block element yap */
            margin-left: auto; /* Kendi kutusu içinde ortala */
            margin-right: auto; /* Kendi kutusu içinde ortala */
        }

        /* BANNER 2 İÇİN ÖZEL STİLLER (Senin verdiğin cPanel Banner'ı) */
        .banner-style-2 {
            background: linear-gradient(135deg, #28a745 0%, #207a39 100%);
            color: #ffffff; /* Varsayılan metin rengi */
        }
        .banner-style-2 .banner-headline {
            font-size: 28px;
            font-weight: 700;
            margin: 20px 0 15px 0 !important;
            line-height: 1.35;
            color: #ffffff;
        }
        .banner-style-2 .emphasized-word-headline {
            font-weight: 700;
            color: #ffc107;
        }
        .banner-style-2 .main-description {
            font-size: 17px;
            margin: 0 0 20px;
            line-height: 1.75;
            color: #e0ffe0;
        }
        .banner-style-2 ul { list-style-type: none; padding: 0; margin: 0; }
        .banner-style-2 ul li {
            font-size: 16px;
            margin-bottom: 10px;
            padding-left: 30px;
            color: #e0ffe0;
            font-weight: 500;
            position: relative;
        }
        .banner-style-2 ul li:last-child { margin-bottom: 0; }
        .banner-style-2 ul li i.fa-check-circle {
            color: #ffc107;
            position: absolute;
            left: 0;
            top: 5px;
            font-size: 18px;
        }
        .banner-style-2 .banner-text { flex-basis: 60%; padding-right: 20px; } /* Metin kutusu genişliği ayarlandı */
        .banner-style-2 .banner-image {
            flex-basis: 40%; /* Görsel kutusu genişliği ayarlandı */
            display: flex;
            justify-content: center; /* Görseli kendi flex-basis'i içinde ortala */
            align-items: center; /* Dikeyde ortala */
        }
        .banner-style-2 .banner-image img {
            max-width: 50%; /* Resim %25 küçültüldü (önceki %75'ten %25 düşüşle %50) */
            height: auto;
            border-radius: 20px;
            margin-top: 0; /* Flexbox hizalamayı yönetecek */
            display: block;
            margin-left: auto; /* Resmin kendi içinde ortalanmasına yardımcı olur */
            margin-right: auto; /* Resmin kendi içinde ortalanmasına yardımcı olur */
        }


        /* Responsive ayarlamalar */
        @media (max-width: 992px) {
            .main-banner-wrapper { height: 350px; } /* Tabletler için yükseklik */
            .banner-inner-content { padding: 30px 20px; }
            .rotating-banner-item .banner-headline { font-size: 24px; }
            .rotating-banner-item .main-description { font-size: 16px; }
            .rotating-banner-item ul li { font-size: 15px; }
        }
        @media (max-width: 768px) {
            .main-banner-wrapper { height: 450px; } /* Mobil için yükseklik */
            .banner-inner-content {
                flex-direction: column; /* Mobil cihazlarda dikey sıralama */
                text-align: center; /* Metinleri ortala */
                padding: 30px 15px;
            }
            .banner-inner-content .banner-text { padding-right: 0; margin-bottom: 25px; flex-basis: auto; }
            .banner-inner-content .banner-image {
                flex-basis: auto;
                width: 70%;
                max-width: 350px;
                justify-content: center; /* Mobil görünümde ortala */
                margin-top: 10px; /* Metinle görsel arasına boşluk */
            }
            .banner-style-2 .banner-image img {
                max-width: 30%; /* Mobil için görsel boyutu %25 küçültüldü (önceki %45'ten %25 düşüşle %30) */
                margin-left: auto; /* Mobil görsel ortalama */
                margin-right: auto; /* Mobil görsel ortalama */
            }
        }

        /* Mevcut Ana Sayfa Stilleri - Updated for better layout */
        .service-box {
            border: 1px solid #40E0D0;
            border-radius: 8px;
            padding: 18px;
            text-align: center;
            background: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            min-height: 300px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 8px;
        }

        .service-box:hover {
            border: 1px solid #FF8C00;
        }

        .service-box img {
            width: 48px;
            height: 48px;
            margin-bottom: 10px;
        }

        .service-box .icon {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .service-box-col:nth-child(1) .icon { color: #16a34a; }
        .service-box-col:nth-child(2) .icon { color: #2563eb; }
        .service-box-col:nth-child(3) .icon { color: #7c3aed; }
        .service-box-col:nth-child(4) .icon { color: #dc2626; }
        .service-box-col:nth-child(5) .icon { color: #f97316; }

        .service-box h5 {
            font-size: 14px;
            font-weight: 700;
            color: #1f2937;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            white-space: nowrap;
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: 'Inter', sans-serif;
        }

        .service-box h5 .underline {
            display: block;
            width: 90%;
            border-bottom: 2px solid;
            margin-top: 2px;
        }

        .service-box-col:nth-child(1) h5 .underline { border-bottom-color: #16a34a; }
        .service-box-col:nth-child(2) h5 .underline { border-bottom-color: #2563eb; }
        .service-box-col:nth-child(3) h5 .underline { border-bottom-color: #7c3aed; }
        .service-box-col:nth-child(4) h5 .underline { border-bottom-color: #dc2626; }
        .service-box-col:nth-child(5) h5 .underline { border-bottom-color: #f97316; }

        .service-box .features {
            margin: 10px 0;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            text-align: left;
            width: 100%;
            font-family: 'Inter', sans-serif;
        }

        .service-box .features .feature-item {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin-bottom: 5px;
            font-size: 12px;
            color: #1f2937;
            width: 100%;
        }

        .service-box .features .feature-item i {
            margin-right: 8px;
            font-size: 14px;
            min-width: 20px;
            text-align: center;
        }

        .service-box .features .feature-item span {
            flex: 1;
        }

        .service-box-col:nth-child(1) .features .feature-item i { color: #16a34a; }
        .service-box-col:nth-child(2) .features .feature-item i { color: #2563eb; }
        .service-box-col:nth-child(3) .features .feature-item i { color: #7c3aed; }
        .service-box-col:nth-child(4) .features .feature-item i { color: #dc2626; }
        .service-box-col:nth-child(5) .features .feature-item i { color: #f97316; }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: auto;
        }

        .service-box .price-text {
            font-size: 11px;
            margin-bottom: 5px;
            text-align: center;
            color: #000;
        }

        .service-box .btn {
            background: transparent;
            border: 1px solid #16a34a;
            color: #e65100;
            padding: 5px 12px;
            border-radius: 15px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            text-transform: uppercase;
            width: fit-content;
            transform: scale(0.75);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .service-box .btn:hover {
            background: #40E0D0;
            border: 1px solid #40E0D0;
            color: #fff;
        }

        .row.service-row {
            display: flex;
            justify-content: center;
            gap: 10px; /* 5 sütunlu düzen için boşluk ayarlandı */
            margin-top: 10px; /* Banner'a daha yakın olması için margin-top azaltıldı */
            margin-bottom: 40px;
            flex-wrap: wrap; /* Daha küçük ekranlarda sarmalamaya izin ver */
            overflow-x: visible;
            scroll-snap-type: none;
            padding-bottom: 0;
        }

        .service-box-col {
            flex: 0 0 calc(20% - 10px); /* 10px boşlukla 5 sütun için ayarlandı */
            max-width: calc(20% - 10px);
            scroll-snap-align: none;
        }
        /* Kaldırıldı: .service-box-col:not(:last-child) { margin-right: 0; } */

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding-left: 15px;
            padding-right: 15px;
        }

        .container a {
            text-decoration: none;
        }

        /* Satış Kutuları için Stiller */
        .pricing-table {
            display: flex;
            gap: 15px;
            border: none;
            border-radius: 10px;
            overflow: hidden;
            max-width: 1200px;
            margin: 20px auto;
            flex-wrap: wrap;
        }

        .pricing-card {
            background: #fff;
            padding: 20px 30px;
            flex: 1;
            position: relative;
            border-radius: 10px;
            min-height: 600px;
            display: flex;
            flex-direction: column;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .pricing-card.highlight {
            background: #f5fdff;
            border: 2px solid #80D4FF;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        }

        .pricing-table .pricing-card:nth-child(2) {
            background: #f0fbfc;
            border: 1px solid #66CCFF;
        }

        .pricing-table .pricing-card:nth-child(3) {
            background: #e6fafa;
            border: 1px solid #40C4FF;
        }

        .pricing-card h2 {
            font-size: 20px;
            font-weight: 700;
            margin: 0;
            color: #333;
            display: flex;
            align-items: center;
        }

        .pricing-card h2 i {
            margin-right: 8px;
            color: #26C6DA;
            font-size: 20px;
        }

        .pricing-card p.description {
            font-size: 14px;
            color: #555;
            margin: 5px 0 10px;
            line-height: 1.4;
        }

        .pricing-card .price {
            font-size: 28px;
            font-weight: 700;
            color: #333;
            margin: 10px 0;
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .pricing-card .price .main-price {
            display: flex;
            align-items: baseline;
            gap: 5px;
            justify-content: flex-start;
        }

        .pricing-card .price span {
            font-size: 12px;
            font-weight: 400;
            color: #555;
            text-align: left;
            }

        .pricing-card .price strong {
            font-weight: 700;
        }

        /* Custom Dropdown Styles (for all cards) */
        .custom-dropdown {
            position: relative;
            display: inline-block;
            width: 100%; /* Ensure it takes full width of its parent */
            text-align: center;
            margin: 15px 0;
        }

        .custom-dropdown-toggle {
            background-color: #FF8C00; /* Orange */
            color: #fff; /* White text for contrast */
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 700;
            font-size: 14px;
            border: none;
            transition: all 0.3s ease;
            width: 100%;
            box-sizing: border-box;
            cursor: pointer; /* Indicate it's clickable */
            display: block; /* Ensure it takes full width */
        }

        .custom-dropdown-toggle:hover {
            background-color: #E67E22; /* Darker orange */
            color: #fff;
        }

        .pricing-card.highlight .custom-dropdown-toggle {
            background-color: #FF8C00;
            color: #fff;
        }

        .pricing-card.highlight .custom-dropdown-toggle:hover {
            background-color: #E67E22;
            color: #fff;
        }

        /* Custom dropdown menu */
        .custom-dropdown-menu {
            display: none; /* Hidden by default */
            position: absolute;
            background-color: #ffffff;
            min-width: 100%; /* Take full width of parent dropdown */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 5px;
            border: 1px solid #40E0D0;
            list-style: none; /* Remove bullet points */
            padding: 0;
            margin: 5px 0 0 0; /* Space below the button */
            text-align: left;
            box-sizing: border-box;
        }

        /* Custom dropdown item */
        .custom-dropdown-item {
            color: #333;
            padding: 8px 15px;
            text-decoration: none;
            display: block;
            font-size: 14px;
            transition: background-color 0.3s ease;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            direction: ltr !important;
            vertical-align: middle !important;
            line-height: 1.5 !important;
        }

        .custom-dropdown-item:hover {
            background-color: #e6fafa;
            color: #26C6DA;
        }

        /* Kaldırıldı: Pseudo-elements for custom dropdown items - ensure they are hidden */
        /* Kaldırıldı: .custom-dropdown-item::before, .custom-dropdown-item::after { ... } */

        /* Kaldırıldı: Ensure span inside dropdown item behaves correctly */
        /* Kaldırıldı: .custom-dropdown-item span { display: inline; margin: 0; padding: 0; vertical-align: middle; } */

        /* Other styles */
        .pricing-card ul {
            list-style: none;
            padding: 0;
            margin: 0;
            border-top: 1px solid #e0e0e0;
            padding-top: 10px;
        }

        .pricing-card ul li {
            font-size: 14px;
            color: #333;
            margin-bottom: 5px;
            position: relative;
            padding: 5px 0 5px 30px;
            line-height: 1.5;
            transition: all 0.3s ease;
        }

        .pricing-card ul li:hover {
            background-color: #fff3cd;
            color: #000;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 3px;
        }

        .pricing-card ul li i {
            margin-right: 8px;
            font-size: 16px;
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
        }

        .pricing-card ul li.amd-epyc i { color: #d32f2f; }
        .pricing-card ul li.disk i { color: #1a73e8; }
        .pricing-card ul li.location i { color: #ff9800; }
        .pricing-card ul li.os-support i { color: #4caf50; }
        .pricing-card ul li.traffic i { color: #ff9800; }
        .pricing-card ul li.kvm i { color: #2196f3; }
        .pricing-card ul li.migration i { color: #ffca28; }
        .pricing-card ul li.activation i { color: #4caf50; }
        .pricing-card ul li.bonus i { color: #f06292; }
        .pricing-card ul li.datacenter i { color: #ff9800; }
        .pricing-card ul li.domains i { color: #ff9800; }
        .pricing-card ul li.email i { color: #ff5722; }
        .pricing-card ul li.sitepad i { color: #4caf50; }
        .pricing-card ul li.cpanel i { color: #2196f3; }
        .pricing-card ul li.cpanel-whm i { color: #2196f3; }
        .pricing-card ul li.python i { color: #3776ab; }
        .pricing-card ul li.ruby i { color: #cc342d; }
        .pricing-card ul li.ssl i { color: #4caf50; }
        .pricing-card ul li.litespeed i { color: #ff9800; }
        .pricing-card ul li.backup i { color: #673ab7; }

        .highlight-disk, .highlight-datacenter, .highlight-domains, .highlight-email, .highlight-sitepad, .highlight-cpanel, .highlight-cpanel-whm, .highlight-migration, .highlight-python, .highlight-ruby, .highlight-ssl, .highlight-litespeed, .highlight-imunify, .highlight-phpxray, .highlight-acceleratewp, .highlight-amd-epyc, .highlight-location, .highlight-os-support, .highlight-traffic, .highlight-kvm, .highlight-activation, .highlight-bonus, .highlight-backup {
            position: relative;
            display: inline-block;
        }

        .dots {
            position: absolute;
            bottom: -4px;
            left: 0;
            color: #555;
            font-size: 12px;
            letter-spacing: 1px;
            white-space: nowrap;
            overflow: hidden;
        }

        .pricing-card ul li:hover::after {
            content: attr(data-tooltip);
            position: absolute;
            top: -10px;
            left: 30px;
            background-color: #f0faff;
            color: #333;
            padding: 10px 15px;
            border-radius: 5px;
            border: 2px solid #40c4ff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            max-width: 300px;
            font-size: 12px;
            font-weight: 500;
            line-height: 1.4;
            z-index: 10;
            white-space: normal;
        }

        /* Bu kısım eklendi: Açılır menü öğelerinin tooltip'ini devre dışı bırakır */
        .custom-dropdown-menu li:hover::after {
            content: none !important;
            display: none !important;
        }

        /* Promo Section için Stiller */
        .promo-section {
            margin: 40px 0;
            padding: 20px 0;
            background: none;
        }

        .promo-section .row {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .promo-card {
            background: #fff;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
            flex: 0 0 calc(50% - 20px);
            max-width: calc(50% - 20px);
            box-sizing: border-box;
            margin-bottom: 20px;
        }

        .promo-card h3 {
            font-size: 24px;
            font-weight: 700;
            color: #333;
            margin-bottom: 15px;
            font-family: 'Roboto', sans-serif;
        }

        .promo-card p {
            font-size: 14px;
            color: #333;
            margin-bottom: 15px;
            line-height: 1.6;
            font-family: 'Roboto', sans-serif;
        }

        .promo-card ul {
            list-style: none;
            padding: 0;
            margin: 0 0 15px 0;
        }

        .promo-card ul li {
            font-size: 14px;
            color: #333;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            font-family: 'Roboto', sans-serif;
        }

        .promo-card ul li i {
            color: #28a745;
            margin-right: 10px;
            font-size: 16px;
        }

        .promo-card .promo-btn {
            background-color: #28a745;
            color: #fff;
            padding: 8px 20px;
            border-radius: 20px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-block;
            font-family: 'Roboto', sans-serif;
        }

        .promo-card .promo-btn:hover {
            background-color: #218838;
            color: #fff;
        }

        /* Kaldırıldı: .promo-card .promo-images { display: none; } */
        /* Kaldırıldı: .promo-card .promo-images img { ... } */

        .promo-card .content {
            position: relative;
            z-index: 1;
        }

        @media (max-width: 1200px) {
            .service-box-col {
                flex: 0 0 auto;
                width: 30%;
                max-width: 30%;
            }
        }

        @media (max-width: 992px) {
            .service-box-col {
                flex: 0 0 auto;
                width: 45%;
                max-width: 45%;
            }

            .promo-card {
                flex: 0 0 100%;
                max-width: 100%;
            }
        }

        @media (max-width: 768px) {
            .main-banner-wrapper { height: 450px; } /* Mobil için yükseklik */
            .banner-inner-content {
                flex-direction: column; /* Mobil cihazlarda dikey sıralama */
                text-align: center; /* Metinleri ortala */
                padding: 30px 15px;
            }
            .banner-inner-content .banner-text { padding-right: 0; margin-bottom: 25px; flex-basis: auto; }
            .banner-inner-content .banner-image {
                flex-basis: auto;
                width: 70%;
                max-width: 350px;
                justify-content: center; /* Mobil görünümde ortala */
                margin-top: 10px; /* Metinle görsel arasına boşluk */
            }
            .banner-style-2 .banner-image img {
                max-width: 30%; /* Mobil için görsel boyutu %25 küçültüldü (önceki %45'ten %25 düşüşle %30) */
                margin-left: auto; /* Mobil görsel ortalama */
                margin-right: auto; /* Mobil görsel ortalama */
            }
            .service-box-col {
                flex: 0 0 100%;
                max-width: 100%;
            }

            .pricing-table {
                flex-direction: column;
                gap: 10px;
            }

            .pricing-card {
                min-height: auto;
            }

            .promo-section .row {
                flex-direction: column;
                gap: 15px;
            }

            .promo-card {
                flex: 0 0 100%;
                max-width: 100%;
            }

            .promo-card h3 {
                font-size: 20px;
            }

            .promo-card p, .promo-card ul li {
                font-size: 12px;
            }

            .promo-card .promo-btn {
                font-size: 12px;
                padding: 6px 15px;
            }

            /* Kaldırıldı: .promo-card .promo-images { display: none; } */
        }

        /* Harita Bölümü için Stil */
        .map-server-places-section {
            position: relative;
            margin: 40px 0;
            padding: 20px 0;
        }

        .map-gene-server-place {
            position: relative;
            text-align: center;
        }

        .map-gene-server-place img {
            max-width: 100%;
            height: auto;
        }

        .server-places-spans span {
            position: absolute;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            white-space: nowrap;
        }

        .server-places-spans .good {
            color: #28a745;
            font-weight: bold;
            margin-left: 5px;
        }

        .map-comment-area {
            text-align: center;
            margin-top: 20px;
        }

        .map-comment-area-title {
            font-size: 24px;
            font-weight: 700;
            color: #333;
            margin-bottom: 15px;
        }

        .map-comment-area-text {
            font-size: 14px;
            color: #666;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</head>



<body>
    <div class="main-banner-wrapper">
        <div class="rotating-banner-item banner-style-1 active">
            <div class="banner-inner-content">
                <div class="banner-text">
                    <p class="banner-headline"><strong class="emphasized-word-headline">Bayi Hosting</strong> ile Markanızı Zirveye Taşıyın!</p>
                    <ul>
                        <li><i class="fas fa-check-circle"></i>Kendi Markanızla Hosting Satışı</li>
                        <li><i class="fas fa-check-circle"></i>Yüksek Performanslı Avrupa Sunucuları</li>
                        <li><i class="fas fa-check-circle"></i>WHM & cPanel ile Kolay Yönetim</li>
                    </ul>
                </div>
                <div class="banner-image">
                    <img src="img/pci_range-hero-compute.webp" alt="Avrupa Bayi Hosting Banner" onerror="this.onerror=null;this.src='https://placehold.co/450x300/2c3e50/e0e7ff?text=Bayi+Hosting';">
                </div>
            </div>
        </div>

        <div class="rotating-banner-item banner-style-2">
            <div class="banner-inner-content">
                <div class="banner-text">
                    <h1 class="banner-headline">Sınırsız Yönetim: <strong class="emphasized-word-headline">Ücretsiz cPanel</strong> Sunucular</h1>
                    <p class="main-description">Web sitelerinizi ve uygulamalarınızı dünyanın en popüler kontrol paneli olan cPanel ile ücretsiz yönetin! Güçlü donanım ve stabil bağlantı ile projelerinize değer katın.</p>
                    <ul>
                        <li><i class="fas fa-check-circle" aria-hidden="true"></i>Tamamen Ücretsiz cPanel Lisansı</li>
                        <li><i class="fas fa-check-circle" aria-hidden="true"></i>NVMe Disklerle Işık Hızında Erişim</li>
                        <li><i class="fas fa-check-circle" aria-hidden="true"></i>1 Gbit Stabil İnternet Erişimi</li>
                    </ul>
                </div>
                <div class="banner-image">
                    <img src="img/whm-jupiter-interface-106.webp" alt="Ücretsiz cPanel WHM Arayüzü" loading="lazy" onerror="this.onerror=null; this.src='https://placehold.co/350x250/28a745/ffffff?text=cPanel+G%C3%B6rseli'; this.style.maxWidth='350px';">
                </div>
            </div>
        </div>
    </div>
    <section>
        <div class="container">
            <div class="row service-row" style="margin-top: 10px;"> <div class="service-box-col">
                    <div class="service-box">
                        <img src="img/cpanel-logo.png" alt="cPanel Hosting">
                        <h5>LİNUX HOSTİNG <span class="underline"></span></h5>
                        <div class="features">
                            <div class="feature-item"><i class="fas fa-microchip"></i><span>NVMe Disk Alanı</span></div>
                            <div class="feature-item"><i class="fas fa-infinity"></i><span>Sınırsız Trafik</span></div>
                            <div class="feature-item"><i class="fas fa-lock"></i><span>Ücretsiz SSL</span></div>
                        </div>
                        <div class="button-container">
                            <span class="price-text">139 TL'den başlayan fiyatlarla</span>
                            <a href="https://www.hostingkontrol.com/avrupa-lokasyon-hosting" class="btn">İncele</a>
                        </div>
                    </div>
                </div>
                <div class="service-box-col">
                    <div class="service-box">
                        <img src="img/wordpress-hosting.png" alt="WordPress Hosting">
                        <h5>WORDPRESS HOSTİNG <span class="underline"></span></h5>
                        <div class="features">
                            <div class="feature-item"><i class="fas fa-tachometer-alt"></i><span>Yüksek CPU Oranı</span></div>
                            <div class="feature-item"><i class="fas fa-globe"></i><span>Online Kurulum</span></div>
                            <div class="feature-item"><i class="fas fa-database"></i><span>Haftalık Yedekleme</span></div>
                        </div>
                        <div class="button-container">
                            <span class="price-text">31.79 TL'den başlayan fiyatlarla</span>
                            <a href="https://www.hostingkontrol.com/wordpress-hosting" class="btn">İncele</a>
                        </div>
                    </div>
                </div>
                <div class="service-box-col">
                    <div class="service-box">
                        <i class="fas fa-users icon"></i>
                        <h5>BAYİ HOSTİNG <span class="underline"></span></h5>
                        <div class="features">
                            <div class="feature-item"><i class="fas fa-cogs"></i><span>cPanel Kontrol Paneli</span></div>
                            <div class="feature-item"><i class="fas fa-tachometer-alt"></i><span>Yüksek CPU Oranı</span></div>
                            <div class="feature-item"><i class="fas fa-infinity"></i><span>Sınırsız Trafik</span></div>
                        </div>
                        <div class="button-container">
                            <span class="price-text">79 TL'den başlayan fiyatlarla</span>
                            <a href="https://www.hostingkontrol.com/avrupa-lokasyon-bayi-hosting" class="btn">İncele</a>
                        </div>
                    </div>
                </div>
                <div class="service-box-col">
                    <div class="service-box">
                        <i class="fas fa-server icon"></i>
                        <h5>SUNUCULAR <span class="underline"></span></h5>
                        <div class="features">
                            <div class="feature-item"><i class="fas fa-microchip"></i><span>AMD EPYC™ İşlemci</span></div>
                            <div class="feature-item"><i class="fas fa-tachometer-alt"></i><span>2,5 Gbit Port Hızı</span></div>
                            <div class="feature-item"><i class="fas fa-hdd"></i><span>NVMe Disk Yapısı</span></div>
                        </div>
                        <div class="button-container">
                            <span class="price-text">420 TL'den başlayan fiyatlarla</span>
                            <a href="https://www.hostingkontrol.com/sanal-sunucular-vps" class="btn">İncele</a>
                        </div>
                    </div>
                </div>
                <div class="service-box-col">
                    <div class="service-box">
                        <i class="fas fa-envelope icon"></i>
                        <h5>KURUMSAL MAİL <span class="underline"></span></h5>
                        <div class="features">
                            <div class="feature-item"><i class="fas fa-paper-plane"></i><span>Öncelikli Teslimat</span></div>
                            <div class="feature-item"><i class="fas fa-mobile-alt"></i><span>Mobil Uyumlu</span></div>
                            <div class="feature-item"><i class="fas fa-envelope"></i><span>Gelişmiş Arayüz</span></div>
                        </div>
                        <div class="button-container">
                            <span class="price-text">19,99 TL'den başlayan fiyatlarla</span>
                            <a href="https://www.hostingkontrol.com/kurumsal-mail-hosting" class="btn">İncele</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pricing-table">
                <div class="pricing-card highlight">
                    <h2><i class="fas fa-server"></i> Linux Hosting Paketleri</h2>
                    <p class="description">Türkiyenin En Hızlı Linux Hosting Paketleri</p>
                    <div class="price">
                        <div class="main-price">139 TL</div>
                        <span>Başlayan <strong>Yıllık</strong> Fiyatlarla</span>
                    </div>
                    <div class="custom-dropdown">
                        <button class="custom-dropdown-toggle" type="button" id="customDropdownMenuButton1">
                            Hosting Paketlerine Göz At
                        </button>
                        <ul class="custom-dropdown-menu" aria-labelledby="customDropdownMenuButton1">
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/avrupa-lokasyon-hosting"><span>Avrupa Lokasyon Linux Hosting</span></a></li>
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/turkiye-lokasyon-linux-hosting"><span>Türkiye Lokasyon Linux Hosting</span></a></li>
                        </ul>
                    </div>
                    <ul>
                        <li class="disk" data-tooltip="Web siteniz ve projeleriniz için sınırsız disk alanı ile depolama sınırı olmadan özgürce çalışın!" aria-label="Sınırsız Disk İmkanı"><i class="fas fa-hdd"></i><span class="highlight-disk" data-dots="5">Sınırsız<span class="dots"></span></span> Disk İmkanı</li>
                        <li class="datacenter" data-tooltip="Türkiye ve Avrupa’daki veri merkezlerimizle yüksek hız ve güvenilirlik sunuyoruz!" aria-label="Türkiye ve Avrupa Veri Merkezi"><i class="fas fa-globe"></i><span class="highlight-datacenter" data-dots="5">Türkiye<span class="dots"></span></span> ve Avrupa Veri Merkezi</li>
                        <li class="sitepad" data-tooltip="SitePad ile kod bilgisi gerektirmeden profesyonel ve şık web siteleri kolayca tasarlayabilirsiniz!" aria-label="SitePad Tasarım Aracı"><i class="fas fa-paint-brush"></i><span class="highlight-sitepad" data-dots="5">SitePad<span class="dots"></span></span> Tasarım Aracı</li>
                        <li class="cpanel" data-tooltip="cPanel ile hosting yönetimini kolaylaştıran, kullanıcı dostu ve güçlü bir kontrol paneli sunuyoruz!" aria-label="cPanel Kontrol Paneli"><i class="fas fa-cogs"></i><span class="highlight-cpanel" data-dots="5">cPanel<span class="dots"></span></span> Kontrol Paneli</li>
                        <li class="migration" data-tooltip="Mevcut web sitenizi hiçbir ücret ödemeden hızlı ve güvenli bir şekilde bizimle taşıyabilirsiniz!" aria-label="Ücretsiz Site Taşıma"><i class="fas fa-truck"></i><span class="highlight-migration" data-dots="5">Ücretsiz<span class="dots"></span></span> Site Taşıma</li>
                        <li class="python" data-tooltip="Python desteği ile web uygulamalarınızı ve projelerinizi sorunsuz bir şekilde çalıştırabilirsiniz!" aria-label="Phyton Desteği"><i class="fab fa-python"></i><span class="highlight-python" data-dots="5">Phyton<span class="dots"></span></span> Desteği</li>
                        <li class="ruby" data-tooltip="Ruby desteği sayesinde web projelerinizi Ruby programlama diliyle kolayca geliştirebilirsiniz!" aria-label="Ruby Desteği"><i class="fas fa-gem"></i><span class="highlight-ruby" data-dots="5">Ruby<span class="dots"></span></span> Desteği</li>
                        <li class="ssl" data-tooltip="Ücretsiz SSL sertifikası ile web sitenizi güvenli hale getirin ve kullanıcılarınıza güven verin!" aria-label="Ücretsiz SSL Sertifikası"><i class="fas fa-lock"></i><span class="highlight-ssl" data-dots="5">Ücretsiz<span class="dots"></span></span> SSL Sertifikası</li>
                        <li class="litespeed" data-tooltip="LiteSpeed Cache ile web sitenizin yükleme hızını artırarak kullanıcı deneyimini en üst düzeye çıkarın!" aria-label="LiteSpeed Cache"><i class="fas fa-tachometer-alt"></i><span class="highlight-litespeed" data-dots="5">LiteSpeed<span class="dots"></span></span> Cache</li>
                    </ul>
                </div>
                <div class="pricing-card">
                    <h2><i class="fas fa-users"></i> Bayi Hosting Paketleri</h2>
                    <p class="description">En Uygun Bayi Hosting Paketleri</p>
                    <div class="price">
                        <div class="main-price">69 TL</div>
                        <span>Başlanan <strong>Aylık</strong> Fiyatlar</span>
                    </div>
                    <div class="custom-dropdown">
                        <button class="custom-dropdown-toggle" type="button" id="customDropdownMenuButton2">
                            Bayi Hosting Paketlerine Göz At
                        </button>
                        <ul class="custom-dropdown-menu" aria-labelledby="customDropdownMenuButton2">
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/avrupa-lokasyon-bayi-hosting"><span>Avrupa Lokasyon Bayi Hosting</span></a></li>
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/turkiye-lokasyon-bayi-hosting"><span>Türkiye Lokasyon Bayi Hosting</span></a></li>
                        </ul>
                    </div>
                    <ul>
                        <li class="disk" data-tooltip="100 GB NVMe disk ile yüksek hızlı depolama alanı sunar, projeleriniz için hızlı ve güvenilir bir altyapı sağlar." aria-label="100 GB NVMe Disk"><i class="fas fa-hdd"></i><span class="highlight-disk" data-dots="5">100 GB NVMe<span class="dots"></span></span> Disk</li>
                        <li class="domains" data-tooltip="100 farklı alan adını barındırarak birden fazla projeyi tek bir hosting paketiyle yönetmanıza olanak tanır." aria-label="100 Alan Adı Barındırma"><i class="fas fa-globe"></i><span class="highlight-domains" data-dots="5">100 Alan Adı<span class="dots"></span></span> Barındırma</li>
                        <li class="email" data-tooltip="Sınırsız e-posta hesabı ile iletişim ihtiyaçlarınıza karşılayabilir, profesyonel e-posta adresleriyle işinizi büyütebilirsiniz." aria-label="Sınırsız E-posta Hesabı"><i class="fas fa-envelope"></i><span class="highlight-email" data-dots="5">Sınırsız<span class="dots"></span></span> E-posta Hesabı</li>
                        <li class="cpanel-whm" data-tooltip="Türkçe cPanel/WHM panel ile hosting ve bayi yönetimini kolayca yapabilir, kullanıcı dostu arayüzle kontrol sağlayabilirsiniz." aria-label="Türkçe cPanel/WHM Panel"><i class="fas fa-cogs"></i><span class="highlight-cpanel-whm" data-dots="5">Türkçe cPanel/WHM<span class="dots"></span></span> Panel</li>
                        <li class="datacenter" data-tooltip="Türkiye ve Avrupa’daki veri merkezlerimizle düşük gecikme süreleri ve yüksek erişilebilirlik sunuyoruz." aria-label="Türkiye ve Avrupa Veri Merkezi"><i class="fas fa-globe"></i><span class="highlight-datacenter" data-dots="5">Türkiye ve Avrupa<span class="dots"></span></span> Veri Merkezi</li>
                        <li class="sitepad" data-tooltip="SitePad ile kod bilgisi gerektirmeden profesyonel ve şık web siteleri kolayca tasarlayabilirsiniz!" aria-label="SitePad Tasarım Aracı"><i class="fas fa-paint-brush"></i><span class="highlight-sitepad" data-dots="5">SitePad<span class="dots"></span></span> Tasarım Aracı</li>
                        <li class="migration" data-tooltip="Mevcut web sitenizi hiçbir ücret ödemeden hızlı ve güvenli bir şekilde bizimle taşıyabilirsiniz!" aria-label="Ücretsiz Site Taşıma"><i class="fas fa-truck"></i><span class="highlight-migration" data-dots="5">Ücretsiz<span class="dots"></span></span> Site Taşıma</li>
                        <li class="ssl" data-tooltip="Ücretsiz SSL sertifikası ile web sitenizi güvenli hale getirin ve kullanıcılarınıza güven verin!" aria-label="Ücretsiz SSL Sertifikası"><i class="fas fa-lock"></i><span class="highlight-ssl" data-dots="5">Ücretsiz<span class="dots"></span></span> SSL Sertifikası</li>
                        <li class="backup" data-tooltip="Haftalık yedekleme ile verileriniz her zaman güvende, olası veri kayıplarına karşı koruma sağlıyoruz!" aria-label="Haftalık Yedekleme"><i class="fas fa-database"></i><span class="highlight-backup" data-dots="5">Haftalık<span class="dots"></span></span> Yedekleme</li>
                    </ul>
                </div>
                <div class="pricing-card">
                    <h2><i class="fas fa-server"></i> Sanal Sunucular</h2>
                    <p class="description">En Ucuz ve En Performanslı Sunucular</p>
                    <div class="price">
                        <div class="main-price">210 TL</div>
                        <span>Başlanan <strong>Aylık</strong> Fiyatlar</span>
                    </div>
                    <div class="custom-dropdown">
                        <button class="custom-dropdown-toggle" type="button" id="customDropdownMenuButton3">
                            Sunuculara Göz At
                        </button>
                        <ul class="custom-dropdown-menu" aria-labelledby="customDropdownMenuButton3">
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/sanal-sunucular-vps"><span>Sanal Sunucular (VPS)</span></a></li>
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/vds-sunucu"><span>Sanal Fiziksel Sunucular (VDS)</span></a></li>
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/ucretsiz-cpanel-sunucular"><span>cPanel Hediye Sunucular</span></a></li>
                            <li><a class="custom-dropdown-item" href="https://www.hostingkontrol.com/dedicated-sunucu-fiziksel-sunucu"><span>Fiziksel Sunucular</span></a></li>
                        </ul>
                    </div>
                    <ul>
                        <li class="amd-epyc" data-tooltip="AMD EPYC™ işlemcilerle sunucularımız, yüksek performans ve enerji verimliliği sunar, en zorlu projeleriniz için ideal bir çözümdür." aria-label="AMD EPYC™ İşlemci"><i class="fas fa-microchip"></i><span class="highlight-amd-epyc" data-dots="5">AMD EPYC™<span class="dots"></span></span> İşlemci</li>
                        <li class="disk" data-tooltip="Depolama ihtiyaçlarınıza göre 8 TB’a kadar artırılabilir disk alanıyla, projeleriniz için sınırsız bir esneklik sağlıyoruz." aria-label="8 TB’a Kadar Arttırılabilir Disk"><i class="fas fa-hdd"></i><span class="highlight-disk" data-dots="5">8 TB’a Kadar<span class="dots"></span></span> Arttırılabilir Disk</li>
                        <li class="location" data-tooltip="Avrupa’daki veri merkezlerimizle düşük gecikme süreleri ve yüksek erişilebilirlik sunarak global projeleriniz için mükemmel bir altyapı sağlıyoruz." aria-label="Avrupa Lokasyon"><i class="fas fa-globe"></i><span class="highlight-location" data-dots="5">Avrupa<span class="dots"></span></span> Lokasyon</li>
                        <li class="os-support" data-tooltip="Hem Linux hem de Windows işletim sistemlerini destekleyen altyapımızla, projeleriniz için esnek bir platform sunuyoruz." aria-label="Linux ve Windows Desteği"><i class="fas fa-laptop-code"></i><span class="highlight-os-support" data-dots="5">Linux ve Windows<span class="dots"></span></span> Desteği</li>
                        <li class="traffic" data-tooltip="2.5 Gbit hızında sınırsız trafik ile web siteleriniz ve uygulamalarınız kesintisiz bir şekilde yüksek hızda çalışır." aria-label="2.5 Gbit Sınırsız Trafik"><i class="fas fa-tachometer-alt"></i><span class="highlight-traffic" data-dots="5">2.5 Gbit<span class="dots"></span></span> Sınırsız Trafik</li>
                        <li class="kvm" data-tooltip="KVM tabanlı sanallaştırma altyapımız, yüksek performans ve güvenlik sağlayarak sunucularınızın verimli çalışmasını garanti eder." aria-label="KVM Alt Yapısı"><i class="fas fa-server"></i><span class="highlight-kvm" data-dots="5">KVM<span class="dots"></span></span> Alt Yapısı</li>
                        <li class="migration" data-tooltip="Mevcut sunucularınızı hiçbir ek ücret ödemeden hızlı ve güvenli bir şekilde bizim altyapımıza taşıyabilirsiniz!" aria-label="Ücretsiz Sunucu Taşıma"><i class="fas fa-truck"></i><span class="highlight-migration" data-dots="5">Ücretsiz<span class="dots"></span></span> Suncu Taşıma</li>
                        <li class="activation" data-tooltip="Sunucu siparişleriniz aynı gün içinde aktif hale getirilir, böylece projelerinize hemen başlayabilirsiniz!" aria-label="Aynı Gün Aktivasyon"><i class="fas fa-check-circle"></i><span class="highlight-activation" data-dots="5">Aynı Gün<span class="dots"></span></span> Aktivasyon</li>
                        <li class="bonus" data-tooltip="Yıllık sunucu alımlanızda 3 ay ek süre hediye ediyoruz, böylece daha uzun süre kesintisiz hizmet alabilirsiniz!" aria-label="Senelik Alımlarda 3 Ay Ek Süre"><i class="fas fa-gift"></i><span class="highlight-bonus" data-dots="5">Senelik Alımlarda 3 Ay<span class="dots"></span></span> Ek Süre</li>
                    </ul>
                </div>
            </div>
            <section class="promo-section">
                <div class="container">
                    <div class="row">
                        <div class="promo-card">
                            <div class="content">
                                <h3>Fiyatlarımız Daima Türk Lirası</h3>
                                <p>Fiyatlarımız daima Türk Lirası ile sunulur; diğer firmalar gibi fiyatları 3’e katlayıp %50 indirim yaparak müşterilerimizi kandırmıyoruz, her zaman uygun fiyat garantisi veriyoruz.</p>
                            </div>
                            </div>
                        <div class="promo-card">
                            <div class="content">
                                <h3>Sunucularda Ücretsiz cPanel</h3>
                                <p>Seçili sunucularda ücretsiz cPanel hediye ediyoruz. Hızlı kurulum ve kolay yönetimle sunucularınızı hemen kullanmaya başlayın. cPanel sayesinde tüm hosting işlemlerinizi tek bir panelden zahmetsizce kontrol edebilirsiniz.</p>
                            </div>
                            </div>
                    </div>
                </div>
            </section>
            <section class="map-server-places-section position-relative">
                <div class="container">
                    <div class="map-gene-server-place">
                        <img src="img/map.webp" alt="Global Veri Merkezleri" />
                        <div class="server-places-spans">
                            <span style="top: 17%;left: 32%;"> <b>Kanada Hosting</b> <small class="good">Çevrimiçi</small></span>
                            <span style="top: 45%;left: 15%;"> <b>Amerika Hosting</b> <small class="good">Çevrimiçi</small></span>
                            <span style="top: 35%;left: 42%;"> <b>Avrupa Hosting</b> <small class="good">Çevrimiçi</small></span>
                            <span style="top: 45%;left: 52%;"> <b>Türkiye Hosting</b> <small class="good">Çevrimiçi</small></span>
                            <span style="top: 30%;left: 70%;"> <b>Japonya Hosting</b> <small class="good">Çevrimiçi</small></span>
                            <span style="top: 82%;left: 76%;"> <b>Avustralya Hosting</b> <small class="good">Çevrimiçi</small></span>
                        </div>
                    </div>
                    <div class="map-comment-area">
                        <h2 class="map-comment-area-title">Dünya Çapında Veri Merkezleriyle Hizmetinizdeyiz</h2>
                        <p class="map-comment-area-text">Tüm hizmetlerimizi burada listelememiz mümkün değil, ancak dünyanın herhangi bir yerinden, farklı özelliklere sahip veri merkezlerimizle sunucu veya hosting ihtiyaçlarınızı karşılayabiliriz. Detaylar için lütfen aşağıdaki WhatsApp hattımızdan bize ulaşın; size en uygun çözümü mutlaka sunarız!</p>
                    </div>
                </div>
            </section>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            // Custom dropdown functionality (for all cards with custom-dropdown class)
            $('.custom-dropdown').hover(
                function() {
                    // When mouse enters, show the menu
                    $(this).find('.custom-dropdown-menu').stop(true, true).slideDown(150);
                },
                function() {
                    // When mouse leaves, hide the menu
                    $(this).find('.custom-dropdown-menu').stop(true, true).slideUp(150);
                }
            );

            // Dot animation for highlight elements
            document.querySelectorAll('.highlight-disk, .highlight-datacenter, .highlight-domains, .highlight-email, .highlight-sitepad, .highlight-cpanel, .highlight-cpanel-whm, .highlight-migration, .highlight-python, .highlight-ruby, .highlight-ssl, .highlight-litespeed, .highlight-imunify, .highlight-phpxray, .highlight-acceleratewp, .highlight-amd-epyc, .highlight-location, .highlight-os-support, .highlight-traffic, .highlight-kvm, .highlight-activation, .highlight-bonus, .highlight-backup').forEach(element => {
                const dotCount = parseInt(element.getAttribute('data-dots'));
                let dots = '';
                for (let i = 0; i < dotCount; i++) {
                    dots += '.';
                }
                const dotsElement = element.querySelector('.dots');
                if (dotsElement) {
                    dotsElement.textContent = dots;
                }
            });

            // Banner rotator functionality
            const banners = document.querySelectorAll('.main-banner-wrapper .rotating-banner-item');
            let currentBannerIndex = 0;

            function showNextBanner() {
                // Mevcut aktif banner'ı gizle
                banners[currentBannerIndex].classList.remove('active');

                // Sonraki banner'a geç
                currentBannerIndex = (currentBannerIndex + 1) % banners.length;

                // Yeni aktif banner'ı göster
                banners[currentBannerIndex].classList.add('active');
            }

            // İlk banner'ı aktif hale getir
            if (banners.length > 0) {
                banners[0].classList.add('active');
            }

            // Her 3 saniyede bir banner'ı değiştir
            setInterval(showNextBanner, 3000);
        });
    </script>
</body>
</html>
