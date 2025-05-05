<?php

// app/Http/Controllers/VehicleAdController.php

namespace App\Http\Controllers;

use App\Models\VehicleAd;
use Illuminate\Http\Request;

class VehicleAdController extends Controller
{
    public function create()
    {
        return view('vehicle_ads.create');
    }

    public function store(Request $request)
    {
     
        VehicleAd::create($request->all());

        return redirect()->back()->with('success', 'Başarıyla kaydedildi!');
    }


    public function index()
    {   $ads = VehicleAd::latest()->get();


        return view('admin.admin_rentalmarketplace', data: compact('ads'));
    }

    public function approve($id)
    {
        $ad = VehicleAd::findOrFail($id); 
        $ad->is_approved = true;
        $ad->save();

        return redirect()->back()->with('success', 'İlan onaylandı!');
    }

    public function destroy($id)
    {
        $ad = VehicleAd::findOrFail($id);
        $ad->delete();

        return redirect()->back()->with('success', 'İlan silindi!');
    }

}
