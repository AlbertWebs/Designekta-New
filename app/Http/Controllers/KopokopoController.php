<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Kopokopo;

class KopokopoController extends Controller
{
    public function registerWebhook(){
        $register_response=Kopokopo::registerWebhooks();
    }

    public function initiateMpesaPayment(){
        $payment_response=Kopokopo::initiateMpesaPayment(50, '+254723014032', 'Albert', 'Muhatia', 'albertmuhatia@gmail.com', 'KES');
    }

    public function initialize(){
        //initialize kopokopo
        $kopokopo=new Kopokopo();
        // Get the token (optional if needed later)
        $token=$kopokopo->TokenService()->getToken();
        //revoke access token
        $kopokopo->TokenService()->revokeToken(['accessToken' => $token]);
    }
}
