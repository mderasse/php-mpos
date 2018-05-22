<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

// Check if the API is activated
$api->isActive();

// Check user token
$user_id = $api->checkAccess($user->checkApiKey($_REQUEST['api_key']), @$_REQUEST['id']);

// Fetch data interval from admin settings
if ( ! $interval = $setting->getValue('statistics_ajax_data_interval')) $interval = 500;

if( ! isset($_POST["workerName"]) and ! isset($_POST["workerPassword"])) {
    echo $api->get_json(array('status' => false, 'message' => 'Missing POST Parameter workerName and workerPassword'));
    exit(header('HTTP/1.1 400 Invalid Request'));
} elseif( ! isset($_POST["workerName"])) {
    echo $api->get_json(array('status' => false, 'message' => 'Missing POST Parameter workerName'));
    exit(header('HTTP/1.1 400 Invalid Request'));
} elseif( ! isset($_POST["workerPassword"])) {
    echo $api->get_json(array('status' => false, 'message' => 'Missing POST Parameter workerPassword'));
    exit(header('HTTP/1.1 400 Invalid Request'));
}

$workerName     = htmlspecialchars($_POST["workerName"]);
$workerPassword = htmlspecialchars($_POST["workerPassword"]);

$workerStatus = $worker->addWorker($user_id, $workerName, $workerPassword);

if ( ! $workerStatus ) {
    echo $api->get_json(array('status' => $workerStatus, 'message' => 'Impossible to create the worker'));
    exit(header('HTTP/1.1 500 Internal Error'));
}

echo $api->get_json(array('status' => $workerStatus, 'message' => 'Worker created'));

// Supress master template
$supress_master = 1;
