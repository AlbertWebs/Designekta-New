<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

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
    Route::get('/', 'AdminsController@index')->name('admin.index');
    Route::get('/logout','Auth\AdminLoginController@logout')->name('admin.logout');

    //reset password
    Route::post('/password/email','Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset','Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset','Auth\AdminResetPasswordController@reset');
    Route::get('/password/reset/{token}','Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');

    //Testimonial
    Route::get('/addTestimonial', 'AdminsController@addTestimonial');
    Route::post('/add_Testimonial', 'AdminsController@add_Testimonial');
    Route::get('/testimonials','AdminsController@testimonials');
    Route::get('/editTestimonial/{id}', 'AdminsController@editTestimonial');
    Route::get('/deleteTestimonial/{id}', 'AdminsController@deleteTestimonial');
    Route::post('/edit_Testimonial/{id}', 'AdminsController@edit_Testimonial');

    //Terms Privacy copyright
    //copyright
    Route::get('/copyright','AdminsController@copyright');
    Route::post('/edit_copyright', 'AdminsController@edit_copyright');
    //Privacy
    Route::get('/privacy','AdminsController@privacy');
    Route::get('/addPrivacy', 'AdminsController@addPrivacy');
    Route::get('/editPrivacy/{id}', 'AdminsController@editPrivacy');
    Route::post('/add_privacy', 'AdminsController@add_privacy');
    Route::get('/delete_privacy/{id}','AdminsController@delete_privacy');
    Route::post('/edit_privacy/{id}', 'AdminsController@edit_privacy');
    //Terms
    Route::get('/terms','AdminsController@terms');
    Route::get('/addTerms', 'AdminsController@addTerms');
    Route::get('/editTerm/{id}', 'AdminsController@editTerm');
    Route::post('/add_term', 'AdminsController@add_term');
    Route::post('/edit_term/{id}', 'AdminsController@edit_term');
    Route::get('/delete_term/{id}','AdminsController@delete_term');
    //About
    Route::get('/about','AdminsController@about');
    Route::post('/about_save', 'AdminsController@about_save');
    //Services
    Route::get('/services','AdminsController@services');
    Route::get('/deleteService/{id}','AdminsController@deleteService');
    Route::post('/edit_Services/{id}', 'AdminsController@edit_Services');
    Route::get('/editServices/{id}', 'AdminsController@editServices');
    Route::get('/addService', 'AdminsController@addService');
    Route::post('/add_Service', 'AdminsController@add_Service');

    //Pricing
    Route::get('/pricing','AdminsController@pricing');
    Route::get('/deletePricing/{id}','AdminsController@deletePricing');
    Route::post('/edit_Pricing/{id}', 'AdminsController@edit_Pricing');
    Route::get('/editPricing/{id}', 'AdminsController@editPricing');
    Route::get('/addPricing', 'AdminsController@addPricing');
    Route::post('/add_Pricing', 'AdminsController@add_Pricing');

    //Porfolio
    Route::get('/portfolio','AdminsController@portfolio');
    Route::get('/deletePortfolio/{id}','AdminsController@deletePortfolio');
    Route::post('/edit_Portfolio/{id}', 'AdminsController@edit_Portfolio');
    Route::get('/editPortfolio/{id}', 'AdminsController@editPortfolio');
    Route::get('/addPortfolio', 'AdminsController@addPortfolio');
    Route::post('/add_Portfolio', 'AdminsController@add_Portfolio');

    //Gallery
    Route::get('/gallery','AdminsController@gallery');
    Route::get('/editGallery/{id}','AdminsController@editGallery');
    Route::get('/deleteGallery/{id}','AdminsController@deleteGallery');
    Route::post('/save_gallery/{id}', 'AdminsController@save_gallery');
    Route::get('/addGallery', 'AdminsController@addGallery');
    Route::get('/galleryList', 'AdminsController@galleryList');
    Route::post('/add_Gallery', 'AdminsController@add_Gallery');

    //Slider
    Route::get('/slider','AdminsController@slider');
    Route::get('/editSlider/{id}','AdminsController@editSlider');
    Route::get('/deleteSlider/{id}','AdminsController@deleteSlider');
    Route::post('/edit_Slider/{id}', 'AdminsController@edit_Slider');
    Route::get('/addSlider', 'AdminsController@addSlider');
    Route::post('/add_Slider', 'AdminsController@add_Slider');

    //Banner
    Route::get('/banner','AdminsController@banners');
    Route::get('/editBanner/{id}','AdminsController@editBanner');
    Route::post('/edit_Banner/{id}', 'AdminsController@edit_Banner');

    //Pages
    Route::get('/pages','AdminsController@pages');
    Route::get('/editPage/{id}','AdminsController@editPage');
    Route::get('/deletePage/{id}','AdminsController@deletePage');
    Route::post('/edit_Page/{id}', 'AdminsController@edit_Page');
    Route::get('/addPage', 'AdminsController@addPage');
    Route::post('/add_Page', 'AdminsController@add_Page');
    Route::post('/set_Page/{name}', 'AdminsController@set_Page');
    Route::get('/setPage/{name}', 'AdminsController@setPage');


    //Priducts
    Route::get('/products','AdminsController@products');
    Route::get('/editProduct/{id}','AdminsController@editProduct');
    Route::get('/deleteProduct/{id}','AdminsController@deleteProduct');
    Route::post('/edit_Product/{id}', 'AdminsController@edit_Product');
    Route::get('/addProduct', 'AdminsController@addProduct');
    Route::post('/add_Product', 'AdminsController@add_Product');


    //Admin
    Route::get('/admins','AdminsController@admins');
    Route::get('/editAdmin/{id}','AdminsController@editAdmin');
    Route::get('/deleteAdmin/{id}','AdminsController@deleteAdmin');
    Route::post('/edit_Admin/{id}', 'AdminsController@edit_Admin');
    Route::get('/addAdmin', 'AdminsController@addAdmin');
    Route::post('/add_Admin', 'AdminsController@add_Admin');

    //User
    Route::get('/users','AdminsController@users');
    Route::get('/editUser/{id}','AdminsController@editUser');
    Route::get('/deleteUser/{id}','AdminsController@deleteUser');
    Route::post('/edit_User/{id}', 'AdminsController@edit_User');
    Route::get('/addUser', 'AdminsController@addUser');
    Route::post('/add_User', 'AdminsController@add_User');

    //Trust
    Route::get('/trust','AdminsController@trust');
    Route::get('/editTrust/{id}','AdminsController@editTrust');
    Route::get('/deleteTrust/{id}','AdminsController@deleteTrust');
    Route::post('/edit_Trust/{id}', 'AdminsController@edit_Trust');
    Route::get('/addTrust', 'AdminsController@addTrust');
    Route::post('/add_Trust', 'AdminsController@add_Trust');

    //Blog Controls
    Route::get('/blog','AdminsController@blog');
    Route::get('/editBlog/{id}','AdminsController@editBlog');
    Route::get('/delete_Blog/{id}','AdminsController@delete_Blog');
    Route::post('/edit_Blog/{id}', 'AdminsController@edit_Blog');
    Route::get('/addBlog', 'AdminsController@addBlog');
    Route::post('/add_Blog', 'AdminsController@add_Blog');
    //Categories Control
    Route::get('/categories','AdminsController@categories');
    Route::get('/editCategories/{id}','AdminsController@editCategories');
    Route::get('/deleteCategory/{id}','AdminsController@deleteCategory');
    Route::post('/edit_Category/{id}', 'AdminsController@edit_Category');
    Route::get('/addCategory', 'AdminsController@addCategory');
    Route::post('/add_Category', 'AdminsController@add_Category');

    //Service Renreded Control
    Route::get('/service_rendered','AdminsController@service_rendered');
    Route::get('/editService_rendered/{id}','AdminsController@editService_rendered');
    Route::get('/deleteService_rendered/{id}','AdminsController@deleteService_rendered');
    Route::post('/edit_Service_rendered/{id}', 'AdminsController@edit_Service_rendered');
    Route::get('/addService_rendered', 'AdminsController@addService_rendered');
    Route::post('/add_Service_rendered', 'AdminsController@add_Service_rendered');

    //Daily
    Route::get('/daily','AdminsController@daily');
    Route::get('/editDaily/{id}','AdminsController@editDaily');
    Route::get('/deleteDaily/{id}','AdminsController@deleteDaily');
    Route::post('/edit_Daily/{id}', 'AdminsController@edit_Daily');
    Route::get('/addDaily', 'AdminsController@addDaily');
    Route::post('/add_Daily', 'AdminsController@add_Daily');


    //Sub Categories
    Route::get('/subCategories','AdminsController@subCategories');
    Route::get('/editSubCategories/{id}','AdminsController@editSubCategories');
    Route::get('/deleteSubCategory/{id}','AdminsController@deleteSubCategory');
    Route::post('/edit_SubCategory/{id}', 'AdminsController@edit_SubCategory');
    Route::get('/addSubCategory', 'AdminsController@addSubCategory');
    Route::post('/add_SubCategory', 'AdminsController@add_SubCategory');

    //Active Services
    Route::get('/traceServices','AdminsController@traceServices');
    Route::get('/editTraceServices/{id}','AdminsController@editTraceServices');
    Route::get('/deleteTraceServices/{id}','AdminsController@deleteTraceServices');
    Route::post('/edit_TraceServices/{id}', 'AdminsController@edit_TraceServices');
    Route::get('/addTraceServices', 'AdminsController@addTraceServices');
    Route::post('/add_TraceServices', 'AdminsController@add_TraceServices');

    // Generic Routes
    Route::get('/form','AdminsController@form');
    Route::get('/list','AdminsController@list');
    Route::get('/formfile','AdminsController@formfile');
    Route::get('/formfiletext','AdminsController@formfiletext');

    //Payments
    Route::get('/payments','AdminsController@payments');

    //Notifications
    Route::get('/notifications','AdminsController@notifications');
    Route::get('/notification/{id}','AdminsController@notification');

    //Service Requests
    Route::get('/requests','AdminsController@quoterequeste');
    Route::get('/markRequest/{id}/{status}/{type}','AdminsController@markRequest');

    //Comments
    Route::get('/comments','AdminsController@comments');
    Route::get('/approve/{id}','AdminsController@approve');
    Route::get('/decline/{id}','AdminsController@decline');

    // Error Pages
    Route::get('/403','AdminsController@error403');
    Route::get('/404','AdminsController@error404');
    Route::get('/405','AdminsController@error405');
    Route::get('/500','AdminsController@error500');
    Route::get('/503','AdminsController@error503');

    //Updates
    Route::get('/updates','AdminsController@updates');
    Route::get('/update/{id}','AdminsController@update');
    Route::get('/mark/{id}','AdminsController@mark');

    // Gallery
    Route::get('/gallery','AdminsController@gallery');

    //Under Contruction
    Route::get('/under_construction','AdminsController@under_construction');

    //Wizard
    Route::get('/wizard','AdminsController@wizard');

    //Maps
    Route::get('/maps','AdminsController@maps');
    // SiteSettings
    Route::get('/sitesettings','AdminsController@sitesettings');
    Route::post('/savesitesettings','AdminsController@savesitesettings');
    //Messages
    Route::get('/allMessages', 'AdminsController@allMessages');
    Route::get('/unread', 'AdminsController@unread');
    Route::get('/read/{id}', 'AdminsController@read');
    Route::post('/reply/{id}', 'AdminsController@reply');
    Route::get('/deleteMessage/{id}', 'AdminsController@deleteMessage');

    //Subscribers
    Route::get('/subscribers', 'AdminsController@subscribers');
    Route::get('/mailSubscribers/{email}', 'AdminsController@mailSubscribers');
    Route::get('/mailSubscriber/{email}', 'AdminsController@mailSubscriber');
    Route::get('/deleteSubscriber/{id}', 'AdminsController@deleteSubscriber');

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
