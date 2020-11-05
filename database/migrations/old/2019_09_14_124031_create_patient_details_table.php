<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatientDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('patient_id');
            $table->string('entry_date')->nullable();
            $table->string('case_type')->nullable();
            $table->string('casualty')->nullable();
            $table->string('symptoms')->nullable();
            $table->integer('bp')->nullable();
            $table->integer('height')->nullable();
            $table->integer('weight')->nullable();
            $table->string('allergies')->nullable();
            $table->string('refference')->nullable();
            $table->string('cons_doctor')->nullable();
            $table->integer('amount')->nullable();
            $table->integer('tax')->nullable();
            $table->integer('payment_mode');
            $table->string('header_note')->nullable();
            $table->string('footer_note')->nullable();
            $table->date('start_date')->nullable();
            $table->time('start_time')->nullable();
            $table->date('end_date')->nullable();
            $table->time('end_time')->nullable();
            $table->integer('days')->nullable();
            $table->integer('ward_id')->nullable();
            $table->integer('room_id')->nullable();
            $table->integer('bed_id')->nullable();
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
        Schema::dropIfExists('patient_details');
    }
}
