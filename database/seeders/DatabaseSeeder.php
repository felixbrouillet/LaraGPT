<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Message;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // Ajout d'utilisateurs fictifs
        \App\Models\User::factory(9)->create();


        /**************
         * MESSAGES
         **************/

        // Ajout de messages fictifs
        $messages = Message::factory(5)->create();
    }


}
