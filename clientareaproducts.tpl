{* Bu dosya, tüm ürün ve hizmetleri sayfa başına 15 adet listelemek için kullanılır. *}
{* Daha önce yapılan genel stil prensipleri (font, kart görünümü, header hizalaması) bu tabloya da uygulanmıştır. *}

{* Mevcut sayfa numarasını al (varsayılan 1) *}
{assign var="page" value=$smarty.get.page|default:1}
{* Sayfa başına ürün sayısı *}
{assign var="itemsPerPage" value=15}
{* Başlangıç indeksi *}
{assign var="start" value=($page - 1) * $itemsPerPage}
{* Bitiş indeksi *}
{assign var="end" value=$start + $itemsPerPage - 1}

{* Durumlara göre hizmetleri filtrele *}
{assign var="activeServices" value=[]}
{assign var="suspendedServices" value=[]}
{assign var="pendingServices" value=[]}
{assign var="terminatedServices" value=[]}
{assign var="cancelledServices" value=[]}

{foreach $client->services as $service}
    {if $service.domainstatus == 'Active'}
        {append var="activeServices" value=$service}
    {elseif $service.domainstatus == 'Suspended'}
        {append var="suspendedServices" value=$service}
    {elseif $service.domainstatus != 'Active' && $service.domainstatus != 'Suspended' && $service.domainstatus != 'Terminated' && $service.domainstatus != 'Cancelled'}
        {append var="pendingServices" value=$service}
    {elseif $service.domainstatus == 'Terminated'}
        {append var="terminatedServices" value=$service}
    {elseif $service.domainstatus == 'Cancelled'}
        {append var="cancelledServices" value=$service}
    {/if}
{/foreach}

{* Tüm hizmetleri birleştir (sıralama: Active > Suspended > Pending > Terminated > Cancelled) *}
{assign var="allServices" value=array_merge($activeServices, $suspendedServices, $pendingServices, $terminatedServices, $cancelledServices)}
{* Toplam hizmet sayısı *}
{assign var="totalItems" value=$allServices|count}
{* Toplam sayfa sayısı *}
{assign var="totalPages" value=($totalItems / $itemsPerPage)|ceil}
{* Hizmetleri dilimle *}
{assign var="servicesSlice" value=$allServices|array_slice:$start:$itemsPerPage}

