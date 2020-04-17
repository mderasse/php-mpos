<div class="row">
  <form class="col-md-4" role="form" method="POST">
    <input type="hidden" name="token" value="{$smarty.request.token|escape}">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />

    <input type="hidden" name="do" value="resetPassword">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">{t}Password reset{/t}</h3>
      </div>
      <div class="panel-body">
        <div class="form-group">
          <fieldset>
            <label>{t}New Password{/t}</label>
            <input class="form-control" type="password" name="newPassword" required>
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label>{t}Repeat New Password{/t}</label>
            <input class="form-control" type="password" name="newPassword2" required>
          </fieldset>
        </div>
      </div>
      <div class="panel-footer">
        {nocache}
          <input type="hidden" name="cp_token" value="{$smarty.request.cp_token|escape|default:""}">
          <input type="hidden" name="utype" value="change_pw">
          <input type="submit" value="{t}Change Password{/t}" class="btn btn-warning btn-sm">
        {/nocache}
      </div>
    </div>
  </form>
</div>
