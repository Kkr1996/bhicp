<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Response\PublicResponse;
use Litepie\Theme\ThemeAndViews;
use Litepie\User\Traits\RoutesAndGuards;
use App\Service;
use App\FrontSection;
use App\TeamMember;
use App\Submission;
use App\MySetting;
use App\EmailInfo;
use App\Property;
use Litecms\Contact\Models\Contact;
use Session;
use Illuminate\Support\Facades\DB;
use Log;
use PDF;

class PublicController extends Controller
{
    use ThemeAndViews, RoutesAndGuards;

    /**
     * Initialize public controller.
     *
     * @return null
     */
    public function __construct()
    {
        $contact = Contact::first();
        Session::put('phone123', $contact->phone);
        $this->response = app(PublicResponse::class);
        $this->setTheme('public');
    }

    /**
     * show homepage
     *
     * @return \Illuminate\Http\Response
     */
    public function home()
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('home');
        $sections = $page->sections;

        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('home')
            ->data(compact('page', 'sections'))
            ->output();
    }
//    public function download()
//    {
//
//         $p =array("title"=>"krishna", "Ben"=>"37", "Joe"=>"43");
//         view()->share('p', $p);
//         
//  
//         $pdf_doc = PDF::loadView('print_listing_pdf');
//         
//
//         return $pdf_doc->download('pdf.pdf');
//    }
    
    
    
    public function download($slug)
    {
        
         $property = DB::table('properties')->where('slug', $slug)->first();
         view()->share('property', $property);
         $pdf_doc = PDF::loadView('print_listing_pdf');
         return $pdf_doc->stream( $slug.'.pdf',array("Attachment" => true));
    }
    public function print($slug)
    {
        
           $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('about');
           $property = DB::table('properties')->where('slug', $slug)->first();
           return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('print_listing_pdf')
            ->data(compact('page','property'))
            ->output();
    }
    /**
     * Show team member for each user.
     *
     * @return \Illuminate\Http\Response
     */
    public function team_member($slug)
    {

        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('about');
        $teams = DB::table('members')->where('slug',$slug)->get();
        foreach ($teams as $key => $team) {
             return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('team_member')
            ->data(compact('page','team'))
            ->output();

             
        }
    }


    /**
     * Meet team member for each user.
     *
     * @return \Illuminate\Http\Response
     */
    public function about()
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('about');
        $sections = $page->sections;
        $team_members = TeamMember::all();

        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('about')
            ->data(compact('page', 'sections', 'team_members'))
            ->output();
    }
    
    /**
     * Contact Page
     *
     * @return \Illuminate\Http\Response
     */
    public function contact()
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('contact');
        $sections = $page->sections;
        $team_members = TeamMember::all();
        $contact = Contact::first();
        $contact_form = DB::table('quick_forms')->where('slug',"contact-us")->get();
        
        
        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('contact')
            ->data(compact('page', 'sections', 'team_members', 'contact','contact_form'))
            ->output();
    }
    public function enquiry($slug)
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('contact');
        $sections = $page->sections;
        $team_members = TeamMember::all();
        $contact = Contact::first();
        $property = DB::table('properties')->where('slug', $slug)->first();
        $enquiry_form = DB::table('quick_forms')->where('slug',"enquiry-form")->get();
        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('enquiry')
            ->data(compact('page', 'sections', 'team_members', 'contact','enquiry_form','property'))
            ->output();
        
        
    }
    /**
     * show service.
     *
     * @return \Illuminate\Http\Response
     */
    public function services()
    {
        $page     = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('services');

        $services = Service::all();
        $sections = $page->sections;

        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('services')
            ->data(compact('page','services', 'sections'))
            ->output();
    }
    /**
     * Properties
     *
     * @return \Illuminate\Http\Response
     */
    public function properties()
    {

        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('properties');
        $properties = Property::all();

        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('properties')
            ->data(compact('page', 'properties'))
            ->output();
    }
    public function properties_filter()
    {

        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('properties');
        $properties = Property::all();

        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('property_filter')
            ->data(compact('page', 'properties'))
            ->output();
    }
    public function properties1()
    {
        $page     = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('properties');
        $sections = $page->sections;
      
        $properties = Property::all();
        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('properties1')
            ->data(compact('page', 'sections','properties'))
            ->output();
    }







    public function propertiesname(Request $request)
    {
        
        $property_name = $request->property_name;
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('properties');
        $properties =  Property::query();
        $properties = $properties->where('name', 'like', '%'.$request->property_name.'%');
        $properties = $properties->get();
        return $this->response
            ->setMetaKeyword(strip_tags($page->meta_keyword))
            ->setMetaDescription(strip_tags($page->meta_description))
            ->setMetaTitle(strip_tags($page->meta_title))
            ->layout('home')
            ->view('properties')
            ->data(compact('page', 'properties'))
            ->output();
    }
    /**
     * Properties
     *
     * @return \Illuminate\Http\Response
     */
    public function single_property($slug)
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('properties');
        $property = DB::table('properties')->where('slug', $slug)->first();

       /** if($property->status == "inactive")
        {
            return redirect('404');
        }**/
        
        $emailinfo = EmailInfo::find(1);
        return $this->response
            ->setMetaKeyword(strip_tags($property->meta_keyword))
            ->setMetaDescription(strip_tags($property->meta_description))
            ->setMetaTitle(strip_tags($property->meta_title))
            ->layout('home')
            ->view('property')
            ->data(compact('page', 'property','emailinfo'))
            ->output();
    }

    /**
     * Filter properties
     * @param creteria
     * @return Response
     */

    public function getProperties(Request $request)
    {
        $query = Property::query();

        if ($request->category_lease) {
            $query = $query->where('category', 'lease');
        }
        if($request->category_sale)
        {
            $query = $query->where('category', 'sale');
        }
        if($request->category_land_sale)
        {
            $query = $query->where('category', 'land_sale');
        }
        if($request->type_office)
        {
            $query = $query->where('type', 'office');
        }
        if($request->type_industrial)
        {
            $query = $query->where('type', 'industrial');
        }
        if($request->type_retail)
        {
            $query = $query->where('type', 'retail');
        }
        if( $request->property_name != '' )
        {
            $query = $query->where('name', 'like', '%'.$request->property_name.'%');
        }

        if ($request->price) {
            $query = $query->where('price', '<=', ($request->price)[1])->where('price', '>', ($request->price)[0]);
        }

        if ($request->square_feet) {
            $query = $query->where('square', '<=', ($request->square_feet)[1])->where('square', '>', ($request->square_feet)[0]);
        }



        $properties = $query->get();
        return $properties;
    }
    
    
    /**
     * show individual service.
     *
     * @return \Illuminate\Http\Response
     */
    public function service_show($slug)
    {
        $page = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('services');

        $service = Service::where('slug', $slug)->first();

        return $this->response
            ->setMetaKeyword(strip_tags($service->meta_keyword))
            ->setMetaDescription(strip_tags($service->meta_description))
            ->setMetaTitle(strip_tags($service->meta_title))
            ->layout('home')
            ->view('service_brief')
            ->data(compact('page','service'))
            ->output();
    }
    
    /**
     * submit submission
    */
    public function submitSubmission(Request $request)
    {
           
        
        
        $contact_form = DB::table('quick_forms')->where('slug',"contact-us")->get();
    
        if(count($contact_form) > 0)
        {
            $subject                =  $contact_form[0]->subject;
            $from                   =  $contact_form[0]->sender;
            $fromName               =  $contact_form[0]->subject;
            $emailSubject           =  $contact_form[0]->subject;
            $email                  =  $contact_form[0]->recipient;
            $mail_sent_ok           =  $contact_form[0]->mail_sent_ok;
            $adminemail             =  $contact_form[0]->recipient;
            $replaymsg              =  $contact_form[0]->message_body;
//            
//            $subject = "BHICP";
      
            $img                  =  url('public/themes/public/assets/img/logo/logo.png');
            $name                 =  $request->fullname;
            $useremail            =  $request->email;
            $usermessage          =  $request->message;
            $phone                =  $request->phone;
            
   
            if( strlen($phone) <= 15)
            {
                Session::flash('messagess',$mail_sent_ok);
                return redirect()->back()->with('message', 'IT WORKS!');     
            }
         

             $submission          = Submission::create();
             $submission->name    = $request->fullname;
             $submission->email   = $request->email;
             $submission->message = $request->message;
             $submission->phone = $request->phone;
             $submission->slug = "contact";
             $submission->status = "active";
             $submission->save();

      //admin  
       $message = "<html>
        <head>
        <title>Please Follow the Instruction</title>
          <style type='text/css'>
          .content-fixed
          {
          width:600px;         
          }
          .wrap-image
          {
          text-align:center;
          background-color:#fff;
          padding:15px;
          }
          img
          {
          max-width:150px;
          max-height:150px;
          }
          .content{           
            padding:10px;
          }
          </style>
        </head>
        <body>
        <div class='content-fixed'>
             <div class='wrap-image'>
                <img src='$img'>
             </div>
             <div class='content'>
                <p>Username:  <strong>$name</strong></p>
                <p>Email:     <strong>$useremail</strong></p>
                <p>Phone:     <strong>$phone</strong></p>  
                <p>Message:   <strong>$usermessage</strong></p>  
            </div>
        </div>
        </body>
        </html>";
        
          
            
         // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: '.$emailSubject.' <'.$from.'>' . "\r\n";
        $headers .= 'Cc:website@bhicp.com' . "\r\n";
        $send = mail($adminemail,$emailSubject,$message,$headers);  
        //User Get Booking Msg
        
       
        unset($message);
 
        $message = '<html>
        <head>
        <title>Please Follow the Instruction</title>
          <style type="text/css">';
            
        $message.= $contact_form[0]->template_css;  
            
        $message.='</style></head>';
            
        $message.= $contact_form[0]->header_content;  
        $message.= $name;
        $message.= $contact_form[0]->thanku_template;

        
        $message.= '</html>';
            

  
                // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: '.$emailSubject.' <'.$from.'>' . "\r\n";
        $headers .= 'Cc:website@bhicp.com' . "\r\n";
        $usersend = mail($useremail,$emailSubject,$message,$headers);  
            if($usersend)
            { 
                Session::flash('messagess',$mail_sent_ok);
                return redirect()->back()->with('message', 'IT WORKS!');   
            } 
        }
            
        
    }

