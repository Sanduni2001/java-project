<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./css/output.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>ABC</title>
</head>
<body class="bg-white text-gray-800 ">
<script src="https://cdn.jsdelivr.net/npm/@material-tailwind/html@latest/dist/material-tailwind.min.js"></script>



<nav>
    <jsp:include page="/components/navbar.jsp" />
</nav>

<div>
    <jsp:include page="/components/carousal.jsp" />
</div>

<div>
    <jsp:include page="/components/now_showing.jsp" />
</div>

<footer>
    <jsp:include page="/components/footer.jsp" />
</footer>

</body>
</html>