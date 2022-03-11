<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DonorController;
use App\Http\Controllers\RequestController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('dashboard');
// });

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Donor
Route::get('/donorsList',[DonorController::class, 'index'])->name('donorList');
Route::get('/addDonor',[DonorController::class, 'create']);
Route::post('/fetchdonor-cities', [DonorController::class, 'fetchCity']);
Route::post('/saveDonor',[DonorController::class, 'store']);
Route::get('/editDonor/{id}',[DonorController::class, 'edit']);
Route::PATCH('/updateDonor/{id}',[DonorController::class, 'update']);
Route::DELETE('/deleteDonor/{id}',[DonorController::class, 'destroy']);


//Requester
Route::get('/requestsList',[RequestController::class, 'index']);
Route::get('/addRequest',[RequestController::class, 'create']);
Route::post('/fetchrequest-cities', [RequestController::class, 'fetchCity']);
Route::post('/saveRequest',[RequestController::class, 'store']);
Route::get('/editRequest/{id}',[RequestController::class, 'edit']);
Route::PATCH('/updateRequest/{id}',[RequestController::class, 'update']);
Route::delete('/deleteRequest/{id}',[RequestController::class, 'destroy']);