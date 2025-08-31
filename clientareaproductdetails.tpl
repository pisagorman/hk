{if $modulecustombuttonresult}
    {if $modulecustombuttonresult == "success"}
        {include file="$template/includes/alert.tpl" type="success" msg="{lang key='moduleactionsuccess'}" textcenter=true idname="alertModuleCustomButtonSuccess"}
    {else}
        {include file="$template/includes/alert.tpl" type="error" msg="{lang key='moduleactionfailed'}"|cat:' ':$modulecustombuttonresult textcenter=true idname="alertModuleCustomButtonFailed"}
    {/if}
{/if}

{if $pendingcancellation}
    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='cancellationrequestedexplanation'}" textcenter=true idname="alertPendingCancellation"}
{/if}

{if $unpaidInvoice}
    <div class="alert alert-{if $unpaidInvoiceOverdue}danger{else}warning{/if} d-flex justify-content-between align-items-center rounded-20" id="alert{if $unpaidInvoiceOverdue}Overdue{else}Unpaid{/if}Invoice">
        <span>{$unpaidInvoiceMessage}</span>
        <a href="viewinvoice.php?id={$unpaidInvoice}" class="btn btn-{if $unpaidInvoiceOverdue}danger{else}warning{/if} btn-auto-min-width coodiv-text-11 py-2 rounded-20">{lang key='payInvoice'}</a>
    </div>
{/if}

