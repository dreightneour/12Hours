<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
	
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="_view/stylesheets/stylesheet.css" media="screen" />
	</head>
	
	
	
	
	<body>
	

		<section class="page-header">
			<h1 class="">12Hour</h1>
			<p>This is where the story begins</p>
		</section>
		<form action="${pageContext.servletContext.contextPath}/index" method="post">
			<table class="user-input">
				<thead>
					<tr>
						<th>
							<label>Name</label>
						</th>

						<th>
							<label>Country</label>
						</th>
						<th>
							<label>Party</label>
						</th>
						<th>
							<label>Password</label>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="text" name="name" value="Trump" required>
						</td>
						<td>
							<input type="text" name="country" value="USA" required>
						</td>
						<td>
							<input type="text" name="party" value="Republican" required>
						</td>
						<td>
							<input type="text" name="password" value="PASSWORD" required>
						</td>
					</tr>	
				</tbody>			
			</table>
			<input type="submit" value="Submit"/>
		</form>
		
		<script type="text/javascript">

			
		
		</script>
	</body>
</html>