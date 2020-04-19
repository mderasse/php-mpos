 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> {t}Getting Started Guide{/t}
        </div>
        <div class="panel-body">
            <p>1. <strong>{t site_coin=$SITECOINNAME|default:"Litecoin"}Create a %1 address to receive payments.{/t}</strong></p>
              <ul>
                <li> {t escape=no site_coin=$SITECOINNAME|default:"Litecoin"}Downloading the client & block chain: 	Download the %1 client from <a href="https://portal.vericoin.info/verium/#verium-vaults" target="_blank">here</a>.{/t}
                  <p>{t}Generate a new address and input it on your account page to receive payments.{/t}</p>
                </li>
              </ul>
            <p>2. <strong>{t}Create account.{/t}</strong></p>
              <ul>
                <li>{t escape=no server_url=$smarty.server.SCRIPT_NAME }Register <a href="%1?page=register">here</a>, or login if you already have account{/t}</li>
                <li>{t escape=no server_url=$smarty.server.SCRIPT_NAME }Create a <a href="%1?page=account&action=workers">worker</a> that will be used by the miner to login{/t}</li>
              </ul>
            <p>3. <strong>{t}Download a miner.{/t}</strong></p>

              <ul>
                <li><em>{t}VeriumMiner Windows Binaries{/t}</em> <a href="https://github.com/fireworm71/veriumMiner/releases/download/v1.4/cpuminer_1.4_windows_x64_O2_GCC7.zip" target="_blank">{t}Download here{/t}</a></li>
                <li><em>{t}VeriumMiner Linux Binaries{/t}</em> <a href="https://github.com/fireworm71/veriumMiner/releases/download/v1.4/cpuminer_1.4_linux_x64_O2_GCC7.zip" target="_blank">{t}Download here{/t}</a></li>
                <li><em>{t}VeriumMiner Other Binaries{/t}</em> <a href="https://github.com/fireworm71/veriumMiner/releases/tag/v1.4" target="_blank">{t}Download here{/t}</a></li>
                <li><em>{t}VeriumMiner Linux/Windows/MacOs Sources{/t}</em> <a href="https://github.com/fireworm71/veriumMiner" target="_blank">{t}Download here{/t}</a></li>
              </ul>
            <p>4. <strong>{t}Build your miner.{/t}</strong></p>
            <ul>
                <p><b>{t}If you downloaded the Binaries, you can skip this step !{/t}</b></p>
                <p>
                    {t escape=no}Build on Linux: <a href="https://github.com/phiten/veriumMinerInstaller" target="_blank">Installer</a> or <a href="https://github.com/fireworm71/veriumMiner/blob/main/README.md" target="_blank">Building Guide</a>{/t}
                    <br />
                    {t escape=no}Build on MacOs: <a href="https://github.com/Roykk/veriumMinerDocker/blob/master/OSXwithoutDocker/README.md" target="_blank">Building Guide</a>{/t}
                    <br />
                    {t escape=no}Build on Other Systems: <a href="https://github.com/fireworm71/veriumMiner/blob/main/README.md" target="_blank">Building Guide</a>{/t}
                </p>
            </ul>
            <p>5. <strong>{t}Configure your miner.{/t}</strong></p>
            <ul>
              <p>{t escape=no}If your using <strong> Linux/MacOs</strong>, Then type the following into the console:{/t}</p>
              <pre>./cpuminer -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
              <br />
              <p> {t escape=no}If you want to mine on a <strong> Windows Operating System</strong>, then you'll need to create/edit a batch file to start your miner.{/t} </p><p> {t}Simply open notepad and then copy and paste the following:{/t}</p>
              <pre>cpuminer.exe -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
              <br />
              <p> {t escape=no server_url=$smarty.server.SCRIPT_NAME}You then need to change "-u Weblogin.Worker -p Worker password" to reflect your own account. Eg, "-u Kevin.KevinWorker -p KevinWorkerPassword" then go to "File > Save as" and save the file as "RunMe.bat" in the same folder containing your miners application files. You are now ready to mine, double click on "RunMe.bat" to start mining. If you want, you can create additional workers with usernames and passwords of your choice <a href="%1?page=account&action=workers">here</a>{/t}</p>
            </ul>
            <p>
              <br />
              <b>{t}You can also find more documentation on the{/t} <a href="https://wiki.vericoin.info/" target="_blank">Vericoin/Verium Wiki</a>.</b>
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> {t}Choose the best Stratum{/t}
        </div>
        <div class="panel-body">
            {t}Mining-Pool is opening stratum servers around the world to be next to every miner.{/t}
            <br/>
            {t}By selecting the nearest server you will improve your gain thanks to a lower latency.{/t}
            <br />
            <br />
            <strong>{t}Stratum Servers:{/t} </strong>.

            <table style="width:100%; margin-top: 15px;">
                <tr style="border: 1px #bce8f1 solid;">
                    <th style="padding: 10px;">{t}Localization{/t}</th>
                    <th style="padding: 10px;">{t}Network Speed{/t}</th>
                    <th style="padding: 10px;">{t}Address{/t}</th>
                    <th style="padding: 10px;">{t}Status{/t}</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Nortd America - USA - Virginia{/t}</td>
                    <td style="padding: 10px;">{t}1Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://us.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;color: green; font-weight: bold;">{t}UP{/t}</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Europe - France - Strasbourg{/t}</td>
                    <td style="padding: 10px;">{t}10Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;color: green; font-weight: bold;">{t}UP{/t}</td>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Asia - Singapore{/t}</td>
                    <td style="padding: 10px;">{t}1Gbps - DDos Protection{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://sgp.vrm.mining-pool.ovh:PORT</td>
                    <td style="padding: 10px;color: green; font-weight: bold;">{t}UP{/t}</td>
                </tr>
            </table>
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> {t}Choose the best Port{/t}
        </div>
        <div class="panel-body">
            {t}To improve your gain performance, It's better to choose well the best mining port depending on your hashrate.{/t}
            <br />
            <br />
            {t escape=no}<strong>Each computer/servers will have to be a worker</strong> to permit the difficulty to be well adjusted for your worker.{/t}
            <br />
            <br />
            <strong>{t}Port have to be set for each of your worker and not for your total hashrate{/t}</strong>.

            <table style="width:100%; margin-top: 15px;">
                <tr style="border: 1px #bce8f1 solid;">
                    <th style="padding: 10px;">{t}Hashrate{/t}</th>
                    <th style="padding: 10px;">{t}Address{/t}</th>
                    <th style="padding: 10px;">{t}Port{/t}</th>
                    <th style="padding: 10px;">{t}Difficulty{/t}</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">0 -&gt; 2000 H/m</th>
                    <td style="padding: 10px;">stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:3032</th>
                    <td style="padding: 10px;">3032</th>
                    <td style="padding: 10px;">0.0007 {t}to{/t} 0.04</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">2000 -&gt; 2500 H/m</th>
                    <td style="padding: 10px;">stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:3033</th>
                    <td style="padding: 10px;">3033</th>
                    <td style="padding: 10px;">0.05</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">2500 -&gt; 5500 H/m</th>
                    <td style="padding: 10px;">stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:3034</th>
                    <td style="padding: 10px;">3034</th>
                    <td style="padding: 10px;">0.1</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">5500 -&gt; 11000 H/m</th>
                    <td style="padding: 10px;">stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:3035</th>
                    <td style="padding: 10px;">3035</th>
                    <td style="padding: 10px;">0.2</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">11000 -&gt; &infin; H/m</th>
                    <td style="padding: 10px;">stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:3036</th>
                    <td style="padding: 10px;">3036</th>
                    <td style="padding: 10px;">0.3</th>
                </tr>
                <tr style="border: 1px #bce8f1 solid;">
                    <td style="padding: 10px;">{t}Special SBC{/t}</td>
                    <td style="padding: 10px;">stratum+tcp://eu.vrm.mining-pool.ovh:3037 ({t}Europe Only{/t})</th>
                    <td style="padding: 10px;">3037</td>
                    <td style="padding: 10px;">0.002 {t}to{/t} 0.006</td>
                </tr>
            </table>
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
