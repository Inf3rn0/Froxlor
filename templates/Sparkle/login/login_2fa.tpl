$header
	<article class="login bradius">
		<header class="dark">
			<img src="{$header_logo}" alt="Froxlor Server Management Panel" />
		</header>

                <if $message != ''>
                        <div class="errorcontainer bradius">
                                <div class="errortitle">{$lng['error']['error']}</div>
                                <div class="error">$message</div>
                        </div>
                </if>

		<section class="loginsec">

                        <form method="post" action="$filename" enctype="application/x-www-form-urlencoded">
                                <input type="hidden" name="script" value="{$lastscript}" />
                                <input type="hidden" name="qrystr" value="{$lastqrystr}" />
                                <fieldset>
				<legend>Froxlor&nbsp;-&nbsp;Login</legend>
				<p>
				2-Factor authentication was enabled by user!<br>
				Please enter a passcode below.<br><br>
				</p>
				<p>
                                        <input type="hidden" name="loginname" id="loginname" value="{$loginname}" />
					<label for "2fa_code">Passcode</label>
					<input type="text" name="pc" id="pc" value="" required autofocus />
				</p>
				<p class="submit">
					<input type="hidden" name="send" value="send" />
					<input type="hidden" name="action" value="ask2fa" />
					<input type="submit" value="{$lng['login']['login']}" />
				</p>
				</fieldset>
			</form>

			<aside>
				<if Settings::Get('panel.allow_preset') == '1'>
					<a href="https://InfNET.nl/" target="new">2FA - Copy/pasted by Inf3rn0</a>
				<else>
					&nbsp;
				</if>
			</aside>

		</section>

	</article>
$footer
