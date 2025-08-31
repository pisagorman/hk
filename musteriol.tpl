<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kayıt Ol</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Global Font Ayarı */
        html, body, p, h1, h2, h3, h4, h5, h6, span, label, input, button, a {
            font-family: 'Inter', sans-serif !important; 
            box-sizing: border-box; /* Tüm elementler için kutu boyutlandırmayı ayarla */
        }
        body {
            background-color: #f7fafc;
        }
        .custom-register-page-wrapper {
            padding-top: 100px;
            padding-bottom: 60px;
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
        }
        .tailwind-form-container {
            background-color: #ffffff;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
            border-radius: 0.5rem;
            width: 100%;
            max-width: 34rem;
            position: relative;
            z-index: 5;
            margin: 0 auto;
        }
        .top-border-gradient {
            border-top: 4px solid;
            border-image-slice: 1;
            border-image-source: linear-gradient(to right, #3b82f6, #9333ea);
        }
        .bottom-border-gradient {
            border-bottom: 4px solid;
            border-image-slice: 1;
            border-image-source: linear-gradient(to right, #9333ea, #3b82f6);
        }
        .form-input:focus, .form-select:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.25);
            outline: none;
        }
        .alert-danger-custom {
            background-color: #fee2e2;
            border: 1px solid #f87171;
            color: #b91c1c;
            padding: 0.75rem 1rem;
            border-radius: 0.375rem;
            margin-bottom: 1rem;
            font-size: 0.875rem;
        }
        .alert-success-custom {
            background-color: #dcfce7;
            border: 1px solid #4ade80;
            color: #15803d;
            padding: 0.75rem 1rem;
            border-radius: 0.375rem;
            margin-bottom: 1rem;
            font-size: 0.875rem;
        }
        .password-wrapper { position: relative; }
        .password-toggle {
            position: absolute;
            top: 50%;
            right: 0.75rem;
            transform: translateY(-50%);
            cursor: pointer;
            color: #6b7280;
        }
        .btn-processing { cursor: not-allowed; opacity: 0.7; }
        .banner-wrapper-container {
            width: 100%;
            max-width: 548px;
            padding: 12px;
            position: relative;
            z-index: 1;
            margin: 0 auto;
        }
        .banner-wrapper {
            background: linear-gradient(135deg, #1a2a40, #0f1a2a);
            border-radius: 25px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
            padding: 30px;
            color: white;
            text-align: center;
            width: 100%;
            min-height: 500px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .banner-wrapper h3 {
            font-weight: 700;
            margin-bottom: 15px;
            font-size: 2.2rem;
            color: #ffffff;
        }
        .banner-wrapper p {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 30px;
            color: #ff6e42;
        }
        .banner-wrapper a.cta-button {
            background: linear-gradient(90deg, #00e676, #00c853);
            color: #ffffff;
            text-decoration: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-size: 1.1rem;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 230, 118, 0.4);
        }
        .banner-wrapper a.cta-button:hover {
            background: linear-gradient(90deg, #00c853, #00a040);
            box-shadow: 0 6px 20px rgba(0, 230, 118, 0.6);
            transform: translateY(-2px);
        }
        .bayi-hosting-box {
            background-color: #fff;
            border: 1px solid #e0e0e0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }
        .box {
            background-color: #fff;
            border: 1px solid #e0e0e0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .box:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .box i, .bayi-hosting-box i {
            margin-bottom: 15px;
            font-size: 2.5em;
        }
        .box h3, .bayi-hosting-box h3 {
            font-size: 18px;
            color: #1a3c8d;
            margin-top: 0;
            margin-bottom: 10px;
            font-weight: 600;
        }
        .box p, .bayi-hosting-box p {
            font-size: 14px;
            color: #555;
            line-height: 1.6;
            margin-bottom: 0;
        }
        .sanal-santral-content i {
            float: left;
            margin-right: 15px;
            margin-bottom: 5px;
        }
        .sanal-santral-content::after {
            content: "";
            display: table;
            clear: both;
        }
        .features-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }
        @media (min-width: 768px) {
             .features-grid {
                 grid-template-columns: repeat(2, 1fr);
            }
        }
        @media (min-width: 992px) {
            .features-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }
         
        @media (min-width: 1024px) {
             .main-layout-grid {
                 align-items: flex-start;
            }
            .tailwind-form-container {
                margin-left: 50px;
                padding: 12px;
            }
            .banner-wrapper-container {
                margin-right: 20px;
                margin-top: -10px;
                padding: 12px;
            }
        }

        /* MODAL ÖZEL STİLLERİ */
        #verificationModal .bg-white {
            border-radius: 1rem; 
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25); 
            padding: 2.5rem; 
            position: relative; /* Kapatma butonu için relative positioning */
        }
        #verificationModal h2 {
            font-size: 1.6rem !important; /* Başlık fontu biraz daha küçültüldü */
            font-weight: 700; 
            color: #1a202c; 
            margin-bottom: 1rem;
            line-height: 1.2;
        }
        #verificationModal p {
            font-size: 0.9rem !important; /* Paragraf fontu biraz daha küçültüldü */
            line-height: 1.7; 
            color: #4a5568; 
            margin-bottom: 1.5rem; 
        }
        #verificationModal .form-input {
            border: 2px solid #cbd5e0; 
            border-radius: 0.5rem; 
            padding: 0.8rem 1rem; 
            font-size: 1rem !important; 
            transition: none !important; /* Tüm geçişleri kaldır */
        }
        #verificationModal .form-input:focus {
            border-color: #3b82f6; 
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.3); 
            outline: none; 
        }
        #verificationModal button {
            border-radius: 0.5rem; 
            font-weight: 600; 
            padding: 0.75rem 1.5rem; 
            transition: none !important; /* Tüm geçişleri kaldır */
        }
        /* Hover efektleri tamamen kaldırıldı ve mevcut durumlarına sabitlendi */
        #verificationModal #confirmCodeButton:hover {
            background: linear-gradient(45deg, #4c51bf, #6b46c1) !important; 
            color: #ffffff !important; 
            box-shadow: 0 4px 15px rgba(76, 81, 191, 0.4) !important; 
            transform: none !important; 
            opacity: 1 !important; 
            cursor: pointer !important; 
        }
        .alert-danger-custom {
            background-color: #fee2e2;
            border: 1px solid #f87171;
            color: #b91c1c;
            padding: 0.75rem 1rem;
            border-radius: 0.375rem;
            margin-bottom: 1rem;
            font-size: 0.875rem;
        }
        .alert-success-modal { /* Modala özel başarı mesajı stili */
            background-color: #dcfce7;
            border: 1px solid #4ade80;
            color: #15803d;
            padding: 0.75rem 1rem;
            border-radius: 0.375rem;
            margin-bottom: 1rem;
            font-size: 0.875rem;
        }

        /* Modal Kapatma Butonu Stili */
        .modal-close-button {
            position: absolute;
            top: 1rem;
            right: 1rem;
            background: none;
            border: none;
            font-size: 1.5rem;
            color: #a0aec0; /* Gri renk */
            cursor: pointer;
            transition: color 0.2s ease-in-out;
            padding: 0.5rem; /* Tıklama alanını büyüt */
        }
        .modal-close-button:hover {
            color: #4a5568; /* Hover'da daha koyu gri */
        }
    </style>
