<div class="card mb-4">
    <div class="card-body extra-padding">

		<div class="form-title text-center">
			<h2 class="title coodiv-text-6 fw-bold mb-2">{lang key='contactus'}</h2>
			<p class="sub-title coodiv-text-12 mb-8">{lang key='readyforquestions'}</p>
		</div>

        {if $sent}
            {include file="$template/includes/alert.tpl" type="success" msg="{lang key='contactsent'}" textcenter=true}
        {/if}

        {if $errormessage}
            {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
        {/if}

        {if !$sent}
            <form method="post" action="contact.php" role="form">
            <input type="hidden" name="action" value="send" />
				<div class="row justify-content-center">
					<div class="col-md-8 col-12">
						<div class="form-group">
							<label for="inputName" class="coodiv-text-12 font-weight-bold text-blackish-blue">{lang key='supportticketsclientname'}</label>
							 <input type="text" name="name" value="{$name}" class="form-control coodiv-text-11 border" id="inputName" />
						</div>
						<div class="form-group">
							<label for="inputEmail" class="coodiv-text-12 font-weight-bold text-blackish-blue">{lang key='supportticketsclientemail'}</label>
							<input type="email" name="email" value="{$email}" class="form-control coodiv-text-11 border" id="inputEmail" />
						</div>
						<div class="form-group">
							<label for="inputSubject" class="coodiv-text-12 font-weight-bold text-blackish-blue">{lang key='supportticketsticketsubject'}</label>
							<input type="text" name="subject" value="{$subject}" class="form-control coodiv-text-11 border" id="inputSubject" />
						</div>
						<div class="form-group">
							<label for="inputMessage" class="coodiv-text-12 font-weight-bold text-blackish-blue">{lang key='contactmessage'}</label>
							<textarea name="message" rows="7" class="form-control coodiv-text-11 border" id="inputMessage">{$message}</textarea>
						</div>

						{if $captcha}
							<div class="text-center margin-bottom">
								{include file="$template/includes/captcha.tpl"}
							</div>
						{/if}

						<div class="text-center">
							<button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}">{lang key='contactsend'}</button>
						</div>
					</div>
				</div>
            </form>

        {/if}

    </div>
</div>
