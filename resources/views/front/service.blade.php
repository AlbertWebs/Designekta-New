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
                <div id="particles-1" class="particles full-image" data-particle="bubble" data-mask="70"><canvas class="particles-js-canvas-el" width="1345" height="271" style="width: 100%; height: 100%;"></canvas></div>
                <img src="{{url('/')}}/uploads/services/{{$Services->image_one}}" class="full-image" data-mask="90">
                
                <div class="slide-content row text-center">
                    <div class="col-12 mx-auto inner">
                        <h1 data-aos="zoom-out-up" data-aos-delay="400" class="title effect-static-text page-welcome">{{$Services->title}}</h1>
                        <nav data-aos="zoom-out-up" data-aos-delay="800" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Services</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{$Services->title}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Content -->
<section id="content" class="section-1 single bg-white">
    <div class="container">
        <div class="row">

            <!-- Main -->
            <main class="col-12 col-lg-8 p-0">
                <div class="row">
                    <div class="col-12 align-self-center">
                        <h2 class="featured mt-0 ml-0">{{$Services->title}}</h2>
                        <p></p>
                        <p>{!!html_entity_decode($Services->content)!!}</p>
                        <p>
                            <blockquote>{{$Services->meta}}</blockquote>
                        </p>
    
                        <p>{!!html_entity_decode($Services->content_two)!!}</p>
                    </div>
                </div>        
            </main>

            <!-- Sidebar -->
            <aside class="col-12 col-lg-4 pl-lg-5 p-0 float-right sidebar">                    
                <div class="row">
                    <div class="col-12 align-self-center text-left">                                

                        <!-- Share This -->
                        <div class="item widget-share-this">
                            <h4>Share This</h4>
                            <ul class="navbar-nav social share-list">
                                <li class="nav-item">
                                    <a href="{{$Settings->instagram}}" class="nav-link"><i class="icon-social-instagram ml-0"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{$Settings->facebook}}" class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{$Settings->linkedin}}" class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{$Settings->twitter}}" class="nav-link"><i class="icon-social-twitter"></i></a>
                                </li>
                            </ul>
                        </div>

                        <!-- Widget [services] -->
                        <div class="item widget-services">
                            <ul class="list-group list-group-flush widget-services">
                                <?php $OtherServices = DB::table('services')->get(); ?>
                                @foreach ($OtherServices as $item)
                                    @if($Services->id == $item->id)

                                    @else 
                                    <li class="list-group-item">
                                        <a href="{{url('/')}}/service/{{$item->slung}}">
                                            <i class="icon {{$item->icons}}"></i>
                                            <h5>{{$item->title}}</h5>
                                        </a>
                                    </li>
                                    @endif
                                @endforeach
                               
                                
                            </ul>
                        </div>

                    </div>
                </div>
            </aside>
        </div>
    </div>
</section>
<?php $ServiceSpecific = DB::table('portfolio')->where('service',$Services->id)->get(); ?>
@if($ServiceSpecific->isEmpty())

@else
{{-- Slider Here --}}
<section id="news" class="section-5 odd carousel showcase news">
    <div class="overflow-holder">
        <div class="container">
            <div class="row intro">
                <div class="col-12 col-md-9 align-self-center text-center text-md-left">
                    <h2 class="featured title effect-static-text page-welcome aos-init aos-animate">Complete Projects</h2>
                    <p class="text-black">Checkout Some Of our complete projects</p>
                </div>
                <div class="col-12 col-md-3 align-self-end">
                    <a href="{{url('/')}}/our-portfolio" class="btn mx-auto mr-md-0 ml-md-auto primary-button"><i class="icon-grid"></i>VIEW ALL</a>
                </div>
            </div>
            <div class="swiper-container mid-slider items">
                <div class="swiper-wrapper">
                    @foreach ($ServiceSpecific as $ServiceSpecific)
                    <div class="swiper-slide slide-center item">
                        <div class="row card p-0 text-center">
                            <div class="image-over">
                                <img src="{{url('/')}}/uploads/portfolio/{{$ServiceSpecific->image_one}}" alt="{{$ServiceSpecific->title}}">
                            </div>
                            <div class="card-caption col-12 p-0">
                                <div class="card-body">
                                    <a href="{{$ServiceSpecific->link}}">
                                        <h4 class="m-0">{{$ServiceSpecific->title}}</h4>
                                    </a>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                    @endforeach                 
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>
{{-- Slider Here --}}
@endif
@endforeach
@endsection