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
			<p>Who are you</p>
		</section>
		<form action="${pageContext.servletContext.contextPath}/Story" method="post">
			<table>
				<thead>
					<tr>
						<th>
							<label>Origin Story</label>
						</th>
						<th>
							<label>      </label>
						</th>
						<th>
							<label>Time in the System</label>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<select align = center id = "origin" name = "origin" required>
							  <option value=1>Born and raised in a log cabin</option>
							  <option value=2>Straight from the streets</option>
							  <option value=3>Normal life, nothing special</option>
							  <option value=4>Gained money through hard work</option>
							  <option value=5>Comes from a life of luxary</option>
							</select>
						</td>
						<td>
						</td>
						<td>
							<select align = center id = "time" name = "time" required>
							  <option value=1>Just got in the game</option>
							  <option value=2>Always been in the limelight</option>
							  <option value=3>Only ever was a local position</option>
							  <option value=4>Been to the national level</option>
							  <option value=5>Been in the system for years</option>
							</select>
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