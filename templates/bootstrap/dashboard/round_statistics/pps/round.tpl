      <div class="panel-footer">
        <div class="row text-center">
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-est1">{$GLOBAL.userdata.estimates.hours1|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t currency=$GLOBAL.config.currency}%1 1 Hour Estimated Earnings{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-est24hours">{$GLOBAL.userdata.estimates.hours24|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t currency=$GLOBAL.config.currency}%1 24 Hour Estimated Earnings{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-est7days">{$GLOBAL.userdata.estimates.days7|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t currency=$GLOBAL.config.currency}%1 7 Days Estimated Earnings{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-est14days">{$GLOBAL.userdata.estimates.days14|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t currency=$GLOBAL.config.currency}%1 14 Days Estimated Earnings{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-est30days">{$GLOBAL.userdata.estimates.days30|number_format:$PRECISION}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t currency=$GLOBAL.config.currency}%1 30 Days Estimated Earnings{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-th-large fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-ppsvalue">{$GLOBAL.ppsvalue}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t}PPS{/t}<br/>{t}Value{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-bar-chart-o fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-unpaidshares">{$GLOBAL.userdata.pps.unpaidshares}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t}Unpaid{/t}<br/>{t}difficulty shares{/t}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-map-marker fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-diff">{$NETWORK.difficulty|number_format:"8"}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t}Difficulty{/t}<br/>&nbsp;</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-sitemap fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p id="b-nextdiff" class="h5 up-more">{if $GLOBAL.nethashrate > 0}{$NETWORK.EstNextDifficulty|number_format:"8"}{else}{t}n/a{/t}{/if}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t}Est. Next Difficulty{/t}{if $GLOBAL.config.coindiffchangetarget > 1}{if $GLOBAL.nethashrate > 0}<br/>{t next_diff_block=$NETWORK.BlocksUntilDiffChange}Change in %1 Blocks{/t}{else}{t}No Estimates{/t}{/if}{/if}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-clock-o fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-esttimeperblock">{$NETWORK.EstTimePerBlock|seconds_to_hhmmss}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">{t}Estimated Average{/t}<br/>{t}Time per Block{/t}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
