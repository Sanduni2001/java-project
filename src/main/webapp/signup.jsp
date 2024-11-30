<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Signup</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@material-tailwind/html@latest/dist/material-tailwind.min.js"></script>

<div class="flex items-center justify-center min-h-screen bg-gray-100">
    <div class="w-full max-w-md bg-white shadow-lg rounded-lg p-8">
        <h1 class="text-2xl font-semibold text-center text-gray-800 mb-6">Sign In</h1>
        <form action="#">
            <!-- Name Input -->
            <div class="mb-4">
                <input
                        type="text"
                        placeholder="Name"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <!-- Email Input -->
            <div class="mb-4">
                <input
                        type="email"
                        placeholder="Email"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <!-- Password Input -->
            <div class="mb-4">
                <input
                        type="password"
                        placeholder="Password"
                        class="w-full px-4 py-2 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
            </div>

            <!-- Submit Button -->
            <button
                    type="submit"
                    class="w-full px-4 py-2 text-white bg-blue-600 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
                Sign Up
            </button>
        </form>

        <!-- Already have an account -->
        <div class="text-center mt-4">
            <p class="text-sm text-gray-600">
                Already have an Account?
                <a href="#" class="text-blue-500 hover:underline">Log In</a>
            </p>
        </div>

        <!-- Sign up with Google -->
        <button
                type="button"
                class="flex items-center justify-center w-full mt-6 px-4 py-2 text-sm text-gray-800 bg-black rounded-lg hover:bg-gray-900 focus:outline-none focus:ring-2 focus:ring-gray-800"
        >
            <img
                    src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg"
                    alt="Google"
                    class="w-5 h-5 mr-2"
            />
            Sign up with Google
        </button>
    </div>
</div>

</body>
</html>
