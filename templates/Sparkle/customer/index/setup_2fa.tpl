$header
	<article>
		<header>
			<h2>
				<img src="templates/{$theme}/assets/img/icons/display_big.png" alt="" />&nbsp;
				{$lng['2fa']['title']}
			</h2>
		</header>

		<section>
			<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">
				<fieldset>
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
				<input type="hidden" name="send" value="send" />
				<table class="large center">
					<tr>
						<td colspan="2">
							<p>This config page belongs to my custom 2FA 'addon' for Froxlor. It basically implements time-based one-time password authentication on top of the normal username/password mechanism of Froxlor.</p>
							<br>
							<p>To make this work I have added 2 columns to the database's panel_customers table:<br>
							<strong>2fa_active</strong>     - Boolean if 2FA is enabled(and setup) for the user; (0 = off, 1 = on)<br>
							<strong>2fa_secret</strong>     - String with the 2fa-secret<br>
If 2fa_active is true, the login-page will require the 2fa-passcode to be entered. The passcode is calculated by the time and the value of 2fa_secret.<br>
If 2fa_active is false, a unique random key will display in the text field below.
Make sure to scan the QR-code before activating and saving; you will have to manually deactivate 2fa in the database if you don't have the passcode!
							</p>
							<br>
							<p>I have added changes to the following files:<br>
							<strong>
							/index.php<br>
							/customer_index.php<br>
							/lng/english.lng.php<br>
							/templates/Sparkle/header.tpl<br>
							/templates/Sparkle/login.tpl<br>
							</strong><br>
							The following files are added:<br><strong>
							/lib/classes/phpinterface/class.PHPGangsta_GoogleAuthenticator.php<br>
							/templates/Sparkle/customer/index/setup_2fa.tpl
							</strong></p>
						</td>
					</tr>
<!--					<tr>
						<td>Recovery codes</td>
						<td>
							<input type="assword" name="2FA_recovery_codes[]" maxlength="10">
							<input type="assword" name="2FA_recovery_codes[]" maxlength="10">
							<input type="assword" name="2FA_recovery_codes[]" maxlength="10">
							<input type="assword" name="2FA_recovery_codes[]" maxlength="10">
						</td>
					</tr>
-->					<tr>
						<td><label for="2FA_secret">{$lng['2fa']['secret']}</label></td>
                                                <td>
							<input name="2fa_secret" id="2fa_secret" size="40" type="assword" value="$tfa_secret">
						</td>
                                        </tr>
					<tr>
						<td>QR Code</td>
						<td>
							<img src="$qrImage" width="200" height="200" /><br>
						</td>
					</tr>
					<tr>
						<td>Verification</td>
						<td>
                                                        Calculated current code: $oneCode<br>
                                                        $verCode
						</td>
					</tr>
                                        <tr>
						<td><label for="2fa_active">{$lng['2fa']['active']}</td>
                                                <td><input name="2fa_active" id="2fa_active" type="checkbox" $tfa_activec></td>
                                        </tr>

					<tfoot>
						<tr>
							<td colspan="2" class="right">
								<input type="reset" value="{$lng['2fa']['cancel']}" class="historyback">
								<input type="submit" value="{$lng['2fa']['save']}">
							</td>
						</tr>
					</tfoot>
				</table>
				</fieldset>
			</form>
		</section>
	</article>
$footer
