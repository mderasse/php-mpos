<div class="row">
  <form class="col-md-4" style="margin: 0 auto; float: none;" role="form" action="{$smarty.server.SCRIPT_NAME}?page=login" method="post" id="otpForm">
    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-sign-in fa-fw"></i> {t}Two-Factor Authentication required{/t}
      </div>
      <div class="panel-body">
        <div class="text-center" style="font-weight: bold; font-size: 14px;">
            {t}Enter the code given by Authenticator App{t}
        </div>
        <div class="text-center">
            <div style="margin: auto; width: 100px; margin-top: 15px;">
                <input class="form-control" type="text" placeholder="000000" pattern="\d*" maxlength="6" name="otp" style="height: 40px; font-size: 16px; text-align: center;" />
            </div>
        </div>
      </div>
      <div class="panel-footer text-center">
        <input type="submit" class="btn btn-success btn-sm" value="{t}Login{/t}" >
      </div>
    </div>
  </form>
</div>
