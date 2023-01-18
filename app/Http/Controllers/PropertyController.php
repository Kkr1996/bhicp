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
use App\Property;
use Illuminate\Routing\UrlGenerator;
use Illuminate\Support\Facades\DB;
use Log;

class PropertyController extends BaseController
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
    	$properties = Property::orderBy('id', 'DESC')->get();
        
    	$properties_cnt = Property::where('status', 'active')->count();
        

        
        return $this->response->setMetaTitle('Property')
            ->view('property.index')
            ->data(compact('user', 'properties','properties_cnt'))
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

        return $this->response->setMetaTitle(trans('app.new') . ' Property')
              ->view('property.create', true)
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

            $property = Property::create();
            
            $property->name = $request->name;
            $property->info = $request->info;
           // $property->category = $request->category;
            
            $arraytype1 = array();
            $arraytype = $request->input('type');
            if($arraytype)
            {
               $type = serialize($arraytype);
               $property->type = $type; 
            }
            else
            {
                $property->type = serialize($arraytype1); 
            }
            
            
            
            $arraytype2 = array();
            $category_h = $request->input('category');
            if($category_h)
            {
               $category = serialize($category_h);
               $property->category = $category; 
            }
            else
            {
                $property->category = serialize($arraytype2); 
            }    
            
            
            
            
            
            
            
            
            
            
            
            $property->price = $request->price;
            $property->square = $request->square;
            $property->size = $request->size;
            $property->condition = $request->condition;
            $property->construction = $request->construction;
            $property->zoning = $request->zoning;
            $property->dimension = $request->dimension;
            $property->google_map = $request->google_map;
            $property->lookup_mls = $request->lookup_mls;

            $property->meta_title = $request->meta_title;
            $property->meta_keyword = $request->meta_keyword;
            $property->meta_description = $request->meta_description;
            //Add fields

            $property->pin = $request->pin;
            $property->construction_date = $request->construction_date;
            $property->construction_type = $request->construction_type;
            $property->ceiling_height	 = $request->ceiling_height;
            $property->lighting	 = $request->lighting;
            $property->truck_loading	 = $request->truck_loading;
            $property->rest_rooms	 = $request->rest_rooms;
            $property->former_use	 = $request->former_use;
            $property->water	 = $request->water;
            $property->sewer	 = $request->sewer;
            $property->gas	 = $request->gas;
            $property->power	 = $request->power;
            $property->parking	 = $request->parking;
            $property->city	 = $request->city;
            $property->state	 = $request->state;
            $property->zip	 = $request->zip;    
            $property->former_use	 = $request->former_use;    
            $property->min_price	 = $request->min_price; 
            $property->max_price	 = $request->max_price;
            $property->price_per_sf	 = $request->price_per_sf;  
            $property->status	 = $request->status;  
            $image = $request->image;
            $slugs                       = str_slug($request->name);
            $property_db = DB::table('properties')->where('slug',$slugs)->get();
            
            $arr = [];
            if($property_db){
                foreach($property_db as $pvalue)
                {
                      $arr[] = $pvalue->slug;   
                }
            }
            if(count($arr) >= 1)
            {
                $newslug = str_slug($request->name).'-1';
                $property->slug = $newslug;
            }
            else
            {
               $property->slug	= str_slug($request->name); 
            }

            if (!empty($image)) {
                $folder                     = '/uploads/images/property/';
                $image                      = $request->file('image');
                $file_slug_name             = $image->getClientOriginalName();
                $file_slug_name_without_ext = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_slug_name);
                $file_slug_name_without_ext = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $file_slug_name_without_ext)));
                $name                       = $file_slug_name_without_ext.''.time().'.'.$image->getClientOriginalExtension();
                $destinationPath            = public_path('/storage/uploads/images/property/');
                $image->move($destinationPath, $name);
                $property->image =  $name; 
            }
            
            $upload_flyer = $request->upload_flyer;
            if (!empty($upload_flyer)) {
                
                $folder                     = '/uploads/images/property/';
                $image                      = $request->file('upload_flyer');
                $file_slug_name             = $image->getClientOriginalName();
                $file_slug_name_without_ext = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_slug_name);
                $file_slug_name_without_ext = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $file_slug_name_without_ext)));
                $name                       = $file_slug_name_without_ext.''.time().'.'.$image->getClientOriginalExtension();
                $destinationPath            = public_path('/storage/uploads/images/property/');
                
                $image->move($destinationPath, $name);
                $property->upload_flyer =  $name; 
            }
            
            $ourgallerypath=array();
            if($files=$request->file('ourgallery')){
                foreach($files as $key=>$file){
                       $folder = 'public/storage/images/gallery/';
                    
                        $name   = time().rand(0,1000).$file->getClientOriginalName();
                        $destinationPathGallery = public_path('storage/images/gallery/');
                        $ourgallerypath[$key]  = $folder . $name;
                        $file->move($destinationPathGallery,$name);
                    }
                    $property->gallery  = serialize($ourgallerypath);
                  //  echo '<pre>',var_dump($ourgallerypath); echo '</pre>';
            }
            else
            {
                 $property->gallery = serialize($ourgallerypath);
            }
            

            $property->save();

            return $this->response->message(trans('messages.success.created', ['Module' => trans('user::property.name')]))
                ->code(204)
                ->status('success')
                ->url(guard_url('property'))
                ->redirect();
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('property'))
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
        $property = Property::find($id);

        return $this->response->setMetaTitle(trans('app.edit') . ' ' . trans('user::property.name'))
            ->view('property.edit')
            ->data(compact('property'))
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
            
            $property = Property::find($request->id);
            $property->name = $request->name;
            $property->info = $request->info;
            $property->category = $request->category;
            //$property->type = $request->input('type');
            
            $arraytype1 = array();
            $arraytype = $request->input('type');
            if($arraytype)
            {
               $type = serialize($arraytype);
               $property->type = $type; 
            }
            else
            {
                $property->type = serialize($arraytype1); 
            }
            
            
          
            
            $arraytype2 = array();
            $category_h = $request->input('category');
            if($category_h)
            {
               $category = serialize($category_h);
               $property->category = $category; 
            }
            else
            {
                $property->category = serialize($arraytype2); 
            }    
            
            
            
