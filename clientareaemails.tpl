<div class="row justify-content-center" style="max-width: 1200px; margin: 0 auto; padding: 0; background: #f8f9fa; border-radius: 12px;">
    <div class="col-md-12 col-lg-12" style="padding: 10px;">
        <div class="active-services-panel overflow-hidden mb-10 border rounded-10" style="background: #ffffff; border-radius: 12px; padding: 15px 20px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05); position: relative; transition: all 0.2s ease; width: 100%; border: 1px solid #e6e6e6;" onmouseover="this.style.border='1px solid #26c6da';" onmouseout="this.style.border='1px solid #e6e6e6';">
            <!-- Panel Başlık Kapsayıcısı -->
            <div style="background-color: #40c4da; border-radius: 10px; padding: 10px 15px; margin-bottom: 15px;">
                <div class="panel-header" style="font-size: 16px; color: #ffffff; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px; display: inline-block; text-align: center; width: 100%;">
                    E-POSTA LİSTESİ
                </div>
            </div>

            <div class="panel-body" style="color: #555; font-size: 14px; line-height: 1.6;">
                <!-- Başlık Satırı -->
                <div class="header-row" style="padding: 10px 0; border-bottom: 2px solid #26c6da; display: flex; justify-content: space-between; align-items: center; font-weight: 600; color: #26c6da; margin-bottom: 10px;">
                    <div style="flex: 1; padding-right: 15px; text-align: left;">Tarih</div>
                    <div style="flex: 2; padding-right: 15px; text-align: left;">Konu</div>
                    <div style="flex: 1; text-align: right;">İşlem</div>
                </div>

                <!-- E-posta Listesi -->
                {if $emails && count($emails) > 0}
                    {foreach $emails as $email}
                        <div class="service-row" style="padding: 12px 0; border-bottom: 1px solid #e6e6e6; display: flex; justify-content: space-between; align-items: center; transition: background-color 0.2s ease; min-height: 50px;" onmouseover="this.style.background='#f8f9fa';" onmouseout="this.style.background='#ffffff';">
                            <div style="flex: 1; color: #666; padding-right: 15px; text-align: left; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 14px;">
                                {$email.date}
                            </div>
                            <div style="flex: 2; color: #333; padding-right: 15px; text-align: left; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 14px;">
                                {$email.subject}
                                {if $email.attachmentCount > 0} 
                                    <i class="fal fa-paperclip" style="color: #666; margin-left: 5px;"></i>
                                {/if}
                            </div>
                            <div style="flex: 1; color: #666; text-align: right; padding-right: 5px;">
                                <a href="#" class="detail-button" style="display: inline-block; padding: 4px 10px; background-color: #FF9800; color: #ffffff; text-decoration: none; border-radius: 10px; font-size: 12px; transition: background-color 0.3s ease; width: 80px; text-align: center; white-space: nowrap; text-decoration: dotted; text-decoration-color: #ff6e42; text-decoration-thickness: 1px;" onclick="popupWindow('viewemail.php?id={$email.id}', 'emailWin', '800', '600', 'scrollbars=1,'); return false;" onmouseover="this.style.backgroundColor='#F57C00'; this.style.color='#ffffff'; this.style.textDecorationColor='#ff6e42';" onmouseout="this.style.backgroundColor='#FF9800'; this.style.color='#ffffff'; this.style.textDecorationColor='#ff6e42';">
                                    {lang key='emailviewmessage'}
                                </a>
                            </div>
                        </div>
                    {/foreach}
                {else}
                    <p style="margin: 0;">E-posta bulunamadı.</p>
                {/if}
            </div>
        </div>
    </div>
</div>