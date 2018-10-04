       <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="{$smarty.server.SCRIPT_NAME}"><i class="fa fa-home fa-fw"></i> {t}Home{/t}</a>
                    </li>
                    <li>
                        <a href="{$smarty.server.SCRIPT_NAME}?page=news"><i class="fa fa-newspaper-o fa-fw"></i> {t}What's new{/t}</a>
                    </li>
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                    <li>
                        <a href="{$smarty.server.SCRIPT_NAME}?page=dashboard"><i class="fa fa-dashboard fa-fw"></i> {t}Dashboard{/t}</a>
                    </li>

                    <li {if $smarty.get.page|default:"0" eq "account"}class="active"{/if}>
                        <a href="#"><i class="fa fa-user-md fa-fw"></i> {t}My Account{/t}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><i class="fa fa-edit fa-fw"></i> {t}Edit Account{/t}</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><i class="fa fa-desktop fa-fw"></i> {t}My Workers{/t}</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions"><i class="fa fa-credit-card fa-fw"></i> {t}Transactions{/t}</a></li>
                          {if !$GLOBAL.config.disable_transactionsummary}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings"><i class="fa fa-money fa-fw"></i> {t}Earnings{/t}</a></li>{/if}
                          {if !$GLOBAL.config.disable_notifications}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications"><i class="fa fa-bullhorn fa-fw"></i> {t}Notifications{/t}</a></li>{/if}
                          {if !$GLOBAL.config.disable_invitations}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations"><i class="fa fa-users fa-fw"></i> {t}Invitations{/t}</a></li>{/if}
                          {if !$GLOBAL.acl.qrcode}<li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode"><i class="fa fa-qrcode fa-fw"></i> {t}QR Codes{/t}</a></li>{/if}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
                    <li {if $smarty.get.page|default:"0" eq "admin"}class="active"{/if}>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> {t}Admin Panel{/t}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li {if $smarty.get.action|default:"0" eq "dashboard" || $smarty.get.action|default:"0" eq "monitoring" || $smarty.get.action|default:"0" eq "settings" || $smarty.get.action|default:"0" eq "setup"}class="active"{/if}>
                            <a href="#"><i class="fa fa-linux fa-fw"></i> {t}System{/t} <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=setup"><i class="fa fa-book fa-fw"></i> {t}Setup{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=dashboard"><i class="fa fa-dashboard fa-fw"></i> {t}Dashboard{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=monitoring"><i class="fa fa-bell-o fa-fw"></i> {t}Monitoring{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=settings"><i class="fa fa-gears fa-fw"></i> {t}Settings{/t}</a></li>
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "wallet" || $smarty.get.action|default:"0" eq "transactions"}class="active"{/if}>
                            <a href="#"><i class="fa fa-usd fa-fw"></i> {t}Funds{/t} <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=wallet"><i class="fa fa-money fa-fw"></i> {t}Wallet Info{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=transactions"><i class="fa fa-tasks fa-fw"></i> {t}Transactions{/t}</a></li>
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "news" || $smarty.get.action|default:"0" eq "newsletter"}class="active"{/if}>
                            <a href="#"><i class="fa fa-info fa-fw"></i> {t}News{/t} <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=news"><i class="fa fa-list-alt fa-fw"></i> {t}Site News{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=newsletter"><i class="fa fa-list-alt fa-fw"></i> {t}Newsletter{/t}</a></li>
                            </ul>
                          </li>
                          <li {if $smarty.get.action|default:"0" eq "user" || $smarty.get.action|default:"0" eq "reports" || $smarty.get.action|default:"0" eq "registrations" || $smarty.get.action|default:"0" eq "invitations" || $smarty.get.action|default:"0" eq "poolworkers"}class="active"{/if}>
                            <a href="#"><i class="fa fa-users fa-fw"></i> {t}Users{/t} <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=user"><i class="fa fa-user fa-fw"></i> {t}User Info{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=reports"><i class="fa fa-list-ol fa-fw"></i> {t}Reports{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=registrations"><i class="fa fa-pencil-square-o fa-fw"></i> {t}Registrations{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=invitations"><i class="fa fa-users fa-fw"></i> {t}Invitations{/t}</a></li>
                              <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=poolworkers"><i class="fa fa-desktop fa-fw"></i> {t}Pool Workers{/t}</a></li>
                            </ul>
                          </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    {if ($GLOBAL.acl.statistics.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.statistics.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
                    <li {if $smarty.get.page|default:"0" eq "statistics"}class="active"{/if}>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> {t}Statistics{/t}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          {capture assign="nav_statistics_pool"}<i class="fa fa-align-left fa-fw"></i> {t}Pool{/t}{/capture}
                          {capture assign="nav_statistics_blocks"}<i class="fa fa-th-large fa-fw"></i> {t}Blocks{/t}{/capture}
                          {capture assign="nav_statistics_round"}<i class="fa fa-refresh fa-fw"></i> {t}Round{/t}{/capture}
                          {capture assign="nav_statistics_blockfinder"}<i class="fa fa-search fa-fw"></i> {t}Blockfinder{/t}{/capture}
                          {capture assign="nav_statistics_uptime"}<i class="fa fa-clock-o fa-fw"></i> {t}Uptime{/t}{/capture}
                          {capture assign="nav_statistics_graphs"}<i class="fa fa-signal fa-fw"></i> {t}Graphs{/t}{/capture}
                          {capture assign="nav_statistics_donors"}<i class="fa fa-bitbucket fa-fw"></i> {t}Donors{/t}{/capture}
                          {acl_check page='statistics' action='pool' name=$nav_statistics_pool acl=$GLOBAL.acl.pool.statistics fallback='page=statistics'}
                          {acl_check page='statistics' action='blocks' name=$nav_statistics_blocks acl=$GLOBAL.acl.block.statistics}
                          {acl_check page='statistics' action='round' name=$nav_statistics_round acl=$GLOBAL.acl.round.statistics}
                          {acl_check page='statistics' action='blockfinder' name=$nav_statistics_blockfinder acl=$GLOBAL.acl.blockfinder.statistics}
                          {acl_check page='statistics' action='uptime' name=$nav_statistics_uptime acl=$GLOBAL.acl.uptime.statistics}
                          {acl_check page='statistics' action='graphs' name=$nav_statistics_graphs acl=$GLOBAL.acl.graphs.statistics}
                          {acl_check page='statistics' action='donors' name=$nav_statistics_donors acl=$GLOBAL.acl.donors.page}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    {if ($GLOBAL.acl.help.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.help.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
                    <li {if $smarty.get.page|default:"0" eq "gettingstarted" || $smarty.get.page|default:"0" eq "about"}class="active"{/if}>
                        <a href="#"><i class="fa fa-question fa-fw"></i> {t}Help{/t}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted"><i class="fa fa-question fa-fw"></i> {t}Getting Started{/t}</a></li>
                          {capture assign="nav_help_pool"}<i class="fa fa-info fa-fw"></i> {t}About{/t}{/capture}
                          {capture assign="nav_help_chat"}<i class="fa fa-comments-o fa-fw"></i> {t}Web Chat{/t}{/capture}
                          {capture assign="nav_help_moot"}<i class="fa fa-ticket fa-fw"></i> {t}Forum{/t}{/capture}
                          {acl_check page='about' action='pool' name=$nav_help_pool acl=$GLOBAL.acl.about.page}
                          {acl_check page='about' action='chat' name=$nav_help_chat acl=$GLOBAL.acl.chat.page}
                          {acl_check page='about' action='moot' name=$nav_help_moot acl=$GLOBAL.acl.moot.forum}
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    {/if}
                    <li {if $smarty.get.page|default:"0" eq "register" || $smarty.get.page|default:"0" eq "login" || $smarty.get.page|default:"0" eq "logout" || $smarty.get.page|default:"0" eq "tac" || $smarty.get.page|default:"0" eq "contactform"}class="active"{/if}>
                        <a href="#"><i class="fa fa-tasks fa-fw"></i> {t}Other{/t}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=logout"><i class="fa fa-sign-out fa-fw"></i> {t}Logout{/t}</a></li>
                          {else}
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=login"><i class="fa fa-sign-in fa-fw"></i> {t}Login{/t}</a></li>
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=register"><i class="fa fa-pencil fa-fw"></i> {t}Sign Up{/t}</a></li>
                          {/if}
                          {capture assign="nav_other_contact"}<i class="fa fa-envelope fa-fw"></i> {t}Contact{/t}{/capture}
                          {acl_check page='contactform' action='' name=$nav_other_contact acl=$GLOBAL.acl.contactform}
                          <li><a href="{$smarty.server.SCRIPT_NAME}?page=tac"><i class="fa fa-book fa-fw"></i> {t}Terms and Conditions{/t}</a></li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->
