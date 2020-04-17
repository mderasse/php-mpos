<div class="row">
  <div class="col-md-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-align-left fa-fw"></i> {t}Two-Factor Authentication{/t}</h4>
      </div>
      <div class="panel-body">
        <div class="row" style="margin-top: 20px;">
          <div class="col-md-12 text-center">
            <h4><b>{t}AUTHORIZATION SECRET CODE{/t}</b></h4>
            <p style="font-size: 15px;">
              <b>
                {nocache}<span style="color: red;">{$SECRET}</span>{/nocache}
              </b>
            </p>
            <h4 style="margin-top: 25px;"><b>{t}QR CODE{/t}</b></h4>
            <p">
              <b>
                {nocache}<img src="{$QRCODE}" alt="2FA QrCode"/>{/nocache}
              </b>
            </p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center" style="margin-bottom: 15px;">
            <h4><b>{t}PROCEDURES{/t}</b></h4>
          </div>
          <div class="col-md-6" style="margin: 0 auto; float: none; font-weight: bold;">
            <p style="font-size: 15px;">1. {t}Install a Two-Factor Authentication application on your smartphone.{/t}</p>
            <p style="font-size: 15px;">2. {t}Scan the QR Code above or type in the authorization secret code manually on your mobile device.{/t}</p>
            <p style="font-size: 15px;">3. {t}Write down or save the authorization secret code in case you lose your device.{/t}</p>
            <p style="font-size: 15px;">4. {t}DO NOT EVER share your secret code with anyone. We will never ask for your secret code.{/t}</p>
          </div>
        </div>
        <div class="row" style="margin-top: 30px;">
          <div class="col-md-4 text-center" style="margin: 0 auto; float: none; padding: 10px;font-weight: bold; background-color: #f1f1fd; border-radius: 15px;">
            <div class="text-center" style="font-weight: bold; font-size: 14px; color:blue">
              {t}Enter the code given by Authenticator App{/t}
            </div>
            <div class="text-center" style="font-weight: bold; font-size: 14px; color:blue">
              <form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
                {nocache}
                <input type="hidden" name="page" value="{$smarty.request.page|escape}">
                <input type="hidden" name="action" value="{$smarty.request.action|escape}">
                <input type="hidden" name="do" value="verify">
                <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
                {/nocache}
                <div style="margin: auto; width: 100px; margin-top: 15px;">
                  <input class="form-control" type="text" pattern="\d*" placeholder="000000" maxlength="6" name="otp" style="height: 40px; font-size: 16px; text-align: center;" />
                </div>
                <div style="margin: auto; width: 100px; margin-top: 20px;">
                  <input type="submit" class="btn btn-success btn-sm" value="{t}Validate{/t}">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>