<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Mail;

class ReplyMessage extends Model
{
    public static function mailrequest($name,$email,$subject,$phone,$message,$budget,$company, $manager){
        //The Generic mailler Goes here
        $data = array(
            'name'=>$name,
            'email'=>$email,
            'content'=>$message,
            'phone'=>$phone,
            'company'=>$company,
            'manager'=>$manager,
            'budget'=>$budget,
        );
        $subject = $subject;
        $appName = config('app.name');
        $appEmail = config('mail.username');
    
    
        $FromVariable = $email;
        $FromVariableName = $name;

        $toVariable = 'albertmuhatia@gmail.com';
        $toVariableName = 'Albert Muhatia';


        Mail::send('mailQuote', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->cc('info@designekta.com')->cc('kirimijg@gmail.com')->replyto($FromVariable )->subject($subject);
        });
    }
}
