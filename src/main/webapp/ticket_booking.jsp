<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
    <title>Buy Ticket</title>
</head>
<body>
<div>
    <div>
        <nav>
            <jsp:include page="/components/navbar.jsp" />
        </nav>
    </div>

    <div class="mt-4 mb-4 text-[#2563EB] shadow-lg py-1">
        <h1 class="text-2xl font-bold text-center mb-6">Movie Ticket Booking</h1>
    </div>

    <div class="p-2 w-full max-w-md mx-auto">
        <!-- Search Bar -->
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 mt-4 mb-4 py-2">
            <label class="flex items-center w-full max-w-sm border rounded-full hover:shadow-lg pl-2">
                <input type="text" placeholder="Movie Name" class="w-full outline-none"/>
                <button class="text-lg w-13 h-8 flex items-center justify-center">
                    <i class="fa-solid fa-magnifying-glass bg-[#2563EB] h-8 min-w-[50px] flex items-center justify-center rounded-r-full text-white"></i>
                </button>
            </label>
        </div>
    </div>

    <div class="mx-auto max-w-xl w-full p-2">
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 mt-2 mb-4">
            <!-- Scrollable Date Selection -->
            <div class="mb-6 overflow-hidden no-scrollbar">
                <span class="block text-md font-medium text-gray-700">Select Date</span>
                <div class="flex space-x-2 mt-2 overflow-x-auto no-scrollbar">
                    <div class="flex space-x-2 w-max">
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-10"
                        >Dec 10</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-11"
                        >Dec 11</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-12"
                        >Dec 12</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-13"
                        >Dec 13</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-14"
                        >Dec 14</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-15"
                        >Dec 15</button>
                        <button
                                class="date-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                                data-date="2024-12-16"
                        >Dec 16</button>
                    </div>
                </div>
            </div>


            <!-- Time Selection (Initially Hidden) -->
            <div id="timeSelection" class="mb-4 hidden">
                <span class="block text-md font-medium text-gray-700">Select Time</span>
                <div class="flex flex-col space-y-2 mt-2 max-w-[615px]">
                    <button
                            class="time-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                            data-time="9:00 AM"
                    >9:00 AM</button>
                    <button
                            class="time-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                            data-time="12:00 PM"
                    >12:00 PM</button>
                    <button
                            class="time-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                            data-time="3:00 PM"
                    >3:00 PM</button>
                    <button
                            class="time-btn bg-gray-200 px-4 py-2 rounded-md hover:bg-[#2563EB] hover:text-white focus:outline-none"
                            data-time="6:00 PM"
                    >6:00 PM</button>
                </div>
            </div>

            <!-- Ticket Selection and Total Price (Initially Hidden) -->
            <div id="submitSection" class="hidden">
                <div class="mb-4">
                    <span class="block text-md font-medium text-gray-700">Available Tickets</span>
                    <span id="availableTickets" class="text-[#2557eb] text-md font-bold">50</span> Tickets available
                </div>

                <div class="mb-4">
                    <label for="tickets" class="block text-md font-medium text-gray-700">Number of Tickets</label>
                    <input
                            type="number"
                            id="tickets"
                            min="1"
                            max="50"
                            value="1"
                            class="mt-1 block w-full p-2 border border-gray-300 max-w-[615px] rounded-md shadow-sm focus:outline-none focus:ring-bg-[#2563EB] focus:border-bg-[#2563EB]"
                    >
                </div>

                <div class="mb-4">
                    <span class="block text-md font-medium text-gray-700">Total Price</span>
                    <span id="totalPrice" class="text-[#2557eb] text-md font-bold">LKR 1000</span>
                </div>

                <!-- Submit Button -->
                <button
                        id="bookNow"
                        class="w-full bg-[#2563EB] max-w-[615px] text-white py-2 px-4 rounded-md hover:bg-[#2563EB] focus:outline-none focus:ring focus:ring-bg-[#2563EB]"
                >
                    Book Now
                </button>
            </div>
        </div>
    </div>


    <div class="mt-4">
        <footer>
            <jsp:include page="/components/footer.jsp" />
        </footer>
    </div>

<script src="#"></script>

<div>
    <script>
        // Initialize ticket availability
        let availableTickets = 50;

        const dateButtons = document.querySelectorAll('.date-btn');
        const timeButtons = document.querySelectorAll('.time-btn');
        const timeSelection = document.getElementById('timeSelection');
        const submitSection = document.getElementById('submitSection');
        const ticketInput = document.getElementById('tickets');
        const totalPriceDisplay = document.getElementById('totalPrice');
        const availableTicketsDisplay = document.getElementById('availableTickets');
        const bookNowButton = document.getElementById('bookNow');

        let selectedDate = null;
        let selectedTime = null;

        dateButtons.forEach(button => {
            button.addEventListener('click', () => {
                dateButtons.forEach(btn => btn.classList.remove('bg-[#2557eb]', 'text-white'));
                button.classList.add('bg-[#2557eb]', 'text-white');
                selectedDate = button.dataset.date;
                timeSelection.classList.remove('hidden');
                submitSection.classList.add('hidden');
            });
        });

        timeButtons.forEach(button => {
            button.addEventListener('click', () => {
                timeButtons.forEach(btn => btn.classList.remove('bg-[#2557eb]', 'text-white'));
                button.classList.add('bg-[#2557eb]', 'text-white');
                selectedTime = button.dataset.time;
                if (selectedDate) {
                    submitSection.classList.remove('hidden');
                }
            });
        });

        // Update total price dynamically
        ticketInput.addEventListener('input', () => {
            const ticketCount = parseInt(ticketInput.value, 10) || 0;
            const ticketPrice = 1000; // LKR
            const totalPrice = ticketCount * ticketPrice;
            totalPriceDisplay.textContent = `LKR ${totalPrice}`;
        });

        // Handle ticket booking
        bookNowButton.addEventListener('click', () => {
            const ticketCount = parseInt(ticketInput.value, 10) || 0;
            if (ticketCount > availableTickets) {
                alert(`Only ${availableTickets} tickets are available!`);
                return;
            }
            availableTickets -= ticketCount;
            availableTicketsDisplay.textContent = availableTickets;
            alert(`Successfully booked ${ticketCount} ticket(s)!`);
        });
    </script>
</div>
</body>

</html>

