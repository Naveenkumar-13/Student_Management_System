<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Display Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style type="text/css">
a {
	box-shadow: 0px 0px 15px black;
}
</style>
</head>
<body>

	<%@ page import="java.util.List,java.util.Iterator,com.gqt.Student"%>

	<%
    List sList = (List) session.getAttribute("student");
%>
	<table class="table table-bordered table-hover mb-5">
		<thead class="table-dark text-center">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Gender</th>
				<th>City</th>
				<th>Course</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody class="table-warning text-center">
			<%
            Iterator itr = sList.iterator();
            while (itr.hasNext()) {
                Student s1 =(Student) itr.next();
                out.println("<tr><td>" + s1.getSid() +
                		"</td><td>" + s1.getName() + 
                		"</td><td>" + s1.getGender() + 
                		"</td><td>" + s1.getCity() + 
                		"</td><td>" + s1.getCourse() + 
                		"</td><td>" + s1.getAmount() + 
                		"</td></tr>");
            }
    %>
		</tbody>
	</table>
	<a href="index.jsp"
		class="bg-success text-white text-decoration-none fs-5 p-3 rounded-4 m-5">Home Page</a>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
