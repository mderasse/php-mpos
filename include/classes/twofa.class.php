<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

class Twofa extends Base
{
  protected $tfa;

  public function __construct($setting)
  {
    $QrCodeProvider = new \RobThree\Auth\Providers\Qr\BaconQrCodeProvider();
    $this->tfa = new RobThree\Auth\TwoFactorAuth($setting->getValue('website_name'), 6, 30, 'sha1', $QrCodeProvider);
  }

  /**
   * Return a new generated token
   * @return string generated token
   */
  public function generateSecret()
  {
    return $this->tfa->createSecret(160, true);
  }

  public function getQrCode($username, $secret)
  {
    return $this->tfa->getQRCodeImageAsDataUri($username, $secret, 300);
  }

  /**
   * Check if a otp code is valid for an user
   * @param string $userID id of the user
   * @param string $otp one time code
   * @return bool Define if the code is valid or not
   */
  public function isValid($secret, $otp)
  {
    return $this->tfa->verifyCode($secret, $otp);
  }

  /**
   * Convenience method to get a token expired message with a token type, and ? image with description
   * @param string $tokentype if you want a specific tokentype, set it here
   * @param string $dowhat What will be put in the string "Simply $dowhat again to...", default is try
   */
  public static function getErrorWithDescriptionHTML($dowhat = "login")
  {
    switch ($dowhat) {
      default:
        return "Invalid Two-Factor Authentication, failed to $dowhat. Please try again";
        break;
    }
  }
}

$twofa = new Twofa($setting);
$twofa->setDebug($debug);
$twofa->setMysql($mysqli);
$twofa->setConfig($config);
$twofa->setErrorCodes($aErrorCodes);
$twofa->setSetting($setting);
