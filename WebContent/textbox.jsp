<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div style="margin: auto;width:30%;padding-top:50px">
<form id="form1" name="form1" method="post">
<div class="form-group">
<input type="text" class="form-control" placeholder= 'Search by product name...' id="pname"><br>
<p align="center"><button type="submit" class="btn btn-primary btn-default" id="search">Submit</button></p><br>
<label for="city">Display city name of student:</label>
<input type="email" class="form-control" placeholder= 'City name' id="city_name"><br><br>
</div>
</form>
</div>
<script>
$("#search").click(function() {
var pname= $('#pname').val();
city_name.value = city_name;
$.ajax({
url: "fetch.jsp",
type: 'POST',
data: {pname: pname},
success: function(data) {
$('#pname').val(data);
alert(data);
var pname = data;
}
});
});
</script>
</body>
</html>