{if !$GLOBAL.config.disable_payouts && !$GLOBAL.config.disable_manual_payouts}
{if $GLOBAL.config.txfee_manual }
    {if $GLOBAL.config.txfee_manual_dynamic.enabled }
        {math assign="txfee_manual" equation="ceil((x * y)*10)/10" x=$GLOBAL.config.txfee_manual_dynamic.coefficient y=$GLOBAL.userdata.balance.confirmed}
        {if $txfee_manual <= $GLOBAL.config.txfee_manual}
            {assign var="txfee_manual" value=$GLOBAL.config.txfee_manual}
        {/if}
    {else}
        {assign var="txfee_manual" value=$GLOBAL.config.txfee_manual}
    {/if}
{/if}
<form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="cashOut">
  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-money fa-fw"></i> {t}Cash Out{/t}
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="form-group">
              <p style="padding-left:3px; padding-redight:30px; font-size:10px;">
                {capture assign=txfee_manual_formatted}{if $txfee_manual > 0.00001}{$txfee_manual}{else}{$txfee_manual|number_format:"8"}{/if}{/capture}
                {if $GLOBAL.config.txfee_manual > 0}{t txfee_manual_formatted=$txfee_manual_formatted currency=$GLOBAL.config.currency}Please note: a %1 %2 transaction fee will apply when processing "On-Demand" manual payments{/t}{if $GLOBAL.config.txfee_manual_dynamic.enabled} ({t}High Estimation{/t}){/if} <span id="tt"><img width="15px" height="15px" title="{t txfee_manual_formatted=$txfee_manual_formatted}This %1 manual payment transaction fee is a network fee and goes back into the network not the pool.{/t}" src="site_assets/bootstrap/images/questionmark.png"></span>{/if}
              </p>
              <p style="padding-left:3px; padding-redight:30px; font-size:10px;">
                {t mp_threshold=$GLOBAL.config.mp_threshold currency=$GLOBAL.config.currency}Minimum Cashout: %1 %2{/t}
              </p>
            </div>
            <div class="form-group">
              <label>{t}Account Balance{/t}</label>
              {nocache}<input class="form-control" id="disabledInput" type="text" value="{$GLOBAL.userdata.balance.confirmed|escape}" {$GLOBAL.config.currency} disabled />{/nocache}
            </div>
            <div class="form-group">
              <label>{t}Payout to{/t}</label>
              {nocache}<input class="form-control" id="disabledInput" type="text" value="{$GLOBAL.userdata.coin_address|escape}" disabled />{/nocache}
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
      <input type="hidden" name="wf_token" value="{$smarty.request.wf_token|escape|default:""}">
      <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
      <input type="hidden" name="utype" value="withdraw_funds">
      <input type="submit" value="{t}Cash Out{/t}" class="btn btn-success btn-sm">
      {/nocache}
      </div>
    </div>
  </div>
</form>
{/if}
