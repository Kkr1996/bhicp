<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});
Route::get('/', 'PublicController@home');
Route::any('team/{id}', 'PublicController@team_member');
Route::get('about', 'PublicController@about');
Route::get('contact', 'PublicController@contact');
Route::get('entest-dev', 'PublicController@contact');
//Route::get('property', 'PublicController@properties');
Route::get('single-property/{id}', 'PublicController@single_property');

Route::get('property', 'PublicController@properties_filter');

Route::get('propertiesname', 'PublicController@propertiesname');
Route::get('submit','PublicController@getintouch');
/* Service */
Route::any('service/{slug}', 'PublicController@service_show');
Route::get('services', 'PublicController@services');

/* Submission */
Route::post('submission/contact', 'PublicController@submitSubmission');
Route::post('submission/enquiry', 'PublicController@enquirySubmission');
Route::get('test', 'PublicController@test');
Route::post('advancedfilter', 'PublicController@advancedfilter');


Route::get('print_listing', 'PublicController@print_listing');
Route::get('print_listing_table', 'PublicController@print_listing_table');


Route::get('download/{slug}', 'PublicController@download');
Route::get('print/{slug}', 'PublicController@print');



Route::get('enquiry/{slug}', 'PublicController@enquiry');

Route::post('stagingadvancedfilter', 'PublicController@stagingadvancedfilter');

//Authentication
    Route::post('password/email', 'PasswordController@getemails');
    Route::get('update_password/{slug}', 'PasswordController@usersupdatepasswords');
    Route::post('admin_updatepasword', 'PasswordController@admin_updatepasword');
 //Authentication

Route::prefix('{guard}')->name('guard.')->group(function () {
    Auth::routes(['verify' => true]);
    Route::get('/', 'ResourceController@home');
    Route::resource('/team', 'TeamMemberController');
    
    
    
    Route::resource('/media', 'LibraryController');

    Route::post('/media/update', 'LibraryController@update');

    Route::post('/medialibrary/deleteimage', 'LibraryController@deleteimage');
    
    
    
    
    
    Route::post('/team/update', 'TeamMemberController@update');
    
    Route::get('/submission/form/{slug}', 'SubmissionController@form_type'); 
    
    Route::resource('/section', 'FrontSectionController');
    Route::post('/section/update', 'FrontSectionController@update');
    Route::post('/section/create', 'FrontSectionController@store');
    
    Route::resource('/quickform', 'QuickFormController');
    Route::post('/quickform/update', 'QuickFormController@update');
    
    Route::resource('/property', 'PropertyController');
    Route::post('/property/update', 'PropertyController@update');
    Route::post('/property/deleteimage', 'PropertyController@deleteimage');
    Route::post('/property/remove_featured_image', 'PropertyController@remove_featured_image');
    Route::post('/property/destroyproperty', 'PropertyController@destroy');
    
    
    Route::resource('/submission', 'SubmissionController');
    /*bulk submission actions*/
    Route::post('/submission/readmail', 'SubmissionController@readmail');
    Route::post('/submission/unreadmail', 'SubmissionController@unreadmail');
    Route::post('/submission/deletemail', 'SubmissionController@deletemail');
    Route::post('/submission/destroysubmission', 'SubmissionController@destroysubmissions');
    
    
    Route::get('/theme', 'ThemeController@index');
    Route::post('/theme/update', 'ThemeController@update');    
    
    Route::resource('/service', 'ServiceController');
    
    Route::post('/service/update', 'ServiceController@update');

    Route::post('/mysetting/update/{key}', 'MySettingController@update');
    
    Route::resource('/script', 'HeaderScriptController');
    Route::post('/script/update', 'HeaderScriptController@update'); 
    
        //cropper
    Route::post('image-cropper/upload','ImageCropperController@upload');
    Route::post('/quickform/sendemail', 'QuickFormController@mailtouser');
    
    Route::post('/service/upload', 'ServiceController@uploadprofile');
    Route::post('/serviceuser/uploaduser', 'ServiceController@uploaduserprofile');
    Route::resource('/emailinfo', 'EmailInfoController');
    Route::post('/emailinfo/update', 'EmailInfoController@update'); 

    Route::get('login/{provider}', 'Auth\SocialAuthController@redirectToProvider');
    

    Route::resource('/notification', 'NotificationController');
    Route::post('/notification/update', 'NotificationController@update');
    Route::post('/notification/removeimage', 'NotificationController@removeimage');
    Route::post('/notification/deletenotificationrows', 'NotificationController@destroy');
    
});

Route::any('/{page?}','PublicController@notfound');