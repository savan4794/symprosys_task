<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('loan_inquery', function (Blueprint $table) {
            $table->id();
            $table->string('name',125);
            $table->string('email',125);
            $table->integer('loan_amount')->default(1);
            $table->integer('interest_rate')->default(1);
            $table->integer('duration')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loan_inquery');
    }
};
