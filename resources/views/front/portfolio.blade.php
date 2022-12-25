@extends('front.master-pages')
@section('content')
<?php $Sitesettings = DB::table('sitesettings')->get(); ?>
@foreach ($Sitesettings as $Settings)
   
<script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-bd8d1c48-8702-40b9-9a2b-d39966f1097e"></div>

  <!-- Hero -->
  <section id="slider" class="hero p-0 odd featured">
    <div class="swiper-container no-slider slider-h-75">
        <div class="swiper-wrapper">

            <!-- Item 1 -->
            <div class="swiper-slide slide-center">
                <!-- Particles -->
					<div id="particles-1" class="particles full-image" data-particle="bubble" data-mask="70"><canvas class="particles-js-canvas-el" width="1345" height="271" style="width: 100%; height: 100%;"></canvas></div>
                <img src="https://www.designekta.com/uploads/portfolio/2021-01-2010:48:56imageWebRes14-02.jpg" class="full-image" data-mask="90">
                
                <div class="slide-content row text-center">
                    <div class="col-12 mx-auto inner">
                        <h1 data-aos="zoom-out-up" data-aos-delay="400" class="title effect-static-text page-welcome">Our Portfolio</h1>
                        <nav data-aos="zoom-out-up" data-aos-delay="800" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Services</a></li>
								{{-- <li class="breadcrumb-item"><a href="#">Portfolio</a></li> --}}
                                <li class="breadcrumb-item active" aria-current="page">Our Portfolio</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php $Portfolio = DB::table('portfolio')->OrderBy('service','ASC')->get(); ?>
<!-- fanfact-area end -->
@if($Portfolio->isEmpty())

@else
 <!-- Portfolio -->
 <section id="portfolio-grid" class="section-1 showcase portfolio blog-grid filter-section bg-white">
	<div class="overflow-holder">
		<div class="container">
			
			<div class="row text-center intro">
				<div class="container wow fadeInUp">
					<h6>Our Recent Projects</h6>
					<h2 class="heading-1">Take a look at some of our projects and featured projects</h2>
					<div class="row justify-content-center">
					  <div class="col-xl-8 col-lg-10">
						<p class="big">Our team of creative experts and web designers regularly works to deliver the best websites for you. Here are some of our recent projects we have worked on.</p>
						<a style="margin:0 auto" class="btn primary-button" href="{{url('/')}}"> <i class="icon-home"></i> Back To Homepage<span class="button-overlay"></span></a>
					  </div>
					</div>
				  </div>
			</div>
	
			<div class="row items filter-items">
				@foreach ($Portfolio as $Portfolio)
				<div style="border-radius:10px !important" class="col-12 col-md-6 col-lg-4 item filter-item" data-groups='["technology"]'>
					<div style="border-radius:10px;" class="row card p-0 text-center">
						<div class="gallery" style="border-radius:10px;">
							<a href="{{url('/')}}/uploads/portfolio/{{$Portfolio->image_one}}" class="image-over">
								<img src="{{url('/')}}/uploads/portfolio/{{$Portfolio->image_one}}" alt="{{$Portfolio->title}}">
							</a>
						</div>
						<div class="card-caption col-12 p-0">
							<div class="gallery">
								<a href="{{url('/')}}/uploads/portfolio/{{$Portfolio->image_one}}" class="">
									<div class="card-body">
										<h4 class="m-0">{{$Portfolio->title}}</h4>
									</div>
								</a>
							</div>
							<div class="card-footer d-lg-flex align-items-center justify-content-center">
								<p><a target="_blank" href="{{$Portfolio->link}}" data-aos="zoom-out-up" data-aos-delay="1200" class="ml-auto mr-auto mt-5 btn primary-button aos-init aos-animate"><i class="icon-globe"></i>Visit Site</a></p>
							</div>
						</div>
					</div> 
				</div>
				@endforeach
			
				

			 
			
				<div class="col-1 filter-sizer"></div>
			</div>
		</div>
	</div>
</section>
@endif
@endforeach
@endsection