<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- component -->
<!-- component -->
<div class="bg-sky-100 flex justify-center items-center h-screen">
    <!-- Left: Image -->
    <div class="w-1/2 h-screen hidden lg:block">
        <img src="https://img.freepik.com/fotos-premium/imagen-fondo_910766-187.jpg?w=826" alt="Placeholder Image" class="object-cover w-full h-full">
    </div>
    <div class="login-container">
        <h1>Welcome to Login</h1>
        <form action="#">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <div class="remember-forgot">
                <label for="remember">Remember Me</label>
                <input type="checkbox" id="remember" name="remember">
                <a href="#">Forgot Password?</a>
            </div>

            <button type="submit">Sign In</button>

            <p>Don't have an account? <a href="#">Sign Up</a></p>
            </form>

</div>
</div>
</body>
</html>
