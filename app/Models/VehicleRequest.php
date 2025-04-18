<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'dealer_id',
        'request_id',
        'start_date',
        'end_date',
    ];
}
