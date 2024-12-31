<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .error {
            color: red;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }
        .success {
            color: green;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-800">

<div class="flex items-center justify-center min-h-screen">
    <div class="bg-white shadow-md rounded-lg px-8 py-6 w-full max-w-md">

        <h1 class="text-2xl font-bold mb-4">Reset Your Password</h1>
        <p class="mb-4 text-sm text-gray-600">Please enter your new password below.</p>

        <!-- Success Message -->
        <c:if test="${not empty success}">
            <div class="success">
                    ${success}
            </div>
        </c:if>

        <!-- Error Message -->
        <c:if test="${not empty error}">
            <div class="error">
                    ${error}
            </div>
        </c:if>

        <form action="<%= request.getContextPath() %>/auth/reset-password" method="post">
            <!-- Hidden Input to Capture Email -->
            <input type="hidden" name="email" value="${email}" />
            <input type="hidden" name="code" value="${code}" />


            <div class="mb-4">
                <label for="newPassword" class="block text-sm font-medium text-gray-600">New Password</label>
                <input type="password"
                       id="newPassword"
                       name="newPassword"
                       class="w-full px-4 py-2 border rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                       placeholder="New Password"
                       required />
            </div>

            <div class="mb-4">
                <label for="confirmPassword" class="block text-sm font-medium text-gray-600">Confirm New Password</label>
                <input type="password"
                       id="confirmPassword"
                       name="confirmPassword"
                       class="w-full px-4 py-2 border rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                       placeholder="Confirm New Password"
                       required />
            </div>

            <button type="submit"
                    class="w-full bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-500 focus:outline-none">
                Reset Password
            </button>
        </form>
    </div>
</div>

</body>
</html>