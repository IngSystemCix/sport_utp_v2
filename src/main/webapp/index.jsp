<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<link rel="shortcut icon" type="image/png" href="./favicon.png" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>${APP_TITLE} Inicio</title>
</head>
<body class="w-full h-lvh flex justify-center items-center">
	<div class="w-full h-full flex justify-center items-center bg-white-bone">
		<img src="./img/deportista.png" alt="deportista" style="filter: drop-shadow(1rem -1rem 1rem #191919)"/>
	</div>
	<div class="w-full h-full flex justify-center items-center">
		<form action="" method="post" class="w-[60%] h-auto p-6 flex flex-col justify-center items-start gap-4">
			<img src="./img/UTP+SPORT.png" alt="logo" class="w-32" />
			<label class="w-full flex flex-col justify-center items-start gap-4">
				<span class="uppercase font-bold text-purple-dark">Código</span>
				<input type="text" name="code" id="code" placeholder="U12345678" oninput="limitInput(event)" class="outline-none w-full bg-transparend border boder-solid border-black rounded-full px-3 py-2" />
			</label>
			<label class="relative w-full flex flex-col justify-center items-start gap-4">
				<span class="uppercase font-bold text-purple-dark">Contraseña</span>
				<input type="password" name="pass" id="pass" placeholder="••••••••••••••••••••••••" class="outline-none w-full bg-transparend border boder-solid border-black rounded-full pl-3 py-2 pr-10"/>
				<i class="bi bi-eye-slash absolute bottom-2 right-4 text-purple-dark cursor-pointer"></i>
			</label>
			<div class="w-full flex justify-end items-center">
				<a href="#" class="font-bold text-blue-dark">¿Olvidastes tu contraseña?</a>
			</div>
			<input type="submit" value="Iniciar sesión" class="w-full bg-purple-dark px-3 py-2 text-white-bone rounded-[1rem] font-bold cursor-pointer"/>
		</form>
	</div>
	<script type="text/javascript" src="./js/showPass.js"></script>
	<script type="text/javascript" src="./js/propertyCode.js"></script>
</body>
</html>