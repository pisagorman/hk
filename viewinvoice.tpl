<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$companyname} - {$pagetitle}</title>

    <link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
    <link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
    <link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
    <link href="{assetPath file='invoice.min.css'}?v={$versionHash}" rel="stylesheet">
    <script>var whmcsBaseUrl = "{$WEB_ROOT}";</script>
    <script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

    <style>
        /* Yanıp Sönme Efekti */
        .blink {
            animation: blink 1s infinite;
        }
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }

        /* Ödeme Butonu için Stil (WHMCS'in dinamik $paymentbutton içindeki submit butonunu hedefler) */
        .payment-btn-container input[type="submit"],
        .payment-btn-container button[type="submit"] {
            background: linear-gradient(45deg, #FF9800, #F57C00) !important;
            color: #ffffff !important;
            padding: 8px 18px !important;
            border-radius: 12px !important;
            font-size: 14px !important;
            font-weight: 600 !important;
            text-decoration: none !important;
            transition: all 0.3s ease !important;
            border: none !important;
            box-shadow: 0 4px 12px rgba(255, 152, 0, 0.3) !important;
            margin-left: 10px !important;
            position: relative !important;
            overflow: hidden !important;
            cursor: pointer !important;
            animation: blink 1s infinite !important; /* Yanıp sönme efekti */
        }
        .payment-btn-container input[type="submit"]:hover,
        .payment-btn-container button[type="submit"]:hover {
            background: linear-gradient(45deg, #F57C00, #FF9800) !important;
            box-shadow: 0 6px 15px rgba(245, 124, 0, 0.4) !important;
            transform: translateY(-2px) !important;
        }
        .payment-btn-container input[type="submit"]:active,
        .payment-btn-container button[type="submit"]:active {
            transform: translateY(0) !important;
        }
        .payment-btn-container input[type="submit"]:focus,
        .payment-btn-container button[type="submit"]:focus {
            outline: none !important;
            box-shadow: none !important;
        }

        /* Durum stilleri */
        .status-unpaid {
            color: #ffffff;
            font-weight: 500;
        }
        .status-paid {
            color: #ffffff;
            font-weight: 500;
        }
        .status-cancelled {
            color: #ffffff;
            font-weight: 500;
        }
        .status-refunded {
            color: #ffffff;
            font-weight: 500;
        }
        .status-collections {
            color: #ffffff;
            font-weight: 500;
        }
        .status-pending {
            color: #ffffff;
            font-weight: 500;
        }
    </style>
</head>
<body>

    <div class="container-fluid invoice-container" style="max-width: 1200px; margin: 0 auto; padding: 20px; background: #f8f9fa; border-radius: 12px;">
        {if $invalidInvoiceIdRequested}
            <div class="alert alert-danger text-center" style="border-radius: 10px; padding: 15px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);">
                <h4 style="margin: 0; color: #ff6e42; font-size: 16px; font-weight: 600;">{lang key='error'}</h4>
                <p style="margin: 5px 0 0; color: #666; font-size: 14px;">{lang key='invoiceserror'}</p>
            </div>
        {else}
            <!-- Fatura Başlık Bölümü -->
            <div class="row invoice-header" style="margin-bottom: 20px;">
                <div class="col-12 col-sm-6 text-center text-sm-left">
                    {if $logo}
                        <p><img src="{$logo}" title="{$companyname}" style="max-width: 150px;" /></p>
                    {else}
                        <h2 style="font-size: 24px; color: #333; font-weight: 700; margin: 0;">{$companyname}</h2>
                    {/if}
                    <h3 style="font-size: 18px; color: #26c6da; font-weight: 600; margin: 10px 0 0; text-transform: uppercase; letter-spacing: 0.5px;">{$pagetitle}</h3>
                </div>
                <div class="col-12 col-sm-6 text-center text-sm-right">
                    <div class="invoice-status">
                        <span class="{if $status eq 'Unpaid'}status-unpaid blink{elseif $status eq 'Paid'}status-paid{elseif $status eq 'Cancelled'}status-cancelled{elseif $status eq 'Refunded'}status-refunded{elseif $status eq 'Collections'}status-collections{elseif $status eq 'Payment Pending'}status-pending{/if}" style="display: inline-block; padding: 6px 12px; border-radius: 10px; font-size: 14px; background-color: {if $status eq 'Draft'}#666{elseif $status eq 'Unpaid'}#ff6e42{elseif $status eq 'Paid'}#4caf50{elseif $status eq 'Refunded'}#e53935{elseif $status eq 'Cancelled'}#ff6e42{elseif $status eq 'Collections'}#FF9800{elseif $status eq 'Payment Pending'}#26c6da{else}#26c6da{/if}; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='{if $status eq 'Draft'}#555{elseif $status eq 'Unpaid'}#e65c33{elseif $status eq 'Paid'}#45a049{elseif $status eq 'Refunded'}#d32f2f{elseif $status eq 'Cancelled'}#e65c33{elseif $status eq 'Collections'}#F57C00{elseif $status eq 'Payment Pending'}#40c4da{else}#40c4da{/if}';" onmouseout="this.style.backgroundColor='{if $status eq 'Draft'}#666{elseif $status eq 'Unpaid'}#ff6e42{elseif $status eq 'Paid'}#4caf50{elseif $status eq 'Refunded'}#e53935{elseif $status eq 'Cancelled'}#ff6e42{elseif $status eq 'Collections'}#FF9800{elseif $status eq 'Payment Pending'}#26c6da{else}#26c6da{/if}';">
                            {if $status eq "Draft"}{lang key='invoicesdraft'}
                            {elseif $status eq "Unpaid"}Ödenmedi
                            {elseif $status eq "Paid"}{lang key='invoicespaid'}
                            {elseif $status eq "Refunded"}{lang key='invoicesrefunded'}
                            {elseif $status eq "Cancelled"}{lang key='invoicescancelled'}
                            {elseif $status eq "Collections"}{lang key='invoicescollections'}
                            {elseif $status eq "Payment Pending"}{lang key='invoicesPaymentPending'}
                            {/if}
                        </span>
                    </div>
                    {if $status eq "Unpaid" || $status eq "Draft"}
                        <div style="color: #666; font-size: 14px; margin-top: 8px;">
                            {lang key='invoicesdatedue'}: {$datedue}
                        </div>
                    {/if}
                </div>
            </div>

            <hr style="border-top: 2px solid #26c6da; margin: 20px 0;">

            <!-- Bildirim Panelleri -->
            {if $paymentSuccessAwaitingNotification}
                <div style="background: linear-gradient(135deg, #4caf50, #66bb6a); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='success'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoicePaymentSuccessAwaitingNotify'}</p>
                </div>
            {elseif $paymentSuccess}
                <div style="background: linear-gradient(135deg, #4caf50, #66bb6a); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='success'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoicepaymentsuccessconfirmation'}</p>
                </div>
            {elseif $paymentInititated}
                <div style="background: linear-gradient(135deg, #26c6da, #40c4da); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='success'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoicePaymentInitiated'}</p>
                </div>
            {elseif $pendingReview}
                <div style="background: linear-gradient(135deg, #26c6da, #40c4da); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='success'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoicepaymentpendingreview'}</p>
                </div>
            {elseif $paymentFailed}
                <div style="background: linear-gradient(135deg, #ff6e42, #e65c33); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='error'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoicepaymentfailedconfirmation'}</p>
                </div>
            {elseif $offlineReview}
                <div style="background: linear-gradient(135deg, #26c6da, #40c4da); border-radius: 10px; padding: 15px; color: #ffffff; text-align: center; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='success'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{lang key='invoiceofflinepaid'}</p>
                </div>
            {/if}

            <!-- Fatura Bilgileri -->
            <div class="row justify-content-sm-between" style="margin-bottom: 20px;">
                <div class="col-12 col-sm-6 text-sm-left invoice-col">
                    <strong style="font-size: 14px; color: #26c6da; font-weight: 600;">{lang key='invoicesinvoicedto'}</strong>
                    <address style="color: #666; font-size: 14px; line-height: 1.6; margin-top: 5px;">
                        {if $clientsdetails.companyname}{$clientsdetails.companyname}<br />{/if}
                        {$clientsdetails.firstname} {$clientsdetails.lastname}<br />
                        {$clientsdetails.address1}, {$clientsdetails.address2}<br />
                        {$clientsdetails.city}, {$clientsdetails.state}, {$clientsdetails.postcode}<br />
                        {$clientsdetails.country}
                        {if $clientsdetails.tax_id}
                            <br />{$taxIdLabel}: {$clientsdetails.tax_id}
                        {/if}
                        {if $customfields}
                            <br /><br />
                            {foreach $customfields as $customfield}
                                {$customfield.fieldname}: {$customfield.value}<br />
                            {/foreach}
                        {/if}
                    </address>
                </div>
                <div class="col-12 col-sm-6 text-sm-right invoice-col">
                    <address style="color: #666; font-size: 14px; line-height: 1.6; margin-top: 5px;">
                        {$payto}
                        {if $taxCode}<br />{$taxIdLabel}: {$taxCode}{/if}
                    </address>
                </div>
            </div>

            <div class="row justify-content-sm-between" style="margin-bottom: 20px;">
                <div class="col-12 col-sm-6 text-sm-left invoice-col">
                    <strong style="font-size: 14px; color: #26c6da; font-weight: 600;">{lang key='invoicesdatecreated'}</strong><br>
                    <span style="color: #666; font-size: 14px;">{$date}</span>
                </div>
                <div class="col-12 col-sm-6 text-sm-right invoice-col">
                    <div>
                        <strong style="font-size: 14px; color: #26c6da; font-weight: 600;">{lang key='paymentmethod'}</strong><br>
                    </div>
                    <div style="color: #666; font-size: 14px;">
                        {if $status eq "Unpaid" && $allowchangegateway}
                            <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}" class="form-inline" style="display: inline;">
                                {$tokenInput}
                                <select name="gateway" class="custom-select" onchange="submit()" style="padding: 4px 10px; border-radius: 10px; font-size: 14px; border: 1px solid #e6e6e6;">
                                    {foreach $availableGateways as $gatewayModule => $gatewayName}
                                        <option value="{$gatewayModule}"{if $gatewayModule == $selectedGateway} selected="selected"{/if}>{$gatewayName}</option>
                                    {/foreach}
                                </select>
                            </form>
                            {if $status eq "Unpaid" || $status eq "Draft"}
                                <div class="payment-btn-container" style="display: inline-block; margin-top: 5px;">
                                    {$paymentbutton}
                                </div>
                            {/if}
                        {else}
                            <span>
                                {$paymentmethod}{if $paymethoddisplayname} ({$paymethoddisplayname}){/if}
                            </span>
                        {/if}
                    </div>
                </div>
            </div>

            <!-- Kredi Uygulama Bölümü -->
            {if $manualapplycredit}
                <div style="background: linear-gradient(135deg, #4caf50, #66bb6a); border-radius: 10px; padding: 15px; color: #ffffff; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h3 style="font-size: 16px; font-weight: 600; margin: 0 0 10px 0;">{lang key='invoiceaddcreditapply'}</h3>
                    <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
                        <input type="hidden" name="applycredit" value="true" />
                        <p style="font-size: 14px; margin: 0 0 10px 0;">
                            {lang key='invoiceaddcreditdesc1'} <strong style="color: #fff;">{$totalcredit}</strong>. {lang key='invoiceaddcreditdesc2'}. {lang key='invoiceaddcreditamount'}:
                        </p>
                        <div class="row">
                            <div class="col-8 offset-2 col-sm-4 offset-sm-4">
                                <div style="display: flex; gap: 10px;">
                                    <input type="text" name="creditamount" value="{$creditamount}" style="padding: 6px 10px; border-radius: 10px; border: 1px solid #e6e6e6; font-size: 14px; width: 100%;" />
                                    <button type="submit" style="background: #26c6da; color: #ffffff; padding: 6px 12px; border-radius: 10px; font-size: 14px; font-weight: 500; border: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#1e9ab0';" onmouseout="this.style.background='#26c6da';">{lang key='invoiceaddcreditapply'}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            {/if}

            <!-- Notlar -->
            {if $notes}
                <div style="background: linear-gradient(135deg, #26c6da, #40c4da); border-radius: 10px; padding: 15px; color: #ffffff; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                    <h4 style="margin: 0; font-size: 16px; font-weight: 600;">{lang key='invoicesnotes'}</h4>
                    <p style="margin: 5px 0 0; font-size: 14px;">{$notes}</p>
                </div>
            {/if}

            <!-- Fatura Kalemleri -->
            <div style="background: #ffffff; border-radius: 10px; padding: 15px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                <div class="table-responsive">
                    <table class="table table-sm" style="font-size: 14px;">
                        <thead>
                            <tr style="border-bottom: 2px solid #26c6da; color: #26c6da; font-weight: 600;">
                                <th>{lang key='invoicesdescription'}</th>
                                <th class="text-center" style="width: 20%;">{lang key='invoicesamount'}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $invoiceitems as $item}
                                <tr style="border-bottom: 1px solid #e6e6e6;">
                                    <td style="color: #333; padding: 12px 0;">{$item.description}{if $item.taxed eq "true"} *{/if}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$item.amount}</td>
                                </tr>
                            {/foreach}
                            <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                <td class="text-right" style="color: #333; padding: 12px 0;">{lang key='invoicessubtotal'}</td>
                                <td class="text-center" style="color: #666; padding: 12px 0;">{$subtotal}</td>
                            </tr>
                            {if $taxname}
                                <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                    <td class="text-right" style="color: #333; padding: 12px 0;">{$taxrate}% {$taxname}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$tax}</td>
                                </tr>
                            {/if}
                            {if $taxname2}
                                <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                    <td class="text-right" style="color: #333; padding: 12px 0;">{$taxrate2}% {$taxname2}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$tax2}</td>
                                </tr>
                            {/if}
                            <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                <td class="text-right" style="color: #333; padding: 12px 0;">{lang key='invoicescredit'}</td>
                                <td class="text-center" style="color: #666; padding: 12px 0;">{$credit}</td>
                            </tr>
                            <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                <td class="text-right" style="color: #333; padding: 12px 0;">{lang key='invoicestotal'}</td>
                                <td class="text-center" style="color: #666; padding: 12px 0;">{$total}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            {if $taxrate}
                <p style="color: #666; font-size: 14px; margin: 0 0 20px 0;">* {lang key='invoicestaxindicator'}</p>
            {/if}

            <!-- İşlemler Tablosu -->
            <div style="background: #ffffff; border-radius: 10px; padding: 15px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
                <h3 style="font-size: 16px; color: #26c6da; font-weight: 600; margin: 0 0 15px 0; text-transform: uppercase;">{lang key='invoicestransactions'}</h3>
                <div class="table-responsive">
                    <table class="table table-sm" style="font-size: 14px;">
                        <thead>
                            <tr style="border-bottom: 2px solid #26c6da; color: #26c6da; font-weight: 600;">
                                <th class="text-center">{lang key='invoicestransdate'}</th>
                                <th class="text-center">{lang key='invoicestransgateway'}</th>
                                <th class="text-center">{lang key='invoicestransid'}</th>
                                <th class="text-center">{lang key='invoicestransamount'}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $transactions as $transaction}
                                <tr style="border-bottom: 1px solid #e6e6e6;">
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$transaction.date}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$transaction.gateway}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$transaction.transid}</td>
                                    <td class="text-center" style="color: #666; padding: 12px 0;">{$transaction.amount}</td>
                                </tr>
                            {foreachelse}
                                <tr>
                                    <td class="text-center" colspan="4" style="color: #666; padding: 12px 0;">{lang key='invoicestransnonefound'}</td>
                                </tr>
                            {/foreach}
                            <tr style="border-top: 1px solid #e6e6e6; font-weight: 600;">
                                <td class="text-right" colspan="3" style="color: #333; padding: 12px 0;">{lang key='invoicesbalance'}</td>
                                <td class="text-center" style="color: #666; padding: 12px 0;">{$balance}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Yazdır ve İndir Butonları -->
            <div style="text-align: right; margin-bottom: 20px;">
                <a href="javascript:window.print()" style="background: #26c6da; color: #ffffff; padding: 6px 12px; border-radius: 10px; font-size: 14px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease; margin-right: 10px;" onmouseover="this.style.background='#1e9ab0';" onmouseout="this.style.background='#26c6da';"><i class="fas fa-print"></i> {lang key='print'}</a>
                <a href="dl.php?type=i&id={$invoiceid}" style="background: #26c6da; color: #ffffff; padding: 6px 12px; border-radius: 10px; font-size: 14px; font-weight: 500; text-decoration: none; transition: background-color 0.3s ease;" onmouseover="this.style.background='#1e9ab0';" onmouseout="this.style.background='#26c6da';"><i class="fas fa-download"></i> {lang key='invoicesdownload'}</a>
            </div>

            <!-- Geri Dön Linki -->
            <p class="text-center d-print-none" style="margin: 0;">
                <a href="clientarea.php?action=invoices" style="color: #26c6da; font-size: 14px; text-decoration: none; transition: color 0.3s ease;" onmouseover="this.style.color='#1e9ab0';" onmouseout="this.style.color='#26c6da';">{lang key='invoicesbacktoclientarea'}</a>
            </p>
        {/if}
    </div>

    <!-- Overlay -->
    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

</body>
</html>