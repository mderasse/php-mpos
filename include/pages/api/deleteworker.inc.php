<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

// Check if the API is activated
$api->isActive();

// Check user token
$user_id = $api->checkAccess($user->checkApiKey($_REQUEST['api_key']), @$_REQUEST['id']);

// Fetch data interval from admin settings
if ( ! $interval = $setting->getValue('statistics_ajax_data_interval')) $interval = 500;

if( ! isset($_POST["workerId"])) {
    echo $api->get_json(array('status' => false, 'message' => 'Missing POST Parameter workerId'));
    exit(header('HTTP/1.1 400 Invalid Request'));
} elseif ( ! is_int($_POST["workerId"])) {
    echo $api->get_json(array('status' => false, 'message' => 'workerId should be an integer'));
    exit(header('HTTP/1.1 400 Invalid Request'));
}

$workerId     = htmlspecialchars($_POST["workerId"]);
$workerStatus = $worker->deleteWorker($user_id, $workerId);

if ( ! $workerStatus ) {
    echo $api->get_json(array('status' => $workerStatus, 'message' => 'Impossible to delete the worker'));
    exit(header('HTTP/1.1 500 Internal Error'));
}

echo $api->get_json(array('status' => $workerStatus, 'message' => 'Worker deleted'));

// Supress master template
$supress_master = 1;