</head>
<body>

<div class="custom-register-page-wrapper px-4">
    <div class="grid grid-cols-1 lg:grid-cols-2 lg:gap-x-8 main-layout-grid">
        
        <div class="tailwind-form-container top-border-gradient bottom-border-gradient">
            {if $registration_success}
                <div class="p-4 sm:p-6 text-center">
                    <div class="alert-success-custom">
                        {$LANG.registrationsuccessfull} {$LANG.registrationsuccessfulllogin}
                        <br/>Müşteri panelinize yönlendiriliyorsunuz...
                    </div>
                </div>
            {else}
                <div class="text-center p-4 sm:p-6 border-b border-gray-200">
                    <h1 class="text-xl sm:text-2xl font-bold text-gray-800">{$LANG.clientregistertitle}</h1>
                </div>

                {if $errormessage}
                    <div class="px-4 sm:px-6 pt-4 pb-0">
                        <div class="alert-danger-custom">
                            <strong>{$LANG.clientareaerrors}</strong><br />
                            {$errormessage}
                        </div>
                    </div>
                {/if}

                <div id="form-error-message" class="px-4 sm:px-6 pt-4 pb-0 hidden">
                    <div class="alert-danger-custom"></div>
                </div>

                <form method="post" action="register.php" class="p-4 sm:p-6 space-y-4" id="frmOzelKayitTailwind">
                    <input type="hidden" name="register" value="true" />
                    {if isset($form_token) && $form_token}<input type="hidden" name="token" value="{$form_token}" />{else}<input type="hidden" name="token" value="{$token}" />{/if}
                    <input type="hidden" name="custom_registration_form" value="1" />

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="firstname" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientareafirstname}</label>
                            <input type="text" id="firstname" name="firstname" value="{$clientfirstname|escape:'html'}" placeholder="Adınız" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                        </div>
                        <div>
                            <label for="lastname" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientarealastname}</label>
                            <input type="text" id="lastname" name="lastname" value="{$clientlastname|escape:'html'}" placeholder="Soyadınız" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                        </div>
                    </div>
                    <div>
                        <label for="email" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientareaemail}</label>
                        <input type="email" id="email" name="email" value="{$clientemail|escape:'html'}" placeholder="mail@domain.tld" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                    </div>
                    <div>
                            <label for="phonenumber" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientareaphonenumber}</label>
                            <input type="tel" id="phonenumber" name="phonenumber" value="{$clientphonenumber|escape:'html'}" placeholder="5XX XXX XX XX" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                        </div>
                        <div class="password-wrapper">
                            <label for="password" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientareapassword}</label>
                            <input type="password" id="password" name="password" placeholder="Şifre" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                            <button type="button" onclick="togglePasswordVisibility('password', 'passwordIcon')" class="password-toggle"><i id="passwordIcon" class="fas fa-eye text-sm"></i></button>
                        </div>
                        <div class="password-wrapper">
                            <label for="password2" class="block text-xs font-medium text-gray-700 mb-1">{$LANG.clientareaconfirmpassword}</label>
                            <input type="password" id="password2" name="password2" placeholder="Şifre Tekrar" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm" required>
                            <button type="button" onclick="togglePasswordVisibility('password2', 'password2Icon')" class="password-toggle"><i id="password2Icon" class="fas fa-eye text-sm"></i></button>
                        </div>
                        
                        <div class="space-y-3 pt-3 border-t border-gray-200">
                            <div class="flex items-start">
                                <input id="bilgilendirmeIzni" name="bilgilendirmeIzni" type="checkbox" class="form-checkbox h-4 w-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500 mt-0.5" checked disabled>
                                <label for="bilgilendirmeIzni" class="ml-2 text-xs text-gray-700">Bilgilendirme, tanıtım ve reklam amaçlı ileti ve SMS gönderilmesi için, AÇIK RIZA'mı veriyorum.</label>
                            </div>
                            <div class="flex items-start">
                                <input id="kullanimSartlari" name="kullanimSartlari" type="checkbox" class="form-checkbox h-4 w-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500 mt-0.5" required>
                                <label for="kullanimSartlari" class="ml-2 text-xs text-gray-700">"<a href="https://www.hostingkontrol.com/hizmet-sozlesmesi" target="_blank" class="text-blue-600 hover:underline">Hizmet sözleşmesini</a>" ve "<a href="https://www.hostingkontrol.com/gizlilik-guvenlik-politikasi" target="_blank" class="text-blue-600 hover:underline">Gizlilik Politikasını</a>" okudum ve anladım.</label>
                            </div>
                        </div>
                        
                        <div>
                            <button type="button" id="verifyEmailButton" class="w-full bg-slate-800 hover:bg-slate-700 text-white font-medium py-2.5 px-4 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 transition duration-150 ease-in-out text-sm">Mail Adresimi Kontrol Et</button>
                        </div>
                    </form>
                    <div class="bg-gray-50 text-center p-4 sm:p-6 rounded-b-md border-t border-gray-200">
                        <p class="text-xs text-gray-600">{$LANG.alreadyregistered} <a href="https://www.hostingkontrol.com/giris-yap" class="font-medium text-blue-600 hover:underline">{$LANG.login}</a></p>
                    </div>
                {/if}
            </div>

            <div class="banner-wrapper-container">
                <div class="banner-wrapper">
                    <i class="fas fa-rocket" style="font-size: 4rem; color: #00e676; margin-bottom: 20px;"></i>
                    <h3>Hızlı ve Güvenilir Hosting</h3>
                    <p>Web sitelerinizi en yüksek performansla barındırın. Kesintisiz hizmet, 7/24 teknik destek ve üstün güvenlik ile tanışın.</p>
                    <div style="display: flex; justify-content: center; gap: 20px; margin-bottom: 30px;">
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-shield-alt" style="font-size: 2rem; color: #00b0ff;"></i>
                            <span>Güvenlik</span>
                        </span>
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-headset" style="font-size: 2rem; color: #ffeb3b;"></i>
                            <span>Destek</span>
                        </span>
                        <span style="display: flex; flex-direction: column; align-items: center;">
                            <i class="fas fa-server" style="font-size: 2rem; color: #ff6e42;"></i>
                            <span>Performans</span>
                        </span>
                    </div>
                    <a href="https://hostingkontrol.com/vds-sunucu.php" class="cta-button">VDS Paketlerini İncele</a>
                </div>
                <div class="bayi-hosting-box mt-5 p-5">
                    <h3 class="text-center text-purple-800 text-lg">Sanal Santral 299 TL'den Başlayan Fiyatlar</h3>
                    <div class="sanal-santral-content mt-4">
                        <i class="fas fa-phone-alt" style="font-size: 2em; color: #6a1b9a;"></i>
                        <p>İşletmenizin iletişimini geleceğe taşıyın! Sanal Santralimizle karmaşık ve pahalı fiziksel sistemlere veda edin. Bulut tabanlı çözümümüz sayesinde, geleneksel telefon hatlarına ve ek sunucu maliyetlerine gerek kalmadan, çağrılarınızı dilediğiniz yerden yönetin. Otomatik karşılama, akıllı çağrı yönlendirme, konferans görüşmeleri ve daha birçok gelişmiş özellikle iş akışınızı optimize edin. <a href="/sanal-santral" class="text-blue-600 hover:underline text-sm font-medium">Daha Fazla Bilgi</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mx-auto mt-10 mb-10">
            <div class="features-grid">
                <div class="box"><i class="fas fa-thumbs-up" style="color: #4CAF50;"></i><h3>Bağlayıcı Sözleşme Yok</h3><p>Hizmetlerimizde taahhüt zorunluluğu bulunmaz. Esnek planlarla dilediniz gibi hizmet alabilirsiniz.</p></div>
                <div class="box"><i class="fas fa-money-bill-wave" style="color: #FFD700;"></i><h3>Açık ve Net Fiyat Politikası</h3><p>Beklenmedik fiyat artışlarıyla karşılaşmazsınız. Şeffaflık bizim için önemlidir.</p></div>
                <div class="box"><i class="fas fa-clock" style="color: #FF6347;"></i><h3>Her An Yanınızda Destek</h3><p>7/24 yanınızdayız. Ortalama 30 dakikalık hızlı yanıt süresiyle kaliteli ve kesintisiz destek sunarız.</p></div>
                <div class="box"><i class="fas fa-microchip" style="color: #4682B4;"></i><h3>Üstün İşlemci Gücü</h3><p>Intel Xeon işlemcilerle donatılmış sunucularımızla projelerinizde maksimum verimlilik elde edersiniz.</p></div>
                <div class="box"><i class="fas fa-envelope" style="color: #FF69B4;"></i><h3>Geniş Kapasiteli E-posta</h3><p>Her hesap için 2GB depolama alanıyla e-postalarınızı sorunsuz yönetin. Cihazlar arası senkronizasyon sağlıyoruz.</p></div>
                <div class="box"><i class="fas fa-shield-alt" style="color: #32CD32;"></i><h3>7 Gün Risksiz İade Garantisi</h3><p>Tüm hosting paketlerimizde, koşulsuz 7 gün içinde para iadesi sunuyoruz.</p></div>
            </div>
        </div>
    </div>

    <!-- Email Verification Modal -->
    <div id="verificationModal" class="fixed inset-0 bg-gray-600 bg-opacity-75 flex items-center justify-center hidden z-50">
        <div class="bg-white p-8 rounded-lg shadow-xl w-full max-w-md mx-4">
            <!-- Kapatma Butonu Eklendi -->
            <button type="button" id="closeModalButton" class="modal-close-button" aria-label="Modali Kapat">
                <i class="fas fa-times"></i>
            </button>

            <h2 class="text-2xl font-bold mb-4 text-gray-800">E-posta Doğrulama</h2>
            <p class="text-gray-700 mb-6">Mail adresine 6 haneli bir doğrulama kodu gönderildi. Lütfen kodu aşağıya girerek kayıt işlemini tamamla.</p>
            <div id="modal-error-message" class="alert-danger-custom hidden"></div>
            <!-- Başarı mesajı için modal içine yeni bir alan ekliyoruz -->
            <div id="modal-success-message" class="alert-success-modal hidden"></div>
            
            <input type="text" id="verificationCodeInput" placeholder="Doğrulama Kodu" maxlength="6" class="form-input w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm transition duration-150 ease-in-out text-sm mb-4" required>
            <div class="flex justify-end space-x-3">
                <!-- Tekrar gönder butonu kaldırıldı -->
                <button type="button" id="confirmCodeButton" class="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md text-sm">Kodu Doğrula</button>
            </div>
            <p class="text-xs text-gray-500 mt-4 text-center">Doğrulama e-postasını bulamıyorsanız, spam/gereksiz kutunuzu kontrol edin. Kod 10 dakika içerisinde gelmez ise üyelik başvurunuzu yeniden başlatın.</p>
        </div>
    </div>

    <script>
        // Şifre görünürlüğünü açıp kapatma fonksiyonu
        function togglePasswordVisibility(inputId, iconId) {
            const passwordInput = document.getElementById(inputId);
            const passwordIconElement = document.getElementById(iconId);
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passwordIconElement.classList.remove('fa-eye');
                passwordIconElement.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                passwordIconElement.classList.remove('fa-eye-slash');
                passwordIconElement.classList.add('fa-eye');
            }
        }

        // Gerekli HTML elementlerini seçiyoruz
        const frmOzelKayitTailwind = document.getElementById('frmOzelKayitTailwind');
        const verifyEmailButton = document.getElementById('verifyEmailButton');
        const formErrorMessageDiv = document.getElementById('form-error-message');
        const formErrorMessageContent = formErrorMessageDiv ? formErrorMessageDiv.querySelector('.alert-danger-custom') : null;

        const verificationModal = document.getElementById('verificationModal');
        const verificationCodeInput = document.getElementById('verificationCodeInput');
        const confirmCodeButton = document.getElementById('confirmCodeButton');
        // const resendCodeButton = document.getElementById('resendCodeButton'); // Kaldırıldı
        const modalErrorMessageDiv = document.getElementById('modal-error-message');
        const modalErrorMessageContent = modalErrorMessageDiv ? modalErrorMessageDiv.querySelector('.alert-danger-custom') : null;
        const modalSuccessMessageDiv = document.getElementById('modal-success-message'); 
        const closeModalButton = document.getElementById('closeModalButton');

        let isProcessing = false; // İşlemde olup olmadığını kontrol eden bayrak

        // Modalı kapatma fonksiyonu
        function closeModal() {
            if (verificationModal) {
                verificationModal.classList.add('hidden');
                // Modalı kapatırken hata/başarı mesajlarını ve inputu temizle
                if (modalErrorMessageDiv) modalErrorMessageDiv.classList.add('hidden');
                if (modalErrorMessageContent) modalErrorMessageContent.textContent = '';
                if (modalSuccessMessageDiv) modalSuccessMessageDiv.classList.add('hidden'); 
                if (verificationCodeInput) verificationCodeInput.value = '';
            }
        }

        // "Mail Adresimi Kontrol Et" butonuna tıklama olayı
        verifyEmailButton.addEventListener('click', async function(event) {
            event.preventDefault();

            if (isProcessing) return;

            // Hata mesajlarını temizle
            if (formErrorMessageDiv) formErrorMessageDiv.classList.add('hidden');
            if (formErrorMessageContent) {
                formErrorMessageContent.textContent = '';
                formErrorMessageContent.parentElement.classList.remove('alert-success-custom');
                formErrorMessageContent.parentElement.classList.add('alert-danger-custom');
            }
            if (modalErrorMessageDiv) modalErrorMessageDiv.classList.add('hidden');
            if (modalErrorMessageContent) modalErrorMessageContent.textContent = '';
            if (modalSuccessMessageDiv) modalSuccessMessageDiv.classList.add('hidden');

            // Formdaki gerekli alanları kontrol et
            const requiredInputs = frmOzelKayitTailwind.querySelectorAll('[required]');
            let allFieldsFilled = true;
            const registrationDataObj = {}; // PHP'ye JSON olarak gönderilecek tüm form verileri

            for (let i = 0; i < requiredInputs.length; i++) {
                const input = requiredInputs[i];
                if (input.id === 'bilgilendirmeIzni') {
                    registrationDataObj[input.name] = input.checked ? 'on' : ''; 
                    continue; 
                }
                if (input.id === 'kullanimSartlari') { 
                    if (!input.checked) {
                        allFieldsFilled = false;
                        input.focus();
                        if (formErrorMessageContent) {
                            formErrorMessageContent.textContent = 'Lütfen tüm zorunlu alanları doldurun ve sözleşmeleri onaylayın.';
                            formErrorMessageDiv.classList.remove('hidden');
                            window.scrollTo(0, formErrorMessageDiv.offsetTop - 20);
                        }
                        break;
                    }
                    registrationDataObj[input.name] = input.checked ? 'on' : '';
                    continue;
                }

                if (!input.value.trim()) {
                    allFieldsFilled = false;
                    input.focus();
                    if (formErrorMessageContent) {
                        formErrorMessageContent.textContent = 'Lütfen tüm zorunlu alanları doldurun.';
                        formErrorMessageDiv.classList.remove('hidden');
                        window.scrollTo(0, formErrorMessageDiv.offsetTop - 20);
                    }
                    break;
                }
                registrationDataObj[input.name] = input.value.trim();
            }
            
            if (!allFieldsFilled) {
                return;
            }

            isProcessing = true;
            verifyEmailButton.disabled = true;
            verifyEmailButton.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>Mail gönderiliyor...';
            verifyEmailButton.classList.add('btn-processing');

            const payload = {
                action: 'sendVerificationCode',
                email: registrationDataObj.email,
                registrationData: JSON.stringify(registrationDataObj)
            };

            try {
                const response = await fetch('index.php?m=customverification&mg-page=clientarea', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(payload)
                });
                const data = await response.json();

                if (data.success) {
                    if (verificationModal) verificationModal.classList.remove('hidden');
                    if (verificationCodeInput) verificationCodeInput.focus();
                    if (modalSuccessMessageDiv) {
                        modalSuccessMessageDiv.textContent = data.message;
                        modalSuccessMessageDiv.classList.remove('hidden');
                    }
                    if (modalErrorMessageDiv) modalErrorMessageDiv.classList.add('hidden');
                    
                } else {
                    if (formErrorMessageContent) {
                        formErrorMessageContent.textContent = data.message || 'Doğrulama kodu gönderilirken bir hata oluştu.';
                        formErrorMessageDiv.classList.remove('hidden');
                        window.scrollTo(0, formErrorMessageDiv.offsetTop - 20);
                    }
                    if (verificationModal) verificationModal.classList.add('hidden');
                }
            } catch (error) {
                console.error('Doğrulama kodu gönderme hatası:', error);
                if (formErrorMessageContent) {
                    formErrorMessageContent.textContent = 'Sunucu ile iletişimde bir hata oluştu. Lütfen tekrar deneyin.';
                    formErrorMessageDiv.classList.remove('hidden');
                    window.scrollTo(0, formErrorMessageDiv.offsetTop - 20);
                }
                if (verificationModal) verificationModal.classList.add('hidden');
            } finally {
                isProcessing = false;
                verifyEmailButton.disabled = false;
                verifyEmailButton.innerHTML = 'Mail Adresimi Kontrol Et';
                verifyEmailButton.classList.remove('btn-processing');
            }
        });

        // Modal içindeki "Kodu Doğrula" butonu
        confirmCodeButton.addEventListener('click', async function() {
            const enteredCode = verificationCodeInput ? verificationCodeInput.value.trim() : '';
            if (modalErrorMessageDiv) modalErrorMessageDiv.classList.add('hidden');
            if (modalErrorMessageContent) modalErrorMessageContent.textContent = '';
            if (modalSuccessMessageDiv) modalSuccessMessageDiv.classList.add('hidden');

            if (!enteredCode || enteredCode.length !== 6) {
                if (modalErrorMessageContent) {
                    modalErrorMessageContent.textContent = 'Lütfen 6 haneli doğrulama kodunu girin.';
                    modalErrorMessageDiv.classList.remove('hidden');
                }
                return;
            }

            if (isProcessing) return;
            isProcessing = true;
            confirmCodeButton.disabled = true;
            confirmCodeButton.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>Doğrulanıyor...';
            confirmCodeButton.classList.add('btn-processing');

            const payloadConfirm = {
                action: 'verifyCode', // Sadece kodu doğrula
                email: frmOzelKayitTailwind.querySelector('#email').value.trim(),
                verificationCode: enteredCode
            };

            try {
                const response = await fetch('index.php?m=customverification&mg-page=clientarea', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(payloadConfirm)
                });
                const data = await response.json();

                if (data.success) {
                    if (modalSuccessMessageDiv) {
                        modalSuccessMessageDiv.textContent = data.message;
                        modalSuccessMessageDiv.classList.remove('hidden');
                    }
                    if (modalErrorMessageDiv) modalErrorMessageDiv.classList.add('hidden');
                    
                    if (data.registrationData) { 
                        const hiddenForm = document.createElement('form');
                        hiddenForm.method = 'POST';
                        hiddenForm.action = data.redirect;
                        hiddenForm.style.display = 'none';

                        for (const key in data.registrationData) {
                            if (data.registrationData.hasOwnProperty(key)) {
                                const input = document.createElement('input');
                                input.type = 'hidden';
                                input.name = key;
                                input.value = data.registrationData[key];
                                hiddenForm.appendChild(input);
                            }
                        }
                        const registerInput = document.createElement('input');
                        registerInput.type = 'hidden';
                        registerInput.name = 'register';
                        registerInput.value = 'true';
                        hiddenForm.appendChild(registerInput);

                        const existingTokenInput = document.querySelector('#frmOzelKayitTailwind input[name="token"]');
                        if (existingTokenInput) {
                            const tokenInput = document.createElement('input');
                            tokenInput.type = 'hidden';
                            tokenInput.name = 'token';
                            tokenInput.value = existingTokenInput.value;
                            hiddenForm.appendChild(tokenInput);
                        }

                        const customRegFormInput = document.createElement('input');
                        customRegFormInput.type = 'hidden';
                        customRegFormInput.name = 'custom_registration_form';
                        customRegFormInput.value = '1';
                        hiddenForm.appendChild(customRegFormInput);
                        
                        document.body.appendChild(hiddenForm);
                        hiddenForm.submit();

                    } else {
                        console.error('Kayıt verileri gelmedi veya yönlendirme yapılamıyor.');
                        if (modalErrorMessageContent) {
                            modalErrorMessageContent.textContent = 'Kayıt işlemi sırasında bir hata oluştu. Lütfen tekrar deneyin.';
                            modalErrorMessageDiv.classList.remove('hidden');
                        }
                    }

                } else {
                    if (modalErrorMessageContent) {
                        modalErrorMessageContent.textContent = data.message || 'Kod doğrulama sırasında bir hata oluştu.';
                        modalErrorMessageDiv.classList.remove('hidden');
                    }
                    if (modalSuccessMessageDiv) modalSuccessMessageDiv.classList.add('hidden');
                }
            } catch (error) {
                console.error('Kod doğrulama ve kayıt hatası:', error);
                if (modalErrorMessageContent) {
                    modalErrorMessageContent.textContent = 'Sunucu ile iletişimde bir hata oluştu. Lütfen tekrar deneyin.';
                    modalErrorMessageDiv.classList.remove('hidden');
                }
            } finally {
                isProcessing = false;
                confirmCodeButton.disabled = false;
                confirmCodeButton.innerHTML = 'Kodu Doğrula';
                confirmCodeButton.classList.remove('btn-processing');
            }
        });

        // Modal içindeki "Kodu Yeniden Gönder" butonu kaldırıldı.
        // resendCodeButton.addEventListener('click', async function() { /* ... */ });

        // Kapatma butonuna tıklama olayı
        if (closeModalButton) {
            closeModalButton.addEventListener('click', closeModal);
        }

        // Esc tuşuna basma olayı
        document.addEventListener('keydown', function(event) {
            if (!verificationModal.classList.contains('hidden') && (event.key === 'Escape' || event.keyCode === 27)) {
                closeModal();
            }
        });

    </script>
