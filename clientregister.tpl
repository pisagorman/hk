{* WHMCS Özel Kayıt Formu - Tailwind CSS Tasarımı - Action Düzeltmesi *}

<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
    /* Bu TPL'in ana sarmalayıcısı için stiller */
    .custom-register-page-wrapper { 
        padding-top: 100px; 
        padding-bottom: 150px; 
        width: 100%;
        display: flex; 
        justify-content: center; 
    }
    .tailwind-form-container {
        background-color: #ffffff;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        border-radius: 0.5rem; 
        width: 100%;
        max-width: 44rem; 
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
    .form-checkbox:checked {
        background-color: #3b82f6; 
        border-color: #3b82f6; 
    }
    .form-checkbox:focus {
        box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.25);
        outline: none;
    }
    .alert-danger-custom {
        background-color: #fee2e2; 
        border: 1px solid #f87171; 
        color: #b91c1c; 
        padding: 0.75rem 1rem;
        border-radius: 0.375rem; 
        margin-bottom: 1.5rem; 
    }
    .alert-success-custom {
        background-color: #dcfce7; 
        border: 1px solid #4ade80; 
        color: #15803d; 
        padding: 0.75rem 1rem;
        border-radius: 0.375rem;
        margin-bottom: 1.5rem;
    }
     .password-wrapper {
        position: relative;
    }
    .password-toggle {
        position: absolute;
        top: 50%;
        right: 0.75rem; /* px-3 */
        transform: translateY(-50%);
        cursor: pointer;
        color: #6b7280; /* gray-500 */
    }
    .password-toggle:hover {
        color: #4b5563; /* gray-700 */
    }
</style>

