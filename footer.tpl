{if $loginpage eq 0 and $templatefile ne "clientregister" and $templatefile ne "password-reset-container"}
	                </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-lg-none sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
     </section>
	<section class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-12 quiq-links-footer">
					<div class="row justify-content-center">
						<div class="col-md-3 col-6">
							<h5 class="quiq-links-footer-title"><i class="fas fa-globe" style="color: #1ABC9C; font-size: 16px; margin-right: 8px; vertical-align: middle;"></i> Domain</h5>
							<ul class="quiq-links-footer-ul">
								<li><a href="https://www.hostingkontrol.com/alan-adi-kaydet">Domain Kaydet</a></li>
								<li><a href="https://www.hostingkontrol.com/domain-transfer-et">Domain Transfer Et</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-6">
							<h5 class="quiq-links-footer-title"><i class="fas fa-server" style="color: #1ABC9C; font-size: 16px; margin-right: 8px; vertical-align: middle;"></i> Hosting</h5>
							<ul class="quiq-links-footer-ul">
								<li><a href="https://www.hostingkontrol.com/turkiye-lokasyon-linux-hosting">Türkiye Linux Hosting</a></li>
								<li><a href="https://www.hostingkontrol.com/avrupa-lokasyon-hosting">Avrupa Linux Hosting</a></li>
								<li><a href="https://www.hostingkontrol.com/wordpress-hosting">WordPress Cloud Hosting</a></li>
								<li><a href="https://www.hostingkontrol.com/turkiye-lokasyon-bayi-hosting">Türkiye cPanel Bayi Hosting</a></li>
								<li><a href="https://www.hostingkontrol.com/avrupa-lokasyon-bayi-hosting">Avrupa cPanel Bayi Hosting</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-6 mt-md-0 mt-8">
							<h5 class="quiq-links-footer-title"><i class="fas fa-database" style="color: #1ABC9C; font-size: 16px; margin-right: 8px; vertical-align: middle;"></i> Sunucu</h5>
							<ul class="quiq-links-footer-ul">
								<li><a href="https://www.hostingkontrol.com/sanal-sunucular-vps">VPS Sunucular</a></li>
								<li><a href="https://www.hostingkontrol.com/vds-sunucu">VDS Sunucular</a></li>
								<li><a href="https://www.hostingkontrol.com/ucretsiz-cpanel-sunucular">cPanel Ücretsiz Sunucular</a></li>
								<li><a href="https://www.hostingkontrol.com/dedicated-sunucu-fiziksel-sunucu">Fiziksel Sunucu Kirala</a></li>
								<li><a href="https://www.hostingkontrol.com/kurumsal-mail-hosting">Kurumsal Mail Hosting</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-6 mt-md-0 mt-8">
							<h5 class="quiq-links-footer-title"><i class="fas fa-briefcase" style="color: #1ABC9C; font-size: 16px; margin-right: 8px; vertical-align: middle;"></i> Kurumsal</h5>
							<ul class="quiq-links-footer-ul">
								<li><a href="https://www.hostingkontrol.com/hakkimizda">Hakkımızda</a></li>
								<li><a href="https://www.hostingkontrol.com/hizmet-sozlesmesi">Hizmet Sözleşmesi</a></li>
								<li><a href="https://www.hostingkontrol.com/gizlilik-guvenlik-politikasi">Gizlilik Politikası</a></li>
								<li><a href="https://www.hostingkontrol.com/submitticket.php?step=2&deptid=1">İletişim</a></li>
								<li><a href="https://wa.me/02166062115?text=Merhaba,%20size%20hostingkontrol.com%20sitesi%20%C3%BCzerinden%20yaz%C4%B1yorum.">WhatsApp İletişim</a></li>
							</ul>
						</div>
					</div>
				</div>

                <div class="col-md-3 col-sm-3 w-sm-100">
                    <h5 class="quiq-links-footer-title">hostingkontrol.com</h5>
                    <p class="secure-img-footer-area">
                    </p>

                    <div class="footer-contact-method">
                        <a href="https://www.hostingkontrol.com/submitticket.php?step=2&deptid=1">
                            <span>email bilgileri :</span>
                            <b>info@hostingkontrol.com</b>
                            <i class="fas fa-at"></i>
                        </a>

                        <a href="https://wa.me/02166062115?text=Merhaba,%20size%20hostingkontrol.com%20sitesi%20%C3%BCzerinden%20yaz%C4%B1yorum.">
                            <span>whatsapp'tan yaz  :</span>
                            <b>0216 606 21 15</b>
                            <i class="fab fa-whatsapp-square"></i>
                        </a>
                    </div>
                </div>
            </div>

<div class="mr-tp-40 row justify-content-between footer-area-under">
                <div class="col-md-4">
                    <a href="#"><img class="footer-logo-blue" src="https://www.hostingkontrol.com/img/hosting-kontrol-logo1.png" alt="" /></a>
                </div>

				<div class="col-md col-12 d-flex justify-content-md-end justify-content-start">
					<ul class="under-footer-ullist">
						<li><a href="{$WEB_ROOT}/supporttickets.php">{lang key="navtickets"}</a></li>
						<li><a href="{$WEB_ROOT}/knowledgebase.php">{lang key="knowledgebasetitle"}</a></li>
						<li><a href="{$WEB_ROOT}/serverstatus.php">{lang key="networkstatustitle"}</a></li>
					</ul>
				</div>
			</div>

			<div class="row justify-content-between final-footer-area mt-7 align-items-center">
				<div class="col-md-auto col-12 order-md-1 order-12">
					<div class="final-footer-area-text">© 2019 - 2025 hostingkontrol.com - Profesyonel Hosting Hizmetleri. Tüm Hakları Saklıdır.</div>
				</div>
				<div class="col-md col-12 d-flex justify-content-md-end justify-content-center order-md-12 order-1">
					<div class="footer-lang-changer d-flex align-items-center">
						<img src="img/visa-mastercard-logo.jpg" alt="Visa Mastercard" class="payment-logo" title="We Accept Credit Card">
						{if $languagechangeenabled && count($locales) > 1} {include file="$template/includes/language-system.tpl"} {/if}
						{if $languagechangeenabled && count($locales) > 1 || $currencies}
							<button type="button" class="btn-lang-footer" data-toggle="modal" data-target="#modalChooseLanguage">
								{$activeCurrency.prefix}
								{$activeCurrency.code}
							</button>
						{/if}
					</div>
				</div>
			</div>
		</div>
	</section>
	{/if}


    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector justify-content-center">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-3">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
						{else}
						<h5 class="text-center py-5 mb-0">your current currency is {$activeCurrency.prefix}{$activeCurrency.code}</h5>
                        {/if}
                    </div>
					{if !$loggedin && $currencies}
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary mx-auto rounded-20">{lang key='apply'}</button>
                    </div>
					{/if}
                </div>
            </div>
        </div>
    </form>
	

		
    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}
	
    {$footeroutput}

	<!-- Activation Script -->
	<script src="{$WEB_ROOT}/templates/{$template}/js/particles-code.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/js/particles.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/nice-select/jquery.nice-select.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/md5/md5.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/flickity/flickity.pkgd.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/aos/aos.min.js"></script>
	<script src="{$WEB_ROOT}/templates/{$template}/plugins/slick/slick.min.js"></script>
    <script src="{$WEB_ROOT}/templates/{$template}/js/custom.js"></script>
	

</html>

<style>
    .quiq-links-footer-title {
        display: flex;
        align-items: center;
        line-height: 1;
    }
    .payment-logo {
        height: 18px;
        margin-right: 8px;
        vertical-align: middle;
    }
</style>