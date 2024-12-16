<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Movie Images</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800">

<!-- Title Section -->
<div class="mt-8 ml-20">
    <h1 class="text-3xl font-bold text-black">Now Showing</h1>
</div>

<!-- Grid for Movie Images -->
<div class="flex min-h-screen items-center justify-center bg-white mt-8 mb-8">
    <div class="grid grid-cols-1 gap-20 md:grid-cols-2 lg:grid-cols-4">

        <!-- Movie Card Example -->
        <div class="group relative cursor-pointer items-center justify-center overflow-hidden transition-shadow hover:shadow-xl hover:shadow-black/30">
            <div class="h-96 w-72">
                <!-- Dynamic Image Path -->
                <img class="h-full w-full object-cover transition-transform duration-500"
                     src="<%= request.getContextPath() %>/assets/images/ns01.png" alt="WICKED" />
            </div>
            <div class="absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-black group-hover:from-black/70 group-hover:via-black/60 group-hover:to-black/70"></div>
            <div class="absolute inset-0 flex translate-y-[60%] flex-col items-center justify-center px-9 text-center transition-all duration-500 group-hover:translate-y-0">
                <h1 class="font-dmserif text-3xl font-bold text-white mb-20">WICKED</h1>
                <button class="bg-[#2B2A27] text-white px-4 py-2 rounded-md text-sm shadow-md transition-all hover:bg-gray-700 mt-4 open-modal">
                    More Info
                </button>
            </div>
        </div>

        <!-- Repeat for additional movies -->
        <div class="h-96 w-72">
            <img class="h-full w-full object-cover transition-transform duration-500"
                 src="<%= request.getContextPath() %>/assets/images/ns2.png" alt="MAARAN" />
        </div>

        <div class="h-96 w-72">
            <img class="h-full w-full object-cover transition-transform duration-500"
                 src="<%= request.getContextPath() %>/assets/images/ns3.png" alt="NEVER LET GO" />
        </div>

        <div class="h-96 w-72">
            <img class="h-full w-full object-cover transition-transform duration-500"
                 src="<%= request.getContextPath() %>/assets/images/ns4.png" alt="SONIC" />
        </div>

    </div>
</div>

</body>
</html>
