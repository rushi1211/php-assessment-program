<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlasmaRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plasma_requests', function (Blueprint $table) {
            $table->id();
            $table->string('rname');
            $table->string('gender');
            $table->integer('age');
            $table->string('blood_group');
            $table->date('positive_date');
            $table->date('negative_date');
            $table->integer('state_id');
            $table->integer('city_id');
            $table->string('phone');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plasma_requests');
    }
}
