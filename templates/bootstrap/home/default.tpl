<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bookmark"></i> {t}Welcome to VRM - Mining-Pool{/t}
      </div>
      <div class="panel-body">
          <p>
            <div style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;">
                {t escape=no}To join the pool you can follow the <a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted">Getting Started Guide</a>.{/t}{t} Feel free to click on the right-bottom Button if you have any question.{/t}
            </div>
            <div style="margin-top: 15px; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;">
                <span style="font-weight: bold;">{t}Pool Features :{/t}</span>
                <br />
                <ul>
                    <li style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;">
                        {t}Normal Fees : 0.9%{/t}
                    </li>
                    <li style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;">
                        {t}Fully Redundant Infrastructure{/t}
                    </li>
                    <li style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;">
                        {t}Servers in a professional Datacenter in Europe, North America and Asia{/t}
                    </li>
                </ul>
            </div>
            <div style="margin-top: 15px; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;">
                <span style="font-weight: bold;">{t}Stratum Servers :{/t}</span>
            </div>
            <table style="width:80%; margin-top: 5px;">
                <tr style="border: 1px #bce8f1 solid;">
                    <th style="padding: 10px;">{t}Localization{/t}</th>
                    <th style="padding: 10px;">{t}Network Speed{/t}</th>
                    <th style="padding: 10px;">{t}Address{/t}</th>
                    <th style="padding: 10px;">{t}Status{/t}</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}North Amercia - USA - Virginia{/t}</td>
                    <td style="padding: 10px;">{t}1Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://us.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;">{t}UP{/t}</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Europe - France - Strasbourg{/t}</td>
                    <td style="padding: 10px;">{t}10Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;">{t}UP{/t}</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Asia - Singapore{/t}</td>
                    <td style="padding: 10px;">{t}1Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://sgp.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;">{t}UP{/t}</td>
                </tr>
            </table>
            <div style="margin-top: 25px; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;">
                <span style="font-weight: bold;">{t}Pool Vardiff :{/t}</span>
            </div>
            <table style="width:80%; margin-top: 5px;">
                <tr style="border: 1px #bce8f1 solid;">
                    <th style="padding: 10px;">{t}Hashrate{/t}</th>
                    <th style="padding: 10px;">{t}Address{/t}</th>
                    <th style="padding: 10px;">{t}Port{/t}</th>
                    <th style="padding: 10px;">{t}Difficulty{/t}</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">0 -&gt; 2000 H/m</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3032</td>
                    <td style="padding: 10px;">3032</td>
                    <td style="padding: 10px;">0.0007 {t}to{/t} 0.04</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">2000 -&gt; 2500 H/m</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3033</td>
                    <td style="padding: 10px;">3033</td>
                    <td style="padding: 10px;">0.05</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">2500 -&gt; 5500 H/m</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3034</td>
                    <td style="padding: 10px;">3034</td>
                    <td style="padding: 10px;">0.1</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">5500 -&gt; 11000 H/m</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3035</td>
                    <td style="padding: 10px;">3035</td>
                    <td style="padding: 10px;">0.2</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">11000 -&gt; &infin; H/m</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3036</td>
                    <td style="padding: 10px;">3036</td>
                    <td style="padding: 10px;">0.3</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Special SBC{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3037 ({t}Europe Only{/t})</td>
                    <td style="padding: 10px;">3037</td>
                    <td style="padding: 10px;">0.002 {t}to{/t} 0.006</td>
                </tr>
            </table>
            <div style="margin-top: 15px;font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;">{t}Regards{/t},<br />Atomics</div>
      </div>
    </div>
  </div>
</div>
