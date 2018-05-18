  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-user-md fa-fw"></i> {t}Account Information{/t}</h4>
      </div>
      <div class="panel-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            {t}You are mining without any pool fees applied and{/t}
    {else if $GLOBAL.fees > 0}
            {capture assign=pool_fee}{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}{/capture}
            {t escape=no pool_fee=$pool_fee}You are mining at <font color="orange">%1%</font> pool fee and{/t}
    {else}
            {t}This pool does not apply fees and{/t}
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            {t escape=no donate_fee=$GLOBAL.userdata.donate_percent|escape}you donate <font color="green">%1%</font>.{/t}
    {else}
            {t escape=no server_url=$smarty.server.SCRIPT_NAME}you are not <a href="%1?page=account&action=edit">donating</a>.{/t}
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr><th colspan="2">{t currency=$GLOBAL.config.currency}%1 Account Balance{/t}</th></tr>
          </thead>
          <tbody>
            <tr>
              <th>{t}Confirmed{/t}</th>
              <th>
                <span class="label label-success pull-right bigfont" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}</span>
              </th>
            </tr>
            <tr>
              <th>{t}Unconfirmed{/t}</th>
              <th>
                <span class="label label-warning pull-right bigfont" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}</span>
              </th>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
