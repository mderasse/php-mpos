<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-align-left fa-fw"></i> {t}Two-Factor Authentication{/t}</h4>
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <h3>1. Protect your account with Two-Factor Authentication</h3>
            <p style="margin-top:15px;">
                By enabling the Two-Factor Authentication you will greatly increase the security of your account.
                That feature will prevent anyone that got access to your password from executing dangerous action on your acocunt
                <br />
                <br />
                Your Two-Factor Authentication will be request for all main action on your account such as :
                <ul>
                    <li>Login into your account</li>
                    <li>Change your account information</li>
                    <li>Request a payout</li>
                    <li>Change your password</li>
                </ul>
            </p>
            <p style="margin-top:30px;">
                <b>That feature cannot be disable !</b>
            </p>
            <h3 style="margin-top:30px;">2. Prerequisite</h3>
            <p style="margin-top:15px;">
                In order to be able to configure and use the Two-Factor Authentication you will need a Smartphone or an OTP compatible device.
                <br />
                <br />
                If you decide to use a smartphone you will need to install an 2FA-compatible application such as:
                <ul>
                    <li><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en" target="_blank">Google Authenticator for Android</a></li>
                    <li><a href="https://apps.apple.com/us/app/google-authenticator/id388497605" target="_blank">Google Authenticator for Iphone / Ipad</a></li>
                </ul>
                <br />
                You are free to use any other 2FA-compatible application
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