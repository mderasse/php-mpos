<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-align-left fa-fw"></i> {t}Two-Factor Authentication{/t}</h4>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <h3>1. {t}Protect your account with Two-Factor Authentication{/t}</h3>
            <p style="margin-top:15px;">
                {t}By enabling the Two-Factor Authentication you will greatly increase the security of your account.
                That feature will prevent anyone that got access to your password from executing dangerous action on your account.{/t}
                <br />
                <br />
                {t}Your Two-Factor Authentication will be request for all main action on your account such as :{/t}
                <ul>
                    <li>{t}Login into your account{/t}</li>
                    <li>{t}Change your account information{/t}</li>
                    <li>{t}Request a payout{/t}</li>
                    <li>{t}Change your password{/t}</li>
                </ul>
            </p>
            <p style="margin-top:30px;">
                <b>{t}That feature cannot be disable!{/t}</b>
            </p>
            <h3 style="margin-top:30px;">{t}2. Prerequisite{/t}</h3>
            <p style="margin-top:15px;">
                {t}In order to be able to configure and use the Two-Factor Authentication you will need a Smartphone or an OTP compatible device.{/t}
                <br />
                <br />
                {t}If you decide to use a smartphone you will need to install an 2FA-compatible application such as:{/t}
                <ul>
                    <li><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en" target="_blank">{t}Google Authenticator for Android{/t}</a></li>
                    <li><a href="https://apps.apple.com/us/app/google-authenticator/id388497605" target="_blank">{t}Google Authenticator for Iphone / Ipad{/t}</a></li>
                </ul>
                <br />
                {t}You are free to use any other 2FA-compatible application.{/t}
            </p>
          </div>
        </div>
      </div>
      <div class="panel-footer">
          <div class="text-center">
              <form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
                  {nocache}
                  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
                  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
                  <input type="hidden" name="do" value="enable">
                  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
                  {/nocache}
                  <input type="submit" class="btn btn-success btn-sm" value="{t}Enable Two-Factor Authentication{/t}">
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>