{if $domain}
    <div class="card modern-product-card">
        <div class="card-header bg-primary text-white text-center custom-card-header">
            <h2>{lang key='hostingInfo'}</h2>
        </div>
        <div class="card-body">
            <div class="detail-section">
                {if $type eq "server"}
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-server"></i> {lang key='serverhostname'}</span>
                        <span class="colon">-</span>
                        <span class="value">{$domain}</span>
                    </div>
                    {if $dedicatedip}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-network-wired"></i> {lang key='primaryIP'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$dedicatedip}</span>
                        </div>
                    {/if}
                    {if $assignedips}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-list"></i> {lang key='assignedIPs'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$assignedips|nl2br}</span>
                        </div>
                    {/if}
                    {if $ns1 || $ns2}
                        <div class="detail-row">
                            <span class="label"><i class="fal fa-ethernet"></i> {lang key='domainnameservers'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$ns1}<br />{$ns2}</span>
                        </div>
                    {/if}
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-user"></i> {lang key='serverusername'}</span>
                        <span class="colon">-</span>
                        <span class="value">{if $username}{$username}{else}Bilinmiyor{/if}</span>
                    </div>
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-lock"></i> FTP / Panel Şifresi :</span>
                        <span class="colon">-</span>
                        <span class="value password-blurred" id="serverPasswordField"
                              data-full-password="{if $password}{$password}{else}Bilinmiyor{/if}"
                              data-tooltip-text="{if $password}Kopyala{else}Bilinmiyor{/if}"
                              onclick="copyToClipboard('serverPasswordField')">
                            {if $password}
                                {$password}
                            {else}
                                Bilinmiyor
                            {/if}
                        </span>
                    </div>
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-calendar-alt"></i> {lang key='clientareahostingregdate'}</span>
                        <span class="colon">-</span>
                        <span class="value"><strong>{$regdate}</strong></span>
                    </div>
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-calendar-day"></i> {lang key='clientareahostingnextduedate'}</span>
                        <span class="colon">-</span>
                        <span class="value" style="color: #dc3545;"><strong>{$nextduedate}</strong></span>
                    </div>
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-hdd"></i> {lang key='diskSpace'}</span>
                        <span class="colon">-</span>
                        <span class="value">
                            {if $diskusage || $diskusage == 0}
                                <strong>{($diskusage / 1024)|number_format:2}</strong> <span class="unit">GB</span>
                            {else}
                                Bilinmiyor
                            {/if}
                        </span>
                    </div>
                    <div class="detail-row">
                        <span class="label"><i class="fas fa-exchange-alt"></i> {lang key='bandwidth'}</span>
                        <span class="colon">-</span>
                        <span class="value">
                            {if $bwusage || $bwusage == 0}
                                <strong>{($bwusage / 1024)|number_format:2}</strong> <span class="unit">GB</span>
                            {else}
                                Bilinmiyor
                            {/if}
                        </span>
                    </div>
                {else}
                    {if $domain}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-box"></i> Paket Adı</span>
                            <span class="colon">-</span>
                            <span class="value">{$product}</span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-dollar-sign"></i> Fiyat</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $amount}
                                    {$amount}
                                {elseif $recurringamount}
                                    {$recurringamount} / {$billingcycle}
                                {else}
                                    Bilinmiyor
                                {/if}
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-calendar-alt"></i> {lang key='clientareahostingregdate'}</span>
                            <span class="colon">-</span>
                            <span class="value"><strong>{$regdate}</strong></span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-calendar-day"></i> {lang key='clientareahostingnextduedate'}</span>
                            <span class="colon">-</span>
                            <span class="value" style="color: #dc3545;">
                                <strong>{$nextduedate}</strong>
                                {if $nextduedate}
                                    {assign var="currentDate" value=$smarty.now|date_format:"%Y-%m-%d"}
                                    {assign var="dueDate" value=$nextduedate|strtotime}
                                    {assign var="currentDateTimestamp" value=$currentDate|strtotime}
                                    {assign var="daysLeft" value=($dueDate - $currentDateTimestamp) / (60 * 60 * 24)|round}
                                    {if $daysLeft > 0}
                                        <span style="color: #6c757d; margin-left: 10px;">({$daysLeft} gün kaldı)</span>
                                    {else}
                                        <span style="color: #dc3545; margin-left: 10px;">(Süre doldu)</span>
                                    {/if}
                                {/if}
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-globe"></i> {lang key='orderdomain'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$domain}</span>
                        </div>
                    {/if}
                    {if $username}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-user"></i> {lang key='serverusername'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$username}</span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-lock"></i> FTP / Panel Şifresi :</span>
                            <span class="colon">-</span>
                            <span class="value password-blurred" id="hostingPasswordField"
                                  data-full-password="{if $password}{$password}{else}Bilinmiyor{/if}"
                                  data-tooltip-text="{if $password}Kopyala{else}Bilinmiyor{/if}"
                                  onclick="copyToClipboard('hostingPasswordField')">
                                {if $password}
                                    {$password}
                                {else}
                                    Bilinmiyor
                                {/if}
                            </span>
                        </div>
                    {/if}
                    {if $serverdata}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-server"></i> {lang key='servername'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$serverdata.hostname}</span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-map-marker-alt"></i> Lokasyon</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $serverdata.hostname eq "eu.hostingkontrol.com"}
                                    <img src="https://flagcdn.com/16x12/eu.png" alt="Avrupa Birliği Bayrağı" style="margin-right: 5px;"> Avrupa Lokasyon
                                {elseif $serverdata.hostname eq "trcp.hostingkontrol.com"}
                                    <img src="https://flagcdn.com/16x12/tr.png" alt="Türkiye Bayrağı" style="margin-right: 5px;"> Türkiye Lokasyon
                                {else}
                                    {$serverdata.hostname}
                                {/if}
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-network-wired"></i> {lang key='domainregisternsip'}</span>
                            <span class="colon">-</span>
                            <span class="value">{$serverdata.ipaddress}</span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-network-wired"></i> Dedicated IP</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $dedicatedip}
                                    {$dedicatedip}
                                {else}
                                    Özel IP Satın Almadınız
                                {/if}
                            </span>
                        </div>
                        {if $addons}
                            {foreach from=$addons item=addon}
                                <div class="detail-row">
                                    <span class="label"><i class="fas fa-plus-circle"></i> {$addon.name}</span>
                                    <span class="colon">-</span>
                                    <span class="value">{$addon.status}</span>
                                </div>
                            {/foreach}
                        {/if}
                        {if $configurableoptions}
                            {foreach from=$configurableoptions item=configoption}
                                <div class="detail-row">
                                    <span class="label"><i class="fas fa-cog"></i> {$configoption.optionname}</span>
                                    <span class="colon">-</span>
                                    <span class="value">{$configoption.selectedoption}</span>
                                </div>
                            {/foreach}
                        {/if}
                        {if $serverdata.nameserver1 || $serverdata.nameserver2 || $serverdata.nameserver3 || $serverdata.nameserver4 || $serverdata.nameserver5}
                            <div class="detail-row">
                                <span class="label"><i class="fal fa-ethernet"></i> {lang key='domainnameservers'}</span>
                                <span class="colon">-</span>
                                <span class="value">
                                    {if $serverdata.nameserver1}{$serverdata.nameserver1} ({$serverdata.nameserver1ip})<br />{/if}
                                    {if $serverdata.nameserver2}{$serverdata.nameserver2} ({$serverdata.nameserver2ip})<br />{/if}
                                    {if $serverdata.nameserver3}{$serverdata.nameserver3} ({$serverdata.nameserver3ip})<br />{/if}
                                    {if $serverdata.nameserver4}{$serverdata.nameserver4} ({$serverdata.nameserver4ip})<br />{/if}
                                    {if $serverdata.nameserver5}{$serverdata.nameserver5} ({$serverdata.nameserver5ip})<br />{/if}
                                </span>
                            </div>
                        {/if}
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-hdd"></i> {lang key='diskSpace'}</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $diskusage || $diskusage == 0}
                                    <strong>{($diskusage / 1024)|number_format:2}</strong> <span class="unit">GB</span>
                                {else}
                                    Bilinmiyor
                                {/if}
                            </span>
                        </div>
                        <div class="detail-row">
                            <span class="label"><i class="fas fa-exchange-alt"></i> {lang key='bandwidth'}</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $bwusage || $bwusage == 0}
                                    <strong>{($bwusage / 1024)|number_format:2}</strong> <span class="unit">GB</span>
                                {else}
                                    Bilinmiyor
                                {/if}
                            </span>
                        </div>
                    {/if}
                    {if $domain}
                        <div class="detail-row">
                            <span class="label"><i class="fab fa-expeditedssl"></i> {lang key='sslState.sslStatus'}</span>
                            <span class="colon">-</span>
                            <span class="value">
                                {if $sslStatus && $sslStatus->expiry_date}
                                    {assign var="expiryTimestamp" value=$sslStatus->expiry_date|strtotime}
                                    {assign var="nowTimestamp" value=$smarty.now|strtotime}
                                    {if $expiryTimestamp > $nowTimestamp}
                                        <i class="fas fa-check-circle ssl-check-icon"></i>
                                        <span style="color: #343a40;">Aktif (Bitiş: {$sslStatus->expiry_date|date_format:"%d.%m.%Y"})</span>
                                    {else}
                                        <span style="color: #dc3545;">Süre Dolmuş (Bitiş: {$sslStatus->expiry_date|date_format:"%d.%m.%Y"})</span>
                                    {/if}
                                {else}
                                    <span style="color: #dc3545;">SSL Bilgisi Bulunamadı</span>
                                {/if}
                            </span>
                        </div>
                    {/if}
                {/if}
            </div>
            <div class="action-buttons">
                <a href="http://{$domain}" target="_blank" class="visit-link">
                    <img src="img/siteyi-ziyaret.svg" alt="Siteyi Ziyaret Et" class="action-image">
                    <span class="action-text">Siteyi ziyaret et</span>
                </a>
                {if $type eq "hostingaccount" || $type eq "other" || $module eq "cpanel"}
                    <a href="clientarea.php?action=productdetails&id={$id}&dosinglesignon=1" class="visit-link" target="_blank" onclick="return checkSSO('{$serverdata.hostname}', '{$id}')">
                        <img src="img/cpanele-git.svg" alt="cPanel'e Git" class="action-image">
                        <span class="action-text">cPanel'e Git</span>
                    </a>
                {elseif $type eq "reselleraccount"}
                    <a href="clientarea.php?action=productdetails&id={$id}&dosinglesignon=1" class="btn btn-whm" target="_blank" onclick="return checkSSO('{$serverdata.hostname}', '{$id}')"><i class="fas fa-server"></i> {lang key='cpanelwhmlogin2'}</a>
                {/if}
                <a href="http://webmail.{$domain}" target="_blank" class="visit-link">
                    <img src="img/webmail.svg" alt="Webmail" class="action-image">
                    <span class="action-text">Webmail</span>
                </a>
                {if $showcancelbutton}
                    <a href="clientarea.php?action=cancel&id={$id}" class="visit-link {if $pendingcancellation}disabled{/if}" target="_blank">
                        <img src="img/iptal-talebi.svg" alt="İptal Talebi" class="action-image">
                        <span class="action-text">{if $pendingcancellation}{lang key='cancellationrequested'}{else}{lang key='clientareacancelrequestbutton'}{/if}</span>
                    </a>
                {/if}
            </div>
        </div>
    </div>
{/if}

