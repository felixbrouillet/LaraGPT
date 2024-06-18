<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LaraGPT</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-full bg-gray-900 overflow-hidden pt-0.5">

<div class="h-full flex flex-col items-center justify-center">
    <h1 class="font-serif text-4xl md:text-6xl xl:text-8xl text-indigo-800 mt-20 sm:mt-32 text-center sm:text-left sm:pl-20 xl:pl-48 font-semibold relative">
        LaraGPT<span class="block text-indigo-500 ml-2 h-1 w-12"></span>
    </h1>

    <div class="flex pt-16 md:pt-32 justify-center md:justify-end md:pr-24 space-x-4" >
        <a href="{{ route('connexion.create') }}" class="btn btn-login text-white">Connexion</a>
        <a href="{{ route('enregistrement.create') }}" class="btn btn-signup text-white">Création de compte</a>
    </div>
</div>

</body>
</html>
