<?php

namespace App\Providers;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

use app\Footer;



class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
  
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
         View::share('key', 'value');
         Schema::defaultStringLength(191);
         $googleanalytics=DB::table('header_script')->get();
         $adminlogoo          = DB::table('admin_logo')->get();
        
         $total_submission    = DB::table('submissions')->where('status',"active")->get();
         $bannernotification  = DB::table('notification')->where("slug","pop-up-style-")->get(); 
        
         $pagess              = DB::table('pages')->get();
         $users               = DB::table('users')->get();
         //Get current mail notification
        
         $values = array(
             'adminlogo'=>$adminlogoo,
             'bannernotification'=>$bannernotification,
             'googleanalytics'=>$googleanalytics,
             'total_submission'=>$total_submission,
             'pages'=>$pagess,
             'users'=>$users
         );
        
         View::share($values);  
    }
}
