<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolesPermissionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles_permission', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('role_id')->nullable();
            $table->unsignedInteger('permission_id')->nullable();
            $table->integer('can_view')->nullable();
            $table->integer('can_add')->nullable();
            $table->integer('can_edit')->nullable();
            $table->integer('can_delete')->nullable();
            $table->timestamps();

            // $table->foreign("role_id")->references('id')->on("roles")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('roles_permission');
    }
}
