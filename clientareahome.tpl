<meta charset="UTF-8">
{include file="$template/includes/flashmessage.tpl"}

<!-- Üstteki Menü Butonları -->
<div class="row justify-content-start mb-10">
    <div class="col-md-12 py-4">
        <div class="container-clientarea dark-bg gradient-animated-bg gradient-blue-bg rounded-8 position-relative px-3 py-3">
            <div class="d-flex justify-content-center flex-wrap gap-3 mt-4">
                <a class="btn-outline-light btn-sm mx-1" href="index.php/account/users">Kullanıcı Yönetimi</a>
                <a class="btn-outline-light btn-sm mx-1" href="clientarea.php?action=emails">Gönderilen E-Postalar</a>
                <a class="btn-outline-light btn-sm mx-1" href="index.php/user/password">Şifre Değiştir</a>
                <a class="btn-outline-light btn-sm mx-1" href="index.php/account/contacts">Sorumlular ve Alt Hesaplar</a>
                <a class="btn-outline-light btn-sm mx-1" href="clientarea.php?action=security">Hesap Güvenliği</a>
                <a class="btn-outline-light btn-sm mx-1" href="/index.php/user/security">İki Aşamalı Doğrulama</a>
            </div>
        </div>
    </div>
</div>

<!-- Kullanıcı Bilgileri Alanı ve Banner Alanı (Yükseklikleri Eşitlenmiş) -->
<div class="row justify-content-start mb-10" style="display: flex; align-items: stretch;">
    <!-- Kullanıcı Bilgileri Alanı -->
    <div class="col-md-8">
        <div class="container-clientarea dark-bg gradient-animated-bg gradient-blue-bg rounded-8 position-relative px-7 py-7 px-lg-10 py-lg-10 mb-lg-0 mb-10" style="height: 100%;">
            <div class="clientarea-new-header d-flex justify-content-start">
                <div class="profile-photo position-relative mr-8">
                    <img class="gravatar" src="https://www.gravatar.com/avatar/{$loggedinuser->email|md5}" alt="Avatar" title="Avatar for {$loggedinuser.firstname}"/>
                    <a class="edit-photo" target="_blank" href="https://gravatar.com/">{lang key='orderForm.edit'}</a>
                </div>
                <div class="header-accout-details white-text">
                    <h5 class="d-block coodiv-text-5">{lang key="welcomeback"}</h5>
                    <span class="username coodiv-text-7 mr-4">{$clientsdetails.firstname} {$clientsdetails.lastname} !</span>
                    <a class="edit coodiv-text-12 badge badge-primary" href="clientarea.php?action=details">{lang key='orderForm.update'}</a>
                    <a class="balance coodiv-text-12 badge badge-warning" href="clientarea.php?action=addfunds">{$clientsstats.creditbalance}</a>
                    <a class="logout coodiv-text-12 badge" href="logout.php" style="background: #26c6da; color: #ffffff; margin-left: 5px; border: 2px solid #1e9ab0;">Çıkış</a>
                    <span class="adress d-block coodiv-text-12 font-weight-light mt-2">{$clientsdetails.address1},<br>{$clientsdetails.city} <b>{$clientsdetails.country}</b></span>
                    <span class="d-block coodiv-text-11">{$clientsdetails.phonenumber}</span>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Alanı -->
    <div class="col-md-4">
        <div class="banner-widget-sidebar bg-gradient-custom shadow-2 text-white py-13 px-10 rounded-12 position-relative" style="background: linear-gradient(135deg, #2e7d32, #66bb6a); height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center;">
            <svg class="banner-widget-sidebar-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 604 178" style="position: absolute; top: -50px; left: -40px; opacity: 0.1;">
                <path d="M1920,0V146.85c-14.7,5.55-28.79,12.05-49,18.15-9.73,2.94-42.25,12.77-72,13-72.59.56-78.87-56.38-182-90-38.62-12.59-65.18-13.55-99-40a187.6,187.6,0,0,1-43-48Z" transform="translate(-1316)" style="fill: #ffffff;"></path>
                <path d="M1882,0c9.29,27.61-36.45,83.32-63,79-12.19-2-14.6-15.7-38-25-17.81-7.08-24.76-2.45-37-9-9.63-5.15-21.36-16.58-28-45Z" transform="translate(-1316)" style="fill: #ffffff;"></path>
            </svg>
            <div class="d-block text-center" style="position: relative; z-index: 1;">
                <div class="position-relative">
                    <h3 class="coodiv-text-7 font-weight-bold mb-3" style="color: #ffffff;">
                        <span class="d-block">Sanal Santral 299 TL !</span>
                    </h3>
                    <p class="coodiv-text-11 mb-4" style="color: #e0f2f1;">299 TL'den başlayan fiyatlarla sanal santrale sahip olun.</p>
                    <a href="https://www.hostingkontrol.com/sanal-santral" target="_blank" class="btn btn-white rounded-20 coodiv-text-12" style="background: #ffffff; color: #2e7d32; padding: 8px 20px; transition: all 0.3s ease;" onmouseover="this.style.background='#dcedc8'; this.style.color='#2e7d32';" onmouseout="this.style.background='#ffffff'; this.style.color='#2e7d32';">Hemen Başla</a>
                </div>
            </div>
            <div class="wave-effect" style="position: absolute; bottom: -20px; left: 0; width: 100%; height: 20px; background: url('data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 1440 60%22%3E%3Cpath fill=%22%23ffffff%22 fill-opacity=%220.1%22 d=%22M0,30V60H1440V30c0-16.569-24.987-30-55.862-30H55.862C24.987,0,0,13.431,0,30z%22/%3E%3C/svg%3E');"></div>
        </div>
    </div>
