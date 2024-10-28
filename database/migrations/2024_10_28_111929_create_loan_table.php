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
        Schema::create('loan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('loan_id')->nullable();
            $table->foreign('loan_id')->references('id')->on('loan_inquery');
            $table->integer('emi');
            $table->double('monthly_interest')->default(0);
            $table->json('schedual')->nullable();
            $table->date('last_advance_payment');
            $table->integer('remaining_loan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loan');
    }
};
