<form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="contactform">
  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-envelope fa-fw"></i> {t}Contact Us{/t}
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="senderName">{t}Your Name{/t}</label>
                <input type="text" class="form-control" name="senderName" value="" placeholder="{t}Please type your name{/t}" size="15" maxlength="100" required />
              </div>
              <div class="form-group">
                <label for="senderEmail">{t}Your Email Address{/t}</label>
                <input type="text" class="form-control" name="senderEmail" value="" placeholder="{t}Please type your email{/t}" size="50"  maxlength="100" required />
              </div>
              <div class="form-group">
                <label for="senderEmail">{t}Your Subject{/t}</label>
                <input type="text" class="form-control" name="senderSubject" value="" placeholder="{t}Please type your subject{/t}" size="15" maxlength="100" required />
              </div>
              <div class="col-lg-6">
                <center>{nocache}{$RECAPTCHA|default:"" nofilter}{/nocache}
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label for="message">{t}Your Message{/t}</label>
                <textarea type="text" class="form-control" name="senderMessage" cols="80" rows="20" maxlength="10000" required>{$smarty.request.senderMessage|escape|default:""}</textarea>
              </div>
            </div>
          </div>
        </div>
        <div class="panel-footer">
          <button type="submit" class="btn btn-success btn-sm">{t}Send Email{/t}</button>
          <button type="reset" class="btn btn-warning btn-sm">{t}Reset Values{/t}</button></center>
        </div>
      </div>
    </div>
  </div>
</form>
