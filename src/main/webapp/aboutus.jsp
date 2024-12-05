<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Cinema</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
<script src="https://cdn.jsdelivr.net/npm/@material-tailwind/html@latest/dist/material-tailwind.min.js"></script>

<nav>
    <jsp:include page="/components/navbar.jsp" />
</nav>

<div class="max-w-4xl mx-auto p-6 bg-white shadow-lg rounded-lg">
    <!-- Header Section -->
    <header class="text-center">
        <h1 class="text-3xl font-bold mb-4">ABOUT ABC CINEMA</h1>
        <img src="./assets/images/Aboutus.png" alt="Cinema Screen" class="w-full rounded-lg mb-4">
        <p class="text-gray-600">
            At ABC Cinema, we are redefining Sri Lanka's cinema experience by blending tradition with cutting-edge technology and modern comfort. Our goal is to provide moviegoers with world-class entertainment in a setting that feels both nostalgic and innovative.
        </p>
    </header>

    <!-- Mission and Vision Section -->
    <div class="flex flex-col md:flex-row justify-between mt-8 gap-6">
        <div class="bg-blue-100 p-6 rounded-lg shadow-md w-full md:w-1/2">
            <h2 class="text-xl font-semibold text-[#000000] mb-2">MISSION</h2>
            <p class="text-gray-700">
                To deliver unforgettable movie experiences by showcasing diverse films, embracing innovation, and creating a welcoming space where every visitor feels entertained, connected, and valued.
            </p>
        </div>
        <div class="bg-blue-100 p-6 rounded-lg shadow-md w-full md:w-1/2">
            <h2 class="text-xl font-semibold text-[#000000] mb-2">VISION</h2>
            <p class="text-gray-700">
                To become the most beloved destination for cinematic experiences, inspiring audiences with unparalleled storytelling, cutting-edge technology, and exceptional hospitality.
            </p>
        </div>
    </div>

    <!-- Locations Section -->
    <div class="bg-gray-300 p-6 rounded-lg shadow-md mt-8">
        <h3 class="text-lg font-semibold text-[#000000] flex items-center">
            <img src="./assets/logos/location.png" alt="Location" class="w-5 h-5 mr-2">
            ABC Cinema, Galle Road, Colombo
        </h3>
        <p class="text-lg font-semibold text-[#000000] flex items-center mt-2">
            <img src="./assets/logos/contact.png" alt="Contact" class="w-5 h-5 mr-2">
            011 8 209 184
        </p>
        <p class="text-lg font-semibold text-[#000000] flex items-center mt-2">
            <img src="./assets/logos/email.png" alt="Email" class="w-5 h-5 mr-2">
            abccinema@gmail.com
        </p>
    </div>
</div>

<footer>
    <jsp:include page="/components/footer.jsp" />
</footer>

</body>
</html>
