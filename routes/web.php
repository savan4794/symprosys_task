<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmiController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/',[EmiController::class,'index'])->name('emi.index');
Route::post('/',[EmiController::class,'store'])->name('emi.calcuate');
Route::post('/advance-payment',[EmiController::class,'advancePayment'])->name('emi.advancePayment');
