<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomizeSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customize_settings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('user_id');
            $table->boolean('dashboard');
            $table->boolean('history');
            $table->boolean('timeline');
            $table->boolean('nurse_notes');
            $table->boolean('activities');
            $table->boolean('consultations');
            $table->boolean('documents');
            $table->boolean('images');
            $table->boolean('forms');
            $table->boolean('laboratory');
            $table->boolean('imaging');
            $table->boolean('prescription');
            $table->boolean('treatment_plan');
            $table->boolean('billing');
            $table->boolean('pharmacy');
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
        Schema::dropIfExists('customize_settings');
    }
}