//            
//            $type = serialize($request->input('type'));
//            $property->type = $type;

            $property->price = $request->price;
            $property->square = $request->square;
            $property->size = $request->size;
            $property->condition = $request->condition;
            $property->construction = $request->construction;
            $property->zoning = $request->zoning;
            $property->dimension = $request->dimension;
            $property->google_map = $request->google_map;
            $property->google_gis = $request->google_gis;
            $property->meta_title = $request->meta_title;
            $property->meta_keyword = $request->meta_keyword;
            $property->meta_description  = $request->meta_description;
            $property->pin               = $request->pin;
            $property->construction_date = $request->construction_date;
            $property->construction_type = $request->construction_type;
            $property->ceiling_height	 = $request->ceiling_height;
            $property->lighting	         = $request->lighting;
            $property->truck_loading	 = $request->truck_loading;
            $property->rest_rooms	     = $request->rest_rooms;
            $property->former_use	     = $request->former_use;
            $property->water	         = $request->water;
            $property->sewer	         = $request->sewer;
            $property->gas	             = $request->gas;
            $property->power	         = $request->power;
            $property->parking	         = $request->parking;
            $property->city	             = $request->city;
            $property->state	         = $request->state;
            $property->zip	             = $request->zip; 
            $property->former_use	     = $request->former_use;    
            $property->min_price	     = $request->min_price;  
            $property->max_price	     = $request->max_price;  
            $property->price_per_sf	     = $request->price_per_sf;        
            $property->status	         = $request->status;  

            $image = $request->image;
           // $upload_flyer = $request->upload_flyer;
            
            

            if (!empty($image)) {
                $folder                     = '/uploads/images/property/';
                $image                      = $request->file('image');
                $file_slug_name             = $image->getClientOriginalName();
                $file_slug_name_without_ext = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_slug_name);
                $file_slug_name_without_ext = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $file_slug_name_without_ext)));
                $name                       = $file_slug_name_without_ext.''.time().'.'.$image->getClientOriginalExtension();
                $destinationPath            = public_path('/storage/uploads/images/property/');
                
                $image->move($destinationPath, $name);
                $property->image =  $name; 
            } 
            
            $upload_flyer = $request->upload_flyer;
            if (!empty($upload_flyer)) {
                
                $folder                     = '/uploads/images/property/';
                $image                      = $request->file('upload_flyer');
                $file_slug_name             = $image->getClientOriginalName();
                $file_slug_name_without_ext = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file_slug_name);
                $file_slug_name_without_ext = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $file_slug_name_without_ext)));
                $name                       = $file_slug_name_without_ext.''.time().'.'.$image->getClientOriginalExtension();
                $destinationPath            = public_path('/storage/uploads/images/property/');
                
                $image->move($destinationPath, $name);
                $property->upload_flyer =  $name; 
            }
            
            
            
            
            
            $currentlocation =  DB::table('properties')
            ->where('id',  $request->id)
            ->first();

         
            
            $oldfile = array();
            if($currentlocation->gallery)
            {
                foreach(unserialize($currentlocation->gallery) as $keyc=>$pathval) 
                {
                    $oldfile[$keyc] = $pathval;
                }
            }
            //echo '<pre>',var_dump($oldfile); echo '</pre>';
            $ourgallerypath=array();
            if($files=$request->file('ourgallery')){
                foreach($files as $key=>$file){
                    $folder = 'public/storage/images/gallery/';
                    $name   = time().rand(0,1000).$file->getClientOriginalName();
                    $destinationPathGallery = public_path('storage/images/gallery/');
                    $ourgallerypath[$key]  = $folder . $name;
                    $file->move($destinationPathGallery,$name);
                    }

                    if(count($oldfile) > 0 )
                    {
                        $ourgallerypathjoin     =  array_merge($ourgallerypath,$oldfile);
                        $property->gallery      =  serialize($ourgallerypathjoin);

                    }
                    else
                    {
                        $property->gallery    = serialize($ourgallerypath);
                    }
            }
            else
            {
                 $property->gallery = serialize($oldfile);
            }
            
            $property->save();

