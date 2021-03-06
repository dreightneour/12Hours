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
		<h3 align = left>Political</h3><h3 align = left id="political"></h3>
		<h3 align = left>Personal</h3><h3 align = left id="personal"></h3>
	</head>
	<body background = "trump-border-wall.jpg">
	
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
									<p class = "days" id ="${counter.index}">0</p>
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
			<select id = "attrib" name = "attrib" required>
			  <option value=0>0</option>
			  <option value=1>1</option>
			  <option value=2>2</option>
			</select>
		</form>
		<script type="text/javascript">
			var myVar = setInterval(myTimer, 2000);
			var dLeft = 365;
			var loc = 0;
			var attrib = [0, 0, 0, 0];
			var numAtt = 0;
			var womenV = 0;
			var menV = 0;
			var blackV = 0;
			var latV = 0;
			var whiteV = 0;
			var votes = [0, 0, 0, 0, 0];
			
			var womenVB = false;
			var menVB = false;
			var whiteVB = false;
			var blackVB = false;
			var latVB = false;
			
			
			function myTimer() {
				if(dLeft == 365)
				{
					init();
				}
				
				if(dLeft % 90 == 0 && dLeft != 90)
				{
					plan(numAtt);
				}
				
				if(dLeft % 30 == 0)
				{
					weights();
				}
				
			    dLeft--;
			    document.getElementById("left").innerHTML = dLeft;
			    
			    var x = document.getElementsByClassName("days");
			    x[loc].innerHTML = parseInt(x[loc].innerHTML) + 1;
			    
			    if(dLeft == 0)
			    {
			    	window.clearInterval(myTimer);
			    	end();
			    }
			    
			}
			
			function plan(num)
			{
				window.clearInterval(myTimer);
				alert("NEED TO PICK AN ATRIBUTE");
				attrib[num] = document.getElementById("attrib").value;
				numAtt++;
			}
			
			function weights()
			{
				var women = parseInt(document.getElementById("wTop").innerHTML);
				if(women / 3 < numAtt && womenVB == false)
				{
					womenV = Math.abs((women % 3) - attrib[women|3]) - 1;
				}
				
				var men = parseInt(document.getElementById("mTop").innerHTML);
				if(men / 3 < numAtt && menVB == false)
				{
					menV = Math.abs((men%3) - attrib[men|3]) - 1;
				}
				
				var white = parseInt(document.getElementById("whTop").innerHTML);
				if(white / 3 < numAtt && whiteVB == false)
				{
					whiteV = Math.abs((white%3) - attrib[white|3]) - 1;
				}
				
				var black = parseInt(document.getElementById("bTop").innerHTML);
				if(black / 3 < numAtt && blackVB == false)
				{
					blackV = Math.abs((black%3) - attrib[black|3]) - 1;
				}
				
				var lat = parseInt(document.getElementById("lTop").innerHTML);
				if(lat / 3 < numAtt && latVB == false)
				{
					latV = Math.abs((lat%3) - attrib[lat|3]) - 1;
				}
				
				if(womenV != 0 && womenVB == false)
				{
					document.getElementById("wVote").innerHTML = parseInt(document.getElementById("wVote").innerHTML) + (womenV * -20);
					womenVB = true;
				}
				
				if(whiteV != 0 && whiteVB == false)
				{
					document.getElementById("whVote").innerHTML = parseInt(document.getElementById("whVote").innerHTML) + whiteV * -20;
					whiteVB = true;
				}
				
				if(menV != 0 && menVB == false)
				{
					document.getElementById("mVote").innerHTML = parseInt(document.getElementById("mVote").innerHTML) + menV * -20;
					menVB = true;
				}
				
				if(blackV != 0 && blackVB == false)
				{
					document.getElementById("bVote").innerHTML = parseInt(document.getElementById("bVote").innerHTML) + blackV * -20;
					blackVB = true;
				}
				
				if(latV != 0 && latVB == false)
				{
					document.getElementById("lVote").innerHTML = parseInt(document.getElementById("lVote").innerHTML) + latV * -20;
					latVB = true;
				}
				
				votes[0] = 30 * parseInt(document.getElementById("wVote").innerHTML) + 17.5 * parseInt(document.getElementById("mVote").innerHTML) + 17.5 * parseInt(document.getElementById("whVote").innerHTML) + 17.5 * parseInt(document.getElementById("bVote").innerHTML) + 17.5 * parseInt(document.getElementById("lVote").innerHTML);
				votes[1] = 17.5 * parseInt(document.getElementById("wVote").innerHTML) + 30 * parseInt(document.getElementById("mVote").innerHTML) + 17.5 * parseInt(document.getElementById("whVote").innerHTML) + 17.5 * parseInt(document.getElementById("bVote").innerHTML) + 17.5 * parseInt(document.getElementById("lVote").innerHTML);
				votes[2] = 17.5 * parseInt(document.getElementById("wVote").innerHTML) + 17.5 * parseInt(document.getElementById("mVote").innerHTML) + 30 * parseInt(document.getElementById("whVote").innerHTML) + 17.5 * parseInt(document.getElementById("bVote").innerHTML) + 17.5 * parseInt(document.getElementById("lVote").innerHTML);
				votes[3] = 17.5 * parseInt(document.getElementById("wVote").innerHTML) + 17.5 * parseInt(document.getElementById("mVote").innerHTML) + 17.5 * parseInt(document.getElementById("whVote").innerHTML) + 30 * parseInt(document.getElementById("bVote").innerHTML) + 17.5 * parseInt(document.getElementById("lVote").innerHTML);
				votes[4] = 17.5 * parseInt(document.getElementById("wVote").innerHTML) + 17.5 * parseInt(document.getElementById("mVote").innerHTML) + 17.5 * parseInt(document.getElementById("whVote").innerHTML) + 17.5 * parseInt(document.getElementById("bVote").innerHTML) + 30 * parseInt(document.getElementById("lVote").innerHTML);
				
				var x = document.getElementsByClassName("pct");
				var y = document.getElementsByClassName("top");
				var z = document.getElementsByClassName("days");
			    
				for(var i = 0; i < 20; i++)
				{
					x[i].innerHTML = (votes[parseInt(y[i].innerHTML)] / 100) + parseInt(z[i].innerHTML);
				}
				
			}
			
			function init()
			{
				document.getElementById("wTop").innerHTML = parseInt(Math.random() * 12);
				document.getElementById("bTop").innerHTML = parseInt(Math.random() * 12);
				document.getElementById("whTop").innerHTML = parseInt(Math.random() * 12);
				document.getElementById("lTop").innerHTML = parseInt(Math.random() * 12);
				document.getElementById("mTop").innerHTML = parseInt(Math.random() * 12);
				
				document.getElementById("wVote").innerHTML = 50;
				document.getElementById("bVote").innerHTML = 50;
				document.getElementById("whVote").innerHTML = 50;
				document.getElementById("lVote").innerHTML = 50;
				document.getElementById("mVote").innerHTML = 50;
				plan(0);
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