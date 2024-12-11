<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Login</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@material-tailwind/html@latest/dist/material-tailwind.min.js"></script>

<nav>
    <jsp:include page="/components/navbar.jsp" />
</nav>

<div class="flex items-center justify-center min-h-screen bg-gray-100">

    <div class="flex flex-col md:flex-row shadow-lg bg-white rounded-lg overflow-hidden w-full max-w-4xl">

        <div class="w-full md:w-2/3 p-8">
            <h2 class="text-2xl font-semibold text-gray-700">Welcome Back</h2>
            <p class="text-sm text-gray-500 mb-4">Sign in to your account</p>
            <form action="#">
                <div class="mb-4">
                    <label for="username" class="block text-sm font-medium text-gray-600">Username</label>
                    <input
                            type="text"
                            id="username"
                            class="w-full px-4 py-2 mt-1 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            placeholder="Username"
                    />
                </div>
                <div class="mb-4">
                    <label for="password" class="block text-sm font-medium text-gray-600">Password</label>
                    <input
                            type="password"
                            id="password"
                            class="w-full px-4 py-2 mt-1 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            placeholder="Password"
                    />
                </div>
                <div class="flex items-center justify-between mb-4">

                    <a href="#" class="text-sm text-blue-500 hover:underline">Forgot Password?</a>
                </div>
                <button
                        type="submit"
                        class="w-full px-4 py-2 text-white bg-[#1F2B47] rounded-lg hover:bg-[#172139] focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-1"
                >
                    Sign In
                </button>
            </form>
        </div>


        <div class="w-full md:w-1/3 bg-[#1F2B47] text-white p-6 flex flex-col justify-center items-center">
            <h2 class="text-lg font-bold">Welcome to login</h2>
            <p class="text-sm mt-2">Don't have an account?</p>
            <a
                    href="signup.jsp"
                    class="mt-4 px-4 py-2 bg-white text-blue-800 rounded-lg shadow hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-white"
            >
                Sign Up
            </a>
        </div>
    </div>
</div>

<footer>
    <jsp:include page="/components/footer.jsp" />
</footer>

</body>
</html>
