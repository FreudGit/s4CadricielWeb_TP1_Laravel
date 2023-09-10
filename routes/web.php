<?php

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

Route::get('/', function () {
    return view('welcome');
});


Route::get( '/blog', [EtudiantController::class, 'index'])->name('etudiant.index');
Route::get( '/blog/{blogPost}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get( '/blog-create', [EtudiantController::class,'create'])->name('etudiant.create');
Route::post( '/blog-create', [EtudiantController::class,'store']);
Route::get( '/blog-edit/{blogPost}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put( '/blog-edit/{blogPost}', [EtudiantController::class, 'update']);
Route::delete( '/blog-edit/{blogPost}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');;

Route::get('/query', [BlogPostController::class, 'query' ]);