<div class="custom-register-page-wrapper"> 
    <div class="tailwind-form-container top-border-gradient bottom-border-gradient">
        {if $registration_success}
            <div class="p-6 sm:p-8 text-center">
                <div class="alert-success-custom">
                    {$LANG.registrationsuccessfull} {$LANG.registrationsuccessfulllogin}
                </div>
                <a href="{$WEB_ROOT}/clientarea.php?action=details" class="mt-4 inline-block bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-md shadow-md">{$LANG.clientareanavdetails}</a>
                 <br /><br />
                <a href="{$WEB_ROOT}/clientarea.php" class="mt-2 inline-block bg-gray-600 hover:bg-gray-700 text-white font-semibold py-2 px-4 rounded-md shadow-md">{$LANG.clientareanavhome}</a>
            </div>
        {else}
            <div class="text-center p-6 sm:p-8 border-b border-gray-200">
                <h1 class="text-2xl sm:text-3xl font-bold text-gray-800">{$LANG.clientregistertitle}</h1>
                <p class="text-sm text-gray-500 mt-1">(Ortalama 1 dk sürmektedir)</p>
            </div>

            {if $errormessage}
                <div class="p-6 sm:p-8 pt-2 pb-0">
                    <div class="alert-danger-custom">
                        <strong>{$LANG.clientareaerrors}</strong><br />
                        {$errormessage}
                    </div>
                </div>
            {/if}

            {* Form action'ı doğrudan register.php olarak ayarlandı *}
            <form method="post" action="register.php" class="p-6 sm:p-8 space-y-6" id="frmOzelKayitTailwind">
                <input type="hidden" name="register" value="true" />
                
                {* Hook'tan gelen {$form_token} veya global {$token} kullanılacak *}
                {if isset($form_token) && $form_token}
                    <input type="hidden" name="token" value="{$form_token}" />
                {else}
                    <input type="hidden" name="token" value="{$token}" />
                {/if}
                
                <input type="hidden" name="custom_registration_form" value="1" />

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                        <label for="firstname" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientareafirstname}</label>
                        <input type="text" id="firstname" name="firstname" value="{$clientfirstname|escape:'html'}" placeholder="{$LANG.clientareafirstname}" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                    </div>
                    <div>
                        <label for="lastname" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientarealastname}</label>
                        <input type="text" id="lastname" name="lastname" value="{$clientlastname|escape:'html'}" placeholder="{$LANG.clientarealastname}" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                    </div>
                </div>

                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientareaemail}</label>
                    <input type="email" id="email" name="email" value="{$clientemail|escape:'html'}" placeholder="mail@domain.tld" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                </div>

                <div>
                    <label for="phonenumber" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientareaphonenumber}</label>
                    <input type="tel" id="phonenumber" name="phonenumber" value="{$clientphonenumber|escape:'html'}" placeholder="5XX XXX XX XX" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                </div>

                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientareapassword}</label>
                    <div class="relative">
                        <input type="password" id="password" name="password" placeholder="Şifre" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                        <button type="button" onclick="togglePasswordVisibility('password', 'passwordIcon')" class="absolute inset-y-0 right-0 px-3 flex items-center text-gray-500 hover:text-gray-700">
                            <i id="passwordIcon" class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
                
                <div>
                    <label for="password2" class="block text-sm font-medium text-gray-700 mb-1">{$LANG.clientareaconfirmpassword}</label>
                    <div class="relative">
                        <input type="password" id="password2" name="password2" placeholder="Şifre Tekrar" class="form-input w-full px-4 py-2.5 border border-gray-300 rounded-md shadow-sm focus:outline-none transition duration-150 ease-in-out" required>
                        <button type="button" onclick="togglePasswordVisibility('password2', 'password2Icon')" class="absolute inset-y-0 right-0 px-3 flex items-center text-gray-500 hover:text-gray-700">
                            <i id="password2Icon" class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>

                <div class="space-y-4 pt-4 border-t border-gray-200">
                    <p class="text-xs text-gray-600">
                        İnternet sitenizdeki "<a href="#" class="text-blue-600 hover:underline">Aydınlatma Metnini</a>" ve "<a href="#" class="text-blue-600 hover:underline">Gizlilik Politikasını</a>" okudum ve anladım. Bu çerçevede;
                    </p>
                    <div class="flex items-start">
                        <input id="bilgilendirmeIzni" name="bilgilendirmeIzni" type="checkbox" class="form-checkbox h-5 w-5 text-blue-600 border-gray-300 rounded focus:ring-blue-500 mt-0.5" checked disabled>
                        <label for="bilgilendirmeIzni" class="ml-2 text-sm text-gray-700">Bilgilendirme, tanıtım ve reklam amaçlı ileti ve SMS gönderilmesi için,</label>
                    </div>
                    <div class="flex items-start">
                        <input id="veriPaylasimIzni" name="veriPaylasimIzni" type="checkbox" class="form-checkbox h-5 w-5 text-blue-600 border-gray-300 rounded focus:ring-blue-500 mt-0.5">
                        <label for="veriPaylasimIzni" class="ml-2 text-sm text-gray-700">Kişisel verilerimin yurt dışında hizmet veren hizmet sağlayıcıları ile paylaşılması için</label>
                    </div>
                    <p class="text-sm font-medium text-gray-700">AÇIK RIZA'mı veriyorum.</p>
                    <div class="flex items-start">
                        <input id="kullanimSartlari" name="kullanimSartlari" type="checkbox" class="form-checkbox h-5 w-5 text-blue-600 border-gray-300 rounded focus:ring-blue-500 mt-0.5" required>
                        <label for="kullanimSartlari" class="ml-2 text-sm text-gray-700">
                            "Aydınlatma Metnini" ve "Gizlilik Politikasını" okudum ve anladım.
                        </label>
                    </div>
                </div>

                <div>
                    <button type="submit" class="w-full bg-slate-800 hover:bg-slate-700 text-white font-semibold py-3 px-4 rounded-md shadow-md focus:outline-none focus:ring-2 focus:ring-slate-500 focus:ring-offset-2 transition duration-150 ease-in-out">
                        {$LANG.clientregistertitle}
                    </button>
                </div>
            </form>
        {/if} {* registration_success sonu *}

        <div class="bg-gray-50 text-center p-6 sm:p-8 rounded-b-lg border-t border-gray-200">
            <p class="text-sm text-gray-600">
                {$LANG.alreadyregistered}
                <a href="{$WEB_ROOT}/login.php" class="font-medium text-blue-600 hover:underline">{$LANG.login}</a>
            </p>
        </div>
    </div>
</div>

<script>
    function togglePasswordVisibility(inputId, iconId) {
        const passwordInput = document.getElementById(inputId);
        const passwordIcon = document.getElementById(iconId).querySelector('i');
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            passwordIcon.classList.remove('fa-eye');
            passwordIcon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            passwordIcon.classList.remove('fa-eye-slash');
            passwordIcon.classList.add('fa-eye');
        }
    }
</script>
