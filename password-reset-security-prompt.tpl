{if $errorMessage}
    <p class="alert alert-danger text-center">
        {$errorMessage}
    </p>
{/if}

<p>{lang key='pwresetsecurityquestionrequired'}</p>

<form method="post" action="{routePath('password-reset-security-verify')}"  class="form-stacked">
    <div class="form-group">
		<label for="answer" class="coodiv-text-12 font-weight-bold text-blackish-blue">{$securityQuestion}</label>
        <input type="text" name="answer" class="form-control coodiv-text-11 border" id="inputAnswer" autofocus>
    </div>

    <div class="form-group text-center">
        <button type="submit" class="btn btn-primary">{lang key='pwresetsubmit'}</button>
    </div>
</form>
