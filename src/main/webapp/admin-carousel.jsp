<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carousel Inputs</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
<div class="max-w-4xl mx-auto">
    <h1 class="text-3xl font-bold mb-6 text-left ml-20 text-black">Carousel Inputs</h1>

    <%--    -- Upload Section ----%>
    <form action="UploadServlet" method="POST" enctype="multipart/form-data" class="bg-white p-6 rounded-lg shadow-md mb-6">
        <div class="flex flex-col items-center">
            <label for="moviePoster" class="w-32 h-32 bg-gray-200 rounded-full flex items-center justify-center mb-4 cursor-pointer">
                <img src="./assets/logos/camera.png" alt="Movie Poster" class="w-20 h-20 rounded-lg">
                <input id="moviePoster" name="moviePoster" type="file" accept="image/*" class="hidden">
            </label>
            <button type="submit" class="bg-blue-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-600">Upload</button>
        </div>
        <div class="grid grid-cols-1 gap-4">
            <div>
                <label for="movieTitle" class="block text-gray-700 font-semibold">Add Movie Title</label>
                <input id="movieTitle" name="movieTitle" type="text" placeholder="Enter Title"
                       class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>

            <button type="submit" class="bg-black text-white font-semibold py-2  w-24 rounded-lg hover:bg-gray-800">Add New</button>
        </div>
    </form>

    <%--    -- Movie List Section ----%>
    <div class="bg-white p-6 rounded-lg shadow-md">
        <div class="flex items-center justify-between border-b py-4">
            <div class="flex items-center">
                <img src="./assets/images/ns01.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">Wicked</h3>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>
        <div class="flex items-center justify-between border-b py-4">
            <div class="flex items-center">
                <img src="./assets/images/ns2.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">Maaran</h3>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>
        <div class="flex items-center justify-between border-b py-4">
            <div class="flex items-center">
                <img src="./assets/images/carousal02.png" alt="Movie Poster" class="w-20 h-20 rounded-lg mr-4">
                <div>
                    <h3 class="text-lg font-bold">The Godfather</h3>
                </div>
            </div>
            <div class="flex space-x-2">
                <button class="bg-red-500 text-white font-semibold py-2 px-4 rounded-lg hover:bg-red-600">Remove</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>