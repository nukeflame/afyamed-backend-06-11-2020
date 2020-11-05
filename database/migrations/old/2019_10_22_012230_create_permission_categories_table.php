<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePermissionCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('permission_categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('perm_group_id');
            $table->string('name');
            $table->string('slug')->unique();
            $table->integer('enable_view');
            $table->integer('enable_add');
            $table->integer('enable_edit');
            $table->integer('enable_delete');
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
        Schema::dropIfExists('permission_categories');
    }
}
