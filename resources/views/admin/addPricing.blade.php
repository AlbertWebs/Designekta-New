@extends('admin.master')

@section('content')
<div id="wrap" >
        

        <!-- HEADER SECTION -->
        @include('admin.top')
        <!-- END HEADER SECTION -->



        <!-- MENU SECTION -->
        @include('admin.left')
        <!--END MENU SECTION -->



        <!--PAGE CONTENT -->
        <div id="content">
             
            <div class="inner" style="min-height: 700px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1> add Pricing </h1>
                    </div>
                </div>
                  <hr />
                 <!--BLOCK SECTION -->
                 <div class="row">
                    <div class="col-lg-12">
                        @include('admin.panel')

                    </div>

                </div>
                  <!--END BLOCK SECTION -->
                <hr />
                
               
                  <!-- Inner Content Here -->
                 
            <div class="inner">
                

              <div class="row">
               <center>
                 @if(Session::has('message'))
							   <div class="alert alert-success">{{ Session::get('message') }}</div>
				@endif

                @if(Session::has('messageError'))
							   <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
				@endif
                 </center>
                 

                 <form class="form-horizontal" method="post"  action="{{url('/admin/add_Pricing')}}" enctype="multipart/form-data">
                    
                 <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Price</label>

                        <div class="col-lg-8">
                            <input type="text" id="text1" name="price" value="" placeholder="e.g 12500/= " class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Frequency</label>

                        <div class="col-lg-8">
                            <input type="text" id="text1" name="frequency" value="" placeholder="e.g Per Year " class="form-control" />
                        </div>
                    </div>

                    

                    

                   

                     <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Service</label>
                    <div class="col-lg-8">
                        <select name="service" data-placeholder="Choose a Service" class="form-control chzn-select" tabindex="2">
                          
                           <?php $Service = DB::table('services')->get(); ?>
                           @foreach($Service as $value)
                              <option value="{{$value->title}}">{{$value->title}}</option>
                           @endforeach

                        </select>
                        </div>
                        </div>

                         <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Budget</label>
                        <div class="col-lg-8">
                        <select name="budget" data-placeholder="Choose a Service" class="form-control chzn-select" tabindex="2">
                         
                              <option value="free">free</option>
                              <option value="starter">starter</option>
                              <option value="E-commerce">E-commerce</option>
                              
                              <option value="basic">basic</option>
                              <option value="standard">standard</option>
                              <option value="premium">premium</option>
                         

                        </select>
                        </div>
                        </div>
          
                        <div class="col-lg-12">
                            <div class="box">
                                <header>
                                    <div class="icons"><i class="icon-th-large"></i></div>
                                    <h5>Pricing  Description(list)</h5>
                                    <ul class="nav pull-right">
                                        <li>
                                            <div class="btn-group">
                                                <a class="accordion-toggle btn btn-xs minimize-box" data-toggle="collapse"
                                                    href="#div-1">
                                                    <i class="icon-minus"></i>
                                                </a>
                                                 <button class="btn btn-danger btn-xs close-box">
                                                    <i
                                                        class="icon-remove"></i>
                                                </button>
                                            </div>
                                        </li>
                                    </ul>
                                </header>
                                <div id="div-1" class="body collapse in">
                                    
                                        <textarea name="content" id="wysihtml5" class="form-control" rows="10"></textarea>

                                    
                                </div>
                            </div>
                        </div>
                   
                    
                    <br><br>
                    <div class="col-lg-12 text-center">
                      <button type="submit" class="btn btn-success"><i class="icon-plus icon-white"></i> Add Picing</button>
                    </div>
                    
                    
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    
                <form>
              </div>

            </div>
                  <!-- Inner Content Ends Here -->



                
            </div>

        </div>
        <!--END PAGE CONTENT -->

         <!-- RIGHT STRIP  SECTION -->
        @include('admin.right')
         <!-- END RIGHT STRIP  SECTION -->
    </div>

@endsection