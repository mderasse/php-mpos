{section name=news loop=$NEWS}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bookmark"></i> {$NEWS[news].header}
        <br />
         <font size="1px">{t news_date=$NEWS[news].time|date_format:$GLOBAL.config.date}posted %1{/t}{if $HIDEAUTHOR|default:"0" == 0} {t escape=no news_author=$NEWS[news].author}by <b>%1</b>{/t}{/if}</font>
      </div>
      <div class="panel-body">
        {$NEWS[news].content nofilter}
      </div>
    </div>
  </div>
</div>
{/section}
