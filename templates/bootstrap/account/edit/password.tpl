<form action="{$smarty.server.SCRIPT_NAME}" role="form" method="post"><input type="hidden" name="act" value="updatePassword">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="updatePassword">
  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-key fa-fw"></i> {t}Change Password{/t}
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="form-group">
              <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
                {t}Note: You will be redirected to login on successful completion of a password change{/t}
              </p>
            </div>
            <div class="form-group">
              <label>{t}Current Password{/t}</label>
              {nocache}<input class="form-control" type="password" name="currentPassword" />{/nocache}
            </div>
            <div class="form-group">
              <label>{t}New Password{/t}</label>
              <p style="padding-right:10px;display:block;margin-top:0px;float:right;color:#999;" id="pw_strength"></p>
              {nocache}<input class="form-control" type="password" name="newPassword" id="pw_field"/>{/nocache}
            </div>
            <div class="form-group">
              <label>{t}Repeat New Password{/t}</label>
              <p style="padding-right:10px;display:block;margin-top:0px;float:right;" id="pw_match"></p>
              {nocache}<input class="form-control" type="password" name="newPassword2" id="pw_field2"/>{/nocache}
            </div>
            {if $GLOBAL.userdata.has_twofa }
            <div class="form-group">
              <label>{t}Two-Factor Authentication Code{/t}</label>
              {nocache}<input class="form-control" type="text" pattern="\d*" placeholder="000000"  maxlength="6" name="otp" id="otp"/>{/nocache}
            </div>
            {/if}
          </div>
        </div>
      </div>
      <div class="panel-footer">
        {nocache}
        <input type="hidden" name="cp_token" value="{$smarty.request.cp_token|escape|default:""}">
        <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
        <input type="hidden" name="utype" value="change_pw">
        <input type="submit" value="{t}Change Password{/t}" class="btn btn-success btn-sm">
        {/nocache}
      </div>
    </div>
  </div>
</form>
