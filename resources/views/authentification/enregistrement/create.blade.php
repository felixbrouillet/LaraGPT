<x-layout titre="Enregistrement">

    <body class="bg-gray-100">

        <div class="min-h-screen flex items-center justify-center">
            <div class="bg-white p-8 rounded-lg shadow-md w-full sm:w-96">
                <h2 class="text-2xl font-semibold mb-4">Créer un Compte</h2>
                <form action="{{ route('enregistrement.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    {{-- prenom  --}}
                    <div class="mb-4">
                        <label for="prenom" class="block text-gray-700 font-semibold">Prénom</label>
                        <input tid="prenom" name="prenom" type="text" autocomplete="given-name" autofocus
                            value="{{ old('prenom') }}"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                        <x-forms.erreur champ="prenom" />
                    </div>

                    {{-- nom  --}}
                    <div class="mb-4">
                        <label for="last_name" class="block text-gray-700 font-semibold">Nom de famille</label>
                        <input id="nom" name="nom" type="text" value="{{ old('nom') }}"
                            autocomplete="family-name"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                        <x-forms.erreur champ="nom" />
                    </div>

                    {{-- courriel --}}
                    <div class="mb-4">
                        <label for="email" class="block text-gray-700 font-semibold">Courriel</label>
                        <input id="email" name="email" type="email" value="{{ old('email') }}"
                            autocomplete="email" class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                        <x-forms.erreur champ="email" />
                    </div>

                    {{-- mot de passe --}}
                    <div class="mb-4">
                        <label for="password" class="block text-gray-700 font-semibold">Mot de Passe</label>
                        <input id="password" name="password" type="password" autocomplete="current-password"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                        <x-forms.erreur champ="password" />
                    </div>

                    {{-- confirmer mot de passe  --}}
                    <div class="mb-4">
                        <label for="confirm_password" class="block text-gray-700 font-semibold">Confirmer le mot de
                            Passe</label>
                        <input id="confirm-password" name="confirmation_password" type="password"
                            class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2">
                        <x-forms.erreur champ="confirmation_password" />
                    </div>

                    {{-- image de profil  --}}
                    <div class="mb-4">
                        <label for="profile_image" class="block text-gray-700 font-semibold">Image de profil
                            (Optionnelle)</label>
                        <input id="avatar" name="avatar" type="file" class="mt-1 block w-full">
                        <x-forms.erreur champ="avatar" />
                    </div>
                    <div class="mt-4">
                        <button type="submit"
                            class="bg-blue-500 text-white font-semibold px-4 py-2 rounded-full hover:bg-blue-600 transition duration-300">S'inscrire</button>
                    </div>
                </form>

                <div class="mt-6">
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
