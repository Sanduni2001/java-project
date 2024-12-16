<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Sign In</title>
</head>
<body class="bg-gray-100">

<!-- Navbar -->
<nav class="bg-[#070315] text-white py-3 shadow-lg">
    <div class="container mx-auto flex justify-between items-center">
        <div class="text-xl font-bold">ABC Cinema</div>
        <a href="#" class="px-4 py-2 bg-blue-600 rounded-lg hover:bg-blue-500 focus:outline-none">Back</a>
    </div>
</nav>

<!-- Auth Container -->
<div class="flex items-center justify-center min-h-screen bg-gray-100">
    <div class="flex flex-col md:flex-row shadow-lg bg-white rounded-lg overflow-hidden w-full max-w-4xl fade">

        <!-- Login Form -->
        <div id="loginForm" class="w-full md:w-2/3 p-8">
            <h2 class="text-2xl font-semibold text-gray-700">Welcome Back</h2>
            <p class="text-sm text-gray-500 mb-4">Sign in to your account</p>

            <!-- Login Form -->
            <form id="loginFormElement" action="login" method="post">
                <div class="mb-4">
                    <label for="email" class="block text-sm font-medium text-gray-600">Email</label>
                    <input
                            type="text"
                            id="email"
                            name="email"
                            class="w-full px-4 py-2 mt-1 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            placeholder="Email"
                            required
                    />
                </div>
                <div class="mb-4">
                    <label for="password" class="block text-sm font-medium text-gray-600">Password</label>
                    <input
                            type="password"
                            id="password"
                            name="password"
                            class="w-full px-4 py-2 mt-1 text-sm text-gray-700 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                            placeholder="Password"
                            required
                    />
                </div>
                <div class="flex items-center justify-between mb-4">
                    <a href="forgot-password" class="text-sm text-blue-500 hover:underline">Forgot Password?</a>
                </div>
                <button
                        type="submit"
                        class="w-full px-4 py-2 text-white bg-[#1F2B47] rounded-lg hover:bg-[#172139] focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-1"
                >
                    Sign In
                </button>
            </form>
        </div>

        <!-- Sidebar -->
        <div class="w-full md:w-1/3 bg-[#1F2B47] text-white p-6 flex flex-col justify-center items-center">
            <h2 class="text-lg font-bold">New Here?</h2>
            <p class="text-sm mt-2">Create an account and join us!</p>
            <a
                    href="register"
                    class="mt-4 px-4 py-2 bg-white text-blue-800 rounded-lg shadow hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-white"
            >
                Sign Up
            </a>
        </div>

    </div>
</div>

</body>
</html>
