<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\SesiController;
use Illuminate\Support\Facades\Route;

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
Route::middleware(['guest'])->group(function(){
Route::get('/', [SesiController::class,'index'] )->name('login');
Route::post('/', [SesiController::class,'login'] );
Route::get('/register', [SesiController::class,'register'] )->name('register');
Route::post('/register-proses', [SesiController::class,'register_proses'] )->name('register_proses');
});
Route::get('/home',function(){
 return redirect('/admin');
});
Route::middleware(['auth'])->group(function(){
Route::get('/admin',[AdminController::class,'admin'])->middleware('userAkses:admin');
Route::get('/kaprodi',[AdminController::class,'kaprodi'])->middleware('userAkses:kaprodi');
Route::get('/dosen',[AdminController::class,'dosen'])->middleware('userAkses:dosen');
Route::get('/mahasiswa',[AdminController::class,'mahasiswa'])->middleware('userAkses:mahasiswa');
Route::get('/logout',[SesiController::class,'logout']);
});
