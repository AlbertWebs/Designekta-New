@extends('front.master-pages')
@section('content')
	<!-- Breadcrumb -->
	@include('front.breadcrumb')
	<!-- BreadCrumb -->
        <!-- .service-area start -->
		<section class="service-area home2-service-area ptb-100">
			<div class="container">
				<div class="row">

				@foreach($Services as $Service)
					<div class="col-md-4 col-sm-6 col-xs-12 col">
						<div class="service-wrap">
						<div class="service-img">
								<img src="{{url('/')}}/uploads/services/{{$Service->image_one}}" alt="" />
							</div>
							<div class="service-content">
								<h3>{{$Service->title}}</h3>
								<!-- Elipses -->
								<?php
									$original_string = $Service->content;
									$num_words = 15;
									$words = array();
									$words = explode(" ", $original_string, $num_words);
									$shown_string = "";
									

									if(count($words) == 15){
									$words[14] = "... ";
									}

									$shown_string = implode(" ", $words);

								?>
								<!-- Elipses -->
							    <p>{!!html_entity_decode($shown_string)!!}</p>
								<a href="{{url('/service')}}/{{$Service->slung}}">Read More</a>
							</div>
						</div>
					</div>
				@endforeach
				
                   
				</div>
			</div>
		</section>
		<!-- .service-area end -->

      

       
    @endsection