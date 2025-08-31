{include file="$template/includes/tablelist.tpl" tableName="InvoicesList" filterColumn="4"}

<script>
    jQuery(document).ready(function() {
        var table = jQuery('#tableInvoicesList').show().DataTable();

        {if $orderby == 'default'}
            table.order([4, 'desc'], [2, 'asc']);
        {elseif $orderby == 'invoicenum'}
            table.order(0, '{$sort}');
        {elseif $orderby == 'date'}
            table.order(1, '{$sort}');
        {elseif $orderby == 'duedate'}
            table.order(2, '{$sort}');
        {elseif $orderby == 'total'}
            table.order(3, '{$sort}');
        {elseif $orderby == 'status'}
            table.order(4, '{$sort}');
        {/if}
        table.draw();
        jQuery('#tableLoading').hide();
    });
</script>

<div class="row justify-content-center" style="max-width: 1200px; margin: 0 auto; padding: 0; background: transparent; border-radius: 0;">
    <div class="col-md-12 col-lg-12" style="padding: 10px;">
        <div class="active-services-panel overflow-hidden mb-10 border rounded-10" style="background: linear-gradient(135deg, #ffffff, #f0f9ff); border-radius: 12px; padding: 15px 20px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); position: relative; transition: all 0.3s ease; width: 100%; border: 1px solid #e6e6e6;" onmouseover="this.style.boxShadow='0 6px 20px rgba(38, 198, 218, 0.2)'; this.style.border='1px solid #26c6da';" onmouseout="this.style.boxShadow='0 4px 15px rgba(0, 0, 0, 0.1)'; this.style.border='1px solid #e6e6e6';">
            <!-- Panel Başlık Kapsayıcısı -->
            <div style="background-color: #40c4da; border-radius: 10px; padding: 10px 15px; margin-bottom: 15px;">
                <div class="panel-header" style="font-size: 16px; color: #ffffff; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; display: inline-block; text-align: center; width: 100%;">
                    FATURA LİSTESİ
                </div>
            </div>

            <div class="panel-body" style="color: #555; font-size: 14px; line-height: 1.6;">
                <div class="table-container clearfix">
                    <table id="tableInvoicesList" class="table table-list w-hidden">
                        <thead>
                            <tr>
                                <th>{lang key='invoicestitle'}</th>
                                <th>{lang key='invoicesdatecreated'}</th>
                                <th>{lang key='invoicesdatedue'}</th>
                                <th>{lang key='invoicestotal'}</th>
                                <th>{lang key='invoicesstatus'}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $invoices as $invoice}
                                <tr onclick="clickableSafeRedirect(event, 'viewinvoice.php?id={$invoice.id}', false)">
                                    <td>{$invoice.invoicenum}</td>
                                    <td><span class="w-hidden">{$invoice.normalisedDateCreated}</span>{$invoice.datecreated}</td>
                                    <td><span class="w-hidden">{$invoice.normalisedDateDue}</span>{$invoice.datedue}</td>
                                    <td data-order="{$invoice.totalnum}">{$invoice.total}</td>
                                    <td><span class="label status status-{$invoice.statusClass}">{$invoice.status}</span></td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                    <div class="text-center" id="tableLoading">
                        <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
                    </div>
                </div>
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

    /* Ticket satırları (DataTable ile uyumlu hale getirildi) */
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

    /* Ticket durum stilleri (Fatura statüleri için özelleştirildi) */
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

    /* Detay butonu (Fatura için tıklama zaten var) */
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