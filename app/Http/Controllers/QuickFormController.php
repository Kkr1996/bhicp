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
use App\Service;
use App\QuickForm;
use Log;

class QuickFormController extends BaseController
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
    	$forms = QuickForm::all();

        return $this->response->setMetaTitle(__('app.quickform'))
            ->view('quickform.index')
            ->data(compact('user', 'forms'))
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

        $form = QuickForm::find($id);

        return $this->response->setMetaTitle(trans('app.view') . ' ' . trans('user::form.name'))
            ->data(compact('form'))
            ->view('quickform.show')
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

        return $this->response->setMetaTitle(trans('app.new') . ' ' . trans('user::quickform.name'))
            ->view('quickform.create', true)
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

            $form = QuickForm::create();
            $form->name = $request->name;
            
        
            $form->form_field = $request->form_field;
            $form->slug = $this->create_slug($request->name);
            $form->recipient = $request->recipient;
            $form->sender = $request->sender;
            $form->message_body = $request->message_body;
            $form->subject = $request->subject;
            $form->mail_sent_ng = $request->mail_sent_ng;
            $form->mail_sent_ok = $request->mail_sent_ok;
            $form->validation_error = $request->validation_error;
            $form->spam = $request->spam;
            $form->thanku_template = $request->thanku_template;
             $form->header_content = $request->header_content;
            $form->save();
            return $this->response->message(trans('messages.success.created', ['Module' => trans('user::quickform.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('quickform'))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('quickform'))
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
        $form = QuickForm::find($id);

        return $this->response->setMetaTitle(trans('app.edit') . ' ' . trans('user::quickform.name'))
            ->view('quickform.edit')
            ->data(compact('form'))
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
            $form = QuickForm::find($request->id);
            $form->name = $request->name;
            $form->form_field = $request->form_field;
            $form->recipient = $request->recipient;
            $form->sender = $request->sender;
            $form->message_body = $request->message_body;
            $form->subject = $request->subject;
            $form->mail_sent_ng = $request->mail_sent_ng;
            $form->mail_sent_ok = $request->mail_sent_ok;
            $form->validation_error = $request->validation_error;
            $form->spam = $request->spam;
            $form->thanku_template = $request->thanku_template;
            $form->template_css = $request->template_css;
            $form->header_content = $request->header_content;
            $form->save();
            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::quickform.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('quickform'))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('quickform/'))
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
            
            $form = QuickForm::find($id);
            $name = $form->name;
            $form->delete();
            return $this->response->message(trans('messages.success.deleted', ['Module' => $name]))
                ->code(202)
                ->status('success')
                ->url(guard_url('quickform/'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('quickform'))
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
    public function mailtouser(){
        
              $subject                =  $_POST['user_subject'];
              $from                   =  $_POST['user_sender'];
              $fromName               =  $_POST['user_subject'];
              $emailSubject           =  $_POST['user_subject'];
              $email                  =  $_POST['user_recipient'];
              $toEmail                =  $_POST['user_recipient'];
              $name                   =  $_POST['user_name'];
            
              $img               =  url('themes/public/assets/img/logo/logo.png');
            
              $fb_icons          =  url('themes/admin/assets/img/logo/facebook.png');
              $ins_icons         =  url('themes/admin/assets/img/logo/instagram.png');
              $twi_icons         =  url('themes/admin/assets/img/logo/twitter.png');


              $usermessage       =  $_POST['user_message_body'];


        
        
        $htmlContentuser = "<html>
        <head>
        <title>Please Follow the Instruction</title>
          <style type='text/css'>
            @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap');
            p, h1, h2, h3, h4, ol, li, ul {  font-family: 'Open Sans', sans-serif; }
            body
            {
                font-family: 'Roboto', sans-serif;
                width:80%;
                margin:auto;
                background:#f2f2f2;
            }
            .outer
            {
                font-family: 'Roboto', sans-serif;
                width:80%;
                margin:auto;
                background:#f2f2f2;
                padding: 30px;
            }
            .inner-content
            {
                background:#fff;
                width:500px;    
                margin:auto;
                padding: 0px 40px 40px 40px;
            }
            .wrap-image
            {
                text-align:center;
                background-color:#fff;
                padding:15px;
            }
            .content{           
                padding:10px;
            }
            .greeener-swipe
            {
                max-width: 300px;
                margin: auto;
            }
            .greeener-swipe img
            {
                width:100%;
            }
            .right a
            {
                background: #fff;
                color: #084594;
                padding: 10px 24px;
                display: inline-block;
                border-radius: 25px;
                font-weight: normal;
                border: 2px solid #084594;
                transition: 0.5s;
                font-size: 18px;
                border-radius: 30px;
                list-style: none;
                text-decoration: none;
                margin-bottom:30px;
            }
            .social-icons ul{
                padding: 0; 
                margin: 0;
                list-style: none;
                justify-content: center;
                text-align:center;
            }
            .social-icons ul li
            {
                display:inline;
            }
            .right
            {
                text-align: center;
                margin-bottom: 35px;
                border-bottom: 1px solid #f2f2f2;
                width: 400px;
                margin: auto;
            }
            .copy-rght
            {
                text-align:center;
                padding-top:15px;
            }
            .copy-rght p
            {
                font-style: italic;
            }
            .content .title
            {
                font-size: 20px;
            }
            .content p 
            {
                font-size: 20px;
                font-family: 'Roboto',sans-serif;
                font-weight: normal;
                text-transform: capitalize;
                color:#000;
            }
            .content h1
            {
                font-weight: normal;
                font-size: 40px;
                color:#084594;
                margin-bottom: 15px;
            }
            .msg
            {
                font-size: 20px;
                color: #000;
            }
            .follow
            {
                text-align: center;
                font-size: 18px;
                padding: 15px 0px 30px!important;
            }
            .social-icons
            {
                text-align:center;
                align-item:center;
            }
            .social-icons img
            {
                width: auto;
                height: auto;
            }
            .footer
            {
                text-align:center;
            }
            .follow strong
            {
                font-weight: 500;
                color:#808080;
            }
            .inner-content p
            {
                padding:0;
                margin:0;
            }
            .inner-content .content .title
            {
                margin-top: 20px;
            }
          </style>
        </head>
        <body>
        <div class='outer'>
        <div class='inner-content'>
             <div class='wrap-image'>
                <img src='https://bhicp.com/public/themes/public/assets/img/logo/logo.png'>
             </div>
            
             <div class='content'>
                    <p class='title'>Hi $name, </p>
                    <h1>Thank you</h1>
                    <p class='msg'>$usermessage </p>
            </div>
            <div class='right'>
                <a href='#'>828-322-1723</a>
            </div>
            <div class='footer'>
                 <p class='follow'><strong>Follow us on</strong></p>
                 <div class='social-icons'>
                   <ul>
                        <li><a href='https://www.facebook.com/bhicp'><i class='fa fa-facebook'>
                        </i><img src='https://bhicp.com/public/themes/public/assets/img/logo/f.png'></a>
                        </li>
                        <li>
                            <a href='https://www.linkedin.com/company/boyd-&amp;-hassell-industrial-&amp;-commercial-properties/about/' target='_blank'>
                                <i class='fa fa-linkedin'> </i>
                                <img src='https://bhicp.com/public/themes/public/assets/img/logo/linkedin-32.png'>
                            </a>
                        </li>
                        
                   </ul>
                </div>
            </div>
            <div class='copy-rght'>
                    <p>Copyright  2020 Boyd & Hassell Industrial & Commercial Properties, all rights reserved.</p>
            </div>
            </div>
        </div>
        </body>
        </html>";
            
            
           // die();
            $headers = "From: $fromName"." <".$from.">";
            $semi_rand = md5(time()); 
            $mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 
            $headers .= "\nMIME-Version: 1.0\n" . "Content-Type: multipart/mixed;\n" . " boundary=\"{$mime_boundary}\""; 
            $message = "--{$mime_boundary}\n" . "Content-Type: text/html; charset=\"UTF-8\"\n" .
            "Content-Transfer-Encoding: 7bit\n\n" . $htmlContentuser . "\n\n"; 
            $message .= "--{$mime_boundary}--";
            $returnpath = "-f" . $from;
            $usersend =  mail($toEmail, $emailSubject, $message, $headers, $returnpath);
            if($usersend)
            { 
                //Session::flash('messagess',$mail_sent_ok);
                $data = "Message send successfully";
                return $data;
            }
    }

}