{* Yeni eklenen Node.js bölümü *}
<div class="cpanel-info-container">
    <div class="section">
        <div class="section-left">
            <img src="img/noderubby.png"
                alt="Node.js, Ruby ve Python Desteği İllüstrasyonu" class="graph-img circular-graph-img"
                onerror="this.onerror=null;this.src='https://placehold.co/220x220/e0e0e0/777?text=Resim+Yüklenemedi';">
        </div>
        <div class="section-right">
            <h1>Teknolojiler için Tam Destek: Node.js, Ruby ve Python</h1>
            <p>
                Hosting Kontrol olarak, geliştiricilerin ihtiyaç duyduğu en güncel teknolojilere tam destek sunuyoruz. Hosting paketlerimizle Node.js, Ruby ve Python gibi popüler programlama dillerini sorunsuz bir şekilde çalıştırabilir, projelerinizi özgürce geliştirebilirsiniz.
            </p>
            <p>
                Esnek altyapımız sayesinde, bu dillerin gerektirdiği tüm modül ve kütüphaneleri kolayca entegre edebilir, modern web uygulamalarınızı yüksek performansla yayınlayabilirsiniz. İster küçük bir proje ister büyük ölçekli bir uygulama geliştiriyor olun, Hosting Kontrol size ihtiyacınız olan tüm araçları ve performansı sunar.
            </p>
        </div>
    </div>
