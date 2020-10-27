{if $GLOBAL.config.txfee_auto}
    {if $GLOBAL.config.txfee_auto_dynamic.enabled }
        {math assign="txfee_auto" equation="x * y" x=$GLOBAL.config.txfee_auto_dynamic.coefficient y=$GLOBAL.userdata.ap_threshold format="%.3f"}
        {if $txfee_auto <= $GLOBAL.config.txfee_auto}
            {assign var="txfee_auto" value=$GLOBAL.config.txfee_auto}
        {/if}
    {else}
        {assign var="txfee_auto" value=$GLOBAL.config.txfee_auto}
    {/if}
{/if}
<form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="updateAccount">
  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-edit fa-fw"></i> {t}Account Details{/t}
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="form-group">
              <label>{t}Username{/t}</label>
              <input class="form-control" type="text" value="{$GLOBAL.userdata.username|escape}" disabled />
            </div>
            <div class="form-group">
              <label>{t}User Id{/t}</label>
              <input class="form-control" type="text" value="{$GLOBAL.userdata.id}" disabled />
            </div>
            {if !$GLOBAL.website.api.disabled}
            <div class="form-group">
              <label>{t}API Key{/t}</label>
              <br>
              <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=getuserstatus&api_key={$GLOBAL.userdata.api_key}&id={$GLOBAL.userdata.id}">{$GLOBAL.userdata.api_key}</a>
            </div>
            {/if}
            <div class="form-group">
              <label>{t}E-Mail{/t}</label>
              {nocache}<input class="form-control" type="text" name="email" value="hidden" size="20" />{/nocache}
            </div>
            <div class="form-group">
              <label>{t}Timezone{/t}</label>
              {nocache}
              <select class="form-control select-mini" name="timezone" >
                {html_options options=$TIMEZONES selected=$GLOBAL.userdata.timezone}
              </select>
              {/nocache}
            </div>
            <div class="form-group">
              <label>{t}Payment Address{/t}</label>
              {nocache}<input class="form-control" type="text" name="paymentAddress" value="{$smarty.request.paymentAddress|default:$GLOBAL.userdata.coin_address|escape}" size="40" />{/nocache}
            </div>
            <div class="form-group">
              <label>{t}Donation Percentage{/t}</label>
              <font size="1"> {t min_donate=$DONATE_THRESHOLD.min}Donation amount in percent (%1 - 100%){/t}</font>
              {nocache}<input class="form-control" type="text" name="donatePercent" value="{$smarty.request.donatePercent|default:$GLOBAL.userdata.donate_percent|escape|number_format:"2"}" size="4" />{/nocache}
            </div>
            <div class="form-group">
              <label>{t}Automatic Payout Threshold{/t}</label>
              </br>
              {capture assign=ap_threshold_min}{if $GLOBAL.config.ap_threshold.min < 0.0001}{$GLOBAL.config.ap_threshold.min|number_format:"8"}{else}{$GLOBAL.config.ap_threshold.min}{/if}{/capture}
              {capture assign=ap_threshold_max}{if $GLOBAL.config.ap_threshold.max < 0.0001}{$GLOBAL.config.ap_threshold.max|number_format:"8"}{else}{$GLOBAL.config.ap_threshold.max}{/if}{/capture}
              {capture assign=tx_fee_auto_formatted}{if $txfee_auto > 0.00001}{$txfee_auto}{else}{$txfee_auto|number_format:"8"}{/if}{/capture}
              <font size="1">{t ap_threshold_min=$ap_threshold_min ap_threshold_max=$ap_threshold_max currency=$GLOBAL.config.currency}%1 - %2 %3. Set to '0' for no auto payout.{/t}{if $txfee_auto > 0} {t tx_fee_auto_formatted=$tx_fee_auto_formatted currency=$GLOBAL.config.currency}%1 %2 TX fee will apply {/t}{if $GLOBAL.config.txfee_auto_dynamic.enabled} ({t}High Estimation{/t}){/if} <span id="tt"><img width="15px" height="15px" title="{t tx_fee_auto_formatted=$tx_fee_auto_formatted}This %1 automatic payment transaction fee is a network fee and goes back into the network not the pool.{/t}" src="site_assets/bootstrap/images/questionmark.png"></span>{/if}</font>
              </br>
              <input class="form-control" type="text" name="payoutThreshold" value="{nocache}{$smarty.request.payoutThreshold|default:$GLOBAL.userdata.ap_threshold|escape}{/nocache}" size="{$GLOBAL.config.ap_threshold.max|strlen+4}" maxlength="{if $GLOBAL.config.ap_threshold.max < 1}10{else}{$GLOBAL.config.ap_threshold.max|strlen}{/if}" />
            </div>
            <div class="form-group">
              <label>{t}Anonymous Account{/t}</label>
              <input type="hidden" name="is_anonymous" value="0" />
              <input type="checkbox" class="switch" data-size="mini"  name="is_anonymous" id="is_anonymous" value="1" {if $GLOBAL.userdata.is_anonymous}checked{/if} />
              </br>
              <font size="1">{t}Hide username on website from others. Admins can still get your user information.{/t}</font>
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
      <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
      <input type="hidden" name="ea_token" value="{$smarty.request.ea_token|escape|default:""}">
      <input type="hidden" name="utype" value="account_edit">
      <input type="submit" value="{t}Update Account{/t}" class="btn btn-success btn-sm">
      {/nocache}
      </div>
    </div>
  </div>
</form>