</div>

<div class="col-md-12 col-lg-12" style="margin: 5px auto; padding: 10px; background: #f8f9fa; border-radius: 12px;">
    <div class="ticket-notification-card" style="background: linear-gradient(135deg, #ffffff, #f0f9fa); border-radius: 12px; padding: 15px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); border: 1px solid #e6e6e6;">
        <div class="panel-header" style="font-size: 16px; color: #26c6da; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 15px;">
            Destek Taleplerim
        </div>
        {if $hasHomeTickets}
            <div style="width: 100%; overflow-x: auto;">
                <!-- Table Header Wrapper for border-radius -->
                <div style="border-top-left-radius: 8px; border-top-right-radius: 8px; overflow: hidden;">
                    <div style="display: table; width: 100%; border-collapse: collapse; table-layout: fixed;">
                        <div style="display: table-header-group; background-color: #e3f2fd; color: #ff6e42; font-weight: 600; font-size: 13px; text-transform: uppercase;">
                            <div style="display: table-row;">
                                <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 30%; vertical-align: middle;">Ticket #</div>
                                <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 20%; vertical-align: middle;">Konu</div>
                                <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 12%; vertical-align: middle;">Durum</div>
                                <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 13%; vertical-align: middle;">İşlem</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Table Header Wrapper -->
                <div style="display: table; width: 100%; border-collapse: collapse; table-layout: fixed;">
                    <div style="display: table-row-group;">
                        {assign var="displayedHomeTicketsCount" value=0}
                        {foreach $homeTickets as $ticket}
                            {if $displayedHomeTicketsCount < 3}
                                <a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}" style="display: table-row; background-color: #ffffff; text-decoration: none; transition: background-color 0.2s ease;" onmouseover="this.style.backgroundColor='#f8f9fa';" onmouseout="this.style.backgroundColor='#ffffff';">
                                    <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 30%; box-sizing: border-box;">
                                        #{$ticket.tid}
                                    </div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 20%; box-sizing: border-box;">
                                        {$ticket.title}
                                    </div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 12%; box-sizing: border-box;">
                                        <span style="display: inline-block; padding: 4px 10px; border-radius: 10px; font-size: 12px; font-weight: 500; color: #ffffff; background: {if $ticket.status == 'Open' || $ticket.status == 'Customer Reply'}#ff6e42{elseif $ticket.status == 'Closed'}#4caf50{else}#26c6da{/if};">
                                            {$ticket.status}
                                        </span>
                                    </div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 13%; box-sizing: border-box;">
                                        <span style="background: #26c6da; color: #ffffff; padding: 6px 15px; border-radius: 10px; font-size: 12px; font-weight: 500; display: inline-block;">Görüntüle</span>
                                    </div>
                                </a>
                                {assign var="displayedHomeTicketsCount" value=$displayedHomeTicketsCount+1}
                            {/if}
                        {/foreach}
                    </div>
                </div>
            </div>
            {if count($homeTickets) > 3}
                <p style="color: #666; font-size: 12px; text-align: right; margin-top: 15px;">
                    <a href="supporttickets.php" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Tüm Talepleri Görüntüle</a>
                </p>
            {/if}
        {else}
            <p style="color: #666; font-size: 14px; font-weight: 500; margin: 0; display: flex; justify-content: space-between; align-items: center; gap: 10px;">
                <span style="display: flex; align-items: center; gap: 10px;">
                    <i class="feather icon-check-circle" style="color: #4caf50; font-size: 18px;"></i>
                    Destek talebiniz bulunmamaktadır.
                </span>
                <a href="/submitticket.php?step=2&deptid=1" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Yeni Destek Talebi</a>
            </p>
        {/if}
    </div>
