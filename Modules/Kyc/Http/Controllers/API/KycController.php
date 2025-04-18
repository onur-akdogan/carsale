<?php

namespace Modules\Kyc\Http\Controllers\API;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Kyc\Entities\KycInformation;
use Modules\Kyc\Entities\KycType;
use Session, Auth, Image, File, Str ,Mail;
use App\Helpers\MailHelper;
use Modules\Kyc\Emails\KycVerifactionEmail;


class KycController extends Controller
{

    public function kyc(){

        $influencer = Auth::guard('api')->user();

        $kyc = KycInformation::where(['user_id' => $influencer->id])->first();

        $kycType = KycType::orderBy('id', 'desc')->get();

        return response()->json([
            'kyc' => $kyc,
            'kycType' => $kycType,
        ]);

    }



    public function kycSubmit(Request $request){
        $influencer = Auth::guard('api')->user();

        $kyc = KycInformation::where(['user_id' => $influencer->id])->first();

        if($kyc){
            return response()->json([
                'message' => trans('Already exist')
            ], 403);
        }

        $rules = [
            'kyc_id'=>'required|exists:kyc_types,id',
            'file'=>'required',
            'message'=>'required',
        ];
        $customMessages = [
            'kyc_id.required' => trans('translate.Type of is required'),
            'file' => trans('translate.File is required'),
            'message' => trans('translate.Message is required'),
        ];

        $request->validate($rules,$customMessages);

        $kyc = new KycInformation();

        if($request->file){
            $extention = $request->file->getClientOriginalExtension();
            $image_name = 'document'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_name = 'uploads/custom-images/'.$image_name;
            $request->file->move(public_path('uploads/custom-images/'),$image_name);
            $kyc->file = $image_name;
        }

        $kyc->kyc_id = $request->kyc_id;
        $kyc->user_id = $influencer->id;
        $kyc->message = $request->message;
        $kyc->status = 0;
        $kyc->save();

        $notification= trans('translate.Information Submited Successfully. Pls Wait for Conformation');

        MailHelper::setMailConfig();

        $subject= trans('translate.KYC Verifaction');
        $message = 'Name: ' . $influencer->name . '<br>' . $notification;

        Mail::to($influencer->email)->send(new KycVerifactionEmail($message,$subject));

        return response()->json([
            'message' => $notification
        ]);


    }

}

