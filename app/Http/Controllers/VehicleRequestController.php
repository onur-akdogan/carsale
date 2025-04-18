<?php

// app/Http/Controllers/VehicleRequestController.php

namespace App\Http\Controllers;

use App\Models\VehicleRequest;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VehicleRequestController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
            'dealer_id'  => 'required|integer',
            'request_id'  => 'required|integer',

            
        ]);

        VehicleRequest::create([
            'user_id'    => Auth::id(),
            'dealer_id'  => $request->dealer_id,
            'request_id'  => $request->request_id,

            
            'start_date' => $request->start_date,
            'end_date'   => $request->end_date,
        ]);

        return back()->with('success', 'Talebiniz başarıyla iletildi.');
    }
public function getRequestCar()
{
    $cars = DB::table('vehicle_requests')
        ->join('cars', 'vehicle_requests.dealer_id', '=', 'cars.id')
        ->join('users', 'vehicle_requests.user_id', '=', 'users.id') // talep eden kullanıcı bilgileri
        ->where('vehicle_requests.request_id', Auth::id()) // araç sahibine gelen talepler
        ->select(
            'vehicle_requests.*',
            'cars.*',
            'users.name as requester_name',
            'users.email as requester_email',
            'users.phone as requester_phone'
        )
        ->get();

    return view('requestcarlist', compact('cars'));
}

    
    
}
