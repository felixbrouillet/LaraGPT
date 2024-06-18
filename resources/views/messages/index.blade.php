<x-layout titre="Enregistrement">
    {{-- nouveau body  --}}

    <body class="bg-gray-100">
        <div class="flex h-screen">
            <!-- Section gauche (Boutons) -->
            <div class="bg-gray-200 w-1/2 p-4">
                <form action="{{ route('deconnexion') }}" method="POST">
                    @csrf
                    <input type="submit" value="Déconnexion"
                        class="bg-indigo-500 text-white rounded-sm px-3 py-2 inline-block font-bold hover:bg-indigo-700">
                </form>
            </div>
            <!-- Section droite (Conversation) -->
            <div class="bg-white w-3/4 p-4 h-1/2-screen">
                <div class="border border-gray-300 rounded-md p-4 h-3/4 overflow-y-auto">
                    <!-- Messages de la conversation -->
                    @if ($messages->isEmpty())
                        <h2 class="text-2xl">Aucun message.</h2>
                    @else
                        <ul>
                            @php $isLaraGPT = true; @endphp
                            @foreach ($messages->reverse() as $message)
                                <!-- Inside the loop where you display messages -->
                                <li
                                    class="group flex flex-col md:flex-row justify-between border-b-2 border-indigo-200 {{ $loop->index < 2 ? 'bg-yellow-200' : 'bg-white' }} hover:border-indigo-500 hover:bg-indigo-300 hover:text-white transition duration-300 ease-in-out px-4 py-2">
                                    <div class="flex items-center">
                                        <!-- Wrap profile picture and message content -->
                                        @if ($isLaraGPT)
                                            <!-- Display LaraGPT's profile picture -->
                                            <img class="w-8 h-8 rounded-full mr-2"
                                                src="{{ asset('storage/uploads/robot.png') }}"
                                                alt="LaraGPT Profile Picture">
                                            <!-- Replace with appropriate image path -->
                                        @else
                                            <!-- Display user's avatar -->
                                            @if (auth()->user()->avatar)
                                                <img class="w-8 h-8 rounded-full mr-2"
                                                    src="{{ auth()->user()->avatar }}"
                                                    alt="Avatar de {{ auth()->user()->prenom }} {{ auth()->user()->nom }}">
                                            @endif
                                        @endif
                                        <div>
                                            <p
                                                class="text-sm bg-indigo-200 text-indigo-600 rounded-sm px-2 py-1 font-semibold">
                                                @if ($isLaraGPT)
                                                    LaraGPT:
                                                @else
                                                    {{ $message->user->prenom }}:
                                                @endif
                                            </p>
                                            <p class="text-sm ml-2">{{ $message->contenu }}</p>
                                        </div>
                                    </div>
                                    <p class="text-xs text-gray-500">{{ $message->created_at->format('H:i') }}</p>
                                </li>



                                @php $isLaraGPT = !$isLaraGPT; @endphp
                            @endforeach
                        </ul>
                    @endif
                </div>
                <form action="{{ route('messages.GenererReponse') }}" method="POST" class="mb-4">
                    @csrf
                    <div class="mb-4">
                        <label for="message" class="block text-gray-700 font-semibold">Votre Message</label>
                        <textarea id="message" name="message" class="mt-1 block w-full border rounded-md border-gray-300 px-3 py-2"
                            rows="4" placeholder="Saisissez votre message..."></textarea>
                    </div>
                    <button type="submit"
                        class="bg-blue-500 text-white font-semibold px-4 py-2 rounded-full hover:bg-blue-600 transition duration-300">Envoyer</button>
                </form>
            </div>
        </div>
    </body>
</x-layout>
