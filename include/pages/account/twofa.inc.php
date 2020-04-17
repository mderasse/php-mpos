<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;


if ($user->isAuthenticated()) {
    if ($user->hasTwofa($_SESSION['USERDATA']['id'])) {
        $smarty->assign("CONTENT", "already_enabled.tpl");
    } else {
        if (!isset($_POST['do'])) {
            // Tempalte specifics
            $smarty->assign("CONTENT", "getstarted.tpl");
        } else {
            if (!$config['csrf']['enabled'] || $config['csrf']['enabled'] && $csrftoken->valid) {
                if ($_POST['do'] == 'verify') {
                    if (!$_POST['otp'] || !$user->isValidTwofa($_POST['otp'], true)) {
                        $_SESSION['POPUP'][] = array('CONTENT' => $twofa->getErrorWithDescriptionHTML("enable"), 'TYPE' => 'alert alert-warning');
                        $smarty->assign("CONTENT", "getstarted.tpl");
                    } else {
                        if (!$user->enableTwofa()) {
                            $_SESSION['POPUP'][] = array('CONTENT' => "Fail to enable Two-Factor Authentication", 'TYPE' => 'alert alert-warning');
                            $smarty->assign("CONTENT", "getstarted.tpl");
                        } else {
                            $smarty->assign("CONTENT", "empty");
                        }
                    }
                } else {
                    $twofaData = $user->initializeTwofa($_SESSION['USERDATA']['id']);
                    if (!$twofaData['success']) {
                        $_SESSION['POPUP'][] = array('CONTENT' => "Fail to generate Two-Factor Authentication secret", 'TYPE' => 'alert alert-danger');
                        $smarty->assign("CONTENT", "getstarted.tpl");
                    } else {
                        $smarty->assign("SECRET", $twofaData['secret']);
                        $smarty->assign("QRCODE", $twofaData['qrcode']);
                        $smarty->assign("CONTENT", "enable.tpl");
                    }
                }
            } else {
                $_SESSION['POPUP'][] = array('CONTENT' => $csrftoken->getErrorWithDescriptionHTML(), 'TYPE' => 'alert alert-warning');
                $smarty->assign("CONTENT", "getstarted.tpl");
            }
        }
    }
}
