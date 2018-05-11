  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-th fa-fw"></i> {t}Last Found Blocks{/t}
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <th>{t}Block{/t}</th>
              <th>{t}Finder{/t}</th>
              <th>{t}Time{/t}</th>
              <th class="text-right">{t}Actual Shares{/t}</th>
            </tr>
          </thead>
          <tbody>
{assign var=rank value=1}
{section block $BLOCKSFOUND}
            <tr>
              {if ! $GLOBAL.website.blockexplorer.disabled}
              <td><a href="{$GLOBAL.website.blockexplorer.url}{$BLOCKSFOUND[block].blockhash}" target="_new">{$BLOCKSFOUND[block].height}</a></td>
              {else}
              <td>{$BLOCKSFOUND[block].height}</td>
              {/if}
              {capture assign=default_user}{t}unknown{/t}{/capture}
              <td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}{t}anonymous{/t}{else}{$BLOCKSFOUND[block].finder|default:$default_user|escape}{/if}</td>
              <td>{$BLOCKSFOUND[block].time|date_format:$GLOBAL.config.date}</td>
              <td class="text-right">{$BLOCKSFOUND[block].shares|number_format}</td>
            </tr>
{/section}
          </tbody>
        </table>
      </div>
{if $GLOBAL.config.payout_system != 'pps'}
      <div class="panel-footer">
        <h6>{t escape=no confirmations=$GLOBAL.confirmations}Round Earnings are not credited until <font class="confirmations">%1</font> confirms.{/t}</h6>
      </div>
{/if}
    </div>
  </div>
