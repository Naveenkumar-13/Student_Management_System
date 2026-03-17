<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: lightblue;
}
.form {
    display: flex;
}
</style>
</head>
<body>
    <p class="display-2 text-primary text-center m-5">Student Registration Successful!!</p>
    <div class="form m-auto col-6">
        <a href="index.jsp"
            class="m-3 p-4 bg-danger text-white fw-bold fs-5 rounded-4 text-decoration-none shadow-lg">
            Add New Student
        </a>
        <form action="/01-Project1/DisplayRecords">
            <input type="submit" value="Display Students Info"
                class="m-3 p-4 bg-danger text-white fw-bold fs-5 rounded-4 shadow-lg border-0">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
