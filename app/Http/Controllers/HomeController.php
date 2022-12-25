<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Kopokopo;

use Storage;

use Illuminate\Support\Facades\DB;

use App\Product;

use App\Subscriber;

use App\Services;

use App\Testimonial;

use App\Portfolio;

use App\Slider;

use App\Service_Rendered;

use App\Daily;

use App\Blog;

use App\Admin;

use App\Term;

use App\Privacy;

use App\Message;

use App\Notifications;

use App\ServiceRequest;

use App\Quote;

use App\ReplyMessage;

class HomeController extends Controller
{

    public function home(){
        $page_title = 'We will be Back Soon';
        return view('front.commingsoon',compact('page_title','cannonical'));
    }
    public function index()
    {
        $Daily = DB::table('daily')->OrderBy('id','desc')->paginate(1);
        $Slider = Slider::all();
        $Blog = DB::table('blog')->paginate(3);
        $Portfolio = DB::table('portfolio')->limit('15')->InRandomOrder()->get();
        $Services = Services::all();
        $Testimonial = Testimonial::all();
        $SiteSettings = DB::table('sitesettings')->get();
        $Service_RenderedOne = DB::table('service_delivered')->where('cat','1')->get();
        $Service_RenderedOneCount = count($Service_RenderedOne);
        $Service_RenderedTwo = DB::table('service_delivered')->where('cat','2')->get();
        $Service_RenderedTwoCount = count($Service_RenderedTwo);
        $Service_RenderedThree = DB::table('service_delivered')->where('cat','3')->get();
        $Service_RenderedThreeCount = count($Service_RenderedThree);
        $Service_RenderedFour = DB::table('service_delivered')->where('cat','4')->get();
        $Service_RenderedFourCount = count($Service_RenderedFour);
        $Service_RenderedFive = DB::table('service_delivered')->where('cat','5')->get();
        $Service_RenderedFiveCount = count($Service_RenderedFive);
        $Service_RenderedSix = DB::table('service_delivered')->where('cat','6')->get();
        $Service_RenderedSixCount = count($Service_RenderedSix);
        $page_title = 'Custom Web and Graphic Designers in Kenya';
        return view('front.index',compact('Blog','Daily','SiteSettings','page_title','Testimonial','Slider','Services','Portfolio','Service_RenderedOne','Service_RenderedTwo','Service_RenderedThree','Service_RenderedFour','Service_RenderedFive','Service_RenderedSix','Service_RenderedOneCount','Service_RenderedTwoCount','Service_RenderedThreeCount','Service_RenderedFourCount','Service_RenderedFiveCount','Service_RenderedSixCount'));
    }



    public function portfolio()
    {
        $Portfolio = Portfolio::all();
        $page_title = 'Our Portfolio';
        $cannonical = "our-portfolio";
        return view('front.portfolio',compact('Portfolio','page_title','cannonical'));
    }

    public function contact()
    {
        $page_title = 'Contact Us';
        $cannonical = "contact-us";
        $SiteSettings = DB::table('sitesettings')->get();
        return view('front.contact',compact('page_title','cannonical','SiteSettings'));
    }

    public function about()
    {
        $Admin = Admin::all();
        $About = DB::table('about')->get();
        $SiteSettings = DB::table('sitesettings')->get();
        $Services = Services::all();
        $page_title = 'About Us';
        $cannonical = "about-us";
        return view('front.about',compact('page_title','cannonical','Services','SiteSettings','About','Admin'));
    }

    public function knowledge_base()
    {
        $Admin = Admin::all();
        $Blog = DB::table('blog')->get();
        $SiteSettings = DB::table('sitesettings')->get();
        $Services = Services::all();
        $page_title = 'Knowledge Base';
        $cannonical = "support/knowledge-base";
        return view('front.guides',compact('page_title','cannonical','Services','SiteSettings','Blog','Admin'));
    }

    public function knowledge_base_single($slung)
    {
        $Admin = Admin::all();
        $Knowledge = DB::table('blog')->where('slung',$slung)->get();
        foreach ($Knowledge as $key => $value) {
            $SiteSettings = DB::table('sitesettings')->get();
            $Services = Services::all();
            $page_title = $value->title;
            $cannonical = "support/knowledge-base/$slung";
            return view('front.knowledge',compact('page_title','cannonical','Services','SiteSettings','Knowledge','Admin'));
        }

    }



    public function terms()
    {
        $Term = Term::all();
        $page_title = 'Terms Of Service';
        $cannonical = "terms-and-conditions";
        return view('front.terms',compact('page_title','cannonical','Term'));
    }

    public function privacy()
    {
        $Privacy = Privacy::all();
        $page_title = 'Privacy Policy';
        $cannonical = "privacy-policy";
        return view('front.privacy',compact('page_title','cannonical','Privacy'));
    }

    public function cancelation()
    {
        $Privacy = Privacy::all();
        $page_title = 'cancellation Policy';
        $cannonical = "Cancellation-policy";
        return view('front.cancelation',compact('page_title','cannonical','Privacy'));
    }

    public function copyright()
    {
        $Copyright = DB::table('copyright')->get();
        $page_title = 'Copyright Statement';
        $cannonical = "copyright";
        return view('front.copyright',compact('page_title','cannonical','Copyright'));
    }

    public function services()
    {
        $Services = Services::all();
        $page_title = 'Our Services';
        $cannonical = "our-portfolio";
        $cannonical = "our-services";
        return view('front.services',compact('Services','page_title','cannonical'));
    }

