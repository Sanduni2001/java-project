<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Signup</title>
</head>
<body>
<nav>
<jsp:include page="/components/navbar.jsp" />
</nav>
<script src="#"></script>

<div class="flex items-center justify-center min-h-screen bg-[#FFFFFF]">
    <div class="w-full max-w-md bg-white shadow-lg rounded-lg p-8">
        <h1 class="text-2xl font-semibold text-center text-gray-800 mb-6">Sign Up</h1>
        <form action="#">

            <div class="mb-4">
                <input
                        type="text"
                        placeholder="Name"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>


            <div class="mb-4">
                <input
                        type="email"
                        placeholder="Email"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>


            <div class="mb-4">
                <input
                        type="password"
                        placeholder="Password"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>


            <button
                    type="submit"
                    class="w-full px-4 py-2 text-white bg-[#1F2B47] rounded-lg hover:bg-[#172139] focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
                Sign Up
            </button>
        </form>


        <div class="text-center mt-4">
            <p class="text-sm text-gray-600">
                Already have an Account?
                <a href="login.jsp" class="text-blue-500 hover:underline">Log In</a>
            </p>
        </div>



    </div>
</div>
<footer>
<jsp:include page="/components/footer.jsp" />
</footer>
</body>
</html>