  <div class="row">
    {capture assign=default_account}{t}Default{/t}{/capture}
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-users fa-fw"></i> {t}Wallet Accounts{/t}
        </div>
        <div class="panel-body ">
          <div class="panel-group">
{foreach key=NAME item=VALUE from=$ACCOUNTS}
            <div class="panel panel-default">
              <div class="panel-heading">
                <i class="fa fa-user fa-fw"></i> {t}Account{/t}: {$NAME|default:$default_account}
              </div>
              <div class="panel-body">
                <div class="col-lg-4">
                  <div class="panel panel-info">
                    <div class="panel-heading">
                      <i class="fa fa-money fa-fw"></i> {t}Balance Info{/t}
                    </div>
                    <div class="table-responsive panel-body no-padding">
                      <table class="table table-striped table-bordered table-hover">
                        <tr>
                          <td class="col-lg-4">{t}Balance{/t}</td>
                          <td class="col-lg-12">{$VALUE|number_format:"8"}</td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>

{foreach key=ACCOUNT item=ADDRESS from=$ACCOUNTADDRESSES}
{if $ACCOUNT == $NAME}

                <div class="col-lg-8">
                  <div class="panel panel-info">
                    <div class="panel-heading">
                      <i class="fa fa-book fa-fw"></i> {t account=$ACCOUNT|default:$default_account}Addresses assigned to Account %1{/t}
                    </div>
                    <div class="table-responsive panel-body no-padding">
                      <table class="table table-striped table-bordered table-hover">
                        <tbody>
{foreach from=$ACCOUNTADDRESSES[$ACCOUNT] key=ACCOUNT1 item=ADDRESS1}
{if $ADDRESS1@iteration is even by 1}
                            <td>{$ADDRESS1}</td>
                          </tr>
{else}
                          <tr>
                            <td>{$ADDRESS1}</td>
{/if}
{/foreach}
                        <tbody>
                      </table>
{/if}
{/foreach}
                    </div>
                  </div>
                </div>
              </div>
              <br>
            </div>
{/foreach}
          </div>
        </div>
      </div>
    </div>
  </div>
