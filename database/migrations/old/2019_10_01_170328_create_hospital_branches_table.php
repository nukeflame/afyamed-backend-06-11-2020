<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHospitalBranchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hospital_branches', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('hopsital_id');
            $table->string('branch_name');
            $table->string('branch_code');
            $table->string('branch_url');
            $table->string('address_number');
            $table->string('location');
            $table->string('email');
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
        Schema::dropIfExists('hospital_branches');
    }
}
