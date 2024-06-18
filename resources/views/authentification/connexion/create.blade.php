<x-layout titre="Connexion">

    <body class="bg-gray-100">

        <div class="min-h-screen flex items-center justify-center">
            <div class="bg-white p-8 rounded-lg shadow-md w-full sm:w-96">
                <h2 class="text-2xl font-semibold mb-4">Connexion</h2>

                @if (session('email'))
                    <p>{{ session('email') }}</p>
                @endif

                <form action="{{ route('connexion.authentifier') }}" method="POST">
                    @csrf

                    <div class="mb-4">
                        <x-forms.erreur champ="email" />
                        <label for="email" class="block text-gray-700 font-semibold">Courriel</label>
                        <input type="email" id="email" name="email" autocomplete="email"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2"
                            value="{{ old('email') }}">
                    </div>

                    <div class="mb-4">
                        <x-forms.erreur champ="password" />
                        <label for="password" class="block text-gray-700 font-semibold">Mot de Passe</label>
                        <input id="password" name="password" type="password" autocomplete="current-password"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                    </div>
                    <button type="submit"
                        class="bg-blue-500 text-white font-semibold px-4 py-2 rounded-full hover:bg-blue-600 transition duration-300">Se
                        Connecter</button>
                </form>
                <div class="mt-6 text-center">
                    <a href="{{ route('enregistrement.create') }}"
                        class="bg-gray-500 text-white font-semibold px-2 py-2 rounded-full hover:bg-gray-600 transition duration-300 block">Pas
                        de compte, inscrivez-vous !</a>
                    <div class="mt-4"></div> <!-- Ajout de l'espace ici -->
                    <a href="{{ route('accueil') }}" class="text-gray-600 hover:underline flex items-center">
                        <svg class="w-4 h-4 mr-1 stroke-current text-gray-600" fill="none" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
                            <path d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                        </svg>
                        Retour
                    </a>
                </div>
            </div>
        </div>
    </body>
</x-layout>
