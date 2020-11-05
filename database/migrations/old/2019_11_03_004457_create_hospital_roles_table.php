<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHospitalRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hospital_roles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('hospital_id');
            $table->unsignedInteger('role_id');
            $table->unsignedInteger('hospital_branch_id');
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
        Schema::dropIfExists('hospital_roles');
    }
}
