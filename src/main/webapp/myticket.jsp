<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Tickets</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100  min-h-screen">
<div>
    <nav>
        <jsp:include page="/components/navbar.jsp" />
    </nav>
</div>


    <div class="bg-white shadow-lg rounded-lg p-6 max-w-md w-full mx-auto">

        <h1 class="text-xl font-bold text-center mb-6">My Tickets</h1>


        <div class="flex justify-center mb-4">
            <img
                src="./assets/images/cs2.png"
                alt="Kung Fu Panda"
                class="w-40 h-56 rounded-lg shadow-md"
            />
        </div>


        <form>
            <div class="mb-4">
                <label for="date" class="block text-sm font-medium text-gray-700">Date</label>
                <input
                    type="text"
                    id="date"
                    class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <div class="mb-4">
                <label for="time" class="block text-sm font-medium text-gray-700">Time</label>
                <input
                    type="text"
                    id="time"
                    class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <div class="mb-4">
                <label for="total-tickets" class="block text-sm font-medium text-gray-700">Total Tickets</label>
                <input
                    type="text"
                    id="total-tickets"
                    class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <div class="mb-4">
                <label for="amount" class="block text-sm font-medium text-gray-700">Amount</label>
                <input
                    type="text"
                    id="amount"
                    class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>


            <p class="text-sm text-gray-700 font-medium mb-4">Movie Name - <span class="font-bold">KUNG FU PANDA</span></p>



            <a href="payment.jsp">
                <button
                type="button"
                class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
                     Continue
            </button>
            </a>

        </form>
    </div>

    <footer>
        <jsp:include page="/components/footer.jsp" />
    </footer>

</body>

</html>