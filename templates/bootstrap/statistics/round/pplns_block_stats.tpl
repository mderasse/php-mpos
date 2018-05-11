<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-refresh fa-fw"></i> {t}Round Statistics{/t}
      </div>
      <div class="panel-body no-padding">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th colspan="2">{t}Block Statistics{/t}</th>
                <th colspan="2">{t}PPLNS Round Statistics{/t}</th>
              </tr>
            </thead>
            <tbody>
              <tr class="odd">
                <td>{t}ID{/t}</td>
                <td>{$BLOCKDETAILS.id|number_format:"0"|default:"0"}</td>
                <td>{t}PPLNS Shares{/t}</td>
                <td>{$PPLNSSHARES|number_format:"0"|default:"0"}</td>
              </tr>
              <tr class="even">
                <td>{t}Height{/t}</td>
	{if ! $GLOBAL.website.blockexplorer.disabled}
                <td><a href="{$GLOBAL.website.blockexplorer.url}{$BLOCKDETAILS.blockhash}" target="_new">{$BLOCKDETAILS.height|number_format:"0"|default:"0"}</a></td>
	{else}
                <td>{$BLOCKDETAILS.height|number_format:"0"|default:"0"}</td>
	{/if}
                <td>{t}Estimated Shares{/t}</td>
                <td>{$BLOCKDETAILS.estshares|number_format|default:"0"}</td>
              </tr>
              <tr class="odd">
                <td>{t}Amount{/t}</td>
                <td>{$BLOCKDETAILS.amount|default:"0"}</td>
                <td>{t}Target Variance{/t}</td>
{assign var=percentage value=0}
{assign var=percentage1 value=0}
{assign var=percentage2 value=0}
                <td>{if $PPLNSSHARES > 0}{math assign="percentage" equation=(($BLOCKDETAILS.estshares / $PPLNSSHARES) * 100)}{/if}<font color="{if ($percentage >= 100)}green{else}red{/if}">{$percentage|number_format:"2"} %</font></td>
              </tr>
              <tr class="even">
                <td>{t}Confirmations{/t}</td>
                <td>{if $BLOCKDETAILS.confirmations >= $GLOBAL.confirmations}
                  <font color="green">{t}Confirmed{/t}</font>
                {else if $BLOCKDETAILS.confirmations == -1}
                  <font color="red">{t}Orphan{/t}</font>
                {else if $BLOCKDETAILS.confirmations == 0}0
                {else}
                {math assign="confirmation_left" equation="confirmations - block_confirmation" confirmations=$GLOBAL.confirmations block_confirmation=$BLOCKDETAILS.confirmations}
                {t confirmation_left=$confirmation_left|default:"0"}%1 left{/t}
                {/if}</td>
                <td>{t}Block Average{/t}</td>
                <td>{$BLOCKAVERAGE|number_format:"0"|default:"0"}</td>
              </tr>
              <tr class="odd">
                <td>{t}Difficulty{/t}</td>
                <td>{$BLOCKDETAILS.difficulty|default:"0"}</td>
                <td>{t}Average Efficiency{/t}</td>
                <td>{if $BLOCKAVERAGE > 0 && $BLOCKDETAILS.estshares > 0}{math assign="percentage2" equation=(($BLOCKDETAILS.estshares / $BLOCKAVERAGE) * 100)}{/if}<font color="{if ($percentage2 >= 100)}green{else}red{/if}">{$percentage2|number_format:"2"} %</font></td>
              </tr>
              <tr class="even">
                <td>{t}Time{/t}</td>
                <td>{$BLOCKDETAILS.time|default:"0"}</td>
                <td>{t}Target Rounds{/t}</td>
                <td>{$BLOCKAVGCOUNT|number_format:"0"|default:"0"}</td>
              </tr>
              <tr class="odd">
                <td>{t}Shares{/t}</td>
                <td>{$BLOCKDETAILS.shares|number_format:"0"|default:"0"}</td>
                <td>{t}Seconds This Round{/t}</td>
                <td>{$BLOCKDETAILS.round_time|number_format:"0"|default:"0"}</td>
              </tr>
              <tr class="even">
                <td>{t}Finder{/t}</td>
                {capture assign=default_user}{t}unknown{/t}{/capture}
                <td>{$BLOCKDETAILS.finder|default:$default_user}</td>
                <td>{t}Round Variance{/t}</td>
                <td>{if $PPLNSSHARES > 0}{math assign="percentage1" equation=(($BLOCKDETAILS.shares / $PPLNSSHARES) * 100)}{/if}<font color="{if ($percentage1 >= 100)}green{else}red{/if}">{$percentage1|number_format:"2"} %</font></td>
              </tr>
            </tbody>
          </table>
            <table class="table borderless">
            <tr>
            <td>
              <ul class="pager">
                <li class="previous">
                  <a href="{$smarty.server.SCRIPT_NAME}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&height={$BLOCKDETAILS.height}&prev=1"> &larr; </a>
                </li>
              </ul>
            </td>
            <td>
              <ul class="pager">
                <form action="{$smarty.server.SCRIPT_NAME}" method="POST" id='search' role="form">
                  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
                  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
                  <div class="input-group input-group-sm">
                    <span class="input-group-addon">{t}Search Block Height{/t}</span>
                    <input type="text" class="form-control" name="search" value="{$smarty.request.height|default:"%"|escape}">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="submit" value="{t}Search{/t}"><i class="fa fa-search"></i></button>
                    </span>
                  </div>
                </form>
              </ul>
            </td>
            <td>
              <ul class="pager">
                <li class="next">
                  <a href="{$smarty.server.SCRIPT_NAME}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&height={$BLOCKDETAILS.height}&next=1"> &rarr; </a>
                </li>
              </ul>
            </td>
            </tr>
            </table>

        </div>
      </div>
    </div>
  </div>
</div>
