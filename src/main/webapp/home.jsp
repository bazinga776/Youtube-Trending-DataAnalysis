<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTrends</title>
<style>
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: teal;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
body{
background-image: url(analysis.jpg);
background-color:#F5F5DB;
}

.welcome{
margin-left:550px;
position:relative;
z-index:100;
color:white;
overflow: hidden;
z-index: 2;
font-family: Verdana,sans-serif;
font-size: 20px;
    line-height: 1.5;
}

.countryButton{
width: 395px;
height: 70px;
border: 1px solid blue;
font-family: Georgia, serif;
font-size: large;
text-align: center;
background-color:#d5e1df;
color: teal;
}

.countryButtonHover:hover{
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>

<h1 class="welcome">Welcome to UTrends</h1>
<div style="margin-left:550px;margin-bottom:40px;color:white;font-family: &quot;Segoe UI&quot;,Arial,sans-serif;"> A TREND ANALYSIS WEBSITE</div>

 <div id = "countryBox" style="margin-bottom:50px">
 <table style = "float:left;border: 1px solid red;width:200px;height:340px;background-color:#d5e1df">
 	<tr>
 		<td>About:</td>
 	</tr>
 	<tr>
 		<td>Youtube video data across 5 countries over a period of 205 days is taken and trends have been identified. This site aims to provide an understanding to people or channels to increase popularity of their videos or channels and to identify the contribution and pattern by statistically analyzing different demographic factors like region, time of upload, trends, category of the video etc., </td>
 	</tr>
 	
 </table>
 
 <table style="margin-left:150px;display:inline-block;">
 	<tr>
 		<td > <button class = "countryButton countryButtonHover" onclick = "selectCountries(5,this);" >France</button></td>
 		<td><button class = "countryButton countryButtonHover" onclick = "selectCountries(1,this);" >Canada</button></td>
 	</tr>
 	<tr>
 		<td><button class = "countryButton countryButtonHover" onclick = "selectCountries(2,this);" >United States</button></td>
 		<td><button class = "countryButton countryButtonHover" onclick = "selectCountries(3,this);" >Great Britain</button></td>
 	</tr>
 	<tr>
 		<td><button class = "countryButton countryButtonHover" onclick = "selectCountries(4,this);" >Germany</button></td>
 	</tr>
 </table>
 
 </div>
 <div style="margin-left:550px;margin-bottom:40px;color:white;font-family: &quot;Segoe UI&quot;,Arial,sans-serif;font-size: 20px;">Please Select More Than One Country</div>
 <div id = "countryList" style = "display:none;" ></div>
<!-- <div id = "CountryReg" style = "margin-left:750px;width:95px; height: 30px; border: 1px solid blue;text-align:center;background-color: white;" onclick= "setCountryList()">Enter</div>
 -->
 <div style="padding-left:600px;" >
 	<button class="button" onclick= "setCountryList()" >Enter</button>
 </div>
 </body>
<script>
function selectCountries(country,el){
	console.log('Countries added');
	var countryList = document.getElementById('countryList').innerHTML.split(',');
	if(countryList.includes(country.toString())){
		for( var i = 0; i < countryList.length; i++){ 
			   if ( countryList[i] === country.toString()) {
				   countryList.splice(i, 1); 
			   }
			}
		el.style.backgroundColor = "#d5e1df";
		el.style.color = "teal";
	}else{
		countryList.push(country);
		el.style.backgroundColor = "blue"
		el.style.color = "white";
	}
	document.getElementById('countryList').innerHTML = countryList;
	/* document.getElementById('CountryReg').children[0].href += '?countryList='+countryList.toString(); */

}
function setCountryList(country){
	if(document.getElementById('countryList').innerHTML == ""){
		alert("PLEASE SELECT ATLEAST ONE COUNTRY");
	}
	else{
		window.location.href +="/login?countryList="+document.getElementById('countryList').innerHTML;
	}
}
</script>
</html>