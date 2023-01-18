<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller as BaseController;
use App\Http\Response\ResourceResponse;
use Litepie\Theme\ThemeAndViews;
use Litepie\User\Traits\RoutesAndGuards;
use Litepie\User\Traits\UserPages;
use Illuminate\Support\Facades\Input;
use App\Traits\UploadTrait;
use App\Library;
use Illuminate\Support\Facades\DB;
use Litepie\Settings\Models\Setting;
use Log;
use Session;
class ImageCropperController extends Controller
{

    use RoutesAndGuards, ThemeAndViews, UserPages, UploadTrait;
    /**
     * Initialize public controller.
     *
     * @return null
     */
    public function __construct()
    {
        Log::info('helo');
        guard(request()->guard . '.web');
        $this->middleware('auth:' . guard());
        $this->middleware('verified:guard.verification.notice');
        $this->middleware('role:' . $this->getGuardRoute());
        $this->response = app(ResourceResponse::class);
        $this->setTheme();
    }
    public function index()
    {
        return view('cropper');
    }

    public function upload(Request $request)
    {
        
        
      
       $username   =  user()->name;
  
        $users      =   DB::table('users')->where('name',$username)->get();

        $user_id = $users[0]->id;
 
 

        $folderPath = public_path('storage/uploads/images/profile/');
        $folder  = 'storage/uploads/images/profile/';
        $image_parts = explode(";base64,", $request->image);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $image_base64 = base64_decode($image_parts[1]);
        $filename  =uniqid() . '.png';
        $file = $folderPath .$filename;
        $created_at = date('Y-m-d H:i:s');
        $ourgallerypath = $filename;

           $values = array(
                    'images'=>$ourgallerypath
                 ); 
        
        DB::table('users')
        ->where('id',$user_id)
        ->update($values);
        
        
        file_put_contents($file, $image_base64);

        return redirect()->back();
    }
}