<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patients', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('patient_unique_id')->nullable();
            $table->string('admission_date')->nullable();
            $table->string('name');
            $table->integer('date')->nullable();
            $table->integer('month')->nullable();
            $table->integer('year')->nullable();
            $table->integer('dob')->nullable();
            $table->string('avatar')->nullable();
            $table->integer('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('gender')->nullable();
            $table->string('marital_status')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('address')->nullable();
            $table->string('guardian_name')->nullable();
            $table->integer('guardian_phone')->nullable();
            $table->string('guardian_address')->nullable();
            $table->string('guardian_email')->nullable();
            $table->boolean('is_active')->nullable();
            $table->string('patient_type')->nullable();
            $table->integer('credit_limit')->nullable();
            $table->string('insurer')->nullable();
            $table->boolean('old_patient')->nullable();
            $table->integer('proccessed_by')->nullable();
            $table->dateTime('disable_at')->nullable();
            $table->dateTime('deleted_at')->nullable();
            $table->timestamps();
            $table->text('note');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patients');
    }
}
