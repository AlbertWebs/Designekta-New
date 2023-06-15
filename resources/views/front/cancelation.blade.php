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
                            Please be aware that a team is allocated and engaged to handle that specific client's task once a client subscribes to any of our services with a regular subscription of daily, weekly, monthly, or yearly fee frequency.
                            <br><br>
                            It is recommended that the client provide us notice prior to the Invoice period in issue if the service is to be canceled. for example, a day, a week, a month, or a year. Annual subscriptions should have a notice period of three months prior to the current subscription expiring.
                            <br><br>
                            An abrupt cancellation will result in a fee equal to the cost of the service provided, which will be billed right away.
                            <br><br>
                            Please give cancellation notice as early as suggested above to avoid paying a fee.
                        </p>

                    </div>
                </div>
            </main>

        </div>
    </div>
</section>


@endforeach
@endsection
