<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-refresh fa-fw"></i> {t}Round Statistics{/t}
      </div>
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover {if $ROUNDTRANSACTIONS}datatable{/if}">
            <thead>
              <tr>
                <th>{t}User Name{/t}</th>
                <th>{t}Round Valid{/t}</th>
                <th>{t}Invalid{/t}</th>
                <th>{t}Invalid %{/t}</th>
                <th>{t}Round %{/t}</th>
                <th>{t}PPLNS Valid{/t}</th>
                <th>{t}Invalid{/t}</th>
                <th>{t}Invalid %{/t}</th>
                <th>{t}PPLNS Round %{/t}</th>
                <th>{t}Variance{/t}</th>
                <th>{t}Amount{/t}</th>
              </tr>
            </thead>
            <tbody>
{section txs $ROUNDTRANSACTIONS}
              <tr{if $GLOBAL.userdata.username|default:"" == $ROUNDTRANSACTIONS[txs].username}{assign var=listed value=1} style="background-color:#99EB99;"{else}{/if}>
                {capture assign=default_user}{t}unknown{/t}{/capture}
                <td>{if $ROUNDTRANSACTIONS[txs].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}{t}anonymous{/t}{else}{$ROUNDTRANSACTIONS[txs].username|default:$default_user|escape}{/if}</td>
                <td>{$SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td>{$SHARESDATA[$ROUNDTRANSACTIONS[txs].username].invalid|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td>{if $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].invalid > 0 }{($SHARESDATA[$ROUNDTRANSACTIONS[txs].username].invalid / $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid * 100)|number_format:"2"|default:"0"}{else}0.00{/if}</td>
                <td>{if $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid > 0 }{(( 100 / $BLOCKDETAILS.shares) * $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid)|number_format:"2"}{else}0.00{/if}</td>
                <td>{$PPLNSROUNDSHARES[txs].pplns_valid|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td>{$PPLNSROUNDSHARES[txs].pplns_invalid|number_format:$GLOBAL.config.sharediffprecision}</td>
                <td>{if $PPLNSROUNDSHARES[txs].pplns_invalid > 0 }{($PPLNSROUNDSHARES[txs].pplns_invalid / $PPLNSROUNDSHARES[txs].pplns_valid * 100)|number_format:"2"|default:"0"}{else}0.00{/if}</td>
                <td>{(( 100 / $PPLNSSHARES) * $PPLNSROUNDSHARES[txs].pplns_valid)|number_format:"2"}</td>
                <td>{if $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid > 0 }{math assign="percentage1" equation=(100 / ((( 100 / $BLOCKDETAILS.shares) * $SHARESDATA[$ROUNDTRANSACTIONS[txs].username].valid) / (( 100 / $PPLNSSHARES) * $PPLNSROUNDSHARES[txs].pplns_valid)))}{else if $PPLNSROUNDSHARES[txs].pplns_valid == 0}{assign var=percentage1 value=0}{else}{assign var=percentage1 value=100}{/if}
                 <font color="{if ($percentage1 >= 100)}green{else}red{/if}">{$percentage1|number_format:"2"}</font></b></td>
                <td>{$ROUNDTRANSACTIONS[txs].amount|default:"0"|number_format:"8"}</td>
                {assign var=percentage1 value=0}
              </tr>
{/section}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
