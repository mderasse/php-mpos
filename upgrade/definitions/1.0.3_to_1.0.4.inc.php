<?php
function run_104()
{
  // Ugly but haven't found a better way
  global $setting, $config, $coin_address, $user, $mysqli;

  // Version information
  $db_version_old = '1.0.3';  // What version do we expect
  $db_version_new = '1.0.4';  // What is the new version we wish to upgrade to
  $db_version_now = $setting->getValue('DB_VERSION');  // Our actual version installed

  // Upgrade specific variables
  $aSql[] = "ALTER TABLE `accounts` ADD COLUMN `twofa_secret` VARCHAR(255);";
  $aSql[] = "ALTER TABLE `accounts` ADD COLUMN `failed_twofa` INT(5) unsigned NOT NULL DEFAULT '0';";
  $aSql[] = "ALTER TABLE `accounts` DROP COLUMN `failed_pins`;";
  $aSql[] = "ALTER TABLE `accounts` DROP COLUMN `pin`;";
  $aSql[] = "UPDATE " . $setting->getTableName() . " SET value = '" . $db_version_new . "' WHERE name = 'DB_VERSION';";

  echo $db_version_now;
  if ($db_version_now == $db_version_old && version_compare(DB_VERSION, $db_version_new, '<')) {
    // Run the upgrade
    echo '- Starting database migration to version ' . $db_version_new . PHP_EOL;
    foreach ($aSql as $sql) {
      echo '-  Preparing: ' . $sql . PHP_EOL;
      $stmt = $mysqli->prepare($sql);
      if ($stmt && $stmt->execute()) {
        echo '-    success' . PHP_EOL;
      } else {
        echo '-    failed: ' . $mysqli->error . PHP_EOL;
        exit(1);
      }
    }
  }
}
?>
