<?php

use App\Http\Controllers\AccueilController;
use App\Http\Controllers\EnregistrementController;
use App\Http\Controllers\ConnexionController;
use App\Http\Controllers\MessageController;
use Illuminate\Support\Facades\Route;


/*****************
 * ACCUEIL
 */
Route::get('/', [AccueilController::class, 'index'])
    ->name('accueil');

/*****************
 * Messages
 */
Route::get('/messages', [MessageController::class, 'index'])
    ->name('messages.index')
    ->middleware('auth');

// Affichage du formulaire d'ajout d'un message. Je crois cependant ne pas en avoir besoin, à voir
// Route::get('/messages', [MessageController::class, 'create'])
//     ->name('messages.create')
//     ->middleware('auth');

// Traitement du formulaire
Route::post('/messages', [MessageController::class, 'GenererReponse'])
    ->name('messages.GenererReponse')
    ->middleware('auth');


// Connexion et création de compte -------------------------------------------------------

Route::get("/connexion", [ConnexionController::class, 'create'])
    ->name('connexion.create')
    ->middleware('guest');

Route::post("/connexion", [ConnexionController::class, 'authentifier'])
    ->name('connexion.authentifier');

Route::post("/deconnexion", [ConnexionController::class, 'deconnecter'])
    ->name('deconnexion');

Route::get("/enregistrement", [EnregistrementController::class, 'create'])
    ->name('enregistrement.create');

Route::post("/enregistrement", [EnregistrementController::class, 'store'])
    ->name('enregistrement.store');
