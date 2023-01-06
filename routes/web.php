<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminsController;

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

//HomeRoutes
Route::get('/',[HomeController::class, 'index']);
Route::get('/home',[HomeController::class, 'home']);
Route::get('/our-products',[HomeController::class, 'shop']);
Route::get('/shop',[HomeController::class, 'shop']);
Route::get('/ready-made-website',[HomeController::class, 'website']);
Route::get('/shop/website',[HomeController::class, 'website']);
Route::get('/website/category/{cat}',[HomeController::class, 'website_cat']);
Route::get('/shop/website/cat/{cat}',[HomeController::class, 'website_cat']);

Route::get('/shop/website/{name}',[HomeController::class, 'website_details']);
Route::get('/shop/website/link/{name}',[HomeController::class, 'link']);
Route::get('/shop/cat/{cat}',[HomeController::class, 'shop_cat']);
Route::get('/shop/{name}',[HomeController::class, 'shop_details']);
Route::get('/our-portfolio',[HomeController::class, 'portfolio']);
Route::get('/portfolio',[HomeController::class, 'portfolio']);
Route::get('/contact-us',[HomeController::class, 'contact']);
Route::get('/contact',[HomeController::class, 'contact']);
//
Route::get('/web-design-and-web-development',[HomeController::class, 'service_web']);
Route::get('/domain-registration-and-web-hosting',[HomeController::class, 'service_domain']);
Route::get('/graphics-design-services',[HomeController::class, 'service_graphic']);

Route::get('/support/knowledge-base',[HomeController::class, 'knowledge_base']);
Route::get('/support/knowledge-base/{slung}',[HomeController::class, 'knowledge_base_single']);


//
Route::get('/services',[HomeController::class, 'services']);
Route::get('/our-services',[HomeController::class, 'services']);
Route::get('/service/{name}',[HomeController::class, 'service']);
Route::get('/about-us',[HomeController::class, 'about']);
Route::get('/about',[HomeController::class, 'about']);
Route::get('/terms-and-conditions',[HomeController::class, 'terms']);
Route::get('/privacy-policy',[HomeController::class, 'privacy']);
Route::get('/cancellation-policy',[HomeController::class, 'cancelation']);
Route::get('/copyright',[HomeController::class, 'copyright']);
Route::get('/commingsoon',[HomeController::class, 'commingsoon']);
Route::post('/submitMessage',[HomeController::class, 'submitMessage']);


Route::get('/jambo-logistics',[HomeController::class, 'jambo_logistics_form']);
Route::post('/jambo-form',[HomeController::class, 'jambo_logistics']);

Route::get('/servicerequest/{id}',[HomeController::class, 'servicerequest']);
Route::post('/service_request',[HomeController::class, 'service_request']);

Route::post('/quote_request',[HomeController::class, 'quote_request']);

//Check If Mail Exists
Route::post('/checkemail',[HomeController::class, 'checkEmail']);
//Subscribers
Route::post('/subscribe',[HomeController::class, 'subscribe']);
//Request Quote
Route::get('/request-quote',[HomeController::class, 'request_quote']);
//Search Site
Route::post('/searchsite',[HomeController::class, 'searchsite']);





Auth::routes();

