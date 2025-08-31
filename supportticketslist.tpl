<div class="row justify-content-center" style="max-width: 1200px; margin: 0 auto; padding: 0; background: transparent; border-radius: 0;">
    <div class="col-md-12 col-lg-12" style="padding: 10px;">
        <div class="active-services-panel overflow-hidden mb-10 border rounded-10" style="background: linear-gradient(135deg, #ffffff, #f0f9ff); border-radius: 12px; padding: 15px 20px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); position: relative; transition: all 0.3s ease; width: 100%; border: 1px solid #e6e6e6;" onmouseover="this.style.boxShadow='0 6px 20px rgba(38, 198, 218, 0.2)'; this.style.border='1px solid #26c6da';" onmouseout="this.style.boxShadow='0 4px 15px rgba(0, 0, 0, 0.1)'; this.style.border='1px solid #e6e6e6';">
            <!-- Panel Başlık Kapsayıcısı -->
            <div style="background-color: #40c4da; border-radius: 10px; padding: 10px 15px; margin-bottom: 15px;">
                <div class="panel-header" style="font-size: 16px; color: #ffffff; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; display: inline-block; text-align: center; width: 100%;">
                    DESTEK TALEP LİSTESİ
                </div>
            </div>

            <div class="panel-body" style="color: #555; font-size: 14px; line-height: 1.6;">
                <!-- Yeni Destek Talebi Butonu (Sabit, En Üstte) -->
                <div style="margin-bottom: 10px; text-align: right;">
                    <a href="/submitticket.php?step=2&deptid=1" class="new-ticket-btn blink" style="background: #FF9800; color: #ffffff; padding: 4px 10px; border-radius: 10px; font-size: 12px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#F57C00';" onmouseout="this.style.background='#FF9800';">Yeni Destek Talebi</a>
                </div>

                <!-- Başlık Satırı -->
                <div class="header-row" style="padding: 10px 0; border-bottom: 2px solid #26c6da; display: flex; justify-content: space-between; align-items: center; font-weight: 600; color: #26c6da; margin-bottom: 10px;">
                    <div style="flex: 1; padding-right: 15px; text-align: left;">Ticket #</div>
                    <div style="flex: 2; padding-right: 15px; text-align: left;">Konu</div>
                    <div style="flex: 1; padding-right: 15px; text-align: left;">Durum</div>
                    <div style="flex: 1; text-align: right;">İşlem</div>
                </div>  

                <!-- Ticket Listesi -->
                {if $tickets && count($tickets) > 0}
                    {foreach $tickets as $ticket}
                        <div class="service-row" style="padding: 12px 0; border-bottom: 1px solid #e6e6e6; display: flex; justify-content: space-between; align-items: center; transition: background-color 0.2s ease; min-height: 50px;" onmouseover="this.style.background='#f0f9ff';" onmouseout="this.style.background='transparent';">
                            <div style="flex: 1; color: #666; padding-right: 15px; text-align: left; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 14px;">
                                #{$ticket.tid|default:'Bilinmeyen'}
                            </div>
                            <div style="flex: 2; color: #333; padding-right: 15px; text-align: left; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 14px;">
                                {$ticket.title|default:$ticket.subject|default:'Konu Yok'}
                            </div>
                            <div style="flex: 1; padding-right: 15px; text-align: left; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 14px;">
                                <span class="ticket-status" style="display: inline-block; padding: 4px 10px; background-color: {if $ticket.status == 'Closed'}#ff6e42{elseif $ticket.status == 'Answered'}#FF9800{elseif $ticket.status == 'Open'}#4caf50{elseif $ticket.status == 'Customer Reply'}#26c6da{else}#26c6da{/if}; color: #ffffff; border-radius: 10px; font-size: 12px; font-weight: 500; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='{if $ticket.status == 'Closed'}#e65c33{elseif $ticket.status == 'Answered'}#F57C00{elseif $ticket.status == 'Open'}#45a049{elseif $ticket.status == 'Customer Reply'}#40c4da{else}#40c4da{/if}';" onmouseout="this.style.backgroundColor='{if $ticket.status == 'Closed'}#ff6e42{elseif $ticket.status == 'Answered'}#FF9800{elseif $ticket.status == 'Open'}#4caf50{elseif $ticket.status == 'Customer Reply'}#26c6da{else}#26c6da{/if}';">
                                    {if $ticket.status == 'Open'}Açık
                                    {elseif $ticket.status == 'Answered'}Cevaplandı
                                    {elseif $ticket.status == 'Closed'}Kapalı
                                    {elseif $ticket.status == 'Customer Reply'}Müşteri Yanıtı
                                    {else}{$ticket.status|default:'Durum Yok'}{/if}
                                </span>
                            </div>
                            <div style="flex: 1; color: #666; text-align: right; padding-right: 5px;">
                                {if $ticket.tid && $ticket.c}
                                    <a href="viewticket.php?tid={$ticket.tid}&c={$ticket.c}" class="detail-button" style="display: inline-block; padding: 4px 10px; background-color: #26c6da; color: #ffffff; text-decoration: none; border-radius: 10px; font-size: 12px; transition: background-color 0.3s ease; width: 80px; text-align: center; white-space: nowrap; text-decoration: dotted; text-decoration-color: #1e9ab0; text-decoration-thickness: 1px;" onmouseover="this.style.backgroundColor='#1e9ab0'; this.style.color='#ffffff'; this.style.textDecorationColor='#1e9ab0';" onmouseout="this.style.backgroundColor='#26c6da'; this.style.color='#ffffff'; this.style.textDecorationColor='#1e9ab0';">
                                        Görüntüle
                                    </a>
                                {else}
                                    <span style="color: #ff6e42; font-size: 12px;">
                                        Link Eksik: tid={if $ticket.tid}{$ticket.tid}{else}yok{/if}, c={if $ticket.c}{$ticket.c}{else}yok{/if}<br>
                                        Debug: id={$ticket.id|default:'yok'} | title={$ticket.title|default:'yok'} | status={$ticket.status|default:'yok'} | 
                                        tid={$ticket.tid|default:'yok'} | ticketnum={$ticket.ticketnum|default:'yok'} | ticketid={$ticket.ticketid|default:'yok'} | 
                                        c={$ticket.c|default:'yok'} | hash={$ticket.hash|default:'yok'} | clienthash={$ticket.clienthash|default:'yok'}
                                    </span>
                                {/if}
                            </div>
                        </div>
                    {/foreach}
                {else}
                    <div style="display: flex; align-items: center; margin: 0; color: #666; font-size: 14px; font-weight: 500;">
                        <span>Destek talebi bulunamadı.</span>
                        <a href="/submitticket.php?step=2&deptid=1" class="new-ticket-btn blink" style="background: #FF9800; color: #ffffff; padding: 4px 10px; border-radius: 10px; font-size: 12px; font-weight: 500; margin-left: 10px; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#F57C00';" onmouseout="this.style.background='#FF9800';">Yeni Destek Talebi</a>
                    </div>
                {/if}

                <!-- WHMCS Sayfalama -->
                {if $pagination}
                    <div style="display: flex; justify-content: center; align-items: center; margin-top: 15px;">
                        {$pagination}
                    </div>
                {/if}
            </div>
        </div>
    </div>