// enquiry submission


   public function enquirySubmission(Request $request)
    {
        
        
        $contact_form = DB::table('quick_forms')->where('slug',"enquiry-form")->get();
    
        if(count($contact_form) > 0)
        {
            $subject                =  $contact_form[0]->subject;
            $from                   =  $contact_form[0]->sender;
            $fromName               =  $contact_form[0]->subject;
            $emailSubject           =  $contact_form[0]->subject;
            $email                  =  $contact_form[0]->recipient;
            $mail_sent_ok           =  $contact_form[0]->mail_sent_ok;
            $adminemail             =  $contact_form[0]->recipient;
            $replaymsg              =  $contact_form[0]->message_body;
//            
//            $subject = "BHICP";
      
            $img             =  url('public/themes/public/assets/img/logo/logo.png');
            $name            =  $request->fullname;
            $useremail       =  $request->email;
            $usermessage     =  $request->message;
            $phone           =  $request->phone;
            $budgetrange     =  $request->budgetrange;
            $propertysource  =  $request->propertysource;
            $propertycategory  =  $request->category;
            $propertyproperty_name  =  $request->property_name;
            
             $submission          = Submission::create();
             $submission->name    = $request->fullname;
             $submission->email   = $request->email;
             $submission->message = $request->message;
             $submission->phone   = $request->phone;
             $submission->budgetrange = $request->budgetrange;
             $submission->propertysource = $request->propertysource;
            
             $submission->category = $request->category;
             $submission->property_name = $request->property_name;
             $submission->slug = "enquiry";
            
            
            
             $submission->status = "active";
             $submission->save();

      //admin  
       $message = "<html>
        <head>
        <title>Please Follow the Instruction</title>
          <style type='text/css'>
          .content-fixed
          {
          width:600px;         
          }
          .wrap-image
          {
          text-align:center;
          background-color:#fff;
          padding:15px;
          }
          img
          {
          max-width:150px;
          max-height:150px;
          }
          .content{           
            padding:10px;
          }
          </style>
        </head>
        <body>
        <div class='content-fixed'>
             <div class='wrap-image'>
                <img src='$img'>
             </div>
           
           
             <div class='content'>
                <p>Username:         <strong>$name</strong></p>
                <p>Email:            <strong>$useremail</strong></p>
                <p>Phone:            <strong>$phone</strong></p>  
                <p>Budget Range:     <strong>$budgetrange</strong></p> 
                <p>How'd you find this property?:     <strong>$propertysource</strong></p>
                <p>Message:   <strong>$usermessage</strong></p>  
                <p>Property Title:    <strong>$propertyproperty_name</strong></p>
                <p>Property Category: <strong>$propertycategory</strong></p>
                
                
            </div>
        </div>
        </body>
        </html>";
        
          
            
         // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: '.$emailSubject.' <'.$from.'>' . "\r\n";
        $headers .= 'Cc:website@bhicp.com' . "\r\n";
        $send = mail($adminemail,$emailSubject,$message,$headers);  
        //User Get Booking Msg
        
       
        unset($message);
 
        $message = '<html>
        <head>
        <title>Please Follow the Instruction</title>
          <style type="text/css">';
            
        $message.= $contact_form[0]->template_css;  
            
        $message.='</style></head>';
            
        $message.= $contact_form[0]->header_content;  
        $message.= $name;
        $message.= $contact_form[0]->thanku_template;

        
        $message.= '</html>';
            

  
                // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: '.$emailSubject.' <'.$from.'>' . "\r\n";
        $headers .= 'Cc:website@bhicp.com' . "\r\n";
        $usersend = mail($useremail,$emailSubject,$message,$headers);  
            if($usersend)
            { 
                Session::flash('messagess',$mail_sent_ok);
                return redirect()->back()->with('message', 'IT WORKS!');   
            } 
        }
            
        
    }


