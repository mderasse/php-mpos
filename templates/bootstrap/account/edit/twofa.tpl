  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-lock fa-fw"></i> {t}Two-Factor Authentication{/t}
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            {nocache}
            {if $GLOBAL.userdata.has_twofa }
                {t}Two-Factor Authentication is enabled on your account and cannot be disabled.{/t}
            {else}
                {t}Two-Factor Authentication is not enabled on your account.{/t}
                <br />
                {t}Enabling Two-Facto Authentication will increase greatly the security of you account and we recommand you to do so.{/t}
            {/if}
            {/nocache}
          </div>
        </div>
      </div>
      <div class="panel-footer">
        {nocache}
        {if ! $GLOBAL.userdata.has_twofa }
          <a href="/index.php?page=account&action=twofa" class="btn btn-success btn-sm" role="button">{t}Enable Two-Factor Authentication{/t}</a>
        {/if}
        {/nocache}
      </div>
    </div>
  </div>