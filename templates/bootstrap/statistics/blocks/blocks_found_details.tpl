<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-tasks fa-fw"></i> {t blocklimit=$BLOCKLIMIT}Last %1 Blocks Found{/t}
      </div>
      <div class="panel-body no-padding">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th class="text-center">{t}Block{/t}</th>
                <th class="text-center">{t}Validity{/t}</th>
                <th class="text-left">{t}Finder{/t}</th>
                <th class="text-right">{t}Time{/t}</th>
                <th class="text-right">{t}Difficulty{/t}</th>
                <th class="text-right">{t}Amount{/t}</th>
                <th class="text-right">{t}Expected Shares{/t}</th>
                {if $GLOBAL.config.payout_system == 'pplns'}<th class="text-right">{t}PPLNS Shares{/t}</th>{/if}
                <th class="text-right">{t}Actual Shares{/t}</th>
                <th  class="text-right">{t}Percentage{/t}</th>
              </tr>
            </thead>
            <tbody>
              {assign var=count value=0}
              {assign var=totalexpectedshares value=0}
              {assign var=totalshares value=0}
              {assign var=pplnsshares value=0}
              {section block $BLOCKSFOUND}
              <tr>
              {assign var="totalshares" value=$totalshares+$BLOCKSFOUND[block].shares}
              {assign var="count" value=$count+1}
              {if $GLOBAL.config.payout_system == 'pplns'}{assign var="pplnsshares" value=$pplnsshares+$BLOCKSFOUND[block].pplns_shares}{/if}
              {if ! $GLOBAL.website.blockexplorer.disabled}
                <td class="text-center"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$BLOCKSFOUND[block].height}">{$BLOCKSFOUND[block].height}</a></td>
              {else}
                <td class="text-right">{$BLOCKSFOUND[block].height}</td>
              {/if}
              <td class="text-center">
              {if $BLOCKSFOUND[block].confirmations >= $GLOBAL.confirmations}
                <span class="label label-success">{t}Confirmed{/t}</span>
              {else if $BLOCKSFOUND[block].confirmations == -1}
                <span class="label label-danger">{t}Orphan{/t}</span>
              {else}
                {math assign="confirmation_left" equation="confirmations - block_confirmation" confirmations=$GLOBAL.confirmations block_confirmation=$BLOCKSFOUND[block].confirmations}
                <span class="label label-warning">{t confirmation_left=$confirmation_left}%1 left{/t}</span>
              {/if}
              </td>
                {capture assign=default_account}{t}unknown{/t}{/capture}
                <td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}{t}anonymous{/t}{else}{$BLOCKSFOUND[block].finder|default:$default_account|escape}{/if}</td>
                <td class="text-right">{$BLOCKSFOUND[block].time|date_format:$GLOBAL.config.date}</td>
                <td class="text-right">{$BLOCKSFOUND[block].difficulty|number_format:"4"}</td>
                <td class="text-right">{$BLOCKSFOUND[block].amount|number_format:"2"}</td>
                <td class="text-right">
                {assign var="totalexpectedshares" value=$totalexpectedshares+$BLOCKSFOUND[block].estshares}
                  {$BLOCKSFOUND[block].estshares|number_format:$GLOBAL.config.sharediffprecision}
                </td>
                {if $GLOBAL.config.payout_system == 'pplns'}
                <td class="text-right">{$BLOCKSFOUND[block].pplns_shares|number_format:$GLOBAL.config.sharediffprecision}</td>
                {/if}
                <td class="text-right">{$BLOCKSFOUND[block].shares|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td class="text-right">
                  {math assign="percentage" equation="shares / estshares * 100" shares=$BLOCKSFOUND[block].shares|default:"0" estshares=$BLOCKSFOUND[block].estshares}
                  <font color="{if ($percentage <= 100)}green{elseif ($percentage <= 115)}orange{else}red{/if}">{$percentage|number_format:"2"}</font>
                </td>
              </tr>
              {/section}
              <tr>
                <td colspan="6"><b>{t}Totals{/t}</b></td>
                <td class="text-right">{$totalexpectedshares|number_format:$GLOBAL.config.sharediffprecision}</td>
                {if $GLOBAL.config.payout_system == 'pplns'}
                <td class="text-right">{$pplnsshares|number_format:$GLOBAL.config.sharediffprecision}</td>
                {/if}
                <td class="text-right">{$totalshares|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td class="text-right">{if $count > 0}<font color="{if (($totalshares / $totalexpectedshares * 100) <= 100)}green{elseif (($totalshares / $totalexpectedshares * 100) <= 115)}orange{else}red{/if}">{($totalshares / $totalexpectedshares * 100)|number_format:"2"}</font>{else}0{/if}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="panel-footer">
        <h6>{if $GLOBAL.config.payout_system != 'pps'}{t escape=no confirmations=$GLOBAL.confirmations}Round Earnings are not credited until <font class="confirmations">%1</font> confirms.{/t}{/if}</h6>
      </div>
    </div>
  </div>
</div>