// enquiry sub end

public function advancedfilter()
{
    error_reporting(0);
    $data = json_decode(stripslashes($_POST['data']),true);
    foreach($data as $key=>$newvalue)
    {
        if($newvalue['value'] != ''){
            $request[$newvalue['name']] = $newvalue['value'];
        }
    }
    
    
    
  //  echo '<pre>',var_dump($request); echo '</pre>';
     $query = Property::query();
     $query = $query->where('status','active');
    
        if ($request['lease']!= '' || $request['sale']!= '' || $request['land']!= '' || $request['other']!= '' ) {
            $query = $query->whereIn('category',[$request['lease'],$request['sale'],$request['land'],$request['other']]);  
        }
        if ($request['office']!= '' ) {
            $query = $query->where('type', 'like','%'.$request['office'].'%');  
        } 
    
    // || $request['industrial']!= '' || $request['retail']!= ''
        if ($request['retail']!= '' ) {
            $query = $query->where('type', 'like','%'.$request['retail'].'%');   
        } 
        if ($request['industrial']!= '' ) {
            
            $query = $query->where('type', 'like','%'.$request['industrial'].'%');  
            
        } 
        if ($request['residential']!= '' ) {
            $query = $query->where('type', 'like','%'.$request['residential'].'%');   
        } 
        if ($request['typeland']!= '' ) {
            $query = $query->where('type', 'like','%'.$request['typeland'].'%');   
        } 
    
    if( $request['property_name'] != '' )
    {
      $query = $query->where('name', 'like', '%'.$request['property_name'].'%');
    }
    
    if ($request['pricemin']) {
       if($request['pricemax'] > 10000)
       {
            $query = $query->where('min_price', '>', ($request['pricemin']));
       }
       else
       {
            $query = $query->where('min_price', '<=', ($request['pricemax']))->where('min_price', '>', ($request['pricemin']));
       }
    } 




    if ($request['squaremin']) {
      $query = $query->where('square', '<=', ($request['squaremax']))->where('square', '>', ($request['squaremin']));
    }

    if ($request['propsearch']) {
        $query =$query->where('name', 'like', '%'.$request['propsearch'].'%')->orwhere('city',$request['propsearch'])->orwhere('zip',$request['propsearch']);
    }


    $properties = $query->get();
    $html = '';
    $count = 0;
    foreach ($properties as $key => $value) {      
    if($value['image'])
    {
        $img = '<img src="'.url('public/storage/uploads/images/property').'/'.$value['image'].'">';  
    }
    else
    {
        $img = '<img src="'.url('public/storage/uploads/images/property').'/property-placeholder_large.jpg">';   
    }
    $sqft_li =  $value->square?$value->square : 0;
    $price_li = $value['min_price']?$value['min_price'] : 0;   
    $construction_date = $value['construction_date']?$value['construction_date'] :"N/A";   
    $dimension = $value['dimension']?$value['dimension'] :"N/A";   
    $city  = $value['city']?$value['city']   :"N/A";   
    $state = $value['state']?$value['state'] :"N/A";   
    
    $min_price = $value['min_price'];
    $max_price = $value['max_price'];
    $sqfts = number_format($value['square']);
    if($sqfts)
    {
       $sqft_s = $sqfts;
    }
    else
    {
        $sqft_s = "N/A";
    }
    if(!$min_price)
    {
        $price_empty = "N/A";
    }
        
    if($min_price)
    {
        $min_price = "&#36;".number_format($min_price);
    } 
        
    if($max_price)
    {
        $max_price = '-&#36;'.number_format($value['max_price']);
    }
        
    if(!$min_price)
    {
        $max_price = "N/A";
    } 
        
    $rangeprice  =  $min_price.$max_price;     
    $unserializetype = unserialize($value->type);
    $imploadetype =  implode(",",  $unserializetype);   
    $count++;
      $html .= ' <li class="pro-link" id="'.$price_li.'" title="'.$value->name.'" role="'.$sqft_li.'">
       <a href="'.url('/single-property').'/'.$value->slug.'">
        <div class="d-flex propery-deail">
          <div class="property-img-section">
           '.$img.'
          </div>
          <div class="property-info-section">
            <h3>'.$value['name'].'-'.$city.', '.$state.'</h3>
            <p class="price">'.$value['price_per_sf'].'</p>
            <div class="property-spec">
               <ul>
                    <li>Size(sf.)</li>
                    <li>Condition</li>
                    <li>Construction</li>
                    <li>Zoning</li>
                    <li>Price</li>
                    <li>Size & Dimensions</li>
                    <li>Type</li>
               </ul>
               <ul>
                    <li>'.$sqft_s.'</li>
                    <li>'.$value['condition'].'</li>
                    <li>'.$construction_date.'</li>
                    <li>'.$value['zoning'].'</li>
                    <li>'.$rangeprice.'</li>
                    <li>'.$dimension.'</li>
                    <li>'.$imploadetype.'</li>
               </ul>
            </div>
          </div>
        </div>
      </a>
      </li>';
    }
//    $html .= '<div>Total Result : '.$count.'</div>';
    if($count == 0)
    {
        $html .='<h2 id="current-matches">Nothing Matching that criteria.</h2>';
    }

    $data['html'] = $html;
    echo json_encode($data);  
   }
    
