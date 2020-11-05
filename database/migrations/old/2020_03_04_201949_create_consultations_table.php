<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConsultationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('consultations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->text('complaints');
            $table->string('diagnosis_id');
            $table->string('clinical_findings_id');
            $table->string('treatment_id');
            $table->string('medication_id');
            $table->string('materials');
            $table->string('impressions');
            $table->string('recomendation');
            $table->string('clinical_summary');
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
        Schema::dropIfExists('consultations');
    }
}