<div class="row justify-content-center main-products-table-container">
    <div class="col-md-12 col-lg-12 products-table-col">
        <div class="active-services-panel overflow-hidden mb-10 border rounded-10">
            <div class="panel-header-bg">
                <div class="panel-header-text">
                    TÜM ÜRÜNLER/HİZMETLER
                </div>
            </div>

            <div class="panel-body-content">
                <div class="header-row">
                    <div class="header-cell service-name-cell">Hizmet</div>
                    <div class="header-cell domain-cell">Domain</div>
                    <div class="header-cell price-cell">Fiyat</div>
                    <div class="header-cell period-cell">Periyot</div>
                    <div class="header-cell date-cell">Son Tarih</div>
                    <div class="header-cell status-cell">Durum</div>
                </div>

                {if $client && $client->services && $totalItems > 0}
                    {* --- 1. Aktif Hizmetler --- *}
                    {foreach $servicesSlice as $service}
                        {if $service.domainstatus == 'Active'}
                            <a href="clientarea.php?action=productdetails&id={$service.id}" class="clickable-row">
                                <div class="row-cell service-name-cell">
                                    {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell domain-cell">
                                    {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell price-cell">
                                    {$service.amount|number_format:2} TRY
                                </div>
                                <div class="row-cell period-cell">
                                    {if $service.billingcycle == 'Monthly'}{$LANG.monthly}
                                    {elseif $service.billingcycle == 'Quarterly'}{$LANG.quarterly}
                                    {elseif $service.billingcycle == 'Semiannually'}{$LANG.semiannually}
                                    {elseif $service.billingcycle == 'Annually'}{$LANG.annually}
                                    {elseif $service.billingcycle == 'Biennially'}{$LANG.biennially}
                                    {elseif $service.billingcycle == 'Triennially'}{$LANG.triennially}
                                    {else}{$service.billingcycle|capitalize}{/if}
                                </div>
                                <div class="row-cell date-cell">
                                    {$service.nextduedate|date_format:"%d.%m.%Y"}
                                </div>
                                <div class="row-cell status-cell">
                                    <span class="status-badge status-active-badge">
                                        {$LANG.active}
                                    </span>
                                </div>
                            </a>
                        {/if}
                    {/foreach}

                    {* --- 2. Askıya Alınmış (Suspended) Hizmetler --- *}
                    {foreach $servicesSlice as $service}
                        {if $service.domainstatus == 'Suspended'}
                            <a href="clientarea.php?action=productdetails&id={$service.id}" class="clickable-row">
                                <div class="row-cell service-name-cell">
                                    {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell domain-cell">
                                    {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell price-cell">
                                    {$service.amount|number_format:2} TRY
                                </div>
                                <div class="row-cell period-cell">
                                    {if $service.billingcycle == 'Monthly'}{$LANG.monthly}
                                    {elseif $service.billingcycle == 'Quarterly'}{$LANG.quarterly}
                                    {elseif $service.billingcycle == 'Semiannually'}{$LANG.semiannually}
                                    {elseif $service.billingcycle == 'Annually'}{$LANG.annually}
                                    {elseif $service.billingcycle == 'Biennially'}{$LANG.biennially}
                                    {elseif $service.billingcycle == 'Triennially'}{$LANG.triennially}
                                    {else}{$service.billingcycle|capitalize}{/if}
                                </div>
                                <div class="row-cell date-cell">
                                    {$service.nextduedate|date_format:"%d.%m.%Y"}
                                </div>
                                <div class="row-cell status-cell">
                                    <span class="status-badge status-suspended-badge">
                                        {$LANG.suspended}
                                    </span>
                                </div>
                            </a>
                        {/if}
                    {/foreach}

                    {* --- 3. Beklemede (Pending) ve Diğer Ara Durumdaki Hizmetler --- *}
                    {foreach $servicesSlice as $service}
                        {if $service.domainstatus != 'Active' && $service.domainstatus != 'Suspended' && $service.domainstatus != 'Terminated' && $service.domainstatus != 'Cancelled'}
                            <a href="clientarea.php?action=productdetails&id={$service.id}" class="clickable-row">
                                <div class="row-cell service-name-cell">
                                    {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell domain-cell">
                                    {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell price-cell">
                                    {$service.amount|number_format:2} TRY
                                </div>
                                <div class="row-cell period-cell">
                                    {if $service.billingcycle == 'Monthly'}{$LANG.monthly}
                                    {elseif $service.billingcycle == 'Quarterly'}{$LANG.quarterly}
                                    {elseif $service.billingcycle == 'Semiannually'}{$LANG.semiannually}
                                    {elseif $service.billingcycle == 'Annually'}{$LANG.annually}
                                    {elseif $service.billingcycle == 'Biennially'}{$LANG.biennially}
                                    {elseif $service.billingcycle == 'Triennially'}{$LANG.triennially}
                                    {else}{$service.billingcycle|capitalize}{/if}
                                </div>
                                <div class="row-cell date-cell">
                                    {$service.nextduedate|date_format:"%d.%m.%Y"}
                                </div>
                                <div class="row-cell status-cell">
                                    <span class="status-badge status-pending-badge">
                                        {if $service.domainstatus == 'Pending'}{$LANG.pending}{else}{$service.domainstatus|capitalize}{/if}
                                    </span>
                                </div>
                            </a>
                        {/if}
                    {/foreach}

                    {* --- 4. Sonlandırılmış (Terminated) Hizmetler --- *}
                    {foreach $servicesSlice as $service}
                        {if $service.domainstatus == 'Terminated'}
                            <a href="clientarea.php?action=productdetails&id={$service.id}" class="clickable-row">
                                <div class="row-cell service-name-cell">
                                    {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell domain-cell">
                                    {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell price-cell">
                                    {$service.amount|number_format:2} TRY
                                </div>
                                <div class="row-cell period-cell">
                                    {if $service.billingcycle == 'Monthly'}{$LANG.monthly}
                                    {elseif $service.billingcycle == 'Quarterly'}{$LANG.quarterly}
                                    {elseif $service.billingcycle == 'Semiannually'}{$LANG.semiannually}
                                    {elseif $service.billingcycle == 'Annually'}{$LANG.annually}
                                    {elseif $service.billingcycle == 'Biennially'}{$LANG.biennially}
                                    {elseif $service.billingcycle == 'Triennially'}{$LANG.triennially}
                                    {else}{$service.billingcycle|capitalize}{/if}
                                </div>
                                <div class="row-cell date-cell">
                                    {$service.nextduedate|date_format:"%d.%m.%Y"}
                                </div>
                                <div class="row-cell status-cell">
                                    <span class="status-badge status-terminated-badge">
                                        {$LANG.terminated}
                                    </span>
                                </div>
                            </a>
                        {/if}
                    {/foreach}

                    {* --- 5. İptal Edilmiş (Cancelled) Hizmetler --- *}
                    {foreach $servicesSlice as $service}
                        {if $service.domainstatus == 'Cancelled'}
                            <a href="clientarea.php?action=productdetails&id={$service.id}" class="clickable-row">
                                <div class="row-cell service-name-cell">
                                    {if $service.product && $service.product.name}{$service.product.name}{elseif $service.packageid}Ürün #{$service.packageid}{else}Kategori Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell domain-cell">
                                    {if $service.domain && $service.domain != ''}{$service.domain}{else}Alan Adı Belirtilmemiş{/if}
                                </div>
                                <div class="row-cell price-cell">
                                    {$service.amount|number_format:2} TRY
                                </div>
                                <div class="row-cell period-cell">
                                    {if $service.billingcycle == 'Monthly'}{$LANG.monthly}
                                    {elseif $service.billingcycle == 'Quarterly'}{$LANG.quarterly}
                                    {elseif $service.billingcycle == 'Semiannually'}{$LANG.semiannually}
                                    {elseif $service.billingcycle == 'Annually'}{$LANG.annually}
                                    {elseif $service.billingcycle == 'Biennially'}{$LANG.biennially}
                                    {elseif $service.billingcycle == 'Triennially'}{$LANG.triennially}
                                    {else}{$service.billingcycle|capitalize}{/if}
                                </div>
                                <div class="row-cell date-cell">
                                    {$service.nextduedate|date_format:"%d.%m.%Y"}
                                </div>
                                <div class="row-cell status-cell">
                                    <span class="status-badge status-cancelled-badge">
                                        {$LANG.cancelled}
                                    </span>
                                </div>
                            </a>
                        {/if}
                    {/foreach}

                    {* Sayfalama Kontrolleri *}
                    <div class="pagination-controls">
                        <button class="pagination-button" onclick="window.location='clientarea.php?action=services&page={if $page > 1}{$page - 1}{else}1{/if}'" {if $page <= 1}disabled{/if}>Önceki</button>
                        <span class="page-info">Sayfa {$page} / {$totalPages}</span>
                        <button class="pagination-button" onclick="window.location='clientarea.php?action=services&page={if $page < $totalPages}{$page + 1}{else}{$totalPages}{/if}'" {if $page >= $totalPages}disabled{/if}>Sonraki</button>
                    </div>
                {else}
                    <p class="no-services-message">Ürün/hizmet bulunamadı.</p>
                {/if}
            </div>
        </div>
    </div>
</div>

{* Boş bir footer div'i, sadece görünüm için *}
<div class="custom-footer-placeholder"></div>

<style>
    /* Inter fontunu bu özel panel için uyguluyoruz */
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

    /* Temel elementlerin global sıfırlamaları */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Ana tablo container'ı */
    .main-products-table-container {
        max-width: 1200px !important;
        margin: 0 auto !important;
        padding: 0 !important;
        background: transparent !important;
        border-radius: 0 !important;
        box-shadow: none !important;
        width: 100% !important;
        position: static !important;
        left: auto !important;
        transform: none !important;
    }

    /* Tablo sütunu */
    .products-table-col {
        padding: 0 !important;
        width: 100% !important;
        max-width: none !important;
    }

    /* Aktif hizmetler panelinin genel görünümü */
    .active-services-panel {
        font-family: 'Inter', sans-serif;
        background: #ffffff !important;
        border-radius: 12px !important;
        padding: 15px 20px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05) !important;
        position: relative;
        transition: all 0.2s ease;
        width: 100% !important;
        border: 1px solid #e6e6e6 !important;
        overflow: hidden;
    }
    .active-services-panel:hover {
        border: 1px solid #26c6da !important;
    }

    /* Panel başlığı arka planı ve yuvarlaklığı */
    .panel-header-bg {
        background-color: #40c4da;
        border-radius: 10px;
        padding: 10px 15px;
        margin-bottom: 15px;
        width: 100%;
        box-sizing: border-box;
    }

    /* Panel başlığı metin stili */
    .panel-header-text {
        font-size: 16px;
        color: #ffffff;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        text-align: center;
        width: 100%;
        display: block;
    }

    /* Panel gövdesi içerik stili */
    .panel-body-content {
        color: #555;
        font-size: 14px;
        line-height: 1.6;
    }

    /* Tablo başlık satırı */
    .header-row {
        padding: 10px 0;
        border-bottom: 2px solid #26c6da;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-weight: 600;
        color: #26c6da;
        margin-bottom: 10px;
    }

    /* Başlık hücreleri için genel stil */
    .header-cell {
        flex: 1;
        padding-right: 15px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .header-cell.service-name-cell { flex: 1.5; text-align: left; }
    .header-cell.domain-cell { flex: 1.2; text-align: left; }
    .header-cell.price-cell { flex: 1; text-align: right; margin-left: 15px; }
    .header-cell.period-cell { flex: 1; text-align: right; margin-left: 15px; }
    .header-cell.date-cell { flex: 1; text-align: left; margin-left: 30px; }
    .header-cell.status-cell { flex: 1; text-align: right; margin-left: 15px; }

    /* Tıklanabilir satırlar için stiller */
    .clickable-row {
        cursor: pointer;
        background-color: #ffffff;
        display: flex;
        padding: 12px 0;
        border-bottom: 1px solid #e6e6e6;
        justify-content: space-between;
        align-items: center;
        transition: background-color 0.2s ease;
        min-height: 50px;
        text-decoration: none;
        color: inherit;
    }
    .clickable-row:last-of-type {
        border-bottom: none;
    }
    .clickable-row:hover {
        background-color: #f0f9ff !important;
    }

    /* Satır hücreleri için genel stil */
    .row-cell {
        flex: 1;
        color: #333;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .row-cell.service-name-cell { flex: 1.5; padding-right: 15px; text-align: left; }
    .row-cell.domain-cell { flex: 1.2; padding-right: 15px; text-align: left; }
    .row-cell.price-cell { flex: 1; text-align: right; margin-left: 15px; }
    .row-cell.period-cell { flex: 1; text-align: right; margin-left: 15px; }
    .row-cell.date-cell { flex: 1; text-align: left; margin-left: 30px; }
    .row-cell.status-cell { flex: 1; text-align: right; margin-left: 15px; }

    /* Durum etiketleri için ortak stil */
    .status-badge {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        padding: 4px 0;
        border-radius: 10px;
        font-size: 12px;
        width: 80px;
        text-align: center;
        line-height: 1.2;
        box-sizing: border-box;
    }

    /* Durum renkleri için özel sınıflar */
    .status-active-badge { background: #4caf50; color: #ffffff; }
    .status-suspended-badge { background: #ffca28; color: #ffffff; }
    .status-pending-badge { background: #2196F3; color: #ffffff; }
    .status-terminated-badge { background: #d32f2f; color: #ffffff; }
    .status-cancelled-badge { background: #d32f2f; color: #ffffff; }

    /* Ürün/hizmet bulunamadı mesajı */
    .no-services-message {
        margin: 0;
        text-align: center;
        padding: 20px;
        color: #777;
    }

    /* Mesaj kutusu için stiller */
    .message-box {
        position: fixed;
        top: 20px;
        left: 50%;
        transform: translateX(-50%);
        background-color: #22c55e;
        color: white;
        padding: 12px 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        z-index: 1000;
        opacity: 0;
        transition: opacity 0.5s ease-in-out;
        font-size: 0.875rem;
    }
    .message-box.show {
        opacity: 1;
    }

    /* Orijinal footer'ı gizle */
    .footer-section,
    #footer,
    .footer,
    .footer-container,
    .footer-wrap,
    .main-footer {
        display: none !important;
    }

    /* Boş footer placeholder'ı, antrasit siyah stil ile (güncellendi) */
    .custom-footer-placeholder {
        position: fixed;
        bottom: 0;
        width: 100%;
        left: 0;
        z-index: 1000;
        background-color: #333333; /* Antrasit siyah */
        color: #fff;
        padding: 36px 0; /* 18px'ten 36px'e artırıldı (2 kat) */
        text-align: center;
        max-height: 180px; /* 90px'ten 180px'e artırıldı (2 kat) */
        overflow: hidden;
        font-size: 12px;
        line-height: 1.2;
    }

    /* Sayfalandırma Kontrolleri Stilleri */
    .pagination-controls {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
        padding: 10px;
        background-color: #f8f8f8;
        border-top: 1px solid #eee;
        border-radius: 0 0 12px 12px;
    }

    .pagination-button {
        background-color: #26c6da;
        color: white;
        border: none;
        padding: 8px 15px;
        margin: 0 10px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }

    .pagination-button:hover:not(:disabled) {
        background-color: #40c4da;
    }

    .pagination-button:disabled {
        background-color: #ccc;
        cursor: not-allowed;
    }

    .page-info {
        font-weight: 600;
        color: #555;
    }

    /* Responsive ayarlar */
    @media (max-width: 768px) {
        .header-row, .clickable-row {
            flex-wrap: wrap;
        }
        .header-cell, .row-cell {
            flex: 0 0 50% !important;
            padding-right: 5px !important;
            margin-left: 0 !important;
            text-align: left !important;
            margin-bottom: 5px;
        }
        .header-cell.price-cell, .header-cell.period-cell,
        .row-cell.price-cell, .row-cell.period-cell {
            text-align: left !important;
        }
        .header-cell.status-cell, .row-cell.status-cell {
            flex: 0 0 100% !important;
            text-align: center !important;
        }
        .status-badge {
            width: 100% !important;
        }
        .products-table-col {
            padding: 5px !important;
        }
        .active-services-panel {
            padding: 10px !important;
        }
        .custom-footer-placeholder {
            padding: 36px 0; /* 18px'ten 36px'e artırıldı (2 kat) */
            max-height: 160px; /* 80px'ten 160px'e artırıldı (2 kat) */
        }
    }
</style>

<script>
    // Boş bırakıldı, sadece stil aktif
</script>