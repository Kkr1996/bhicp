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
use App\TeamMember;
use Log;
class TeamMemberController extends BaseController
{
	use RoutesAndGuards, ThemeAndViews, UserPages, UploadTrait;
    /**
     * Initialize public controller.
     *
     * @return null
     */
    public function __construct()
    {
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
    	$team = TeamMember::all();

        return $this->response->setMetaTitle(__('app.dashboard'))
            ->view('team.index')
            ->data(compact('user', 'team'))
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

        $team_member = TeamMember::find($id);

        return $this->response->setMetaTitle(trans('app.view') . ' ' . trans('user::team.name'))
            ->data(compact('team_member'))
            ->view('team.show')
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

        return $this->response->setMetaTitle(trans('app.new') . ' ' . trans('user::team.name'))
            ->view('team.create', true)
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
        try {



            $team_member = TeamMember::create();
            $team_member->name = Input::get('name');
            $team_member->title = Input::get('title');
            $team_member->email = Input::get('email');
            $team_member->mobile = Input::get('mobile');
            $team_member->address = Input::get('address');
            $team_member->bio = Input::get('bio');
            $team_member->slug = $this->create_slug( Input::get('name') );
            $image = $request->profile_image;
            if (!empty($image)) {
                $folder = '/uploads/images/team_members/';
                $image = $request->file('profile_image');
                $name  = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/storage/uploads/images/team_members/');
                $filePath = $folder . $name;
                $image->move($destinationPath, $name);
                $team_member->photo = $filePath;
            }




            $team_member->save();

            return $this->response->message(trans('messages.success.created', ['Module' => trans('user::team.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('team'))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('team'))
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
        $team_member = TeamMember::find($id);

        return $this->response->setMetaTitle(trans('app.edit') . ' ' . trans('user::team.name'))
            ->view('team.edit')
            ->data(compact('team_member'))
            ->output();
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
            $team_member = TeamMember::find($request->id);

            $team_member->name = $request->name;
            $team_member->title = $request->title;
            $team_member->email = $request->email;
            $team_member->mobile = $request->mobile;
            $team_member->bio = $request->bio;
            $team_member->address = $request->address;
           
            $team_member->slug = $this->create_slug($request->name);
            $image = $request->profile_image;
            if (!empty($image)) {
                $folder = '/uploads/images/team_members/';
                $image = $request->file('profile_image');
                $name  = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/storage/uploads/images/team_members/');
                $filePath = $folder . $name;
                $image->move($destinationPath, $name);
                $team_member->photo = $filePath;
            }

            $team_member->save();

            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::team.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('team'))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('team/'))
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
            
            $team_member = TeamMember::find($id);
            $team_member->delete();
            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::team.name')]))
                ->code(202)
                ->status('success')
                ->url(guard_url('team/'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('team'))
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
        public function create_slug($string){
       $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
       return strtolower($slug);
    }
}
