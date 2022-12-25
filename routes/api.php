<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KopokopoController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/initialize-kopokopo',[KopokopoController::class, 'initialize']);

Route::get('/register-webhooks',[KopokopoController::class, 'registerWebhook']);

Route::get('/m-pesa-stk-initiate',[KopokopoController::class, 'initiateMpesaPayment']);
