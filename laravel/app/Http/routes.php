<?php
Route::post('get_details', 'LeaderController@index');
Route::get('/',function(){ echo "welcome" ;});
Route::post('set_campaigns','CampaignController@index');
Route::controllers([

	'auth' => 'Auth\AuthController',

	'password' => 'Auth\PasswordController'
      
]);
?>