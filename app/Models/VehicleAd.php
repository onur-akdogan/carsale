<?php

// app/Models/VehicleAd.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VehicleAd extends Model
{
    protected $fillable = [
        'name', 'company_name', 'business_type', 'fleet_size',
        'phone', 'email', 'country', 'city', 'type',
    ];
}
