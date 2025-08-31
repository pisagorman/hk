{if $showEmailVerificationBanner}
<div class="bg-default-2 pt-10">
<div class="container">
		<div class="row justify-content-center">	
		<div class="verification-banner email-verification alert alert-warning alert-dismissible fade show mb-0 col-12 rounded-20" role="alert">
        <p class="coodiv-text-9 font-weight-600"><strong>{$clientsdetails.lastname} !</strong>{lang key='verifyEmailAddress'}</p>
		<button id="btnResendVerificationEmail" class="btn btn-warning btn-auto-min-width btn-resend-verify-email" data-email-sent="{lang key='emailSent'}" data-error-msg="{lang key='error'}" data-uri="{routePath('user-email-verification-resend')}">
        <span class="loader w-hidden"><i class="fa fa-spinner fa-spin"></i></span>{lang key='resendEmail'}</button>
        <button id="btnEmailVerificationClose" type="button" class="btn close btn-auto-min-width" data-uri="{routePath('dismiss-email-verification')}"><span aria-hidden="true">&times;</span></button>
        </div>
    </div>
</div>
</div>
{/if}
