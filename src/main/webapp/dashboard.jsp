<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<link rel="shortcut icon" type="image/png" href="./favicon.png" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>${APP_TITLE} panel de control</title>
</head>
<body class="w-full h-lvh">
	<nav class="fixed z-20 w-full p-6 bg-blue-dark flex justify-between items-center">
		<div class="flex justify-center items-center gap-3 cursor-pointer">
			<img src="./favicon.png" alt="logo" class="w-8" />
			<span class="text-white-bone font-bold">UTP<span class="text-red-light font-bold">+</span>SPORT</span>
		</div>
		<div class="relative w-48 select-none flex justify-center items-center text-white-bone gap-3 cursor-pointer px-3 py-2 rounded-full font-bold" id="profile">
			<i class="bi bi-person-circle"></i>
			<span>Nombre</span>
			<i class="bi bi-caret-up-fill" id="arrow"></i>
			<div class="absolute -bottom-24 left-0 w-full bg-blue-dark hidden select-none" id="sub-menu">
				<span class="w-full flex justify-center items-center px-3 py-2 gap-3 cursor-pointer">
					<i class="bi bi-sliders"></i>
					<span>Configuraciones</span>
				</span>
				<span class="w-full flex justify-center items-center px-3 py-2 gap-3 cursor-pointer">
					<i class="bi bi-box-arrow-right"></i>
					<span>Cerrar sesión</span>
				</span>
			</div>
		</div>
	</nav>
	<main class="w-full h-full flex flex-col justify-start items-center pl-10 pt-32 pr-10 pb-5">
		<div class="relative w-full h-96 flex justify-between items-center overflow-hidden rounded-lg bg-white-bone p-10 animate-customPulse">
			<div class="w-96 flex flex-col justify-center items-start gap-3">
				<h1 class="text-3xl text-purple-dark uppercase font-bold">Verifica tu cuenta</h1>
				<p>Es importante verificar tu cuenta para brindarte mayor seguridad. ¡Bienvenido!</p>
				<button class="w-full px-3 py-2 text-white-bone bg-purple-dark font-bold rounded-full">Verificar</button>
			</div>
			<img alt="credencial" src="./img/credenciales.png" class="reltive z-10 w-52 -translate-x-96">
			<div class="absolute w-[80%] h-[200%] -top-48 -right-48 bg-purple-light rounded-full"></div>
		</div>
		<div class="w-full h-full grid place-content-center place-items-center grid-cols-5 grid-rows-1 pt-10 gap-3">
			<div class="relative w-full h-full bg-white-bone rounded-lg col-start-1">
				<span class="absolute -top-4 left-2 font-bold uppercase text-white-bone bg-blue-dark px-3 py-2 rounded-full text-sm">Agregar equipos</span>
				<form action="" method="get" class="w-full flex flex-col justify-center items-start gap-3 px-4 py-8">
					<label class="w-full flex flex-col justify-center items-start gap-3">
						<span class="font-bold text-red-light">Nombre del equipo</span>
						<input type="text" name="nombre_equipo" id="input_name_team" placeholder="Nombre del equipo..." class="w-full px-3 py-2 rounded-full outline-none border border-solid border-blue-dark bg-transparent"/>
					</label>
					<label class="w-full flex flex-col justify-center items-start gap-3">
						<span class="font-bold text-red-light">Logo del equipo</span>
						<span class="flex justify-start items-center gap-3">
							<input type="text" name="path" id="path" placeholder="C:/user/img" class="w-full px-3 py-2 rounded-full outline-none border border-solid border-blue-dark bg-transparent"/>
							<button class="w-52 p-3 bg-purple-dark text-white-bone font-bold text-[.7rem] rounded-full">Agregar imagen</button>
						</span>
					</label>
					<input type="button" value="Agregar" class="w-full bg-green-dark rounded-full text-white-bone font-bold px-3 py-2 cursor-pointer mt-3" />
					<div class="w-full max-h-[9.7rem] overflow-hidden overflow-y-scroll">
						<table class="w-full h-full">
							<thead class="border-b">
								<tr>
									<th class="rounded-full w-full bg-blue-dark text-white-bone">Nombres de equipo</th>
									<th class="rounded-full w-full bg-blue-dark text-white-bone">Opciones</th>
								</tr>
							</thead>
							<tbody>
								<!-- mostrar lista -->
								<tr>
									<td class="rounded-full w-full bg-purple-light text-white-bone px-3 py-2">dsdsdsds</td>
									<td class="rounded-full w-full bg-purple-light text-white-bone flex justify-center items-center px-3 py-2 gap-3">
										<i class="bi bi-pen-fill cursor-pointer rounded-lg px-2 py-1 bg-blue-400 text-white-bone"></i>
										<i class="bi bi-trash-fill cursor-pointer rounded-lg px-2 py-1 bg-red-light text-white-bone"></i>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
			<div class="relative w-full h-full bg-white-bone rounded-lg col-start-2">
				<span class="absolute -top-4 left-2 font-bold uppercase text-white-bone bg-blue-dark px-3 py-2 rounded-full text-sm">Calendario</span>
			</div>
			<div class="relative w-full h-full bg-white-bone rounded-lg col-start-3">
				<span class="absolute -top-4 left-2 font-bold uppercase text-white-bone bg-blue-dark px-3 py-2 rounded-full text-sm">Notificaciones</span>
			</div>
			<div class="relative w-full h-full bg-white-bone rounded-lg col-start-4 col-end-6 p-6">
				<span class="absolute -top-4 left-2 font-bold uppercase text-white-bone bg-blue-dark px-3 py-2 rounded-full text-sm">Enfrentamientos</span>
				<div class="mt-6 w-full px-3 py-2 flex justify-center items-center gap-3">
					<div class="grid gap-y-3 place-content-center place-items-center grid-cols-3 grd-rows-2">
						<select name="equipoA" id="equipoA" class="w-full px-3 py-2 bg-transparent border border-solid border-black rounded-lg">
						<option value="">--seleccione un equipo--</option>
						</select>
						<span class="font-bold text-red-light">VS</span>
						<select name="equipoA" id="equipoA" class="w-full px-3 py-2 bg-transparent border border-solid border-black rounded-lg">
							<option value="">--seleccione un equipo--</option>
						</select>
						<input type="datetime-local" name="datetime_inicio" class="w-full px-3 py-[.4rem] bg-transparent border border-solid border-black rounded-lg"/>
						<span class="font-bold text-red-light">a</span>
						<input type="datetime-local" name="datetime_fin" class="w-full px-3 py-[.4rem] bg-transparent border border-solid border-black rounded-lg"/>
					</div>
					<button class="text-white-bone bg-green-dark rounded-lg px-3 py-2">
						<i class="bi bi-plus-square-fill"></i>
					</button>
				</div>
				<div  class="mt-3 w-full max-h-[16.6rem] overflow-hidden overflow-y-scroll">
					<table class="w-full h-full">
						<thead class="border-b">
							<tr>
								<th class="rounded-full w-[20%] bg-blue-dark text-white-bone">Equipo A</th>
								<th class="rounded-full w-[30%] bg-blue-dark text-white-bone">Fecha y hora</th>
								<th class="rounded-full w-[20%] bg-blue-dark text-white-bone">Equipo B</th>
								<th class="rounded-full w-full bg-blue-dark text-white-bone">Opciones</th>
							</tr>
						</thead>
						<tbody>
							<!-- Lista de enfrentamientos -->
							<tr>
								<td class="rounded-full w-[20%] bg-purple-light text-white-bone px-3 py-2 text-center">Furia</td>
								<td class="rounded-full w-[30%] bg-purple-light text-white-bone px-3 py-2 text-center">12/06/2024 18:30</td>
								<td class="rounded-full w-[20%] bg-purple-light text-white-bone px-3 py-2 text-center">Dunker</td>
								<td class="rounded-full w-full bg-purple-light text-white-bone flex justify-center items-center px-3 py-2 gap-3">
									<i class="bi bi-pen-fill cursor-pointer rounded-lg px-2 py-1 bg-blue-400 text-white-bone"></i>
									<i class="bi bi-trash-fill cursor-pointer rounded-lg px-2 py-1 bg-red-light text-white-bone"></i>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<script type="text/javascript" src="./js/optionProfile.js"></script>
</body>
</html>