public function stagingadvancedfilter()
{
        error_reporting(0);
        $where = [];
        $data = json_decode(stripslashes($_POST['data']),true);
        foreach($data as $key=>$newvalue)
        {
            if($newvalue['value'] != ''){
                $request[$newvalue['name']] = $newvalue['value'];
            }
        }
    
        $av_status         = $request['available'];
        $not_av_status     = $request['notavailable'];
        $leased_status     = "";
        $sold_status       = "";
//        $ina_status        = $request['inactive'];
    
        //Mobile
        $av_status1             = $request['available1'];
        $not_av_status1         = $request['notavailable1'];
        $leased_status1         = "";
        $sold_status1           = "";
    
        $property_name      = $request['property_name'];
        //Properties
            $sale        = $request['sale'];
            $lands       = $request['land'];
            $lease       = $request['lease'];
            $others      = $request['other'];
        //Properties
       //Properties
            $office           = $request['office'];
            $retail           = $request['retail'];
            $industrial       = $request['industrial'];
            $residential      = $request['residential'];
            $typeland         = $request['typeland'];
        //Properties
    
        if ($av_status)  $where[]  =  ['status','=',$av_status];
        if ($av_status1)  $where[]  =  ['status','=',$av_status1];
    
    
        if($av_status1 != '' || $not_av_status1 != ''  )
        {
            if($not_av_status1 != '')
            {
                $leased_status1     = "leased";
                $sold_status1       = "sold";
            }
            $status_arr        = array_filter(array($av_status1,$leased_status1,$sold_status1));
            
        }
        else
        {
            if($not_av_status != '')
            {
                $leased_status     = "leased";
                $sold_status       = "sold";
            }
            
            $status_arr = array_filter(array($av_status,$leased_status,$sold_status));
        }
    
        $type_arr = array_filter(array($office,$retail,$industrial,$residential,$typeland));  
        if ($property_name) $where[]  =  ['name', 'like', '%'.$request['property_name'].'%'];

        $filter     = "false";
        $query      = Property::query();
    
        if($lease){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('category', 'like','%'.$lease.'%')->WhereIn('status',$status_arr);
            }
            else
            {
               $query = $query->orWhere('category', 'like','%'.$lease.'%');
            }
        }
        
        if($sale){
            $filter = "true";
            if($status_arr)
            {
                 $query = $query->orWhere('category', 'like','%'.$sale.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                 $query = $query->orWhere('category', 'like','%'.$sale.'%');
            }          
        }
    
        if($lands){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('category', 'like','%'.$lands.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                 $query = $query->orWhere('category', 'like','%'.$lands.'%');
            }  
            
        }
        if($others){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('category', 'like','%'.$others.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                 $query = $query->orWhere('category', 'like','%'.$others.'%');
            }   
        }

    
    
        if($office){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('type', 'like','%'.$office.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                $query = $query->orWhere('type', 'like','%'.$office.'%')->where('status','!=','inactive');
            }
        }
    
        if($industrial){
            
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('type', 'like','%'.$industrial.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                $query->orWhere('type', 'like','%'.$industrial.'%')->where('status','!=','inactive');
            }
        }
    
        if($retail){    
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('type', 'like','%'.$retail.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                $query->orWhere('type', 'like','%'.$retail.'%')->where('status','!=','inactive');;
            }  
        }

        if($residential){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('type', 'like','%'.$residential.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                $query->orWhere('type', 'like','%'.$residential.'%')->where('status','!=','inactive');;
            }  
        }
        if($typeland){
            $filter = "true";
            if($status_arr)
            {
                $query = $query->orWhere('type', 'like','%'.$typeland.'%')->WhereIn('status',$status_arr);
            }
            else
            {
                $query->orWhere('type', 'like','%'.$typeland.'%')->where('status','!=','inactive');;
            }
        }
    
        if($filter == "false")
        {
            if($status_arr)
             $query->WhereIn('status', $status_arr);
            
        }
    
        if( $property_name != '' ){
            $query = $query->where('name', 'like', '%'.$request['property_name'].'%');    
        }
    
        $properties  = $query->where('status','!=', 'inactive')->orderBy('status')->get();

    $html = '';
    $count = 0;
    foreach ($properties as $key => $value) { 
 
        
    if($value['image'])
    {
        $img = '<img src="'.url('public/storage/uploads/images/property').'/'.$value['image'].'">';  
    }
    else
    {
        $img = '<img src="'.url('public/storage/uploads/images/property').'/property-placeholder_large.jpg">';   
    }
    $sqft_li =  $value->square?$value->square : 0;
    $price_li = $value['min_price']?$value['min_price'] : 0;   
    $construction_date = $value['construction_date']?$value['construction_date'] :"N/A";   
    $dimension = $value['dimension']?$value['dimension'] :"N/A";   
    $city  = $value['city']?$value['city']   :"N/A";   
    $state = $value['state']?$value['state'] :"N/A";   

        
        
    $unserializecategory =  unserialize($value->category);
    $category    =  implode(",",  $unserializecategory);       
        
        
        
        
    $min_price = $value['min_price'];
    $max_price = $value['max_price'];
    $sqfts = number_format($value['square']);
    if($sqfts)
    {
       $sqft_s = $sqfts;
    }
    else
    {
        $sqft_s = "N/A";
    }
    if(!$min_price)
    {
        $price_empty = "N/A";
    }
        
    if($min_price)
    {
        $min_price = "&#36;".number_format($min_price, 2, '.', '');
    } 
        
    if($max_price)
    {
        $max_price = '-&#36;'.number_format($value['max_price'], 2, '.', '');
    }
        
    if(!$min_price)
    {
        $max_price = "N/A";
    } 
    $zoning            = $value['zoning']?$value['zoning']:"N/A";
    $property_size     = $value['size']?$value['size']:"N/A";
    $property_lighting = $value['lighting']?$value['lighting']:"N/A";
        //$property->construction_type
    $construction_type = $value['construction_type']?$value['construction_type']:"N/A";
        
        
    $property_ceiling_height =  $value['ceiling_height']?$value['ceiling_height']:"N/A";
    $property_truck_loading  =  $value['truck_loading']?$value['truck_loading']:"N/A";

    $property_power =  $value['power']?$value['power']:"N/A";
    $property_water = $value['water']?$value['water']:"N/A";

    $property_sewer = $value['sewer']?$value['sewer']:"N/A";
    $property_zip = $value['zip']?$value['zip']:"N/A";


    $rangeprice      =  $min_price.$max_price;     
    $unserializetype =  unserialize($value->type);
    $imploadetype    =  implode(",",  $unserializetype);   
    $count++;


      $html .='<li class="pro-link '.$value['status'].'" id="'.$price_li.'" title="'.$value->name.'" role="'.$sqft_li.'">
          <div class="row">
           <div class="col-sm-12 col-lg-12">
            
              <div class="row margin-top-bottom-listing">
             
                 <div class="col-lg-4 col-12">
                    <div class="listing-image-section">
                       <div class="list-image">
                          '.$img.'
                          <a href="javascript:void(0)" class="image-btn">'.$category.'</a>
                         <div class="overlay-inactive"></div> 
                          <div class="list-overlay">
                              <a href="'.url('/single-property').'/'.$value->slug.'"  class="list-image-view">View</a>
                          </div>

                           
                             <img src="public/themes/public/assets/img/sold_caps.png"   class="img-active sold">
                             <img src="public/themes/public/assets/img/leased_caps.png" class="img-active leased">
                             
                             
                       </div>
                    </div>
                 </div>
                 <div class="col-lg-5 col-12">
                    <div class="listing-content">
                         <h2>'.$value['name'].'</h2>
                         <h2>'.$city.' '.$state.', '.$property_zip.'  </h2>
                       <div class="property-details-feature">
                          <div class="property-details">
                             <h4>Property Details</h4>
                             <ul>
                                <li><span>Construction date</span> <span>'.$construction_date.'</span></li>
                                <li><span>Construction Type</span> <span>'.$construction_type.'</span></li>
                                <li><span>Condition</span> <span>'.$value['condition'].'</span></li>
                                <li><span>Price</span> <span>'.$rangeprice.'</span></li>
                                <li><span>Sq Feet</span> <span>'.$sqft_s.'</span></li>
                                <li><span>Zoning</span> <span>'.$zoning.'</span></li>
                                <li><span>Property Size </span> <span>'.$property_size.'</span></li>

                             </ul>
                          </div>
                          <div class="feature-details">
                             <h4>Feature</h4>
                             <ul>
                                <li><span>Lighting Type</span> <span>'.$property_lighting.'</span></li>
                                <li><span>Ceiling</span> <span>'.$property_ceiling_height.' </span>
                                </li><li><span>Loading Dock</span> <span>'.$property_truck_loading.'</span></li>
                                <li><span>1 Grd. Level</span> <span>Paved Lot</span></li>
                             </ul>
                             <h4>Utilites</h4>
                             <ul>
                                <li><span>Power</span> <span>'.$property_power.'</span></li>
                                <li><span>Water</span> <span>'.$property_water.'</span></li>
                                <li><span>Sewer</span> <span>'.$property_sewer.'</span></li>
                             </ul>
                          </div>
                          
                       </div>
                    </div>
                 </div>
                 <div class="col-lg-3 col-12">
                    <div class="price-div">
                       <div>
                             <h2>'.$value['price_per_sf'].'</h2>
                             <h3>'.$category.' price</h3>
                       </div>
                       <div>
                        <a href="'.url('/single-property').'/'.$value->slug.'">View</a>
                        <a href="'.url('/download').'/'.$value->slug.'" target="_blank">Print</a>
                       </div>
                    </div>
                 </div>
              </div>
          </div>
          </div>
        </li>';
     }
    if($count == 0)
    {
        $html .='<h2 id="current-matches">Nothing Matching that criteria.</h2>';
    }
    $data['html'] = $html;
    echo json_encode($data);  
   }
     
    public function print_listing()
    {
        return view('print_listing');
    }
    
    public function print_listing_table()
    {
            return view('print_listing_table');
    }
      
    public function notfound()
    {

            $page                             = app(\Litecms\Page\Interfaces\PageRepositoryInterface::class)->getPage('en404');
            $sections = $page->sections;
            return $this->response
                   ->setMetaKeyword(strip_tags($page->meta_keyword))
                   ->setMetaDescription(strip_tags($page->meta_description))
                   ->setMetaTitle(strip_tags($page->meta_title))
                   ->layout('home')
                   ->view('404')
                   ->data(compact('page','sections'))
                   ->output();

    }   
}
