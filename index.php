<!doctype html>
<html>
	<head>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script src="http://wisdomweb.ru/editor/localization.js"></script>
		<meta charset="utf-8" />
		<title>
		Задание	
		</title>
	</head>
	<body>
	<div>
		<h2 style="text-align:center">Задание</h2>
	</div>
	<style>
td {padding-top: 10px;
}
td input[type=text],select{
	width: 150px;
	margin-right: 10px;
}
	</style>
		<table>
		<tr>
			<td>Добавить курьера</td>
			<td><input type="text" id="courier"/></td>
        	<td colspan="2" ><input id="addCourier" class="btn btn-success" type="submit" value="OK"></td>
    	</tr>
		</table>
		<h2>Добавить поездку</h2>
		<table>
		<tr>
			<td>Регион</td>
			<td></td>
		</tr>
		<tr>
			<td>Дата из МСК</td>
			<td><input type="text" name="date" id="date" placeholder="Выберите дату" /></td>
		</tr>
		<tr>
			<td>ФИО курьера</td>
			<td id="retCour"></td>
		</tr>
		<tr>
			<td>Дата прибытия в регион</td>
			<td><p id="time"></p></td>
		</tr>
		<tr>
			<td>Дата возврата в МСК</td>
			<td><p id="timeBack"></p></td>
		</tr>
		<tr>
        	<td colspan="2" ><input id="addLeft" class="btn btn-success" type="submit" value="OK"></td>
    	</tr>
		</table>
		<input type="button" id="sortCour" class="btn btn-success" value="По дате отправления" />
		<div id="Res_table"></div>
	</body>
</html>