Route::group(['prefix'=>'admin'], function(){


    Route::get('/login','Auth\AdminLoginController@showLoginForm')->name('admin.login');
    Route::post('/login','Auth\AdminLoginController@login')->name('admin.login.submit');
    Route::get('/', 'App\Http\Controllers\AdminsController@index')->name('admin.index');
    Route::get('/logout','Auth\AdminLoginController@logout')->name('admin.logout');

    //reset password
    Route::post('/password/email','Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset','Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset','Auth\AdminResetPasswordController@reset');
    Route::get('/password/reset/{token}','Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');

    //Testimonial
    Route::get('/addTestimonial', 'App\Http\Controllers\AdminsController@addTestimonial');
    Route::post('/add_Testimonial', 'App\Http\Controllers\AdminsController@add_Testimonial');
    Route::get('/testimonials','App\Http\Controllers\AdminsController@testimonials');
    Route::get('/editTestimonial/{id}', 'App\Http\Controllers\AdminsController@editTestimonial');
    Route::get('/deleteTestimonial/{id}', 'App\Http\Controllers\AdminsController@deleteTestimonial');
    Route::post('/edit_Testimonial/{id}', 'App\Http\Controllers\AdminsController@edit_Testimonial');

    //Terms Privacy copyright
    //copyright
    Route::get('/copyright','App\Http\Controllers\AdminsController@copyright');
    Route::post('/edit_copyright', 'App\Http\Controllers\AdminsController@edit_copyright');
    //Privacy
    Route::get('/privacy','App\Http\Controllers\AdminsController@privacy');
    Route::get('/addPrivacy', 'App\Http\Controllers\AdminsController@addPrivacy');
    Route::get('/editPrivacy/{id}', 'App\Http\Controllers\AdminsController@editPrivacy');
    Route::post('/add_privacy', 'App\Http\Controllers\AdminsController@add_privacy');
    Route::get('/delete_privacy/{id}','App\Http\Controllers\AdminsController@delete_privacy');
    Route::post('/edit_privacy/{id}', 'App\Http\Controllers\AdminsController@edit_privacy');
    //Terms
    Route::get('/terms','App\Http\Controllers\AdminsController@terms');
    Route::get('/addTerms', 'App\Http\Controllers\AdminsController@addTerms');
    Route::get('/editTerm/{id}', 'App\Http\Controllers\AdminsController@editTerm');
    Route::post('/add_term', 'App\Http\Controllers\AdminsController@add_term');
    Route::post('/edit_term/{id}', 'App\Http\Controllers\AdminsController@edit_term');
    Route::get('/delete_term/{id}','App\Http\Controllers\AdminsController@delete_term');
    //About
    Route::get('/about','App\Http\Controllers\AdminsController@about');
    Route::post('/about_save', 'App\Http\Controllers\AdminsController@about_save');
    //Services
    Route::get('/services','App\Http\Controllers\AdminsController@services');
    Route::get('/deleteService/{id}','App\Http\Controllers\AdminsController@deleteService');
    Route::post('/edit_Services/{id}', 'App\Http\Controllers\AdminsController@edit_Services');
    Route::get('/editServices/{id}', 'App\Http\Controllers\AdminsController@editServices');
    Route::get('/addService', 'App\Http\Controllers\AdminsController@addService');
    Route::post('/add_Service', 'App\Http\Controllers\AdminsController@add_Service');

    //Pricing
    Route::get('/pricing','App\Http\Controllers\AdminsController@pricing');
    Route::get('/deletePricing/{id}','App\Http\Controllers\AdminsController@deletePricing');
    Route::post('/edit_Pricing/{id}', 'App\Http\Controllers\AdminsController@edit_Pricing');
    Route::get('/editPricing/{id}', 'App\Http\Controllers\AdminsController@editPricing');
    Route::get('/addPricing', 'App\Http\Controllers\AdminsController@addPricing');
    Route::post('/add_Pricing', 'App\Http\Controllers\AdminsController@add_Pricing');

    //Porfolio
    Route::get('/portfolio','App\Http\Controllers\AdminsController@portfolio');
    Route::get('/deletePortfolio/{id}','App\Http\Controllers\AdminsController@deletePortfolio');
    Route::post('/edit_Portfolio/{id}', 'App\Http\Controllers\AdminsController@edit_Portfolio');
    Route::get('/editPortfolio/{id}', 'App\Http\Controllers\AdminsController@editPortfolio');
    Route::get('/addPortfolio', 'App\Http\Controllers\AdminsController@addPortfolio');
    Route::post('/add_Portfolio', 'App\Http\Controllers\AdminsController@add_Portfolio');

    //Gallery
    Route::get('/gallery','App\Http\Controllers\AdminsController@gallery');
    Route::get('/editGallery/{id}','App\Http\Controllers\AdminsController@editGallery');
    Route::get('/deleteGallery/{id}','App\Http\Controllers\AdminsController@deleteGallery');
    Route::post('/save_gallery/{id}', 'App\Http\Controllers\AdminsController@save_gallery');
    Route::get('/addGallery', 'App\Http\Controllers\AdminsController@addGallery');
    Route::get('/galleryList', 'App\Http\Controllers\AdminsController@galleryList');
    Route::post('/add_Gallery', 'App\Http\Controllers\AdminsController@add_Gallery');

    //Slider
    Route::get('/slider','App\Http\Controllers\AdminsController@slider');
    Route::get('/editSlider/{id}','App\Http\Controllers\AdminsController@editSlider');
    Route::get('/deleteSlider/{id}','App\Http\Controllers\AdminsController@deleteSlider');
    Route::post('/edit_Slider/{id}', 'App\Http\Controllers\AdminsController@edit_Slider');
    Route::get('/addSlider', 'App\Http\Controllers\AdminsController@addSlider');
    Route::post('/add_Slider', 'App\Http\Controllers\AdminsController@add_Slider');

    //Banner
    Route::get('/banner','App\Http\Controllers\AdminsController@banners');
    Route::get('/editBanner/{id}','App\Http\Controllers\AdminsController@editBanner');
    Route::post('/edit_Banner/{id}', 'App\Http\Controllers\AdminsController@edit_Banner');

    //Pages
    Route::get('/pages','App\Http\Controllers\AdminsController@pages');
    Route::get('/editPage/{id}','App\Http\Controllers\AdminsController@editPage');
    Route::get('/deletePage/{id}','App\Http\Controllers\AdminsController@deletePage');
    Route::post('/edit_Page/{id}', 'App\Http\Controllers\AdminsController@edit_Page');
    Route::get('/addPage', 'App\Http\Controllers\AdminsController@addPage');
    Route::post('/add_Page', 'App\Http\Controllers\AdminsController@add_Page');
    Route::post('/set_Page/{name}', 'App\Http\Controllers\AdminsController@set_Page');
    Route::get('/setPage/{name}', 'App\Http\Controllers\AdminsController@setPage');


    //Priducts
    Route::get('/products','App\Http\Controllers\AdminsController@products');
    Route::get('/editProduct/{id}','App\Http\Controllers\AdminsController@editProduct');
    Route::get('/deleteProduct/{id}','App\Http\Controllers\AdminsController@deleteProduct');
    Route::post('/edit_Product/{id}', 'App\Http\Controllers\AdminsController@edit_Product');
    Route::get('/addProduct', 'App\Http\Controllers\AdminsController@addProduct');
    Route::post('/add_Product', 'App\Http\Controllers\AdminsController@add_Product');


    //Admin
    Route::get('/admins','App\Http\Controllers\AdminsController@admins');
    Route::get('/editAdmin/{id}','App\Http\Controllers\AdminsController@editAdmin');
    Route::get('/deleteAdmin/{id}','App\Http\Controllers\AdminsController@deleteAdmin');
    Route::post('/edit_Admin/{id}', 'App\Http\Controllers\AdminsController@edit_Admin');
    Route::get('/addAdmin', 'App\Http\Controllers\AdminsController@addAdmin');
    Route::post('/add_Admin', 'App\Http\Controllers\AdminsController@add_Admin');

    //User
    Route::get('/users','App\Http\Controllers\AdminsController@users');
    Route::get('/editUser/{id}','App\Http\Controllers\AdminsController@editUser');
    Route::get('/deleteUser/{id}','App\Http\Controllers\AdminsController@deleteUser');
    Route::post('/edit_User/{id}', 'App\Http\Controllers\AdminsController@edit_User');
    Route::get('/addUser', 'App\Http\Controllers\AdminsController@addUser');
    Route::post('/add_User', 'App\Http\Controllers\AdminsController@add_User');

    //Trust
    Route::get('/trust','App\Http\Controllers\AdminsController@trust');
    Route::get('/editTrust/{id}','App\Http\Controllers\AdminsController@editTrust');
    Route::get('/deleteTrust/{id}','App\Http\Controllers\AdminsController@deleteTrust');
    Route::post('/edit_Trust/{id}', 'App\Http\Controllers\AdminsController@edit_Trust');
    Route::get('/addTrust', 'App\Http\Controllers\AdminsController@addTrust');
    Route::post('/add_Trust', 'App\Http\Controllers\AdminsController@add_Trust');

    //Blog Controls
    Route::get('/blog','App\Http\Controllers\AdminsController@blog');
    Route::get('/editBlog/{id}','App\Http\Controllers\AdminsController@editBlog');
    Route::get('/delete_Blog/{id}','App\Http\Controllers\AdminsController@delete_Blog');
    Route::post('/edit_Blog/{id}', 'App\Http\Controllers\AdminsController@edit_Blog');
    Route::get('/addBlog', 'App\Http\Controllers\AdminsController@addBlog');
    Route::post('/add_Blog', 'App\Http\Controllers\AdminsController@add_Blog');
    //Categories Control
    Route::get('/categories','App\Http\Controllers\AdminsController@categories');
    Route::get('/editCategories/{id}','App\Http\Controllers\AdminsController@editCategories');
    Route::get('/deleteCategory/{id}','App\Http\Controllers\AdminsController@deleteCategory');
    Route::post('/edit_Category/{id}', 'App\Http\Controllers\AdminsController@edit_Category');
    Route::get('/addCategory', 'App\Http\Controllers\AdminsController@addCategory');
    Route::post('/add_Category', 'App\Http\Controllers\AdminsController@add_Category');

    //Service Renreded Control
    Route::get('/service_rendered','App\Http\Controllers\AdminsController@service_rendered');
    Route::get('/editService_rendered/{id}','App\Http\Controllers\AdminsController@editService_rendered');
    Route::get('/deleteService_rendered/{id}','App\Http\Controllers\AdminsController@deleteService_rendered');
    Route::post('/edit_Service_rendered/{id}', 'App\Http\Controllers\AdminsController@edit_Service_rendered');
    Route::get('/addService_rendered', 'App\Http\Controllers\AdminsController@addService_rendered');
    Route::post('/add_Service_rendered', 'App\Http\Controllers\AdminsController@add_Service_rendered');

    //Daily
    Route::get('/daily','App\Http\Controllers\AdminsController@daily');
    Route::get('/editDaily/{id}','App\Http\Controllers\AdminsController@editDaily');
    Route::get('/deleteDaily/{id}','App\Http\Controllers\AdminsController@deleteDaily');
    Route::post('/edit_Daily/{id}', 'App\Http\Controllers\AdminsController@edit_Daily');
    Route::get('/addDaily', 'App\Http\Controllers\AdminsController@addDaily');
    Route::post('/add_Daily', 'App\Http\Controllers\AdminsController@add_Daily');


    //Sub Categories
    Route::get('/subCategories','App\Http\Controllers\AdminsController@subCategories');
    Route::get('/editSubCategories/{id}','App\Http\Controllers\AdminsController@editSubCategories');
    Route::get('/deleteSubCategory/{id}','App\Http\Controllers\AdminsController@deleteSubCategory');
    Route::post('/edit_SubCategory/{id}', 'App\Http\Controllers\AdminsController@edit_SubCategory');
    Route::get('/addSubCategory', 'App\Http\Controllers\AdminsController@addSubCategory');
    Route::post('/add_SubCategory', 'App\Http\Controllers\AdminsController@add_SubCategory');

    //Active Services
    Route::get('/traceServices','App\Http\Controllers\AdminsController@traceServices');
    Route::get('/editTraceServices/{id}','App\Http\Controllers\AdminsController@editTraceServices');
    Route::get('/deleteTraceServices/{id}','App\Http\Controllers\AdminsController@deleteTraceServices');
    Route::post('/edit_TraceServices/{id}', 'App\Http\Controllers\AdminsController@edit_TraceServices');
    Route::get('/addTraceServices', 'App\Http\Controllers\AdminsController@addTraceServices');
    Route::post('/add_TraceServices', 'App\Http\Controllers\AdminsController@add_TraceServices');

    // Generic Routes
    Route::get('/form','App\Http\Controllers\AdminsController@form');
    Route::get('/list','App\Http\Controllers\AdminsController@list');
    Route::get('/formfile','App\Http\Controllers\AdminsController@formfile');
    Route::get('/formfiletext','App\Http\Controllers\AdminsController@formfiletext');

    //Payments
    Route::get('/payments','App\Http\Controllers\AdminsController@payments');

    //Notifications
    Route::get('/notifications','App\Http\Controllers\AdminsController@notifications');
    Route::get('/notification/{id}','App\Http\Controllers\AdminsController@notification');

    //Service Requests
    Route::get('/requests','App\Http\Controllers\AdminsController@quoterequeste');
    Route::get('/markRequest/{id}/{status}/{type}','App\Http\Controllers\AdminsController@markRequest');

    //Comments
    Route::get('/comments','App\Http\Controllers\AdminsController@comments');
    Route::get('/approve/{id}','App\Http\Controllers\AdminsController@approve');
    Route::get('/decline/{id}','App\Http\Controllers\AdminsController@decline');

    // Error Pages
    Route::get('/403','App\Http\Controllers\AdminsController@error403');
    Route::get('/404','App\Http\Controllers\AdminsController@error404');
    Route::get('/405','App\Http\Controllers\AdminsController@error405');
    Route::get('/500','App\Http\Controllers\AdminsController@error500');
    Route::get('/503','App\Http\Controllers\AdminsController@error503');

    //Updates
    Route::get('/updates','App\Http\Controllers\AdminsController@updates');
    Route::get('/update/{id}','App\Http\Controllers\AdminsController@update');
    Route::get('/mark/{id}','App\Http\Controllers\AdminsController@mark');

    // Gallery
    Route::get('/gallery','App\Http\Controllers\AdminsController@gallery');

    //Under Contruction
    Route::get('/under_construction','App\Http\Controllers\AdminsController@under_construction');

    //Wizard
    Route::get('/wizard','App\Http\Controllers\AdminsController@wizard');

    //Maps
    Route::get('/maps','App\Http\Controllers\AdminsController@maps');
    // SiteSettings
    Route::get('/sitesettings','App\Http\Controllers\AdminsController@sitesettings');
    Route::post('/savesitesettings','App\Http\Controllers\AdminsController@savesitesettings');
    //Messages
    Route::get('/allMessages', 'App\Http\Controllers\AdminsController@allMessages');
    Route::get('/unread', 'App\Http\Controllers\AdminsController@unread');
    Route::get('/read/{id}', 'App\Http\Controllers\AdminsController@read');
    Route::post('/reply/{id}', 'App\Http\Controllers\AdminsController@reply');
    Route::get('/deleteMessage/{id}', 'App\Http\Controllers\AdminsController@deleteMessage');

    //Subscribers
    Route::get('/subscribers', 'App\Http\Controllers\AdminsController@subscribers');
    Route::get('/mailSubscribers/{email}', 'App\Http\Controllers\AdminsController@mailSubscribers');
    Route::get('/mailSubscriber/{email}', 'App\Http\Controllers\AdminsController@mailSubscriber');
    Route::get('/deleteSubscriber/{id}', 'App\Http\Controllers\AdminsController@deleteSubscriber');

    });

    // Users Routes
    Auth::routes();
    Route::group(['prefix'=>'clientarea'], function(){
    Route::get('/','ClientController@index');
    Route::get('/logout','Auth\LoginController@userLogout')->name('user.logout');
    Route::get('/profile','ClientController@profile');
    Route::get('/orders','ClientController@orders');
    Route::post('/save','ClientController@save');
    Route::get('/pay/{invoice}','PaymentConroller@pay');


});
