<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>
	
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="_view/stylesheets/stylesheet.css" media="screen" />
		<h1>ELECTION YEAR</h1>
		<h1 align = right>Days left</h1>
		<p align = right id="left"></p>
		<p>Political</p><p id="political"></p>
		<p>Personal</p><p id="personal"></p>
	</head>
	<body>
	
		<form action="${pageContext.servletContext.contextPath}/main" method="post">
			
			<table border = 1 class="floatedTable" align = left>
					<thead>
						<tr>
							<th>
								<label>District</label>
							</th>
							
							<th>
								<label>GO HERE</label>
							</th>
							
							<th>
								<label>Days Spent</label>
							</th>
							
							<th>
								<label>Population</label>
							</th>
							
							<th>
								<label>Top Group</label>
							</th>
							
							<th>
								<label>Percentage</label>
							</th>
							
							<th>
								<label>Dollar bills y'all</label>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dlist}" var="district" varStatus="counter">
							<tr>
								<td>
									<p class = "district" value="${counter.index}">${district.number}</p>
								</td>
								
	 							<td>
									<input type="button" class ="goHere" onclick="move(this);" name="goHere" value="${counter.index}" >GO HERE</input>
								</td>
								
								<td>
									<p class = "days" value="${counter.index}">${district.days}</p>
								</td>
								<td>
									<p class = "pop" value="${counter.index}">${district.pop}</p>
								</td>
								
								<td>
									<p class = "top" value="${counter.index}">${district.top}</p>
								</td>
								<td>
									<p class = "pct" value="${counter.index}">${district.pct}</p>
								</td>
								<td>
									<p class = "money" value="${counter.index}">${district.money}</p>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<table border=1 class="inlineTable" align = right>
					<thead>
						<tr>
							<th>
								<label>Group</label>
							</th>
							
							<th>
								<label>Top Idea</label>
							</th>
							
							<th>
								<label>Vote</label>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>
								<label>Women</label>
							</th>
							
							<th>
								<p id = "wTop"></p>
							</th>
							
							<th>
								<p id = "wVote"></p>
							</th>
						</tr>
												<tr>
							<th>
								<label>Men</label>
							</th>
							
							<th>
								<p id = "mTop"></p>
							</th>
							
							<th>
								<p id = "mVote"></p>
							</th>
						</tr>
												<tr>
							<th>
								<label>White</label>
							</th>
							
							<th>
								<p id = "whTop"></p>
							</th>
							
							<th>
								<p id = "whVote"></p>
							</th>
						</tr>
												<tr>
							<th>
								<label>Black</label>
							</th>
							
							<th>
								<p id = "bTop"></p>
							</th>
							
							<th>
								<p id = "bVote"></p>
							</th>
						</tr>
												<tr>
							<th>
								<label>Latino</label>
							</th>
							
							<th>
								<p id = "lTop"></p>
							</th>
							
							<th>
								<p id = "lVote"></p>
							</th>
						</tr>
					</tbody>
				</table>
			
		</form>
		<script type="text/javascript">
			var myVar = setInterval(myTimer, 2000);
			var dLeft = 365;
			var loc = 0;
			var attrib = [0, 0, 0, 0];
			
			function myTimer() {
				if(dLeft == 365)
				{
					init();
				}
				
				
			    dLeft--;
			    document.getElementById("left").innerHTML = dLeft;
			    var x = document.getElementByClass("days");
			    console.log(x[loc].value);
			    if(dLeft == 0)
			    {
			    	window.clearInterval(myTimer)
			    	end();
			    }
			    
			}
			
			function weights()
			{
				
			}
			
			function init()
			{
				
			}
			
			function move(el)
			{
				loc = el.value;
			}
			
			function end()
			{
				
			}
			
		</script>
	</body>
</html>