<?php
// database/migrations/xxxx_xx_xx_create_vehicle_ads_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVehicleAdsTable extends Migration
{
    public function up()
    {
        Schema::create('vehicle_ads', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('company_name');
            $table->string('business_type');
            $table->string('fleet_size');
            $table->string('phone');
            $table->string('email');
            $table->string('country');
            $table->string('city');
            $table->enum('type', ['kiralama', 'satis']);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('vehicle_ads');
    }
}