</div>

<style>
    /* Global sıfırlamalar */
    * {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box; /* Tüm elemanlar için kutu modelini ayarla */
    }

    /* Genel kart stilleri, tüm dış görünüm ve boşlukları sıfırlar */
    .modern-product-card {
        border: none; /* Kenarlık yok */
        border-radius: 15px !important; /* Köşeleri yuvarla */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Hafif gölge */
        overflow: hidden; /* İçerik taşmasını gizle */
        background-color: #fdfefe; /* Arka plan rengini beyaz yapıldı (transparan değil) */
        margin-bottom: 10px !important; /* Varsayılan 10px değeri */
        margin-top: -80px !important; /* Kartı yukarı çekmek için negatif margin */
        width: 100% !important; /* Ebeveyninin tüm genişliğini kapla */
        max-width: none !important; /* Herhangi bir max-width kısıtlamasını kaldır */
    }

    /* Başlık arka planını ve genel başlık görünümünü ayarlar */
    .custom-card-header {
        background-color: #2c3e50 !important;
        border-top-left-radius: 15px !important;
        border-top-right-radius: 15px !important;
        border-bottom-left-radius: 0 !important; /* Alt köşeleri yuvarlak yapma */
        border-bottom-right-radius: 0 !important; /* Alt köşeleri yuvarlak yapma */
        padding: 1rem !important; /* Başlık arka planının içeriye göre boşluğu, tablo ile hizala */
        width: 100% !important; /* Tam genişlik */
        box-sizing: border-box; /* Padding'in genişliği etkilememesini sağla */
    }

    /* Başlık metnini (h2) içeriden hizalar */
    .card-header h2 {
        font-size: 16px;
        margin: 0 !important; /* Varsayılan marginleri sıfırla */
        color: #ecf0f1;
        padding: 0 !important; /* H2'nin kendi paddingini sıfırla, parent'ından alacak */
        text-align: center; /* Başlık metnini ortala */
        width: 100% !important; /* H2'nin mevcut genişliğini kapsamasını sağla */
        box-sizing: border-box; /* Padding'in genişliği etkilememesini sağla */
    }

    /* Kart gövdesi padding'i */
    .card-body {
        padding: 1rem !important; /* İçerik padding'i, başlık ile aynı hizayı koru */
        width: 100% !important; /* card-body'nin mevcut genişliğini kapsamasını sağla */
        box-sizing: border-box; /* Padding'in genişliği etkilememesini sağla */
    }

    /* Detay bölümünün iç padding'i */
    .detail-section {
        padding: 0 !important; /* padding'i 0 yap */
        background-color: transparent !important;
        border-radius: 0 !important;
        box-shadow: none !important;
        width: 100% !important; /* detail-section'ın mevcut genişliğini kapsamasını sağla */
        box-sizing: border-box; /* Padding'in genişliği etkilememesini sağla */
    }

    /* Detay satırlarının genel stilleri */
    .detail-row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 8px 0 !important; /* Dikey padding, yatay padding'i sıfırlama */
        border-bottom: 1px solid #e9ecef;
        transition: background-color 0.3s ease;
    }

    /* Detay satırlarının hover efekti */
    .detail-row:hover {
        background-color: #f5f5f5;
    }

    /* Son detay satırında alt çizgi olmaması */
    .detail-row:last-child {
        border-bottom: none !important;
    }

    /* Etiket metinlerinin stilleri */
    .detail-row .label {
        font-size: 12px;
        font-weight: 500;
        color: #6c757d;
        flex: 2;
        text-align: left;
    }

    /* Etiket ikonlarının stilleri */
    .detail-row .label i {
        margin-right: 5px;
        color: #6c757d;
    }

    /* İki nokta üst üste ayracının stilleri */
    .detail-row .colon {
        font-size: 12px;
        color: #6c757d;
        flex: 0.5;
        text-align: center;
    }

    /* Değer metinlerinin stilleri ve tooltip'i konumlandırmak için relative ayarı */
    .detail-row .value {
        font-size: 12px;
        color: #343a40;
        flex: 3;
        text-align: left;
        display: flex;
        align-items: center;
        position: relative;
        cursor: pointer;
    }

    /* Değer içinde resimlerin stil ayarlaması */
    .detail-row .value img {
        vertical-align: middle;
    }

    /* Birim metinlerinin stilleri */
    .detail-row .value .unit {
        margin-left: 5px;
    }

    /* SSL kontrol ikonunun stilleri */
    .ssl-check-icon {
        color: #28a745;
        margin-right: 5px;
        font-size: 14px;
    }

    /* Ürün durumu rozetlerinin stilleri */
    .product-status .badge {
        padding: 6px 10px;
        font-size: 12px;
    }

    /* Durum renkleri */
    .bg-active { background-color: #28a745; color: white; }
    .bg-suspended { background-color: #dc3545; color: white; }
    .bg-pending { background-color: #ffc107; color: black; }
    .bg-cancelled { background-color: #6c757d; color: white; }

    /* Ana buton stilleri */
    .btn-primary {
        background-color: #6c757d;
        border: none;
        padding: 8px 16px;
        border-radius: 5px;
        color: #fff;
        font-size: 12px;
    }

    /* Ana buton hover efekti */
    .btn-primary:hover {
        background-color: #5a6268;
    }

    /* Webmail butonu stilleri */
    .btn-webmail {
        background-color: #40C4FF;
        border: none;
        padding: 6px 12px;
        border-radius: 5px;
        color: #fff;
        font-size: 12px;
        transition: background-color 0.3s ease;
    }

    /* Webmail butonu hover efekti */
    .btn-webmail:hover {
        background-color: #39b3e6;
    }

    /* Aksiyon butonlarının genel stilleri */
    .action-buttons {
        text-align: center;
        margin-top: 10px;
    }

    /* Aksiyon butonlarının ortak stilleri */
    .action-buttons .btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        padding: 6px 12px;
        font-size: 12px;
        border-radius: 5px;
        margin: 0 5px;
        min-height: 32px;
        transition: background-color 0.3s ease;
    }

    /* Varsayılan aksiyon butonu stilleri */
    .action-buttons .btn-default {
        background-color: #6c757d;
        color: #fff;
    }

    /* Varsayılan aksiyon butonu hover efekti */
    .action-buttons .btn-default:hover {
        background-color: #5a6268;
    }

    /* cPanel/WHM butonu stilleri */
    .action-buttons .btn-cpanel,
    .action-buttons .btn-whm {
        background-color: #28a745;
        color: #fff;
    }

    /* cPanel/WHM butonu hover efekti */
    .action-buttons .btn-cpanel:hover,
    .action-buttons .btn-whm:hover {
        background-color: #218838;
    }

    /* İptal butonu stilleri */
    .action-buttons .btn-cancel {
        background-color: #dc3545;
        color: #fff;
    }

    /* İptal butonu hover efekti */
    .action-buttons .btn-cancel:hover {
        background-color: #c82333;
    }

    /* Aksiyon butonu ikonlarının stilleri */
    .action-buttons .btn i {
        margin-right: 5px;
    }

    /* Ziyaret linklerinin stilleri */
    .visit-link {
        display: inline-block;
        text-align: center;
        text-decoration: none;
        color: #343a40;
        margin: 0 5px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    /* Aksiyon resimlerinin stilleri */
    .action-image {
        width: 40px;
        height: 40px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    /* Aksiyon resimlerinin hover efekti */
    .action-image:hover {
        transform: scale(1.1);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* Ziyaret linki hover'da resmin efekti */
    .visit-link:hover .action-image {
        transform: scale(1.1);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* Aksiyon metinlerinin stilleri */
    .action-text {
        display: block;
        font-size: 12px;
        margin-top: 5px;
        color: #6c757d;
    }

    /* Kart alt bilgisi (footer) stilleri */
    .card-footer {
        background-color: #fdfefe;
        padding: 0.5rem;
        border-top: 1px solid #e9ecef;
        color: #6c757d;
        text-align: left;
    }

    /* Özel footer stilleri */
    .custom-footer {
        font-size: 12px;
        padding-left: 10px;
    }

    /* Tab içeriği stilleri */
    .tab-content {
        margin-bottom: 0;
    }

    /* Tab paneli stilleri */
    .tab-pane {
        padding: 0;
    }

    /* Devre dışı bırakılmış elementlerin stilleri */
    .disabled {
        opacity: 0.6;
        pointer-events: none;
    }

    /* Şifre alanı bulanıklık efekti */
    .detail-row .value.password-blurred {
        filter: blur(5px);
        transition: filter 0.3s ease-in-out;
    }

    /* Şifre alanı hover bulanıklık kaldırma */
    .detail-row .value.password-blurred:hover {
        filter: blur(0);
    }

    /* Tooltip stil ayarlamaları */
    .detail-row .value.password-blurred::before {
        content: attr(data-tooltip-text);
        position: absolute;
        bottom: 100%;
        left: 10%;
        transform: translateX(-50%);
        background-color: #2c3e50;
        color: #FFFFFF;
        padding: 5px 8px;
        border-radius: 4px;
        white-space: nowrap;
        font-size: 10px;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.3s ease, visibility 0.3s ease;
        z-index: 10;
    }

    /* Tooltip ok stil ayarlamaları */
    .detail-row .value.password-blurred::after {
        content: '';
        position: absolute;
        bottom: calc(100% - 5px);
        left: 10%;
        transform: translateX(-50%) rotate(45deg);
        width: 8px;
        height: 8px;
        background-color: #2c3e50;
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.3s ease, visibility 0.3s ease;
        z-index: 9;
    }

    /* Tooltip hover görünürlüğü */
    .detail-row .value.password-blurred:hover::before,
    .detail-row .value.password-blurred:hover::after {
        opacity: 1;
        visibility: visible;
    }

    /* YENİ EKLENEN KUTULAR İÇİN CSS */
    .cpanel-info-container {
        max-width: 1100px !important; /* Orijinal max-width'ini koru ama !important ekle */
        margin: 40px auto !important; /* Üst ve alt marjı 40px, otomatik yatay ortalama */
        padding: 40px 20px !important; /* Orijinal padding */
        width: 100% !important; /* Tam genişlik kaplamasını zorla */
        box-sizing: border-box; /* Padding'in genişliği etkilememesini sağla */
    }
    .cpanel-info-container .section {
        display: flex;
        align-items: center;
        margin-bottom: 40px;
        gap: 50px;
    }
    .cpanel-info-container .section:last-child {
        margin-bottom: 0;
    }
    .cpanel-info-container .section-left {
        flex-shrink: 0;
    }
    .cpanel-info-container .section-right {
        flex-grow: 1;
    }
    .cpanel-info-container .section-right h1 {
        color: #1a3c8d;
        font-size: 28px;
        margin-bottom: 20px;
        font-weight: 700;
        line-height: 1.3;
    }
    .cpanel-info-container .section-right p {
        font-size: 16px;
        line-height: 1.7;
        margin-bottom: 20px;
    }
    .cpanel-info-container .section-right p:last-of-type {
        margin-bottom: 0;
    }

    .cpanel-info-container .graph-img {
        width: 100%;
        max-width: 264px;
        height: auto;
        border-radius: 15px;
        display: block;
        object-fit: cover;
    }

    /* Circular image style for the first and new third section */
    .cpanel-info-container .circular-graph-img {
        width: 220px;
        height: 220px;
        border-radius: 50%;
        object-fit: cover;
        max-width: 220px;
        margin-left: auto;
        margin-right: auto;
    }

    .cpanel-info-container .section.section-image-right .section-left {
        order: 2;
    }
    .cpanel-info-container .section.section-image-right .section-right {
        order: 1;
    }

    @media (max-width: 768px) {
        .cpanel-info-container {
            padding: 20px 15px !important; /* Mobil uyumlu padding */
        }
        .cpanel-info-container .section {
            flex-direction: column;
            text-align: left;
            margin-bottom: 30px;
            gap: 20px;
        }
        .cpanel-info-container .section-left {
            order: 1 !important;
            width: 100%;
        }
        .cpanel-info-container .section-right {
            order: 2 !important;
            width: 100%;
            margin-top: 0;
        }
        .cpanel-info-container .graph-img {
            width: 80%;
            max-width: 300px;
            height: auto;
            margin: 0 auto 15px auto;
            border-radius: 15px;
        }
        /* Circular image style for mobile for the first and new third section */
        .cpanel-info-container .circular-graph-img {
            width: 180px;
            height: 180px;
            max-width: 180px;
            border-radius: 50%;
        }
    }

    /* Custom bottom spacer - artık yok */
</style>

<script>
    function checkSSO(hostname, id) {
        try {
            if (!id || id === '') {
                console.error('Hata: Hizmet ID bulunamadı. Lütfen destek ekibiyle iletişime geçin.');
                return false;
            }
            if (!hostname || hostname === '') {
                console.error('Hata: Sunucu hostname bulunamadı. Manuel cPanel girişini deneyin: https://' + hostname + ':2083');
                return false;
            }
            return true;
        } catch (e) {
            console.error('SSO hatası: ' + e.message + '. Manuel cPanel girişini deneyin: https://' + hostname + ':2083');
            return false;
        }
    }

    function copyToClipboard(elementId) {
        const element = document.getElementById(elementId);
        if (!element) {
            console.error('Kopyalanacak element bulunamadı: ' + elementId);
            return;
        }

        const passwordToCopy = element.getAttribute('data-full-password');
        const originalTooltipText = element.getAttribute('data-tooltip-text');

        if (!passwordToCopy || passwordToCopy === 'Bilinmiyor') {
            console.warn('Kopyalanacak şifre bulunamadı veya bilinmiyor.');
            element.setAttribute('data-tooltip-text', 'Kopyalanamaz!');
            setTimeout(() => {
                element.setAttribute('data-tooltip-text', originalTooltipText);
            }, 1500);
            return;
        }

        const tempInput = document.createElement('textarea');
        tempInput.value = passwordToCopy;
        document.body.appendChild(tempInput);

        tempInput.select();
        tempInput.setSelectionRange(0, 99999);

        try {
            document.execCommand('copy');
            console.log('Password copied: ' + passwordToCopy);

            element.setAttribute('data-tooltip-text', 'Kopyalandı!');
            setTimeout(() => {
                element.setAttribute('data-tooltip-text', originalTooltipText);
            }, 1500);

        } catch (err) {
            console.error('Error copying password:', err);
            element.setAttribute('data-tooltip-text', 'Kopyalama hatası!');
            setTimeout(() => {
                element.setAttribute('data-tooltip-text', originalTooltipText);
            }, 1500);
        } finally {
            document.body.removeChild(tempInput);
        }
    }
</script>