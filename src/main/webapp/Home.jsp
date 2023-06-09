<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="estilos/estilo.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
	integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
	integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/1257316c57.js"
	crossorigin="anonymous"></script>




<title>Home - SanchezExpress</title>

</head>



<body>

	<!-- MENU -->

	<section id="menu">

		<nav class="navbar navbar-expand-lg p-3 mb-5">

			<div class="container-fluid">

				<a class="navbar-brand" href="#"><img
					src="img/logo-sobre-azul.svg" alt="" width="270px"></a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarScroll"
					aria-controls="navbarScroll" aria-expanded="false"
					aria-label="Toggle navigation">

					<span class="navbar-toggler-icon"></span>

				</button>

				<div class="collapse navbar-collapse" id="navbarScroll"
					style="margin-left: 30px">

					<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px;">

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Recibir </a>

							<ul class="dropdown-menu">


								<c:if test="${sessionScope.cliente.dniCif!=null}">
									<li><a class="dropdown-item"
										href="ControladorVistaCliente">Localiza tu env�o</a></li>
									<li>
								</c:if>

								<c:if test="${sessionScope.cliente.dniCif==null}">
									<li><a class="dropdown-item"
										href="ControladorLoginInicioS">Localiza tu env�o</a></li>
									<li>
								</c:if>


								<hr class="dropdown-divider"></li>

						<li><a class="dropdown-item" href="#">Nuestras sucursales</a></li>

						<li>
					</ul>

					</li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Enviar </a>

						<ul class="dropdown-menu">

							<li><a class="dropdown-item" href="#">Env�os locales</a></li>

							<li>

								<hr class="dropdown-divider">

							</li>

							<li><a class="dropdown-item" href="#">Env�os al
									extranjero</a></li>

							<li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="#">Empresa</a>

					</li>

					<li class="nav-item"><a class="nav-link" href="#">Ayuda</a></li>

					<li class="nav-item"><a class="nav-link" href="Contactar.jsp">Contacta</a>

					</li>



					</ul>

					<ul
						style="display: flex; justify-content: center; align-items: center; flex-wrap: wrap">



						<c:if test="${sessionScope.cliente.codCliente!=null}">

							<li style="list-style-type: none">

								<div class="dropdown">
									<button type="button"
										class="btn btn-outline-light dropdown-toggle"
										data-bs-toggle="dropdown" aria-expanded="false">Bienvenid@,
										${sessionScope.cliente.nombre}!</button>

									<ul class="dropdown-menu">
										<li><a class="dropdown-item"
											href="ControladorVistaCliente">Ver mis env�os</a></li>
										<li><a class="dropdown-item"
											href="ControladorCerrarSesion">Cerrar Sesi�n</a></li>
									</ul>
								</div>

							</li>

						</c:if>



						<c:if test="${sessionScope.cliente.codCliente==null}">

							<li style="list-style-type: none"><a
								href='ControladorLoginInicioS'
								style="color: white; text-decoration: none;">

									<button type="button" class="btn btn-outline-light">
										<i class="fa-solid fa-user"
											style="color: #FFFFFF; margin-right: 5px"></i> Iniciar Sesi�n
									</button>

							</a></li>

							<li style="margin-left: 10px; list-style-type: none"><a
								href="ControladorRegistrarse">

									<button type="button" class="btn btn-outline-light">
										<i class="fa-solid fa-user-plus"
											style="color: #FFFFFF; margin-right: 5px"></i> Registrarse
									</button>

							</a></li>

						</c:if>

					</ul>

				</div>

			</div>

		</nav>

	</section>


	<!-- resto del home -->
	<header
		style="background-image: url(img/fondo3.jpg); background-size: cover; background-position: bottom;">

		<div class="texto-header">

			<h1>
				<span>R�pidos y Confiables</span>
			</h1>



			<p class="info">Env�a y recibe env�os en tan solo 5 minutos a
				cualquier parte del mundo.</p>

		</div>



		<div class="imagen-header">

			<!---<p><img src="img/img1.svg" alt="" width="500px"></p>--->

			<!-- <p><img src="img/Global logistics delivery network.svg" alt="" width="500px"></p> -->

			<p style="margin-top: 60px; text-align: center">
				<img alt="" src="img/camion.png" width="650px">
			</p>





		</div>

		</div>



	</header>







	<section id="cards">

		<div class="cards-display">

			<div class="card" style="width: 25rem;">

				<div class="card-body">

					<h5 class="card-title">�Quieres realizar un env�o?</h5>



					<p class="card-text">Para realizar un env�o tan solo necesitas
						DNI y seleccionar tu tarifa adecuada.</p>

					<a href="#">

						<button type="button" class="btn btn-warning">Consultar
							tarifas</button>

					</a>

				</div>

			</div>

			<div class="card" style="width: 25rem;">

				<div class="card-body">

					<h5 class="card-title">�D�nde est� mi env�o?</h5>



					<p class="card-text">Podr�s ver en todo momento donde se
						encuentra tu env�o gracias a nuestro tracking.</p>

					<a href="#"> <a href="ControladorLoginInicioS"><button
								type="button" class="btn btn-warning">Localiza tu env�o</button></a>

					</a>

				</div>

			</div>

			<div class="card" style="width: 25rem;">

				<div class="card-body">

					<h5 class="card-title">�C�mo recibir un env�o?</h5>



					<p class="card-text">Para recoger un env�o debes de ser la
						persona remitente y presentar el DNI.</p>

					<a href="#">

						<button type="button" class="btn btn-warning">Tarifas de
							cobro a destinatario</button>

					</a>

				</div>

			</div>

		</div>

	</section>



	<section id="ventajas">

		<article class="ventajas-texto">

			<h2>
				Ventajas de <img src="img/logo.svg" alt="" width="250px">
			</h2>

			<br>

			<ul>

				<li>

					<article>

						<i class="fa-regular fa-clock fa-2xl" style="color: #005eff;"></i>

					</article>

					<article>

						<h6>Ahorra Tiempo</h6>

						<p>Con la ayuda de nuestro servicio express, cuidar�s de ti o
							de tu negocio.</p>

					</article>

				</li>



				<li>

					<article>

						<i class="fa-solid fa-circle-check fa-2xl" style="color: #004bcc;"></i>

					</article>

					<article>

						<h6>100% Confiable</h6>

						<p>Nuestro sistema de tracking te permitir� saber donde se
							encuentra tu paquete en todo momento.</p>

					</article>

				</li>

				<li>

					<article>

						<i class="fa-solid fa-headset fa-2xl" style="color: #0050db;"></i>

					</article>

					<article>

						<h6>Estamos Aqu� Para Ti</h6>

						<p>Contamos con una atenci�n al cliente que se adapta a tus
							necesidades y resuelve cualquier problema que puedas encontrar.</p>

					</article>

				</li>

				<li>

					<article>

						<i class="fa-solid fa-earth-europe fa-2xl" style="color: #0040ad;"></i>

					</article>

					<article>

						<h6>Env�os a cualquier parte del mundo</h6>

						<p>Contamos con env�os internacionales que te permitir�n
							enviar por todo el mundo.</p>

					</article>

				</li>

			</ul>

		</article>



		<article>

			<img src="img/trabajador.png" width="500px" alt="">

		</article>



	</section>







	<footer>

		<div class="row">

			<div class="col-12 col-md-4">

				<ul>

					<li><h2>Contacto</h2></li>

					<li><p>918 31 19 12</p></li>

					<li><p>ayuda@sanchezexpress.es</p></li>

					<li><p>
							<strong><a href="#">Formulario de contacto > </a></strong>
						</p></li>

					<li><p>
							<strong><a href="#">Sobre nuestra empresa > </a></strong>
						</p></li>

				</ul>

			</div>



			<div class="col-12 col-md-4">

				<ul>

					<li><h2>M�s informaci�n</h2></li>

					<li><p>
							<strong><a href="#">Preguntas frecuentes > </a></strong>
						</p></li>

					<li><p>
							<strong><a href="#">Tarifas de env�os > </a></strong>
						</p></li>

					<li><p>
							<strong><a href="#">M�todos de pago > </a></strong>
						</p></li>

					<li><p>
							<strong><a href="#">Encu�ntranos > </a></strong>
						</p></li>

					<li><p>
							<strong><a href="ControladorLoginEmpleados">Secci�n
									empleados > </a></strong>
						</p></li>

				</ul>

			</div>



			<div class="col-12 col-md-4">

				<ul>

					<li><h2>Redes sociales</h2></li>

					<li>

						<div class="row">

							<div class="col">

								<a href="https://www.instagram.com/kobold_es/"> <i
									class="fa-brands fa-instagram fa-xl" style="color: #ffffff;"></i>

								</a>

							</div>

							<div class="col">

								<a href="https://www.facebook.com/KoboldES/"> <i
									class="fa-brands fa-facebook fa-xl" style="color: #ffffff;"></i>

								</a>

							</div>

							<div class="col">

								<a href="https://www.youtube.com/user/KoboldVorwerkSpain"> <i
									class="fa-brands fa-youtube fa-xl" style="color: #ffffff;"></i>

								</a>

							</div>

							<div class="col">

								<a href="https://www.youtube.com/user/KoboldVorwerkSpain"> <i
									class="fa-brands fa-twitter fa-xl" style="color: #ffffff;"></i>

								</a>

							</div>

							<div class="col">

								<a href="https://www.youtube.com/user/KoboldVorwerkSpain"> <i
									class="fa-brands fa-linkedin fa-xl" style="color: #ffffff;"></i>

								</a>

							</div>

						</div> <br> <br>



						<div class="row">

							<div class="col-12">

								<img src="img/logo-blanco.svg" alt="" width="250px">

							</div>

						</div>

					</li>

				</ul>

			</div>

		</div>

	</footer>



</body>

</html>