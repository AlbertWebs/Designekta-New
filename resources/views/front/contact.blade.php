@extends('front.master')
@section('content')
	<!-- Breadcrumb -->
	@include('front.breadcrumb')
	<!-- BreadCrumb -->
  <!-- contact-area start -->
  <div class="contact-area ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="contact-wrap form-style">
                            <h3>Contact Us</h3>
                            @if(Session::has('message')) 
                             <center> 
                                
                                            <div id="contactRealAlert" class="alert alert-success"></div>
                                
                                </center>
                                @endif
							<form action="#">
								<div class="row">
									<div class="col-sm-6 col-xs-12">
										<input id="contactRealName" type="text" placeholder="Name" id="fname" name="fname">
									</div>
									<div class="col-sm-6 col-xs-12">
										<input id="contactRealEmail" type="text" placeholder="Email" id="email" name="email">
									</div>
									<div class="col-xs-12">
										<input id="contactRealSubject" type="text" placeholder="Subject" id="subject" name="subject">
									</div>
									<div class="col-xs-12">
										<textarea id="contactRealMessage" class="contact-textarea" placeholder="Message" id="msg" name="msg"></textarea>
									</div>
									<div class="col-xs-12">
										<button type="button" id="contactRealButton" class="cont-submit btn-contact" name="submit">SEND MESSAGE</button>
									</div>
								</div>
							</form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact-wrap">
                            <ul>
                                @foreach($SiteSettings as $Settings)
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>{{$Settings->mobile_one}}</p>
                                    <p>{{$Settings->mobile_two}}</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <p>{{$Settings->email}}</p>
                                    <p>{{$Settings->email_one}}</p>
                                </li>
                                <li>
                                    <i class="fa fa-globe"></i>
                                    <p>{{$Settings->url}}</p>
                                    
                                </li>
                                <li>
                                    <i class="fa fa-location-arrow"></i>
                                    {{$Settings->location}}
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- contact-area end -->

        @include('front.quote')
        @include('front.newsletter')
@endsection