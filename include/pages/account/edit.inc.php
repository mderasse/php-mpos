<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

// 2fa - set old token so we can use it if an error happens or we need to use post
$oldtoken_ea = (isset($_POST['ea_token']) && $_POST['ea_token'] !== '') ? $_POST['ea_token'] : @$_GET['ea_token'];
$oldtoken_cp = (isset($_POST['cp_token']) && $_POST['cp_token'] !== '') ? $_POST['cp_token'] : @$_GET['cp_token'];
$oldtoken_wf = (isset($_POST['wf_token']) && $_POST['wf_token'] !== '') ? $_POST['wf_token'] : @$_GET['wf_token'];
$updating = (@$_POST['do']) ? 1 : 0;

if ($user->isAuthenticated()) {

  switch (@$_POST['do']) {
    case 'cashOut':
      $aBalance = $transaction->getBalance($_SESSION['USERDATA']['id']);
      $dBalance = $aBalance['confirmed'];
      if ($setting->getValue('disable_payouts') == 1 || $setting->getValue('disable_manual_payouts') == 1) {
        $_SESSION['POPUP'][] = array('CONTENT' => _('Manual payouts are disabled.'), 'TYPE' => 'alert alert-warning');
      } else if ($aBalance['confirmed'] < $config['mp_threshold']) {
        $_SESSION['POPUP'][] = array('CONTENT' => _('Account balance must be >= ') . $config['mp_threshold'] . _(' to do a Manual Payout.'), 'TYPE' => 'alert alert-warning');
      } else if (!$coin_address->getCoinAddress($_SESSION['USERDATA']['id'])) {
        $_SESSION['POPUP'][] = array('CONTENT' => _('You have no payout address set.'), 'TYPE' => 'alert alert-danger');
      } else {
        $user->log->log("info", $_SESSION['USERDATA']['username'] . " requesting manual payout");
        $txfee_manual = $config['txfee_manual'];
        if (isset($config['txfee_manual_dynamic']['enabled']) && $config['txfee_manual_dynamic']['enabled']) {
          if (isset($config['txfee_manual_dynamic']['coefficient']) && $config['txfee_manual_dynamic']['coefficient'] * $dBalance > $config['txfee_manual']) {
            $txfee_manual = round($config['txfee_manual_dynamic']['coefficient'] * $dBalance, 1, PHP_ROUND_HALF_UP);
          }
        }
        if ($dBalance > $txfee_manual) {
          if (!$oPayout->isPayoutActive($_SESSION['USERDATA']['id'])) {
            if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
              if ($iPayoutId = $oPayout->createPayout($_SESSION['USERDATA']['id'], $oldtoken_wf)) {
                $_SESSION['POPUP'][] = array('CONTENT' => _('Created new manual payout request with ID #') . $iPayoutId);
              } else {
                $_SESSION['POPUP'][] = array('CONTENT' => $iPayoutId->getError(), 'TYPE' => 'alert alert-danger');
              }
            } else {
              $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
            }
          } else {
            $_SESSION['POPUP'][] = array('CONTENT' => _('You already have one active manual payout request.'), 'TYPE' => 'alert alert-danger');
          }
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => _('Insufficient funds, you need more than ') . $txfee_manual . ' ' . $config['currency'] . _(' to cover transaction fees'), 'TYPE' => 'alert alert-danger');
        }
      }
      break;

    case 'updateAccount':
      if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
        if ($user->updateAccount($_SESSION['USERDATA']['id'], $_POST['paymentAddress'], $_POST['payoutThreshold'], $_POST['donatePercent'], $_POST['email'], $_POST['timezone'], $_POST['is_anonymous'], $oldtoken_ea)) {
          $_SESSION['USERDATA']['timezone'] = $_POST['timezone'];
          $_SESSION['POPUP'][] = array('CONTENT' => _('Account details updated'), 'TYPE' => 'alert alert-success');
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => _('Failed to update your account: ') . $user->getError(), 'TYPE' => 'alert alert-danger');
        }
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
      }
      break;

    case 'updatePassword':
      if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
        if ($user->updatePassword($_SESSION['USERDATA']['id'], $_POST['currentPassword'], $_POST['newPassword'], $_POST['newPassword2'], $oldtoken_cp)) {
          $_SESSION['POPUP'][] = array('CONTENT' => _('Password updated'), 'TYPE' => 'alert alert-success');
        } else {
          $_SESSION['POPUP'][] = array('CONTENT' => $user->getError(), 'TYPE' => 'alert alert-danger');
        }
      } else {
        $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
      }
      break;
  }
}

// Grab our timezones
$smarty->assign('TIMEZONES', DateTimeZone::listIdentifiers());

// Fetch donation threshold
$smarty->assign("DONATE_THRESHOLD", $config['donate_threshold']);

// Tempalte specifics
$smarty->assign("CONTENT", "default.tpl");
