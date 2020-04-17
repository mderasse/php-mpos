<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

// Confirm an account by token
if (!isset($_GET['token']) || empty($_GET['token'])) {
  $_SESSION['POPUP'][] = array('CONTENT' => _('Missing token'), 'TYPE' => 'alert alert-danger');
} else if (!$aToken = $oToken->getToken($_GET['token'], 'account_unlock')) {
  $_SESSION['POPUP'][] = array('CONTENT' => _('Unable to re-activate your account. Invalid token.'), 'TYPE' => 'alert alert-danger');
} else {
  if ($user->getUserTwofaFailed($aToken['account_id']) >= $config['maxfailed']['twofa']) {
    $user->disableTwofa($aToken['account_id']);
  }
  $user->setUserTwofaFailed($aToken['account_id'], 0);
  $user->setUserFailed($aToken['account_id'], 0);
  $user->setLocked($aToken['account_id'], 0);
  $oToken->deleteToken($aToken['token']);
  $_SESSION['POPUP'][] = array('CONTENT' => _('Account re-activated. Please login.'));
}
$smarty->assign('CONTENT', 'default.tpl');
