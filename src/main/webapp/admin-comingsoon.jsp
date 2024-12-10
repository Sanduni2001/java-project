<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Now Showing</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">


<div class="max-w-4xl mx-auto">
    <h1 class="text-3xl font-bold mb-6 text-left ml-20 text-black">ComingSoon</h1>


    <div class="bg-white p-6 rounded-lg shadow-md mb-6">
        <div class="flex flex-col items-center">

            <label for="uploadImage" class="w-32 h-32 bg-gray-200 rounded-full flex items-center justify-center mb-4 cursor-pointer">

                <img src="./assets/logos/camera.png" alt="Movie Poster" class="w-20 h-20 rounded-lg">
                <input id="uploadImage" type="file" accept="image/*" class="hidden">
            </label>
            <button class="bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg mb-6 hover:bg-blue-600">Upload</button>
        </div>
        <div class="grid grid-cols-1 gap-4">
            <div>
                <label for="addText" class="block text-gray-700 font-semibold">Add Text</label>
                <input id="addText" type="text" placeholder="Add Text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>
            <div>
                <label for="addDescription" class="block text-gray-700 font-semibold">Add Description</label>
                <textarea id="addDescription" placeholder="Add Description" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"></textarea>
            </div>
            <button class="bg-black text-white font-semibold py-2 px-2 w-24 rounded-lg hover:bg-gray-800">Enter</button>

        </div>
    </div>


    <div class="bg-white p-6 rounded-lg shadow-md">

        <div class="flex items-center justify-between border-b py-4">
            <div class="flex items-center">
                <img src="./assets/images/cs1.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">JOKER</h3>
                    <p class="text-sm text-gray-600">
                        Arthur Fleck, a party clown, leads an impoverished life with his ailing mother. However, when society shuns him and brands him as a freak, he decides to embrace the life of crime and chaos
                    </p>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-gray-300 text-gray-700 font-semibold py-2 px-4 rounded-lg hover:bg-gray-400">Update</button>
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>


        <div class="flex items-center justify-between border-b py-4">
            <div class="flex items-center">
                <img src="./assets/images/cs2.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">KUNG FU PANDA</h3>
                    <p class="text-sm text-gray-600">
                        When Po the Panda, a kung fu enthusiast, gets selected as the Dragon Warrior, he decides to team up with the Furious Five and destroy the evil forces that threaten the Valley of Peace.
                    </p>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-gray-300 text-gray-700 font-semibold py-2 px-4 rounded-lg hover:bg-gray-400">Update</button>
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>


        <div class="flex items-center justify-between py-4">
            <div class="flex items-center">
                <img src="./assets/images/cs3.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">BATMAN</h3>
                    <p class="text-sm text-gray-600">
                        The Batman (2022) is a dark, gritty reimagining of the iconic hero, following Bruce Wayne's early vigilante years as he uncovers corruption in Gotham and confronts the Riddler's sinister plots.
                    </p>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-gray-300 text-gray-700 font-semibold py-2 px-4 rounded-lg hover:bg-gray-400">Update</button>
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>