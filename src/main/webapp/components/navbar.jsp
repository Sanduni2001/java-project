<nav class="bg-[#070315]">
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center justify-between">
            <div class="flex items-center">
                <a href="index.jsp" class="flex items-center">
                    <img class="h-16 w-auto" src="./assets/logos/logo.png" alt="Your Company">
                    <span class="text-white text-lg font-semibold ml-2"></span>
                </a>
            </div>
            <div class="hidden sm:flex space-x-4">
                <a href="index.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Home</a>
                <a href="ticket_booking.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Buy Tickets</a>
                <a href="aboutus.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">About Us</a>
            </div>

            <div class="hidden sm:flex">
                <a href="cancelticket.jsp" class="flex items-center">
                    <img class="h-8 w-auto" src="./assets/logos/cart.png" alt="Your Company">
                    <span class="text-white text-lg font-semibold ml-2"></span>
                </a>
                <!-- Trigger Image -->
                <a href="dashboard2.jsp" class="flex items-center">
                    <img class="h-8 w-auto" src="./assets/logos/user.png" alt="Your Company">
                    <span class="text-white text-lg font-semibold ml-2"></span>
                </a>



                <a href="login.jsp" class="text-gray-300 hover:bg-blue-800 hover:text-white px-3 py-2 rounded-md text-sm font-medium bg-blue-500">
                    Login
                </a>
            </div>

            <div class="sm:hidden">
                <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-expanded="false" aria-controls="mobile-menu">
                    <span class="sr-only">Open main menu</span>
                    <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16m-7 6h7" />
                    </svg>
                    <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <div class="sm:hidden" id="mobile-menu">
        <div class="space-y-1 px-2 pb-3 pt-2">
            <a href="#" class="block text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-base font-medium">Home</a>
            <a href="#" class="block text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-base font-medium">Buy Tickets</a>
            <a href="../aboutus.jsp" class="block text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-base font-medium">About Us</a>
            <a href="#" class="block bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md text-base font-medium">Login</a>
        </div>
    </div>
</nav>

<!-- JavaScript -->