</div>

{* Boş bir footer div'i, antrasit siyah stil ile *}
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

    /* Genel stil uyumu */
    .row {
        background: transparent;
        border-radius: 0;
    }

    /* Panel stilleri */
    .active-services-panel {
        background: linear-gradient(135deg, #ffffff, #f0f9ff);
        border-radius: 12px;
        padding: 15px 20px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        position: relative;
        transition: all 0.3s ease;
        width: 100%;
        border: 1px solid #e6e6e6;
    }
    .active-services-panel:hover {
        box-shadow: 0 6px 20px rgba(38, 198, 218, 0.2);
        border: 1px solid #26c6da;
    }

    /* Panel başlığı */
    .panel-header {
        font-size: 16px;
        color: #ffffff;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        text-align: center;
        width: 100%;
    }

    /* Yeni ticket butonu */
    .new-ticket-btn {
        background: #FF9800;
        color: #ffffff;
        padding: 4px 10px;
        border-radius: 10px;
        font-size: 12px;
        font-weight: 500;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }
    .new-ticket-btn:hover {
        background: #F57C00;
    }

    /* Başlık satırı */
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

    /* Ticket satırları */
    .service-row {
        padding: 12px 0;
        border-bottom: 1px solid #e6e6e6;
        display: flex;
        justify-content: space-between;
        align-items: center;
        transition: background-color 0.2s ease;
        min-height: 50px;
    }
    .service-row:hover {
        background: #f0f9ff;
    }

    /* Ticket durum stilleri */
    .ticket-status {
        display: inline-block;
        padding: 4px 10px;
        background-color: #4caf50;
        color: #ffffff;
        border-radius: 10px;
        font-size: 12px;
        font-weight: 500;
        transition: background-color 0.3s ease;
    }
    .ticket-status[status="Closed"] { background-color: #ff6e42; }
    .ticket-status[status="Answered"] { background-color: #FF9800; }
    .ticket-status[status="Open"] { background-color: #4caf50; }
    .ticket-status[status="Customer Reply"] { background-color: #26c6da; }
    .ticket-status:hover[status="Closed"] { background-color: #e65c33; }
    .ticket-status:hover[status="Answered"] { background-color: #F57C00; }
    .ticket-status:hover[status="Open"] { background-color: #45a049; }
    .ticket-status:hover[status="Customer Reply"] { background-color: #40c4da; }

    /* Detay butonu */
    .detail-button {
        display: inline-block;
        padding: 4px 10px;
        background-color: #26c6da;
        color: #ffffff;
        text-decoration: none;
        border-radius: 10px;
        font-size: 12px;
        transition: background-color 0.3s ease;
        width: 80px;
        text-align: center;
        white-space: nowrap;
        text-decoration: dotted;
        text-decoration-color: #1e9ab0;
        text-decoration-thickness: 1px;
    }
    .detail-button:hover {
        background-color: #1e9ab0;
        color: #ffffff;
        text-decoration-color: #1e9ab0;
    }

    /* Animasyon */
    .blink {
        animation: blink 1s infinite;
    }
    @keyframes blink {
        0% { opacity: 1; }
        50% { opacity: 0.5; }
        100% { opacity: 1; }
    }

    /* Yükleme animasyonunu gizle */
    #tableLoading {
        display: none !important;
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

    /* Boş footer placeholder'ı, antrasit siyah stil ile */
    .custom-footer-placeholder {
        position: fixed;
        bottom: 0;
        width: 100%;
        left: 0;
        z-index: 1000;
        background-color: #333333; /* Antrasit siyah */
        color: #fff;
        padding: 36px 0;
        text-align: center;
        max-height: 180px;
        overflow: hidden;
        font-size: 12px;
        line-height: 1.2;
    }

    /* Responsive ayarlar */
    @media (max-width: 768px) {
        .active-services-panel {
            padding: 10px 15px;
        }
        .panel-header {
            font-size: 14px;
        }
        .new-ticket-btn {
            font-size: 11px;
            padding: 3px 8px;
        }
        .header-row {
            font-size: 13px;
        }
        .service-row {
            padding: 10px 0;
            min-height: 45px;
        }
        .detail-button {
            font-size: 11px;
            padding: 3px 8px;
            width: 70px;
        }
        .custom-footer-placeholder {
            padding: 36px 0;
            max-height: 160px;
        }
    }
</style>