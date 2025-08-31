<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>

<style>
    /* Genel stil, font ayarları */
    body {
        font-family: 'Inter', sans-serif;
        /* Arka plan rengini kaldırıyoruz, temanın varsayılan arka planı görünecek */
        /* background-color: #f8f9fa; */ 
    }

    /* Card ve form kaplayıcı stil */
    .card {
        border-radius: 0.75rem; /* Daha yuvarlak köşeler */
        border: 2px solid #F57C00; /* Resimdeki gibi turuncu dış çerçeve */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08); /* Yumuşak gölge */
        background: #ffffff;
        padding: 1.5rem; /* İç boşlukları artır */
        transition: all 0.3s ease;
    }
    /* WHMCS'in bazı temalarında "card-body" ek padding'e sahip olabilir, bu override edilebilir */
    /* .card-body.extra-padding { padding: 1.5rem; } */ 

    /* Başlık stil */
    .card-title {
        font-size: 1.625rem; /* Daha büyük başlık */
        font-weight: 700; /* Kalın başlık */
        color: #334155; /* Koyu gri metin */
        margin-bottom: 1.5rem; /* Alt boşluk */
        text-align: center; /* Başlık ortalı */
    }

    /* Form elemanları için genel stil (İnce ve turkuaz çizgiler) */
    label {
        display: block;
        font-size: 0.875rem; /* Küçük font */
        font-weight: 500; /* Orta kalınlıkta font */
        color: #475569; /* Koyu gri label metni */
        margin-bottom: 0.25rem; /* Label ile input arası boşluk */
    }

    .form-control {
        width: 100%;
        padding: 0.75rem 1rem; /* Daha iyi iç boşluk */
        border: 1px solid #26c6da; /* İnce ve TURKUAZ border */
        border-radius: 0.5rem; /* Yuvarlak köşeler */
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.03); /* Çok hafif iç gölge */
        font-size: 0.875rem; /* Küçük font */
        color: #334155; /* Koyu metin */
        transition: all 0.2s ease-in-out;
    }

    .form-control:focus {
        border-color: #00bcd4; /* Daha belirgin turkuaz odak borderı */
        box-shadow: 0 0 0 3px rgba(38, 198, 218, 0.25); /* Odak halkası */
        outline: none;
    }

    .form-control.disabled {
        background-color: #f1f5f9; /* Pasif alan arka planı */
        cursor: not-allowed;
        opacity: 0.8;
    }

    /* Textarea için özel stil */
    textarea.markdown-editor {
        min-height: 120px; /* Minimum yükseklik */
        resize: vertical; /* Sadece dikeyde boyutlandırma */
    }

    /* Özel dosya yükleme butonu (WHMCS varsayılanına uygun) */
    .custom-file-label {
        border-radius: 0.5rem;
        background-color: #f8fafc;
        border: 1px solid #26c6da; /* TURKUAZ border */
        padding: 0.75rem 1rem;
        font-size: 0.875rem;
        color: #64748b;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: space-between;
        transition: all 0.2s ease-in-out;
    }

    .custom-file-label:hover {
        background-color: #f1f5f9;
        border-color: #00bcd4; /* Hover'da daha belirgin turkuaz */
    }

    .custom-file-input:focus ~ .custom-file-label {
        border-color: #00bcd4;
        box-shadow: 0 0 0 3px rgba(38, 198, 218, 0.25);
    }
    .custom-file-input {
        display: none; /* Gerçek inputu gizle */
    }

    /* Add More butonu */
    .input-group-append .btn-default {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.75rem 1rem;
        font-size: 0.875rem;
        border-radius: 0.5rem;
        white-space: nowrap;
        background: linear-gradient(135deg, #26c6da, #40c4da); /* Cyan-mavi gradient (Resimle uyumlu) */
        color: #ffffff;
        box-shadow: 0 2px 8px rgba(38, 198, 218, 0.2);
        border: none;
        transition: all 0.3s ease;
    }
    .input-group-append .btn-default:hover {
        background: linear-gradient(135deg, #40c4da, #26c6da);
        box-shadow: 0 4px 12px rgba(38, 198, 218, 0.4);
    }
    .input-group-append .btn-default i {
        margin-right: 0; /* İkonun yanındaki boşluğu sıfırla */
    }

    /* Genel uyarı mesajı (alert) stilleri */
    .alert-danger-custom {
        background-color: #fee2e2;
        border: 1px solid #f87171;
        color: #b91c1c;
        padding: 0.75rem 1rem;
        border-radius: 0.5rem;
        margin-bottom: 1.5rem;
        font-size: 0.875rem;
    }

    /* Buton stilleri */
    .btn-submit-primary { /* "Gönder" butonu (Resimdeki gibi mavi-mor) */
        background: linear-gradient(135deg, #4f46e5, #8b5cf6); /* İndigo-mor gradient */
        color: #ffffff;
        padding: 0.75rem 1.5rem;
        font-size: 1rem;
        font-weight: 600;
        border-radius: 0.5rem;
        box-shadow: 0 4px 12px rgba(79, 70, 229, 0.3);
        border: none;
        transition: all 0.3s ease;
    }
    .btn-submit-primary:hover {
        background: linear-gradient(135deg, #8b5cf6, #4f46e5);
        box-shadow: 0 6px 16px rgba(79, 70, 229, 0.4);
    }

    .btn-submit-primary:disabled { /* Pasif hale gelince görünümü */
        opacity: 0.7;
        cursor: not-allowed;
        box-shadow: none; /* Gölgeyi kaldır */
    }

    .btn-submit-secondary { /* "İptal" butonu (Resimdeki gibi turuncu-sarı) */
        background: linear-gradient(135deg, #f97316, #fbbf24); /* Turuncu-sarı gradient */
        color: #ffffff;
        padding: 0.75rem 1.5rem;
        font-size: 1rem;
        font-weight: 600;
        border-radius: 0.5rem;
        box-shadow: 0 4px 12px rgba(249, 115, 22, 0.3);
        border: none;
        transition: all 0.3s ease;
    }
    .btn-submit-secondary:hover {
        background: linear-gradient(135deg, #fbbf24, #f97316);
        box-shadow: 0 6px 16px rgba(249, 115, 22, 0.4);
    }

    .btn-remove-attachment { /* Kaldırma butonu (kırmızı) */
        background: linear-gradient(135deg, #ef4444, #dc2626); /* Kırmızı gradient */
        color: #ffffff;
        padding: 0.75rem 1rem;
        font-size: 0.875rem;
        font-weight: 500;
        border-radius: 0.5rem;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border: none;
        transition: all 0.3s ease;
    }
    .btn-remove-attachment:hover {
        background: linear-gradient(135deg, #dc2626, #ef4444);
        box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
    }

    /* Diğer boşluk ve hizalama ayarları - Orijinal Bootstrap/WHMCS yapısını koruduk */
    .form-group {
        margin-bottom: 1rem;
    }
    .margin-bottom {
        margin-bottom: 1rem;
    }
    .mt-15 {
        margin-top: 1.5rem;
    }
    /* `row` ve `col-md-X` ile ilgili özel CSS tanımlarını kaldırdık, temanın varsayılan grid sistemini kullanacak */
</style>

<div class="max-w-4xl mx-auto my-10 px-4 sm:px-6 lg:px-8"> <form method="post" action="{$smarty.server.PHP_SELF}?step=3" enctype="multipart/form-data" role="form" class="card" id="supportTicketForm">

        <h3 class="card-title">{lang key="createNewSupportRequest"}</h3>

        {if $errormessage}
            <div class="alert-danger-custom" role="alert">
                <strong>{lang key='clientareaerrors'}</strong><br />
                {$errormessage}
            </div>
        {/if}

        <input type="hidden" name="deptid" value="{$deptid}" />
        <input type="hidden" name="urgency" value="{$urgency|default:'Medium'}" />

        <div class="row">
            <div class="form-group col-md-4">
                <label for="inputName">{lang key='supportticketsclientname'}</label>
                <input type="text" name="name" id="inputName" value="{$name}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
            </div>
            <div class="form-group col-md-5">
                <label for="inputEmail">{lang key='supportticketsclientemail'}</label>
                <input type="email" name="email" id="inputEmail" value="{$email}" class="form-control{if $loggedin} disabled{/if}"{if $loggedin} disabled="disabled"{/if} />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-10">
                <label for="inputSubject">{lang key='supportticketsticketsubject'}</label>
                <input type="text" name="subject" id="inputSubject" value="{$subject}" class="form-control" />
            </div>
        </div>
        {if $relatedservices}
            <div class="row">
                <div class="form-group col-md-5">
                    <label for="inputRelatedService">{lang key='relatedservice'}</label>
                    <select name="relatedservice" id="inputRelatedService" class="form-control">
                        <option value="">{lang key='none'}</option>
                        {foreach $relatedservices as $relatedservice}
                            <option value="{$relatedservice.id}">
                                {$relatedservice.name} ({$relatedservice.status})
                            </option>
                        {/foreach}
                    </select>
                </div>
            </div>
        {/if}

        <div class="form-group">
            <label for="inputMessage">{lang key='contactmessage'}</label>
            <textarea name="message" id="inputMessage" rows="12" class="form-control markdown-editor" data-auto-save-name="client_ticket_open">{$message}</textarea>
        </div>

        <div class="form-group">
            <label for="inputAttachments">{lang key='supportticketsticketattachments'}</label>
            <div class="input-group mb-1 attachment-group">
                <div class="custom-file">
                    <label class="custom-file-label text-truncate" for="inputAttachment1" data-default="{lang key='chooseFile'}">
                        {lang key='chooseFile'}
                        <i class="fas fa-upload text-gray-500 ml-2"></i>
                    </label>
                    <input type="file" class="custom-file-input" name="attachments[]" id="inputAttachment1">
                </div>
                <div class="input-group-append">
                    <button class="btn btn-default" type="button" id="btnTicketAttachmentsAdd">
                        <i class="fas fa-plus"></i>
                        {lang key='addmore'}
                    </button>
                </div>
            </div>
            <div id="fileUploadsContainer"></div>
            <div class="text-muted">
                <small>{lang key='supportticketsallowedextensions'}: {$allowedfiletypes} ({lang key="maxFileSize" fileSize="$uploadMaxFileSize"})</small>
            </div>
        </div>

        <div id="customFieldsContainer">
            {include file="$template/supportticketsubmit-customfields.tpl"}
        </div>

        <div id="autoAnswerSuggestions" class="w-hidden"></div>

        <div class="text-center margin-bottom">
            <div class="cf-turnstile" data-sitekey="0x4AAAAAABiEDKas4PUC9Bh8"></div>
        </div>

        <div class="form-group text-center mt-15">
            <button type="submit" id="openTicketSubmit" class="btn-submit-primary disable-on-click{$captcha->getButtonClass($captchaForm)}">
                {lang key='supportticketsticketsubmit'}
            </button>
            <a href="supporttickets.php" class="btn-submit-secondary ml-3">
                {lang key='cancel'}
            </a>
        </div>
    </form>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const supportTicketForm = document.getElementById('supportTicketForm');
        const openTicketSubmitBtn = document.getElementById('openTicketSubmit');

        // Form gönderildiğinde butonun durumunu güncelle
        if (supportTicketForm && openTicketSubmitBtn) {
            supportTicketForm.addEventListener('submit', function() {
                openTicketSubmitBtn.textContent = 'Talebiniz işleniyor...';
                openTicketSubmitBtn.disabled = true;
                openTicketSubmitBtn.classList.add('disabled'); // Ekstra görsel pasiflik için Tailwind sınıfı ekleyebilirsin
            });
        }

        const addAttachmentBtn = document.getElementById('btnTicketAttachmentsAdd');
        const fileUploadsContainer = document.getElementById('fileUploadsContainer');
        const fileUploadTemplate = `
            <div class="input-group mb-1 attachment-group">
                <div class="custom-file">
                    <label class="custom-file-label text-truncate" data-default="{lang key='chooseFile'}">
                        {lang key='chooseFile'}
                        <i class="fas fa-upload text-gray-500 ml-2"></i>
                    </label>
                    <input type="file" class="custom-file-input" name="attachments[]">
                </div>
                 <div class="input-group-append">
                    <button class="btn btn-default btn-remove-attachment" type="button">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>
        `;

        if (addAttachmentBtn) {
            addAttachmentBtn.addEventListener('click', function () {
                const newUploadField = document.createElement('div');
                newUploadField.innerHTML = fileUploadTemplate;
                fileUploadsContainer.appendChild(newUploadField);
                
                // Yeni eklenen dosya inputuna ve remove butonuna event listener ekle
                const newFileInput = newUploadField.querySelector('.custom-file-input');
                newFileInput.addEventListener('change', updateFileNameDisplay);
                
                const removeBtn = newUploadField.querySelector('.btn-remove-attachment');
                if (removeBtn) {
                    removeBtn.addEventListener('click', function() {
                        this.closest('.attachment-group').remove();
                    });
                }
            });
        }

        // Dosya input değişikliklerini label'a yansıtma
        function updateFileNameDisplay(e) {
            const fileName = e.target.files.length > 0 ? e.target.files[0].name : e.target.closest('.custom-file').querySelector('.custom-file-label').dataset.default;
            e.target.closest('.custom-file').querySelector('.custom-file-label').textContent = fileName;
        }

        // Mevcut dosya inputlarına dinleyici ekle
        document.querySelectorAll('.custom-file-input').forEach(input => {
            input.addEventListener('change', updateFileNameDisplay);
        });

        // Mevcut kaldırma butonlarına dinleyici ekle (varsa)
        document.querySelectorAll('.btn-remove-attachment').forEach(button => {
            button.addEventListener('click', function() {
                this.closest('.attachment-group').remove();
            });
        });

        {if $kbsuggestions}
            // Knowledgebase önerileri için fonksiyon (ilk kodla uyumlu)
            function getTicketSuggestions() {
                console.log('Ticket suggestions loaded');
                // Öneriler için ek JS kodları burada yer alabilir
            }
            getTicketSuggestions();
        {/if}
    });

    // Custom fields yenileme fonksiyonu (WHMCS'in kendisi çağırır, departman gizlendiği için doğrudan kullanıcı etkileşimiyle tetiklenmez)
    function refreshCustomFields(element) {
        console.log('Department changed: ' + element.value + ' (Bu fonksiyon, departman gizlendiği için artık doğrudan kullanıcı etkileşimiyle tetiklenmez.)');
        // Eğer özel alanların departman seçimine göre dinamik olarak değişmesi hala gerekiyorsa,
        // bu mantığı WHMCS PHP tarafında veya sayfa yüklenirken varsayılan departmana göre çalışacak şekilde ayarlamalısın.
    }
</script>
