<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Payment Page</title>
</head>
<nav>
    <jsp:include page="/components/navbar.jsp" />
</nav>
<body>
<div class=" flex items-center justify-center">


<div class="bg-white shadow-md rounded-lg p-6 max-w-md w-full">

    <div class="bg-[#1F2B47] rounded-t-lg py-6 flex items-center justify-center">
        <img src="./assets/logos/atm.png" alt="Card Icon" class="w-12 h-12">
    </div>


    <div class="mt-4 flex justify-center">
        <div class="bg-gray-200 text-gray-800 border border-gray-800 px-4 py-2 rounded-lg text-sm font-semibold focus:outline-none">
            Pay with card
        </div>
    </div>


    <form class="mt-6 space-y-4">

        <div>
            <label for="email" class="block text-sm font-medium text-gray-600">Email</label>
            <input
                    type="email"
                    id="email"
                    placeholder="Your Email"
                    class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
        </div>


        <div>
            <label for="card-details" class="block text-sm font-medium text-gray-600">Card Details</label>
            <input
                    type="text"
                    id="card-details"
                    placeholder="1234 5678 9012 3456"
                    class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
        </div>


        <div class="flex space-x-4">
            <div class="flex-1">
                <label for="expiration-date" class="block text-sm font-medium text-gray-600">Expiration Date</label>
                <input
                        type="text"
                        id="expiration-date"
                        placeholder="MM/YY"
                        class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>
            <div class="flex-1">
                <label for="cvv" class="block text-sm font-medium text-gray-600">CVV</label>
                <input
                        type="text"
                        id="cvv"
                        placeholder="123"
                        class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>
        </div>


        <div>
            <label for="holder-name" class="block text-sm font-medium text-gray-600">Holder Name</label>
            <input
                    type="text"
                    id="holder-name"
                    placeholder="e.g John Doe"
                    class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
        </div>


        <button
                type="submit"
                class="w-full bg-[#1F2B47] text-white py-2 rounded-lg hover:bg-[#172139] focus:outline-none focus:ring-2 focus:ring-blue-600"
        >
            Pay Now
        </button>
    </form>


    <div class="mt-4 text-sm text-gray-500 flex items-center justify-center">
       <img class="h-4 w-4 mr-4" src="./assets/logos/lock.png">
        Payments are secure and encrypted
    </div>
</div>
</div>


</body>
<footer>
    <jsp:include page="/components/footer.jsp" />
</footer>

</html>

