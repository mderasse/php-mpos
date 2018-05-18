 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> {t}Getting Started Guide{/t}
        </div>
        <div class="panel-body">
        
    <p>1. <strong>Create account.</strong></p>
      <ul>
        <li>{t escape=no}Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, or login if you already have accoun{/t}t</li>
        <li>{t escape=no}Create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login{/t}</li>
      </ul>
    </li>
    <p>2. <strong>{t}Download a miner.{/t}</strong></p>
      <ul>
        {if $GLOBAL.config.algorithm == 'sha256d'}
        <li><em>Intel/ATI/AMD CGMiner Windows:</em> <a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2-windows.zip" target="_blank">{t}Download here{/t}</a></li>
        <li><em>Intel/ATI/AMD CGMiner Linux:</em> <a href="http://ck.kolivas.org/apps/cgminer/cgminer-4.2.2.tar.bz2" target="_blank">{t}Download Here{/t}</a></li>
	{/if}
	{if $GLOBAL.config.algorithm == 'scrypt'}
	<li><em>Intel/ATI/AMD CGMiner (3.7.2) Windows:</em> <a href="https://mega.co.nz/#!iQhlGIxa!mzKOfLY6TpOfvPvWE6JFlWdRgHEoshzm99f1hd3ZdRw" target="_blank">{t}Download here{/t}</a></li>	
	<li><em>Intel/ATI/AMD CGMiner (3.7.2) Linux:</em> <a href="http://ck.kolivas.org/apps/cgminer/3.7/cgminer-3.7.0.tar.bz2" target="_blank">{t}Download Here{/t}</a></li>	
	<li><em>NVIDIA Cudaminer:</em> <a href="https://bitcointalk.org/index.php?topic=167229.0" target="_blank">{t}Download here{/t}</a></li>
	{/if}
	<li><em>Intel/ATI/AMD BFGMiner Linux/Windows:</em> <a href="http://bfgminer.org" target="_blank">{t}Download here{/t}</a></li>
        <li><em>Fabulous Panda Miner Mac OS X:</em> <a href="http://fabulouspanda.co.uk/macminer/" target="_blank">{t}Download here{/t}</a></li>
        <li><em>Minerd CPU Miner Mac/Linux/Windows:</em> <a href="https://bitcointalk.org/index.php?topic=55038.msg654850#msg654850" target="_blank">{t}Download here{/t}</a>.</li>
      </ul>
    </li>
    <p>3. <strong>{t}Configure your miner.{/t}</strong></p>
    <ul>
      <p>{t}If your using Linux, Then type the following into the console:{/t}</p>
      <li>CGMiner</li>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>./bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <br />
	  <p> {t escape=no}If you want to mine on a <strong> Windows Operating System</strong>, then you'll need to create a batch file to start your miner.{/t} </p><p> {t}Simply open notepad and then copy and paste the following:{/t}</p>
      <li>CGMiner</li>
      <pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>MinerD</li>
      <pre>minerd -a {if $GLOBAL.config.algorithm == 'scrypt'}scrypt {/if}-t 6 -s 4 -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {if $GLOBAL.config.algorithm == 'scrypt'}
      <li>Cudaminer For NVIDIA Cards</li>
	  <pre>cudaminer -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {/if}
	  <br />
	  <p> {t escape=no server_name=$smarty.server.SCRIPT_NAME}You then need to change "-u Weblogin.Worker -p Worker password" to reflect your own account. Eg, "-u Steve.StevesWorker -p StevesWorkerPassword" then go to "File > Save as" and save the file as "RunMe.bat" in the same folder containing your miners application files. You are now ready to mine, double click on "RunMe.bat" to start mining. If you want, you can create additional workers with usernames and passwords of your choice <a href="%1?page=account&action=workers">here</a>{/t}</p>
    </ul>
    <p>4. <strong>{t sitecoin=$SITECOINNAME|default:"Litecoin"}Create a %1 address to receive payments.{/t}</strong></p>
      <ul>
        <li> {t escape=no}Downloading the client & block chain: 	Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.{/t}
          <p>{t}Generate a new address and input it on your account page to receive payments.{/t}</p>
        </li>
      </ul>
    </li>
    {if $GLOBAL.config.algorithm == 'scrypt'}
    <p>5. <strong>{t}Advanced CGMiner settings / FAQ{/t}</strong></p>
      <ul>
        <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">{t}Scrypt readme{/t}</a></li>
        <li>{t escape=no}Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.{/t}</li>
        <li>{t escape=no}Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.{/t}</li>
        <li>{t}There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.{/t}</li>
        <li>{t escape=no}Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.{/t}</li>
      </ul>
    </li>
    {/if}
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
