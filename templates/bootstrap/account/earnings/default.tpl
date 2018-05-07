{if $DISABLE_TRANSACTIONSUMMARY|default:"0" != 1}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-money fa-fw"></i> Total {$GLOBAL.config.currency} Earning Reports
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                <i class="fa fa-credit-card fa-fw"></i> Summary
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-condensed">
                    <thead>
                      <tr>
                        <th class="col-xs-1"></th>
                        {foreach $SUMMARY as $type=>$total}
                        <th>{$type}</th>
                        {/foreach}
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="col-xs-1">All Time</td>
                        {foreach $SUMMARY as $type=>$total}
                        <td class="right">{$total|number_format:"8"}</td>
                        {/foreach}
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                <i class="fa fa-clock-o fa-fw"></i> Sorted by Time
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-condensed">
                    <thead>
                      <tr>
                        <th class="col-xs-1"></th>
                        <th>Credit</th>
                        <th>Bonus</th>
                        <th>Debit AP</th>
                        <th>Debit MP</th>
                        <th>Donation</th>
                        {if $GLOBAL.fees > 0}
                        <th>Fee</th>
                        {/if}
                        <th>TXFee</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="col-xs-1">Last Hour</th>
                        <td>{$BYTIME.1HourCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1HourBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1HourDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1HourFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1HourTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Day</th>
                        <td>{$BYTIME.24HourCredit|number_format:"8"}</td>
                        <td>{$BYTIME.24HourBonus|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.24HourFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.24HourTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Week</th>
                        <td>{$BYTIME.1WeekCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1WeekDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1WeekFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1WeekTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Month</th>
                        <td>{$BYTIME.1MonthCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1MonthDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1MonthFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1MonthTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Last Year</th>
                        <td>{$BYTIME.1YearCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1YearBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1YearDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1YearFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1YearTXFee|number_format:"8"}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                <i class="fa fa-clock-o fa-fw"></i> Last 7 Days
              </div>
              <div class="panel-body">
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-condensed">
                    <thead>
                      <tr>
                        <th class="col-xs-1"></th>
                        <th>Credit</th>
                        <th>Bonus</th>
                        <th>Debit AP</th>
                        <th>Debit MP</th>
                        <th>Donation</th>
                        {if $GLOBAL.fees > 0}
                        <th>Fee</th>
                        {/if}
                        <th>TXFee</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="col-xs-1">Today</th>
                        <td>{$BYTIME.1DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.1DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.1DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.1DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.1DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.1DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.1DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">Yesterday</th>
                        <td>{$BYTIME.2DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.2DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.2DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.2DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.2DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.2DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.2DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">3 Day ago</th>
                        <td>{$BYTIME.3DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.3DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.3DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.3DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.3DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.3DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.3DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">4 Day ago</th>
                        <td>{$BYTIME.4DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.4DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.4DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.4DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.4DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.4DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.4DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">5 Day ago</th>
                        <td>{$BYTIME.5DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.5DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.5DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.5DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.5DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.5DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.5DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">6 Day ago</th>
                        <td>{$BYTIME.6DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.6DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.6DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.6DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.6DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.6DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.6DayTXFee|number_format:"8"}</td>
                      </tr>
                      <tr>
                        <td class="col-xs-1">7 Day ago</th>
                        <td>{$BYTIME.7DayCredit|number_format:"8"}</td>
                        <td>{$BYTIME.7DayBonus|number_format:"8"}</td>
                        <td>{$BYTIME.7DayDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.7DayDebitMP|number_format:"8"}</td>
                        <td>{$BYTIME.7DayDonation|number_format:"8"}</td>
                        {if $GLOBAL.fees|default:"0" > 0}
                        <td>{$BYTIME.7DayFee|number_format:"8"}</td>
                        {/if}
                        <td>{$BYTIME.7DayTXFee|number_format:"8"}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
{/if}


