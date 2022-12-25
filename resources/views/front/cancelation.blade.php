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
                <img src="{{url('/')}}/uploads/services/2021-01-1920:12:50imagepexels-photo-267350.webp" class="full-image" data-mask="90">
                
                <div class="slide-content row text-center">
                    <div class="col-12 mx-auto inner">
                        <h1 data-aos="zoom-out-up" data-aos-delay="400" class="title effect-static-text page-welcome">{{$page_title}}</h1>
                        <nav data-aos="zoom-out-up" data-aos-delay="800" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Legal</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{$page_title}}</li>
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
            <main class="col-12 col-lg-12 p-0">
                <div class="row">
                    <div class="col-12 align-self-center">
                        <h2 class="featured mt-0 ml-0">{{$page_title}}</h2>
                        <p></p>
                        <p>
                            Please note that once a client subscribes to any of our services with regular subscriptions of daily/weekly/monthly or yearly charge frequency, a team is assigned and engaged to specifically handle that particular client's work.
                            <br><br>
                            In the event of service cancellation, it is advised that the client gives us Notice in advance of equivalent to the Invoice period in question. i.e 24 hrs, a week, a Month or an Year. In the case of yearly subscriptions, the notice period should be 3Months prior to the expiry of the current subscription.
                            <br><br>
                            Instant cancellation attracts a penalty of the same charge as the cost of the service rendered which will be invoiced immediately.
                            <br><br>
                            To avoid a cancellation fee, please provide cancellation notice in time as advised above.
                        </p>
                       
                    </div>
                </div>        
            </main>

        </div>
    </div>
</section>


@endforeach
@endsection