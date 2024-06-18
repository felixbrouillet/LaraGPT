<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;

class MessageController extends Controller
{
    /**
     * Affiche la liste des messages
     *
     * @return View
     */
    public function index()
    {
        return view('messages.index', [
            "messages" => Message::with('user')->get() // Assurez-vous que la relation 'user' est correcte dans le modèle Message
        ]);
    }


    public function GenererReponse(Request $request)
{
    // Validate user input
    $valides = $request->validate([
        "message" => "nullable|min:4|max:150"
    ], [
        "message.max" => "Le message doit avoir un maximum de :max caractères"
    ]);

    // Get user's input message
    $userMessage = $request->input('message');

    // Create a new Message object for the user's message
    $userMessageObj = new Message();
    $userMessageObj->user_id = auth()->user()->id; // Assuming the user is logged in
    $userMessageObj->contenu = $userMessage;
    $userMessageObj->save();

    // Load the phrases from the JSON file
    $phrasesPath = public_path('phrases.json'); // Adjust this path if needed
    $phrases = json_decode(file_get_contents($phrasesPath), true);

    // Find a matching keyword in the user's message and get the appropriate response
    $response = null;
    foreach ($phrases as $keyword => $phrase) {
        if (stripos($userMessage, $keyword) !== false) {
            if ($keyword === 'heure') {
                $response = str_replace('[heure]', now()->format('H:i'), $phrase);
            } else {
                $response = $phrase;
            }
            break;
        }
    }

    // If no matching keyword found, use a default response
    if ($response === null) {
        $response = "Je ne sais pas quoi répondre...";
    }

    // Create a new Message object for LaraGPT's response
    $responseMessageObj = new Message();
    $responseMessageObj->user_id = 2; // Assuming user_id 2 represents LaraGPT
    $responseMessageObj->contenu = $response;
    $responseMessageObj->save();

    // Redirect back or perform other actions
    // ...

    return redirect()->back();
}



}
