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
use App\MySetting;
use App\Service;
use Illuminate\Support\Facades\DB;
use Litepie\Settings\Models\Setting;
use Log;

class ServiceController extends BaseController
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
    public function index(Request $request)
    {
    	$user = $request->user()->toArray();
    	$services = Service::all();
    	$hover_color = MySetting::where('key', 'service.hover.color')->first()->value;

        return $this->response->setMetaTitle(__('app.service'))
            ->view('service.index')
            ->data(compact('user', 'services', 'hover_color'))
            ->output();
    }


    /**
     * Display team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */
    public function show($id)
    {
        $service = Service::find($id);
        
        return $this->response->setMetaTitle(trans('app.view') . ' ' . trans('user::service.name'))
            ->data(compact('service'))
            ->view('service.show')
            ->output();
    }

    /**
     * Show the form for creating a new team.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function create(Request $request)
    {
        return $this->response->setMetaTitle(trans('app.new') . ' ' . trans('user::service.name'))
            ->view('service.create', true)
            ->output();
    }

    /**
     * Create new team.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function store(Request $request)
    {
        
      
        Log::info("store");
        try {
            
            
            $service = Service::create();

            $service->name = $request->name;
            $service->info = $request->info;
            
            $service->slug = $this->create_slug($request->name);
            $service->hover_color = $request->hover_color;
            
            $service->meta_title = $request->meta_title;
            $service->meta_keyword = $request->meta_keyword;
            $service->meta_description = $request->meta_description;
            $image = $request->featured_img;
            
          if (!empty($image)) {


                $folder = '/uploads/images/services/';
                $image = $request->file('featured_img');
                $name  = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/storage/uploads/images/services/');
                $filePath = $folder . $name;
                $image->move($destinationPath, $name);
                $service->icon = $filePath;


            }
            
            Log::info(print_r($service, true));
            $service->save();
            

            return $this->response->message(trans('messages.success.created', ['Module' => trans('user::service.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('service'))
                ->redirect();
                
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('service'))
                ->redirect();
        }

    }

    /**
     * Show team for editing.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */
    public function edit($id)
    {
        $service = Service::find($id);

        return $this->response->setMetaTitle(trans('app.edit') . ' ' . trans('user::service.name'))
            ->view('service.edit')
            ->data(compact('service'))
            ->output();
    }
    
    public function other(Request $request)
    {
        try {
            $hover_setting = Setting::where('key', 'service.hover.color')->get();
            
            $hover_setting->value = $request->color;
            Log::info($hover_setting);
            $hover_setting->save();
            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::service.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('service'))
                ->redirect();
            
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('service/'))
                ->redirect();
        }
        
        
    }

    /**
     * Update the team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */
    public function update(Request $request)
    {
      
        try {
            $service = Service::find($request->id);

            $service->name = $request->name;
            $service->slug = $this->create_slug($request->name);
            $service->info = $request->info;
            $service->hover_color = $request->hover_color;
            
            $service->meta_title = $request->meta_title;
            $service->meta_keyword = $request->meta_keyword;
            $service->meta_description = $request->meta_description;
            $image = $request->featured_img;
            
            if (!empty($image)) {


                $folder = '/uploads/images/services/';
                $image = $request->file('featured_img');
                $name  = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/storage/uploads/images/services/');
                $filePath = $folder . $name;
                $image->move($destinationPath, $name);
                $service->icon = $filePath;


            }

            $service->save();

//            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::service.name')]))
//                ->code(204)
//                ->status('success')
//                ->url(guard_url('service'))
//                ->redirect();
//            
            
            return redirect()->back();
            
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('service/'))
                ->redirect();
        }

    }

    /**
     * Remove the team.
     *
     * @param Model   $team
     *
     * @return Response
     */
    public function destroy($id)
    {
        
        try {
            
            $service = Service::find($id);
            $service->delete();
            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::service.name')]))
                ->code(202)
                ->status('success')
                ->url(guard_url('service/'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('service'))
                ->redirect();
        }

    }

    /**
     * Restore deleted teams.
     *
     * @param Model   $team
     *
     * @return Response
     */
    public function restore(Request $request)
    {
        try {
            $ids = hashids_decode($request->input('ids'));
            $this->repository->restore($ids);

            return $this->response->message(trans('messages.success.restore', ['Module' => trans('user::team.name')]))
                ->status("success")
                ->code(202)
                ->url(guard_url('/teams/team'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->status("error")
                ->code(400)
                ->url(guard_url('/user/team/'))
                ->redirect();
        }

    }

    /**
     * Attach a user to a team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */
    public function attach(Request $request)
    {
        try {
            $attributes = $request->all();

            $team = $this->repository->attach($attributes);
            return $this->response->message(trans('messages.success.attached', ['Module' => trans('user::team.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('user/team/' . $team->getRouteKey()))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('user/team/' . $team->getRouteKey()))
                ->redirect();
        }

    }
    /**
     * Detach a user from a team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */
    public function detach(Request $request)
    {
        try {
            $attributes = $request->all();
            $team = $this->repository->detach($attributes);
            return $this->response->message(trans('messages.success.detached', ['Module' => trans('user::team.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('user/team/' . $team->getRouteKey()))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('user/team/' . $team->getRouteKey()))
                ->redirect();
        }

    }
    
    /**
     * Create slug for title of service
    */
    public function create_slug($string){
       $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
       return strtolower($slug);
    }
    public function uploadprofile(Request $request)
    {
               
         $username   =  user()->name;
         $users      =  DB::table('users')->where('name',$username)->get();
         $user_id    =  $users[0]->id;
         $image      =  $request->image;
        

         if (!empty($image)) {
            $folder  = '/uploads/images/profile/';
            $image   = $request->file('image');
            $name    = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/storage/uploads/images/profile/');
            $filePath = $folder . $name;
            $image->move($destinationPath, $name);
            $url    = url('admin/profile');
            $values = array(
                'images'=>$name
            ); 
            DB::table('users')
            ->where('id',$user_id)
            ->update($values);
            return redirect()->away($url);
        }
    }
    
    
    public function uploaduserprofile(Request $request)
    {

             $username   =  $request->username;
             $users      =  DB::table('users')->where('name',$username)->get();
             $user_id    =  $users[0]->id;
             $image      =  $request->image;

                if (!empty($image)) {
                $folder  = '/uploads/images/profile/';
                $image   = $request->file('image');
                $name    = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/storage/uploads/images/profile/');
                $filePath = $folder . $name;
                $image->move($destinationPath, $name);
                $url    = url('admin/user/user');
                $values = array(
                'images'=>$name
                ); 

           
                DB::table('users')
                ->where('id',$user_id)
                ->update($values);

                return redirect()->away($url);
                
            }

    }
}
