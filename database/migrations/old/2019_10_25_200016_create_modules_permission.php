<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateModulesPermission extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('modules_permission', function (Blueprint $table) {
            $table->unsignedInteger('module_id');
            $table->unsignedInteger('client_id');
            $table->foreign('module_id')->references('id')->on('modules_permission')->onDelete('cascade');
            $table->foreign('client_id')->references('id')->on('clients')
            ->onDelete('cascade');
            $table->primary(['module_id', 'client_id']);
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
        Schema::dropIfExists('modules_permission');
    }
}
