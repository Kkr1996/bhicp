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
use App\PageSetting;
use App\Service;
use App\Faq;
use Illuminate\Support\Facades\DB;
use Litepie\Settings\Models\Setting;
use Log;

class EmailInfoController extends BaseController
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
        
  
    	$user         = $request->user()->toArray();
    	$emailinfo =  DB::table('emailinfo')->get();
    	//$hover_color = MySetting::where('key', 'service.hover.color')->first()->value;

        
     //   echo '<pre>',var_dump($page_setting); echo '</pre>';
        //die();
        return $this->response->setMetaTitle(__('app.service'))
            ->view('emailinfo.index')
            ->data(compact('user','emailinfo'))
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
//    public function show($id)
//    {
//        $service = Service::find($id);
//        return $this->response->setMetaTitle(trans('app.view') . ' ' . trans('user::service.name'))
//            ->data(compact('service'))
//            ->view('service.show')
//            ->output();
//    }

    /**
     * Show the form for creating a new team.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function create(Request $request)
    {
  
        
              $pagestitle = DB::table('pages')->get();
          //    $category = DB::table('menus')->where('parent_id',$menus->id)->get();
        
        
              return $this->response->setMetaTitle(trans('app.new') . ' ' . trans('user::service.name'))
              ->view('emailinfo.create', true)
              ->data(compact('pagestitle'))
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
        try 
        {
            $toemail      = $request->toemail;
            $subject      = $request->subject;
            $message      = $request->message;
    
            $values    = array('toemail' =>  $toemail,'subject'=>$subject, 'message'=>$message );
 
            DB::table('emailinfo')->insert($values);
            return $this->response->message(trans('messages.success.created', ['Module' => trans('user::service.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('emailinfo'))
                ->redirect();
                
            } 
            catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('emailinfo'))
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
       // $page_setting =  DB::table('header_script')->get();
            $emailinfo =  DB::table('emailinfo')->where('id',$id)->get();
        
            return $this->response->setMetaTitle(trans('app.edit') . ' ' . trans('user::faq.name'))
            ->view('emailinfo.edit')
            ->data(compact('emailinfo'))
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
            $toemail      = $request->toemail;
            $subject      = $request->subject;
            $message      = $request->message;
            $values       = array('toemail' =>  $toemail,'subject'=>$subject, 'message'=>$message );
            
            
            DB::table('emailinfo')
             ->where('id',  $request->id)
             ->update($values);
            
            
//             return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::service.name')]))
//                ->code(204)
//                ->status('success')
//                ->url(guard_url('emailinfo'))
//                ->redirect();
            return redirect()->back();
            
          } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('emailinfo'))
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
            
            $googleanalytics = PageSetting::find($id);
            $googleanalytics->delete();
            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::faq.name')]))
                ->code(202)
                ->status('success')
                ->url(guard_url('emailinfo/'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->code(400)     
                ->status('error')
                ->url(guard_url('emailinfo'))
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

    /**
     * Attach a user to a team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response
     */

    /**
     * Detach a user from a team.
     *
     * @param Request $request
     * @param Model   $team
     *
     * @return Response

    /**
     * Create slug for title of service
    */
    public function create_slug($string){
       $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
       return strtolower($slug);
    }


    public function testing()
    {

        echo "string";
    }

}