</div>

<div class="col-md-12 col-lg-12" style="margin: 5px auto; padding: 10px; background: #f8f9fa; border-radius: 12px;">
    <div class="ticket-notification-card" style="background: linear-gradient(135deg, #ffffff, #f0f9fa); border-radius: 12px; padding: 15px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); border: 1px solid #e6e6e6;">
        <div class="panel-header" style="font-size: 16px; color: #26c6da; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 15px;">
            Faturalarım
        </div>
        {if $clientsstats.numunpaidinvoices > 0}
            <div style="display: flex; justify-content: space-between; align-items: center; margin: 10px 0;">
                <p style="color: #666; font-size: 14px; font-weight: 500; margin: 0; display: flex; align-items: center; gap: 10px; text-align: left;">
                    <i class="feather icon-alert-circle" style="color: #ff6e42; font-size: 18px;"></i>
                    Toplamda <strong>{$clientsstats.numunpaidinvoices}</strong> adet ödenmemiş faturanız bulunmaktadır. Toplam tutar: <strong>{$totalUnpaidAmount|number_format:2} {$currencySymbol}</strong>
                </p>
                <a href="clientarea.php?action=invoices" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Faturaları Görüntüle</a>
            </div>
        {else}
            <p style="color: #666; font-size: 14px; font-weight: 500; margin: 0; display: flex; justify-content: space-between; align-items: center; gap: 10px;">
                <span style="display: flex; align-items: center; gap: 10px;">
                    <i class="feather icon-check-circle" style="color: #4caf50; font-size: 18px;"></i>
                    Ödenmemiş faturanız bulunmaktadır.
                </span>
                <a href="clientarea.php?action=invoices" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Faturaları Görüntüle</a>
            </p>
        {/if}
    </div>
</div>

