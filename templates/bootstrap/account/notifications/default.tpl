<div class="row">
   <div class="col-lg-4">
	  <form method="POST" role="form">
	    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
	    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
	    <input type="hidden" name="do" value="save">
	    <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}">
	    
	    <div class="panel panel-info">
	      <div class="panel-heading">
	        <i class="fa fa-gear fa-fw"></i> {t}Push Notification Settings{/t}
	      </div>
	      <div class="panel-body no-padding">
	        <table class="table table-striped table-bordered table-hover">
	          <tbody>
   	            <tr>
	              <td>
	                <label>{t}Push Notifications{/t}</label>
	              </td>
	              <td>
	              	<select name="pushnotification-class" class="form-control select-mini" id="push-notifications">
	              		<option value="0">{t}Disabled{/t}</option>
	              		{section pushnotification $PUSHNOTIFICATIONS}
	              			<option value="{$PUSHNOTIFICATIONS[pushnotification].class}"{nocache}{if $PUSHNOTIFICATIONS[pushnotification].class == $PUSHSETTINGS.class} selected="selected"{/if}{/nocache}>{$PUSHNOTIFICATIONS[pushnotification].name}</option>
	              		{/section}
	              	</select>
	              </td>
	          </tbody>
	          {section pushnotification $PUSHNOTIFICATIONS}
	          <tbody class="push-notifications-params" data-class-name="{$PUSHNOTIFICATIONS[pushnotification].class}">
				{foreach $PUSHNOTIFICATIONS[pushnotification].parameters key=name item=text}
					<tr>
						<td><label>{$text}</label></td>
						<td><input class="form-control" type="text" name="pushnotification[{$PUSHNOTIFICATIONS[pushnotification].class}][{$name}]" {nocache}value="{$PUSHSETTINGS.params[$name]|default:""}"{/nocache}/></td>
					</tr>
				{/foreach}
	          </tbody>
	          {/section}
	        </table>
   	      </div>
	     </div>
	    
	    <div class="panel panel-info">
	      <div class="panel-heading">
	        <i class="fa fa-gear fa-fw"></i> {t}Notification Settings{/t}
	      </div>
	      <div class="panel-body no-padding push-notifications-disabled" id="push-notifications-pannel">
	        <table class="table table-striped table-bordered table-hover">
	          <thread>
	        	<tr>
	        	  <th>{t}Event{/t}</th>
	        	  <th>{t}Email{/t}</th>
	        	  <th class="push-notifications">{t}Push{/t}</th>
	        	</tr>
	          </thread>
	          <tbody>
	            {if $DISABLE_IDLEWORKERNOTIFICATIONS|default:"" != 1}
	            <tr>
	              <td>
	                <label>{t}Idle Worker{/t}</label>
	              </td>
	              <td>
	                <input type="hidden" name="data[idle_worker]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini" name="data[idle_worker]" id="idle_worker" value="1"{nocache}{if $SETTINGS['idle_worker']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	              <td class="push-notifications">
	                <input type="hidden" name="data[push_idle_worke]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini" name="data[push_idle_worke]" id="push_idle_worke" value="1"{nocache}{if $SETTINGS['push_idle_worke']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	            </tr>
	            {/if}
	            {if $DISABLE_BLOCKNOTIFICATIONS|default:"" != 1}
	            <tr>
	              <td>
	                <label>{t}New Blocks{/t}</label>
	              </td>
	              <td>
	                <input type="hidden" name="data[new_block]" value="0" />
	                <input type="checkbox"class="switch" data-size="mini" name="data[new_block]" id="new_block" value="1"{nocache}{if $SETTINGS['new_block']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	              <td class="push-notifications">
	                <input type="hidden" name="data[push_new_block]" value="0" />
	                <input type="checkbox"class="switch" data-size="mini" name="data[push_new_block]" id="new_block" value="1"{nocache}{if $SETTINGS['push_new_block']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	            </tr>
	            {/if}
	            <tr>
	              <td>
	                <label>{t}Payout{/t}</label>
	              </td>
	              <td>
	                <input type="hidden" name="data[payout]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini" name="data[payout]" id="payout" value="1"{nocache}{if $SETTINGS['payout']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	              <td class="push-notifications">
	                <input type="hidden" name="data[push_payout]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini" name="data[push_payout]" id="push_payout" value="1"{nocache}{if $SETTINGS['push_payout']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	            </tr>
	            <tr>
	              <td>
	                <label>{t}Successful Login{/t}</label>
	              </td>
	              <td>
	                <input type="hidden" name="data[success_login]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini"  name="data[success_login]" id="success_login" value="1"{nocache}{if $SETTINGS['success_login']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	              <td class="push-notifications">
	                <input type="hidden" name="data[push_success_lo]" value="0" />
	                <input type="checkbox" class="switch" data-size="mini"  name="data[push_success_lo]" id="push_success_lo" value="1"{nocache}{if $SETTINGS['push_success_lo']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	            </tr>
	            {if $DISABLE_POOLNEWSLETTER|default:"" != 1}
	            <tr>
	              <td>
	                <label>{t}Pool Newsletter{/t}</label>
	              </td>
	              <td>
	                <input type="hidden" name="data[newsletter]" value="0" />
	                <input type="checkbox"class="switch" data-size="mini" name="data[newsletter]" id="newsletter" value="1"{nocache}{if $SETTINGS['newsletter']|default:"1" == 1}checked{/if}{/nocache} />
	              </td>
	              <td class="push-notifications">
	                <input type="hidden" name="data[push_newsletter]" value="0" />
	                <input type="checkbox"class="switch" data-size="mini" name="data[push_newsletter]" id="push_newsletter" value="1"{nocache}{if $SETTINGS['push_newsletter']|default:"0" == 1}checked{/if}{/nocache} />
	              </td>
	            </tr>
	            {/if}
	          </tbody>
	        </table>
	      </div>
	      <div class="panel-footer">
	        <input type="submit" value="{t}Update{/t}" class="btn btn-success btn-sm">
	      </div>
	    </form>
	 </div>
  </div>

  <div class="col-lg-8">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-clock-o fa-fw"></i> {t}Notification History{/t}
      </div>
      <div class="panel-body no-padding">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>{t}ID{/t}</th>
                <th>{t}Time{/t}</th>
                <th>{t}Type{/t}</th>
                <th>{t}Active{/t}</th>
              </tr>
            </thead>
            <tbody>
{section notification $NOTIFICATIONS}
              <tr>
                <td>{$NOTIFICATIONS[notification].id}</td>
                <td>{$NOTIFICATIONS[notification].time}</td>
                <td>
{if $NOTIFICATIONS[notification].type == new_block}{t}New Block{/t}
{else if $NOTIFICATIONS[notification].type == payout}{t}Payout{/t}
{else if $NOTIFICATIONS[notification].type == idle_worker}{t}Idle Worker{/t}
{else if $NOTIFICATIONS[notification].type == success_login}{t}Successful Login{/t}
{/if}
                </td>
                <td>
                 <i class="fa fa-{if $NOTIFICATIONS[notification].active}check{else}times{/if} fa-fw"></i>
                </td>
              </tr>
{/section}
            <tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
