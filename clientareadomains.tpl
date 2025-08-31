{if $warnings}
    {include file="$template/includes/alert.tpl" type="warning" msg=$warnings textcenter=true}
{/if}
<div class="tab-content">
    <div class="tab-pane fade show active" id="tabOverview">
        {include file="$template/includes/tablelist.tpl" tableName="DomainsList" noSortColumns="0" startOrderCol="2" filterColumn="4"}

        <script>
            jQuery(document).ready(function () {
                // clickableSafeRedirect fonksiyonunu tanımla
                window.clickableSafeRedirect = function(event, url, newTab) {
                    var checkbox = jQuery(event.target).closest('tr').find('input[type="checkbox"]');
                    if (checkbox.length && checkbox.is(':checked')) {
                        event.preventDefault();
                        return; // Checkbox seçiliyse yönlendirme engellenir
                    }
                    if (newTab) {
                        window.open(url, '_blank');
                    } else {
                        window.location.href = url;
                    }
                };

                var statusPriority = {
                    'Active': 1,
                    'Pending': 2,
                    'Grace': 3,
                    'Redemption': 4,
                    'Expired': 5,
                    'Cancelled': 6
                };

                // Mevcut DataTable instance’ını kontrol et ve yok et
                if (jQuery.fn.DataTable.isDataTable('#tableDomainsList')) {
                    jQuery('#tableDomainsList').DataTable().destroy();
                }

                var table = jQuery('#tableDomainsList').show().DataTable({
                    columnDefs: [
                        {
                            targets: 4, // Status sütunu
                            render: function (data, type, row) {
                                if (type === 'sort') {
                                    var match = data.match(/status-([a-z]+)/i);
                                    if (match && match[1]) {
                                        var key = match[1].charAt(0).toUpperCase() + match[1].slice(1).toLowerCase();
                                        return statusPriority[key] || 99;
                                    }
                                    return 99;
                                }
                                return data;
                            }
                        },
                        { orderable: false, targets: [0, 1, 2, 3] } // 4. sütun statü
                    ],
                    order: [[4, 'asc']] // Statüye göre ascending sıralama
                });

                jQuery('#tableLoading').hide();

                // Bulk action butonları için event handler
                jQuery('.setBulkAction').on('click', function() {
                    var action = jQuery(this).attr('id');
                    jQuery('#bulkaction').val(action);
                    jQuery('#domainForm').submit();
                });
            });
        </script>

        <form id="domainForm" method="post" action="clientarea.php?action=bulkdomain">
            <input id="bulkaction" name="update" type="hidden" />

            <div class="d-flex justify-content-center domains-buttonsetup-group mb-6" role="group" style="margin-bottom: 5px !important;">
                <button type="button" class="setBulkAction domains-buttonsetup-item" id="nameservers">
                    {lang key='domainmanagens'}
                </button>
                <button type="button" class="setBulkAction domains-buttonsetup-item" id="contactinfo">
                    {lang key='domaincontactinfoedit'}
                </button>
                {if $allowrenew}
                    <button type="button" class="setBulkAction domains-buttonsetup-item" id="renewDomains">
                        {lang key='domainmassrenew'}
                    </button>
                {/if}
                <a class="domains-buttonsetup-item setBulkAction" href="#" id="autorenew">
                    {lang key='domainautorenewstatus'}
                </a>
                <a class="domains-buttonsetup-item setBulkAction" href="#" id="reglock">
                    {lang key='domainreglockstatus'}
                </a>
            </div>

            <div class="table-container clearfix">
                <table id="tableDomainsList" class="table table-list">
                    <thead>
                        <tr>
                            <th class="width-fixed-20"></th>
                            <th style="text-align: left;">{lang key='orderdomain'}</th>
                            <th style="text-align: center;">{lang key='clientareahostingregdate'}</th>
                            <th style="text-align: center;">{lang key='clientareahostingnextduedate'}</th>
                            <th style="text-align: center;">{lang key='domainstatus'}</th>
                        </tr>
                    </thead>
                    <tbody>
                    {foreach $domains as $domain}
                        <tr onclick="clickableSafeRedirect(event, 'clientarea.php?action=domaindetails&id={$domain.id}', false)">
                            <td>
                                <input type="checkbox" name="domids[]" class="domids stopEventBubble" value="{$domain.id}" />
                            </td>
                            <td style="text-align: left;">
                                <a href="http://{$domain.domain}" target="_blank">{$domain.domain}</a>
                            </td>
                            <td style="text-align: center;"><span class="w-hidden">{$domain.normalisedRegistrationDate}</span>{$domain.normalisedRegistrationDate}</td>
                            <td style="text-align: center;"><span class="w-hidden">{$domain.normalisedNextDueDate}</span>{$domain.normalisedNextDueDate}</td>
                            <td style="text-align: center;">
                                <span class="label status status-{$domain.statusClass}">{$domain.statustext}</span>
                                <span class="w-hidden">
                                    {if $domain.expiringSoon}<span>{lang key="domainsExpiringSoon"}</span>{/if}
                                </span>
                            </td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
                <div class="text-center" id="tableLoading">
                    <p><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</p>
                </div>
            </div>
        </form>
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

    /* Tablo container'ı */
    .table-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0;
        background: transparent;
        border-radius: 0;
        box-shadow: none;
        width: 100%;
        position: static;
        left: auto;
        transform: none;
    }

    /* Tablo başlık satırı */
    .table-list thead tr {
        background-color: #40c4da;
        color: #fff;
        font-weight: 600;
    }
    .table-list thead th {
        cursor: default !important; /* Sıralama butonlarını devre dışı bırak */
        text-align: inherit !important; /* Başlık hizalaması inline style’a bağlı */
    }

    /* Tablo satırları */
    .table-list tbody tr {
        transition: background-color 0.2s ease;
    }
    .table-list tbody tr:hover {
        background-color: #f0f9ff;
    }

    /* Butonlar için stil (koyu turkuaz) */
    .domains-buttonsetup-group {
        padding: 10px 0 !important; /* Üst ve alt boşluk */
        margin-bottom: 5px !important; /* 5 piksel alt boşluk */
    }
    .domains-buttonsetup-item {
        background-color: #006064 !important; /* Koyu turkuaz */
        color: #fff !important;
        border: none !important;
        border-radius: 20px !important; /* Oval şekli koru */
        padding: 10px 20px !important;
        margin: 0 5px !important;
        text-align: center !important;
        text-decoration: none !important;
        display: inline-block !important;
        transition: background-color 0.3s ease !important;
    }
    .domains-buttonsetup-item:hover {
        background-color: #00838f !important; /* Hover’da biraz daha açık turkuaz */
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
        .table-container {
            padding: 5px;
        }
        .custom-footer-placeholder {
            padding: 36px 0;
            max-height: 160px;
        }
        .domains-buttonsetup-item {
            padding: 8px 15px !important;
            margin: 0 3px !important;
            font-size: 14px !important;
        }
    }
</style>