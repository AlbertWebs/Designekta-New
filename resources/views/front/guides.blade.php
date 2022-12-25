@extends('front.master-pages-s')
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
                        <h1 data-aos="zoom-out-up" data-aos-delay="400" class="title effect-static-text page-welcome">Knowledge Base</h1>
                        <nav data-aos="zoom-out-up" data-aos-delay="800" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Guides</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Knowledge Base</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    
  <!-- Blog -->
  <section id="blog" class="section-1 section-vs-30 section-vsr-30 body-mode-dark showcase blog-grid masonry news">
    <div data-aos="zoom-in" data-aos-delay="800" data-aos-anchor="body" class="container full-grid">
        <div class="row content blog-grid masonry">
            <main class="col-12 p-0">
                <div class="bricklayer items columns-4">
                    @foreach ($Blog as $Blog)
                    <div class="card p-0 text-center item">
                        <div class="image-over">
                            <img src="{{url('/')}}/uploads/blog/{{$Blog->image_one}}" alt="Lorem ipsum">
                        </div>
                        <div class="card-caption col-12 p-0">
                            <div class="card-body">
                                <a href="{{url('/')}}/support/knowledge-base/{{$Blog->slung}}">
                                    <h4>{{$Blog->title}}</h4>
                                </a>
                            </div>
                           
                        </div>
                    </div>
                    @endforeach
                </div>
            </main>
        </div>

        <!-- Pagination -->
        {{-- <div class="row">
            <div class="col-12">
                <nav>
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#" tabindex="-1">
                                <i class="icon-arrow-left"></i>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item active"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">
                                <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div> --}}
    </div>
</section>


@endforeach
@endsection