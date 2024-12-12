<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cancel Ticket </title>
</head>
<body class="bg-gray-100">
<script src="https://cdn.jsdelivr.net/npm/@material-tailwind/html@latest/dist/material-tailwind.min.js"></script>
<nav>
    <jsp:include page="/components/navbar.jsp" />
</nav>

<script src="#"></script>
<div class="max-w-4xl mx-auto p-6 bg-white shadow-lg rounded-lg">
    <h1 class="text-2xl font-bold text-center mb-8">Cancel Your Tickets</h1>

    <!-- Email Address Section -->
    <div class="mb-6">
        <label for="email" class="block text-sm font-bold font-medium text-gray-700 mb-2">Email Address</label>
        <input
                id="email"
                type="email"
                placeholder="Enter Your Email Address"
                class="w-full border border-gray-300 rounded-md py-2 px-4 text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
    </div>

    <!-- Booking Information -->
    <div class="mb-6">
        <h2 class="block text-sm font-bold font-medium text-gray-700 mb-2">Your Booking</h2>
        <div class="bg-gray-100 p-4 rounded-lg">
            <p class="text-sm text-gray-700 mb-2"><strong>Movie`:</strong> KUNG FU PANDA</p>
            <p class="text-sm text-gray-700 mb-2"><strong>Show Time:</strong> 9.00 AM</p>
            <p class="text-sm text-gray-700"><strong>Total Amount:</strong> LKR 1000 </p>
        </div>
    </div>

    <!-- Ticket Count Section -->
    <div class="mb-6">
        <label for="ticket-count" class="block text-sm font-bold font-medium text-gray-700 mb-2">How many tickets you want to cancel:</label>
        <input
                id="ticket-count"
                type="number"
                placeholder="Enter here"
                class="w-full border border-gray-300 rounded-md py-2 px-4 text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
    </div>

    <!-- Note Section -->
    <div class="bg-yellow-100 p-4 rounded-lg mb-6">
        <p class="text-sm text-gray-700">
            <strong>Note:</strong> A cancellation fee of LKR 1000 per ticket applies. Refunds will be processed within 3-5 business days.
        </p>
    </div>

    <!-- Cancel Button -->
    <div class="text-center">
        <button
                type="button"
                class="flex items-center justify-center bg-red-600 text-white text-sm font-medium py-2 px-4 rounded-md hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500"
        >
            Cancel Selected Tickets
        </button>
    </div>


</div>

<footer>
    <jsp:include page="/components/footer.jsp" />
</footer>


</body>
</html>
