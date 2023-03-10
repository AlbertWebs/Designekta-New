@extends('front.master')
@section('content')
	<!-- Breadcrumb -->
	@include('front.breadcrumb')
			<!-- BreadCrumb -->	

		<section style="padding-top:100px" id="cart_items">
		<div class="container">
			
			<div class="table-responsive cart_info">
			@if($CartItems->isEmpty())
				<center><h2>Your Cart Is Empty</h2>
				<a id="verifyCoupon" class="btn btn-default update" href="{{url('/shop')}}">Our Products</a>
				<a id="verifyCoupon" class="btn btn-default update" href="{{url('shop/website')}}">Our Services</a>
			</center>
				
			@else
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="price">Price</td>
							<!-- <td class="quantity">Quantity</td> -->
							<!-- <td class="total">Total</td> -->
							<td class="total">Remove</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						@foreach($CartItems as $CartItem)
						<?php 
                             $Products = DB::table('product')->where('id',$CartItem->id)->get();
						?>
						@foreach($Products as $Product)
						<tr>
							<td class="cart_product">
								<a href=""><img width="200" height="200" src="{{url('/')}}/uploads/product/{{$Product->image_one}}" alt=""></a>
								<br>
								<h4><a class="text-center" href="">{{$Product->name}}</a></h4>
								
							</td>
							
							<td class="cart_price">
								<p>Ksh {{$Product->price}}</p>
							</td>
							<!-- <td class="cart_quantity">
								<form action="{{url('/cart/update')}}/{{$CartItem->rowId}}" method="post">
								<center>
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                            <input type="button" value="-" id="minus{{$CartItem->id}}" onClick="minus_{{$CartItem->id}}() ">
                                            <input class="text-center" type="text" size="3" value="{{$CartItem->qty}}" name="qty" id="count{{$CartItem->id}}" autocomplete="off">
                                            <input type="button" value="+" id="plus{{$CartItem->id}}" onClick="plus_{{$CartItem->id}}()">
											<br>
											<center>
											<input type="submit" value="Update" class="btn btn-primary">
                                            </center>
                                </form>
							</td> -->
							<!-- <td class="cart_total">
								<p class="cart_total_price">Ksh {{$CartItem->total}}</p>
							</td> -->
							<td class="cart_delete text-center">
								<center><a style="background:#296dc1; " class="cart_quantity_delete" href="{{url('/')}}/cart/destroy/{{$CartItem->rowId}}"><i class="fa fa-trash"></i></a></center>
							</td>
						</tr>
						@endforeach
					    @endforeach

						
					</tbody>
				</table>
				@endif
			</div>
		</div>
	</section> <!--/#cart_items-->
	@if($CartItems->isEmpty())
                
	@else
	<section id="do_action">
		<div class="container">
		
			<div class="row">
				<div class="col-sm-6">
				 
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
						
							<li>Cart Sub Total <span>Ksh {{Cart::subtotal()}}</span></li>
							<li>Tax <span> Ksh {{Cart::tax()}}</span></li>
							@foreach($Products as $Product)
							@if($Product->cat == '1')
							@else
							<li>Delivery Charges <span><center><a onclick="alert('Delivery is FREE within Nairobi CBD, 100/= Within Nairobi Region, 250-700 Outside Nairobi Depending on the Product Value')" class="fa fa-eye" >Check</a></center></span></li>
							@endif
							@endforeach
							<li>Total <span>Ksh {{Cart::total()}}</span></li>
						
						</ul>
						@foreach($Products as $Product)
						@if($Product->cat == '1')
						    <a class="btn btn-default update" href="{{url('/shop/website')}}">Back To Shop</a>
						@else
							<a class="btn btn-default update" href="{{url('/shop')}}">Back To Shop</a>
						@endif
						@endforeach
							<a class="btn btn-default check_out" href="{{url('/checkout')}}">Proceed To Checkout</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
	<script type="text/javascript">
            
            @foreach($CartItems as $cartItem)
            
            var count{{$cartItem->id}} = 1;
            var countE1{{$cartItem->id}} = document.getElementById("count{{$cartItem->id}}");
            
            
            function plus_{{$cartItem -> id}}(){
                
                count{{$cartItem->id}}++;
                countE1{{$cartItem->id}}.value = count{{$cartItem->id}};
                
            }
            function minus_{{$cartItem -> id}}(){
                
                
                if (count{{$cartItem->id}} > 1){
                    count{{$cartItem->id}}--;
                    countE1{{$cartItem->id}}.value = count{{$cartItem->id}};
                    
                }
            }
            @endforeach
            </script>
	@endif

@endsection