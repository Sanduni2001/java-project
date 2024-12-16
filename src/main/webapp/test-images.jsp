<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL Core Taglib -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Images</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800 flex justify-center items-center h-screen">
<div class="bg-white p-8 rounded-lg shadow-md text-center">
    <h1 class="text-2xl font-bold mb-4">Test Image Display</h1>

    <!-- Image Path Access -->
    <c:url var="imageURL" value="/assets/images/Aboutus.png" />

    <!-- Display Image -->
    <img src="${imageURL}" alt="Test Image" class="w-64 h-64 object-cover rounded-lg shadow-md">

    <!-- Display Context Path -->
    <p class="mt-4 text-gray-600">Image Path: <strong>${imageURL}</strong></p>
    <div>
        <jsp:include page="/components/now_showing.jsp" />
    </div>
</div>
</body>
</html>