    public function service($id)
    {
        $TheServices = DB::table('services')->where('slung',$id)->get();
        foreach($TheServices as $services){
            $Services = Services::find($services->id);
            $page_title = $Services->title;
            $Pricing = DB::table('pricing')->where('service',$page_title)->get();
            $cannonical = "service/$id";
            return view('front.service',compact('Services','Pricing','page_title','cannonical'));
        }
    }



    public function subscribe(Request $request){
        $FindMail = DB::table('subscribers')->where('email',$request->email)->get();
        $Countmails = count($FindMail);
        if($Countmails == 0){
            $email = $request->email;
            $Subscriber = new Subscriber;
            $Subscriber->email = $email;
            $Subscriber->save();
            return "You have successfully subscribed to our news letters";
        }else{
            return "You are already in our subscribers list thank you for staying with us";
        }



    }
    public function request_quote(){
        $page_title = 'Request Quote';
        $SiteSettings = DB::table('sitesettings')->get();
        return view('front.request_quote',compact('page_title','cannonical','SiteSettings'));
    }
    public function servicerequest($id){
        $page_title = 'Order Service';
        $Pricings = DB::table('pricing')->where('id',$id)->get();
        return view('front.servicerequest',compact('page_title','cannonical','Pricings'));
    }

    public function service_request(Request $request){
        $name = $request->name;
        $email = $request->email;
        $id = $request->id;
        $service = $request->service;
        $price = $request->price;
        $content = $request->content;
        $budget = $request->budget;

        $ServiceRequest = new ServiceRequest;
        $ServiceRequest->name = $name;
        $ServiceRequest->email = $email;
        $ServiceRequest->serviceID = $id;
        $ServiceRequest->service = $service;
        $ServiceRequest->content = $content;
        $ServiceRequest->price  = $price;
        $ServiceRequest->budget = $budget;
        $ServiceRequest->save();
        ReplyMessage::mailrequest($name,$email,$service,$price,$content,$budget);
        return "Your Request Has Been Received,If we dont respond within an hour kindly contact us through our contact form,call us or use the live chat";
    }

    public function checkEmail(Request $request){
        $email = $request->input('email');
        $isExists = \App\User::where('email',$email)->first();
        //Create The Logics To return AJAX
        if(empty($isExists)) {
            return "";
        }else{
            return "The Email Is already in use by another User";
        }
    }

    public function quote_request(Request $request){
        $name = $request->name;
        $email = $request->email;
        $service = $request->service;
        $content = $request->content;
        $Quote = new Quote;
        $Quote->name = $name;
        $Quote->email = $email;
        $Quote->service = $service;
        $Quote->content = $request->content;
        $Quote->save();
        $price = 'Quote Request';
        $budget = 'Quote Request';
        ReplyMessage::mailrequest($name,$email,$service,$price,$content,$budget);
        return "Your Request Has Been Received";

    }

    public function searchsite(Request $request){
        $SubCategory = DB::table('sub_category')->where('cat_id','2')->get();
        $Product = DB::table('product')->where('cat','2')
        ->where('name','like', '%'.$request->search.'%')->paginate(18);
        $page_title = $request->search;
        return view('front.shop',compact('page_title','cannonical','Product','SubCategory'));
    }

    public function commingsoon(){
        $page_title = 'We will be Back Shortly';
        return view('front.commingsoon',compact('page_title','cannonical'));
    }
    public function submitMessage(Request $request){
        $email = $request->email;
        $name = $request->name;
        $phone = $request->phone;
        $message = $request->message;
        $subject = "Contact Form Query";

        $company= $request->company;
        $budget= $request->budget;
        $manager = $request->manager;

        $Message = new Message;
        $Message->name = $name;
        $Message->email = $email;
        $Message->subject = $subject;
        $Message->content = $message;
        $Message->phone = $phone;

        $Message->company = $company;
        $Message->budget = $budget;
        $Message->manager = $manager;

        $Message->save();
        $Notifications = new Notifications;
        $Notifications->type = 'Message';
        $Notifications->content = 'You have a new Message';
        $Notifications->save();
        // Email
        ReplyMessage::mailrequest($name,$email,$subject,$phone,$message,$budget,$company, $manager);
        return "Your Message Has been Sent, We will Get back To You Shortly";
    }

  public function jambo_logistics_form(){
        $page_title = 'Page Title';
        $cannonical = "";
        return view('form',compact('page_title','cannonical'));
    }


      public function jambo_logistics(Request $request){
        $width = $request->width;
        $height = $request->height;
        $length = $request->length;
        $factor = 1402.9167;
        $date = now();

        if($width == 0 or $height == 0 or $length == 0)
        {
            $message = 'Invlid Dimesions';
            return $message;
        }else{
            if($length <= 65 && $width <= 35 && $height <= 37){
               $message = '60.00';
                // Start Write
                $content = "Date: ".$date." Width: ".$width." Length: ".$length." Height: ".$height." Result: ".$message." ";
                Storage::append('Jambo.txt', $content);
                // Finish Write
               return $message;
            }else{
                //Use The Factor
                $results = ($length * $width * $height)/$factor;
                // Fixing Less than 60 value
                if($results < 60){
                    $results = '60.00';
                }
                // Comment out if Approved
                // Start Write
                $content = "Date: ".$date." Width: ".$width." Length: ".$length." Height: ".$height." Result: ".$results." ";
                Storage::append('Jambo.txt', $content);
                // Finish Write
                return $results;

            }
        }
    }

    public function registerWebhook(){
        $register_response=Kopokopo::registerWebhooks();
    }

    public function initiateMpesaPayment(){
        $payment_response=Kopokopo::initiateMpesaPayment(50, '+254723014032', 'Albert', 'Muhatia', 'albertmuhatia@gmail.com', 'KES');
    }

}
