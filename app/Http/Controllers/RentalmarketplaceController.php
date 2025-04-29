<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Category;
use App\Models\Setting;
use Illuminate\Http\Request;

class RentalmarketplaceController extends Controller
{
    public function index(Request $request)
    {
 
        return view('rentalmarketplace');
    }

   
}