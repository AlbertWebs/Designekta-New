<div id="left" >
            <div class="media user-media well-small">
                <a class="user-link" href="{{url('/admin')}}/editAdmin/{{Auth::user()->id}}">
                    <img width="64" height="64" class="media-object img-thumbnail user-img" alt="{{Auth::user()->name}}" src="{{url('/')}}/uploads/admins/{{Auth::user()->image}}" />
                </a>
                <br />
                <div class="media-body">
                    <h5 class="media-heading"><small><b> {{Auth::user()->name}}</b></small> </h5>
                    <ul class="list-unstyled user-info">
                        
                        <li>
                             <a href="{{url('/admin')}}/editAdmin/{{Auth::user()->id}}" class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online
                           
                        </li>
                       
                    </ul>
                </div>
                <br />
            </div>

            <ul id="menu" class="collapse">

                
                <li class="panel active">
                    <a href="{{url('/admin')}}" >
                        <i class="icon-home"></i> Dashboard
	   
                       
                    </a>                   
                </li>



                <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav">
                        <i class="icon-folder-open"></i>  Pages
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-success">4</span>&nbsp;
                    </a>
                    <ul class="collapse" id="error-nav">
                        <li><a href="{{url('/admin/about')}}"><i class="icon-angle-right"></i> About  </a></li>
                        <li><a href="{{url('/admin/privacy')}}"><i class="icon-angle-right"></i> Privacy  </a></li>
                        <li><a href="{{url('/admin/terms')}}"><i class="icon-angle-right"></i> Terms  </a></li>
                        <li><a href="{{url('/admin/copyright')}}"><i class="icon-angle-right"></i> Copyright  </a></li>
                        
                    </ul>
                </li>
                <li><a href="{{url('admin/addDaily')}}"><i class="icon-plus"></i>  <i class="icon-quote-left"> </i <i class="icon-quote-right"></i>  Add Daily Quote </a></li>
                <li><a href="{{url('admin/addBlog')}}"><i class="icon-plus"></i>  <i class="icon-pencil"> </i>  Add Blog </a></li>
                <li><a href="{{url('admin/addService_rendered')}}"><i class="icon-plus"></i>  <i class="icon-wrench"></i> <i class="icon-thumbs-up-alt"></i> Add Service Delivered </a></li>
                <li><a href="{{url('admin/addTestimonial')}}"><i class="icon-plus"></i>  <i class="icon-thumbs-up-alt"></i> Add Testimonial </a></li>
                <li><a href="{{url('admin/addGallery')}}"><i class="icon-plus"></i>  <i class="icon-image "></i> Add Gallery </a></li>
                <li><a href="{{url('admin/addPricing')}}"><i class="icon-plus"></i>  <i class="icon-usd "></i> Add Pricing </a></li>
                <li><a href="{{url('admin/addPortfolio')}}"><i class="icon-plus"></i>  <i class="icon-suitcase"></i> Add Portfolio </a></li>
                <li><a href="{{url('admin/addTraceServices')}}"><i class="icon-plus"></i>  <i class="icon-wrench"></i> Add Active Services </a></li>
                <li><a href="{{url('admin/addService')}}"><i class="icon-plus"></i>  <i class="icon-wrench"></i> Add Services </a></li>
                <li><a href="{{url('admin/addProduct')}}"><i class="icon-plus"></i>  <i class="icon-check"></i> Add Product </a></li>
                <li><a href="{{url('admin/addPage')}}"><i class="icon-plus"></i>  <i class="icon-folder-open"></i> Create Page </a></li>
                <li><a href="{{url('admin/addSlider')}}"><i class="icon-plus"></i>  <i class="icon-film"></i> Add Slider </a></li>
                <li><a href="{{url('admin/addAdmin')}}"><i class="icon-plus"></i>  <i class="icon-user-md"></i> Add Admin </a></li>
                <li><a href="{{url('admin/addUser')}}"><i class="icon-plus"></i>  <i class="icon-user"></i> Add User </a></li>
                
                <li><a href="{{url('admin/gallery')}}"><i class="icon-film"></i> Image Gallery </a></li>
                
                <li><a href="{{url('admin/maps')}}"><i class="icon-map-marker"></i> Maps </a></li>

               
                <li><a href="{{url('admin/sitesettings')}}"><i class="icon-cog"></i> Site Settings </a></li>
                <li><a href="{{url('admin/logout')}}"><i class="icon-signin"></i> Log Out </a></li>

                <li class="panel ">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                        <i class="icon-tasks"> </i> UI Elements     
	   
                        <span class="pull-right">
                          <i class="icon-angle-left"></i>
                        </span>
                       &nbsp; <span class="label label-default">10</span>&nbsp;
                    </a>
                    <ul class="collapse" id="component-nav">
                       
                        <li class=""><a href="button.html"><i class="icon-angle-right"></i> Buttons </a></li>
                         <li class=""><a href="icon.html"><i class="icon-angle-right"></i> Icons </a></li>
                        <li class=""><a href="progress.html"><i class="icon-angle-right"></i> Progress </a></li>
                        <li class=""><a href="tabs_panels.html"><i class="icon-angle-right"></i> Tabs & Panels </a></li>
                        <li class=""><a href="notifications.html"><i class="icon-angle-right"></i> Notification </a></li>
                         <li class=""><a href="more_notifications.html"><i class="icon-angle-right"></i> More Notification </a></li>
                        <li class=""><a href="modals.html"><i class="icon-angle-right"></i> Modals </a></li>
                          <li class=""><a href="wizard.html"><i class="icon-angle-right"></i> Wizard </a></li>
                         <li class=""><a href="sliders.html"><i class="icon-angle-right"></i> Sliders </a></li>
                        <li class=""><a href="typography.html"><i class="icon-angle-right"></i> Typography </a></li>
                    </ul>
                </li>
                <li class="panel ">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#form-nav">
                        <i class="icon-pencil"></i> Forms
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-success">5</span>&nbsp;
                    </a>
                    <ul class="collapse" id="form-nav">
                        <li class=""><a href="forms_general.html"><i class="icon-angle-right"></i> General </a></li>
                        <li class=""><a href="forms_advance.html"><i class="icon-angle-right"></i> Advance </a></li>
                        <li class=""><a href="forms_validation.html"><i class="icon-angle-right"></i> Validation </a></li>
                        <li class=""><a href="forms_fileupload.html"><i class="icon-angle-right"></i> FileUpload </a></li>
                        <li class=""><a href="forms_editors.html"><i class="icon-angle-right"></i> WYSIWYG / Editor </a></li>
                    </ul>
                </li>

                <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#pagesr-nav">
                        <i class="icon-table"></i> Pages
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-info">6</span>&nbsp;
                    </a>
                    <ul class="collapse" id="pagesr-nav">
                        <li><a href="pages_calendar.html"><i class="icon-angle-right"></i> Calendar </a></li>
                        <li><a href="pages_timeline.html"><i class="icon-angle-right"></i> Timeline </a></li>
                        <li><a href="pages_social.html"><i class="icon-angle-right"></i> Social </a></li>
                        <li><a href="pages_pricing.html"><i class="icon-angle-right"></i> Pricing </a></li>
                        <li><a href="pages_offline.html"><i class="icon-angle-right"></i> Offline </a></li>
                        <li><a href="pages_uc.html"><i class="icon-angle-right"></i> Under Construction </a></li>
                    </ul>
                </li>
                <li class="panel">
                    <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#chart-nav">
                        <i class="icon-bar-chart"></i> Charts
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                          &nbsp; <span class="label label-danger">4</span>&nbsp;
                    </a>
                    <ul class="collapse" id="chart-nav">



                        <li><a href="charts_line.html"><i class="icon-angle-right"></i> Line Charts </a></li>
                        <li><a href="charts_bar.html"><i class="icon-angle-right"></i> Bar Charts</a></li>
                        <li><a href="charts_pie.html"><i class="icon-angle-right"></i> Pie Charts </a></li>
                        <li><a href="charts_other.html"><i class="icon-angle-right"></i> other Charts </a></li>
                    </ul>
                </li>

              

            </ul>

        </div>