//            return $this->response->message(trans('messages.success.deleted', ['Module' => trans('user::property.name')]))
//                ->code(204)
//                ->status('success')
//                ->url(guard_url('property'))
//                ->redirect();
            
            
             return redirect()->back();
            
        } catch (Exception $e) {
            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('property/'))
                ->redirect();
        }

    }

    /**
     * Remove the property.
     *
     * @param Model   $property
     *
     * @return Response
     */
    public function destroy()
    {
        try {
            $id = $_POST['rowid'];
            $property = Property::find($id);
            $name = $property->name;
            $property->delete();
            return $this->response->message(trans('messages.success.deleted', ['Module' => $name]))
                ->code(202)
                ->status('success')
                ->url(guard_url('property/'))
                ->redirect();

        } catch (Exception $e) {

            return $this->response->message($e->getMessage())
                ->code(400)
                ->status('error')
                ->url(guard_url('property'))
                ->redirect();
        }

    }
    
    
    public function deleteimage() 
    {


        $imageindex =  $_POST['imageid'];
        $id =  $_POST['locationid'];
 

        $currentlocation =  DB::table('properties')
        ->where('id',  $id)
        ->first();
        $ourgallerypathnew = array();
        $ourgallerypath = array();
        if($currentlocation->gallery)
        {
            foreach(unserialize($currentlocation->gallery) as $keyc=>$pathval) 
            {
                if($keyc != $imageindex)
                {
                   $ourgallerypath[] = $pathval;
                }

            }
        }
        
        $values = array(
        'gallery'=>serialize($ourgallerypath)
        ); 
        DB::table('properties')
        ->where('id',$id)
        ->update($values);
   
    
    }
    
    public function remove_featured_image() 
    {
    
        $imageindex =  $_POST['imageid'];
        $currentservices =  DB::table('properties')
        ->where('id',  $imageindex)
        ->first();
        $values = array(
            'image'=>""
        ); 

        DB::table('properties')
        ->where('id',$imageindex)
        ->update($values);
            
    }
    
    
    

}