<div class="col-md-12 col-lg-12" style="margin: 5px auto; padding: 10px; background: #f8f9fa; border-radius: 12px;">
    <div class="active-services-panel overflow-hidden rounded-10" style="background: #ffffff; border-radius: 12px; padding: 15px 20px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05); position: relative; border: 1px solid #e6e6e6;">
        <div class="panel-header" style="font-size: 16px; color: #26c6da; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 15px;">
            Hizmetlerim
        </div>
        <div class="panel-body" style="color: #555; font-size: 14px; line-height: 1.6;">
            {if $client && $client->services && count($client->services) > 0}
                <div style="width: 100%; overflow-x: auto;">
                    <div style="border-top-left-radius: 8px; border-top-right-radius: 8px; overflow: hidden;">
                        <div style="display: table; width: 100%; border-collapse: collapse; table-layout: fixed;">
                            <div style="display: table-header-group; background-color: #e3f2fd; color: #ff6e42; font-weight: 600; font-size: 13px; text-transform: uppercase;">
                                <div style="display: table-row;">
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 30%; vertical-align: middle;">Ürün/Hizmet</div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 20%; vertical-align: middle;">Alan Adı</div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 12%; vertical-align: middle;">Fiyat</div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 13%; vertical-align: middle;">Döngü</div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 13%; vertical-align: middle;">Bitiş Tarihi</div>
                                    <div style="display: table-cell; padding: 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 12%; vertical-align: middle;">Durum</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="display: table; width: 100%; border-collapse: collapse; table-layout: fixed;">
                        <div style="display: table-row-group;">
                            {assign var="displayedActiveServicesCount" value=0}
                            {foreach $client->services as $service}
                                {if $service.domainstatus == 'Active' && $service.product.type != 'Server/VPS'}
                                    {if $displayedActiveServicesCount < 3}
                                        <a href="clientarea.php?action=productdetails&id={$service.id}" style="display: table-row; background-color: #ffffff; text-decoration: none; transition: background-color 0.2s ease;" onmouseover="this.style.backgroundColor='#f8f9fa';" onmouseout="this.style.backgroundColor='#ffffff';">
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 30%; box-sizing: border-box;">
                                                {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                            </div>
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 20%; box-sizing: border-box;">
                                                {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                            </div>
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 12%; box-sizing: border-box;">
                                                {$service.amount|number_format:2} {$currencySymbol}
                                            </div>
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 13%; box-sizing: border-box;">
                                                {if $service.billingcycle == 'Monthly'}Aylık{elseif $service.billingcycle == 'Quarterly'}3 Aylık{elseif $service.billingcycle == 'Semiannually'}6 Aylık{elseif $service.billingcycle == 'Annually'}Yıllık{elseif $service.billingcycle == 'Biennially'}2 Yıllık{elseif $service.billingcycle == 'Triennially'}3 Yıllık{else}{$service.billingcycle}{/if}
                                            </div>
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 13%; box-sizing: border-box;">
                                                {$service.nextduedate|date_format:"%d.%m.%Y"}
                                            </div>
                                            <div style="display: table-cell; padding: 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left; vertical-align: middle; width: 12%; box-sizing: border-box;">
                                                <span style="display: inline-block; padding: 4px 10px; border-radius: 10px; font-size: 12px; font-weight: 500; color: #ffffff; background: {if $service.domainstatus == 'Active'}#4caf50{elseif $service.domainstatus == 'Suspended'}#ffca28{elseif $service.domainstatus == 'Terminated' || $service.domainstatus == 'Cancelled'}#d32f2f{else}rgba(0, 0, 0, 0.05){/if};">
                                                    {if $service.domainstatus == 'Active'}Aktif{elseif $service.domainstatus == 'Pending'}Bekliyor{elseif $service.domainstatus == 'Suspended'}Askıya Alındı{elseif $service.domainstatus == 'Terminated'}Sonlandırıldı{elseif $service.domainstatus == 'Cancelled'}İptal Edildi{else}{$service.domainstatus}{/if}
                                                </span>
                                            </div>
                                        </a>
                                        {assign var="displayedActiveServicesCount" value=$displayedActiveServicesCount+1}
                                    {/if}
                                {/if}
                            {/foreach}
                        </div>
                    </div>
                </div>
                {if $clientsstats.productsnumactive > 3}
                    <p style="color: #666; font-size: 12px; text-align: right; margin-top: 15px;">
                        <a href="clientarea.php?action=services" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Hizmetleri Görüntüle</a>
                    </p>
                {/if}
            {else}
                <p style="color: #666; font-size: 14px; font-weight: 500; margin: 0; display: flex; justify-content: space-between; align-items: center; gap: 10px;">
                    <span style="display: flex; align-items: center; gap: 10px;">
                        <i class="feather icon-check-circle" style="color: #4caf50; font-size: 18px;"></i>
                        Aktif hizmetiniz bulunmamaktadır.
                    </span>
                    <a href="clientarea.php?action=services" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Hizmetleri Görüntüle</a>
                </p>
            {/if}
        </div>
    </div>
</div>

<div class="col-md-12 col-lg-12" style="margin: 5px auto; padding: 10px; background: #f8f9fa; border-radius: 12px;">
    <div class="active-domains-panel overflow-hidden rounded-10" style="background: #ffffff; border-radius: 12px; padding: 15px 20px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05); position: relative; border: 1px solid #e6e6e6;">
        <div class="panel-header" style="font-size: 16px; color: #26c6da; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 15px;">
            Alan Adlarım
        </div>
        <div class="panel-body" style="color: #555; font-size: 14px; line-height: 1.6;">
            {if $client && $client->domains && count($client->domains) > 0 && $clientsstats.numactivedomains > 0}
                <div style="width: 100%; overflow-x: auto;">
                    <div style="border-top-left-radius: 8px; border-top-right-radius: 8px; overflow: hidden;">
                        <div style="display: table; width: 100%; border-collapse: collapse;">
                            <div style="display: table-header-group; background-color: #e3f2fd; color: #ff6e42; font-weight: 600; font-size: 13px; text-transform: uppercase;">
                                <div style="display: table-row;">
                                    <div style="display: table-cell; padding: 12px 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 30% !important; vertical-align: middle !important;">Alan Adı</div>
                                    <div style="display: table-cell; padding: 12px 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 25% !important; vertical-align: middle !important;">Kayıt Tarihi</div>
                                    <div style="display: table-cell; padding: 12px 10px; border-bottom: 2px solid #bbdefb; text-align: left; width: 25% !important; vertical-align: middle !important;">Bitiş Tarihi</div>
                                    <div style="display: table-cell; padding: 12px 10px; border-bottom: 2px solid #bbdefb; text-align: right; width: 20% !important; vertical-align: middle !important;">Durum</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="display: table; width: 100%; border-collapse: collapse;">
                        <div style="display: table-row-group;">
                            {assign var="displayedActiveDomainsCount" value=0}
                            {foreach $client->domains as $domain}
                                {if $domain.status == 'Active'}
                                    {if $displayedActiveDomainsCount < 3}
                                        <a href="clientarea.php?action=domaindetails&id={$domain.id}" style="display: table-row; background-color: #ffffff; text-decoration: none; transition: background-color 0.2s ease;" onmouseover="this.style.backgroundColor='#f8f9fa';" onmouseout="this.style.backgroundColor='#ffffff';">
                                            <div style="display: table-cell; padding: 12px 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left !important; vertical-align: middle !important;">
                                                {$domain.domain}
                                            </div>
                                            <div style="display: table-cell; padding: 12px 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left !important; vertical-align: middle !important;">
                                                {if $domain.registrationdate && $domain.registrationdate != '0000-00-00'}{$domain.registrationdate|date_format:"%d.%m.%Y"}{else}Veri Yok{/if}
                                            </div>
                                            <div style="display: table-cell; padding: 12px 10px; border-bottom: 1px solid #e6e6e6; color: #666; font-size: 14px; font-weight: 500; text-align: left !important; vertical-align: middle !important;">
                                                {$domain.expirydate|date_format:"%d.%m.%Y"}
                                            </div>
                                            <div style="display: table-cell; padding: 12px 10px; border-bottom: 1px solid #e6e6e6; text-align: right !important; vertical-align: middle !important;">
                                                <span style="display: inline-block; padding: 4px 10px; border-radius: 10px; font-size: 12px; font-weight: 500; color: #ffffff; background: {if $domain.status == 'Active'}#4caf50{elseif $domain.status == 'Expired'}#d32f2f{else}rgba(0, 0, 0, 0.05){/if}; border-radius: 10px; font-size: 12px; color: {if $domain.status == 'Active' || $domain.status == 'Expired'}#ffffff{else}#666{/if};">
                                                    {if $domain.status == 'Active'}Aktif{elseif $domain.status == 'Expired'}Süresi Doldu{else}{$domain.status}{/if}
                                                </span>
                                            </div>
                                        </a>
                                        {assign var="displayedActiveDomainsCount" value=$displayedActiveDomainsCount+1}
                                    {/if}
                                {/if}
                            {/foreach}
                        </div>
                    </div>
                </div>
                {if $clientsstats.numactivedomains > 3}
                    <p style="color: #666; font-size: 12px; text-align: right; margin-top: 15px;">
                        <a href="clientarea.php?action=domains" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Alan Adlarını Görüntüle</a>
                    </p>
                {/if}
            {else}
                <p style="color: #666; font-size: 14px; font-weight: 500; margin: 0; display: flex; justify-content: space-between; align-items: center; gap: 10px;">
                    <span style="display: flex; align-items: center; gap: 10px;">
                        <i class="feather icon-check-circle" style="color: #4caf50; font-size: 18px;"></i>
                        Aktif alan adınız bulunmamaktadır.
                    </span>
                    <a href="clientarea.php?action=domains" class="custom-action-btn" style="background: #ff6e42; color: #ffffff; padding: 4px 30px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">Alan Adlarını Görüntüle</a>
                </p>
            {/if}
        </div>
    </div>
</div>

<!-- VDS Sunucu Promosyon Banner'ı -->
<div class="row justify-content-center" style="max-width: 1200px; margin: 0 auto; padding: 0; background: #f8f9fa; border-radius: 12px;">
    <div class="col-md-12 col-lg-12" style="padding: 10px; margin: 5px auto;">
        <div class="promo-banner" style="width: 100%; max-width: 1200px; height: 68px; background: #1e3a8a; border-radius: 12px; display: flex; align-items: center; justify-content: center; padding: 0 20px; color: #ffffff; font-size: 14px; font-weight: 600; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); overflow: hidden; transition: all 0.3s ease;">
            <div style="display: flex; align-items: center; justify-content: center; gap: 15px; text-align: center;">
                <div class="sticker" style="width: 60px; height: 60px; background: #d32f2f; border-radius: 50%; display: flex; align-items: center; justify-content: center; color: #ffffff; font-size: 12px; font-weight: 600; text-align: center; line-height: 1.2; overflow: hidden;">Ücretsiz<br>cPanel</div>
                <div style="flex-grow: 1; text-align: center;">
                    <div style="font-size: 16px; font-weight: 700;">AVRUPA LOKASYON KESİNTİSİZ VDS SERVER HİZMETİ</div>
                    <div style="font-size: 12px;">Çoklu lokasyon desteği ile ister Avrupa’nın kalbinde ister Türkiye’nin en iyi veri merkezinde VDS hizmeti satın alın.</div>
                </div>
                <div style="display: flex; align-items: center; justify-content: center; gap: 15px;">
                    <img src="img/de_flag.png" alt="Almanya Bayrağı" style="width: 30px; height: 20px;">
                    <img src="img/tr_flag.png" alt="Türkiye Bayrağı" style="width: 30px; height: 20px;">
                    <img src="img/server_cloud.png" alt="Sunucu Simgesi" style="width: 50px; height: 50px;">
                    <a href="vds-sunucu.php" class="blink-button" style="background: #ff6e42; color: #ffffff; text-decoration: none; padding: 8px 20px; border-radius: 20px; font-size: 14px; font-weight: 600; transition: all 0.3s ease;" onmouseover="this.style.background='#e65c33';" onmouseout="this.style.background='#ff6e42';">
                        VDS Satın Al
                    </a>
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
    .ticket-notification-card li {
        justify-content: flex-start;
        gap: 10px;
    }
    .ticket-notification-card .ticket-status {
        margin-left: auto;
    }
    .banner-widget-sidebar {
        position: relative;
        overflow: hidden;
    }
    .banner-widget-sidebar-svg {
        transform: scale(0.7);
    }
    .wave-effect {
        background-size: cover;
    }
    .bg-gradient-custom:hover {
        box-shadow: 0 6px 20px rgba(46, 125, 50, 0.3);
    }
    .custom-action-btn {
        min-width: 150px;
        text-align: center;
        display: inline-block;
        padding: 4px 20px;
        border-radius: 10px;
        font-size: 12px;
        font-weight: 500;
        text-decoration: none;
        transition: background-color 0.3s ease;
        background: #ff6e42;
        color: #ffffff;
    }
    .custom-action-btn:hover {
        background: #e65c33;
    }
    /* Tablo hizalaması için ek CSS */
    .active-services-panel .panel-body table {
        table-layout: fixed;
        width: 100%;
    }
    .active-services-panel .panel-body div[style*="display: table-cell"] {
        box-sizing: border-box;
        vertical-align: middle;
        border-right: none;
    }
    .active-services-panel .panel-body div[style*="display: table-row"] {
        display: table-row;
        width: 100%;
    }
    .active-services-panel .panel-body div[style*="display: table-header-group"] div[style*="display: table-cell"] {
        box-sizing: border-box;
        vertical-align: middle;
        border-right: none;
    }
    .ticket-notification-card .panel-body table {
        table-layout: fixed;
        width: 100%;
    }
    .ticket-notification-card .panel-body div[style*="display: table-cell"] {
        box-sizing: border-box;
        vertical-align: middle;
        border-right: none;
    }
    .ticket-notification-card .panel-body div[style*="display: table-row"] {
        display: table-row;
        width: 100%;
    }
    .ticket-notification-card .panel-body div[style*="display: table-header-group"] div[style*="display: table-cell"] {
        box-sizing: border-box;
        vertical-align: middle;
        border-right: none;
    }
</style>