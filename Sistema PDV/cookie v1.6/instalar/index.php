<?php
error_reporting(0); // Al configurar esto en E_ALL, se demostró que la causa de no redireccionamiento eran pocas líneas en blanco agregadas en algunos archivos php.
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <title>PDV Intalador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <style media="screen">
	 .hide {
	 	display: none;
	 }
    body {
            background: url(../assets/img/login.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
				color: #293953;
				font-family: 'Lato', sans-serif;
         }
			.installmodal-container {
			  padding: 30px;
			  max-width: 700px;
			  width: 100% !important;
			  background-color: #F0F0F0;
			  margin: 0 auto;
			  margin-top: 150px;
			  border-radius: 2px;
			  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			  overflow: hidden;
			}
			.modal-backdrop {
				background: none;
			}
			.logo {
				margin-top: 50px;
			}
			.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
				background: none;
				border: none;
				background-color: #293953;
				color: white;
				border-radius: 3px;
			}
			.nav-tabs>li>a {
				text-align: center;
			    color: #293953;
				 font-weight: 400;
				 text-transform: uppercase;
				 border: none;
				 font-size: 18px;
			}
			.nav-tabs>li>a>p {
				font-weight: 500;
				font-size: 10px;
				margin: 0;
				text-transform: capitalize;
			}
			.nav-tabs>li>a:hover {
			   background: none;
				border: none;
			}
			.nav-tabs {
				border: none;
		   }
			.label-success {
					background-color: #4CAF50;
			}
			.btn-next {
				background-color: #293953;
				color: white;
				float: right;
			}
			.btn-next:hover {
				background-color: #425c77;
				color: white;
			}
    </style>
  </head>
  <body>
<?php
	require_once('includes/core_class.php');
	require_once('includes/database_class.php');
	$db_config_path = "../application/config/database.php";
	$installPos = "../INSTALL_PDV_COOKIE";
?>
<center><img src="../assets/img/logo.png" alt="logo" class="logo"></center>
     <div class="modal fade" id="install-modal" tabindex="-1" role="dialog">
       <div class="modal-dialog">
            <div class="installmodal-container">
<?php
if (is_file($installPos)) {
$step  = isset($_GET['step']) ? $_GET['step'] : '0';
	switch($step){
	default:

	$error = FALSE;
	if(phpversion() < "5.3"){$error = TRUE; $check1 = "<span class='label label-danger'>Your PHP version is ".phpversion()."</span>";}else{$check1 = "<span class='label label-success'>v.".phpversion()."</span>";}
	if(!extension_loaded('mcrypt')){$error = TRUE; $check2 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check2 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
   if(!extension_loaded('mbstring')){$error = TRUE; $check4 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check4 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!extension_loaded('mysqli')){$error = TRUE; $check12 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check12 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!extension_loaded('gd')){$check5 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check5 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!extension_loaded('pdo')){$error = TRUE; $check6 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check6 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!extension_loaded('dom')){$check7 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check7 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!extension_loaded('curl')){$error = TRUE; $check8 = "<span class='label label-danger'><i class='fa fa-times' aria-hidden='true'></i></span>";}else{$check8 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
   if(!is_writeable($db_config_path)){$error = TRUE; $check9 = "<span class='label label-danger'>Please make the application/config/database.php file writable.</span>";}else{$check9 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(!is_writeable("../files")){$check10 = "<span class='label label-danger'>files folder is not writeable!</span>";}else{$check10 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}
	if(ini_get('allow_url_fopen') != "1"){$check11 = "<span class='label label-warning'>Allow_url_fopen is not enabled!</span>";}else{$check11 = "<span class='label label-success'><i class='fa fa-check' aria-hidden='true'></i></span>";}

?>
					<ul class="nav nav-tabs">
		            <li class="active"><a>Requerimientos<p>Archivos necesarios</p></a></li>
						<li class=""><a>Base de datos<p>Configuración</p></a></li>
						<li class=""><a>Página Web<p>Configuración</p></a></li>
		            <li class=""><a>Final<p>Éxito !</p></a></li>
		         </ul>
				<div class="tab-content">
	            <div class="tab-pane fade in active" id="Checklist">
						<h3>Archivos necesarios</h3>
			          <table class="table table-striped">
					      <thead><tr><th>Requerimientos</th><th>Resultado</th></tr></thead>
					      <tbody>
								<tr><td>PHP 5.3+ </td><td><?php echo $check1; ?></td></tr>
								<tr><td>Extensión GD PHP</td><td><?php echo $check5; ?></td></tr>
								<tr><td>Extensión Mysqli PHP</td><td><?php echo $check12; ?></td></tr>
								<tr><td>Extensión Mcrypt PHP</td><td><?php echo $check2; ?></td></tr>
								<tr><td>Extensión MBString PHP</td><td><?php echo $check4; ?></td></tr>
								<tr><td>Extensión DOM PHP</td><td><?php echo $check7; ?></td></tr>
								<tr><td>Escritura carpeta de archivos</td><td><?php echo $check10; ?></td></tr>
								<tr><td>Extensión PDO PHP</td><td><?php echo $check6; ?></td></tr>
								<tr><td>Extensión CURL PHP</td><td><?php echo $check8; ?></td></tr>
								<tr><td>Allow_url_fopen esta habilitado</td><td><?php echo $check11; ?></td></tr>
								<tr><td>Escritura de archivo (database.php)</td><td><?php echo $check9; ?></td></tr>
					      </tbody>
					    </table>
						 <form method="get"><input type="hidden" name="step" value="1" />
				 	 	<button type="submit" class="btn btn-next <?=$error ? 'disabled' : '';?>" href="">Siguiente ></button>
					</form>
					</div>
<?php
	break;
	case "1": ?>
	<ul class="nav nav-tabs">
		<li class=""><a>Requerimientos<p>Archivos necesarios</p></a></li>
		<li class="active"><a>Base de datos<p>Configuración</p></a></li>
		<li class=""><a>Página Web<p>Configuración</p></a></li>
		<li class=""><a>Final<p>Éxito !</p></a></li>
	</ul>
<div class="tab-content">
					<div class="tab-pane fade in active" id="Database">


							 <form id="install_form" method="post" action="?step=1">
							 <fieldset>
								<legend style="padding-top:20px">Configuración de la base de datos</legend>
								<div class="alert alert-dismissible alert-success">
	  								Ingrese los datos correctamente,
	  								el instalador creará la <strong>base de datos y tablas</strong>
								</div>

								<?php
								$hide = '';
								if($_POST) {
												// Cargue las clases y cree los nuevos objetos
												$core = new Core();
												$database = new Database();
												// Validate the post data
												if($core->validate_post($_POST) == true)
												{
													// Primero crea la base de datos, luego crea tablas y luego escribe el archivo de configuración
													if($database->create_database($_POST) == false) {
														echo "<p style='color:#ED5565'>La base de datos no pudo ser creada, verifique su configuración.</p>";
														$error = 1;
													} else if ($database->create_tables($_POST) == false) {
														echo "<p style='color:#ED5565'>Las tablas de la base de datos no se pudieron crear, verifique su configuración.</p>";
														$error = 1;
													} else if ($core->write_database($_POST) == false) {
														echo "<p style='color:#ED5565'>El archivo de configuración de la base de datos no se pudo escribir, en chmod application/config/database.php 777.</p>";
														$error = 1;
													}
													// Si no hay errores, redirija a la página de registro
													if(!isset($error)) {
														echo '<div class="alert alert-dismissible alert-success">
							  								<i class="fa fa-check" style="margin:0 7px" aria-hidden="true"></i>¡Bien!, se estableció una conexión con la base de datos.
															</div>';
														echo '<a href="index.php?step=2" class="label label-success" style="float:right;font-size:20px;"> Continuar instalación > </a>';
														$hide = 'hide';
													}
												}
											}?>
								<div class="form-group <?=$hide;?>">
									<label for="hostname">Hostname</label>
									<input type="text" required id="hostname" class="form-control" name="hostname" />
								</div>
								<div class="form-group <?=$hide;?>">
									<label for="database">Nombre de base de datos</label>
									<input type="text" required id="database" class="form-control" name="database" />
								</div>
								<div class="form-group <?=$hide;?>">
									<label for="username">Usuario</label>
									<input type="text" required id="username" class="form-control" name="username" />
								</div>
								<div class="form-group <?=$hide;?>">
									<label for="password">Contraseña</label>
									<input type="password" id="password" class="form-control" name="password" />
								</div>
									<input type="submit" class="btn btn-next <?=$hide;?>" value="Instalar" id="submit" />
							 </fieldset>
							 </form>

					</div>
<?php
	break;
	case "2": ?>
	<ul class="nav nav-tabs">
		<li class=""><a>Requerimientos<p>Archivos necesarios</p></a></li>
		<li class=""><a>Base de datos<p>Configuración</p></a></li>
		<li class="active"><a>Página Web<p>Configuración</p></a></li>
		<li class=""><a>Final<p>Éxito !</p></a></li>
	</ul>
<div class="tab-content">
					<div class="tab-pane fade in active" id="Config">
						<fieldset>
							<div class="alert alert-dismissible alert-success">
							  <i class='fa fa-check' style="margin:0 7px" aria-hidden='true'></i>¡Bien!, se estableció una conexión con la base de datos.
							</div>

						  <legend style="padding-top:20px">Página Web</legend>
						<form id="install_form" method="post" action="?step=2">
							<?php if($_POST){

								$core = new Core();
								$company = $_POST['companyname'];
								$phone = $_POST['phone'];
								$currency = $_POST['currency'];
								$tax = $_POST['tax'];
								$domain = $_POST['domain'];
								$timezone  = $_POST['timezone'];

								define("BASEPATH", "instalar/");
								include("../application/config/database.php");
								$con=mysqli_connect($db['default']['hostname'], $db['default']['username'], $db['default']['password'], $db['default']['database']);

								$settings = mysqli_query($con,"INSERT INTO ck_ajustes (`id`, `companyname`, `phone`, `currency`, `receiptfooter`, `theme`, `tax`, `timezone`, `language`, `keyboard`, `stripe`) VALUES (1, '$company', '$phone', '$currency', 'Gracias por tu compra', 'Cookie', '$tax', '$timezone', 'spanish', '1', '0');");


				if(!$settings){echo "<div class='label label-danger'>Error al guardar configuración a la base de datos</div>";}else if ($core->write_config($domain) == false) {
						echo "<div class='alert alert-error'><i class='icon-remove'></i> Error al escribir los detalles de configuración en config/config.php.</div>";
					}else{
						echo '<a href="index.php?step=3" class="label label-success" style="float:right;font-size:20px;"> Bien, continuar instalación > </a>';
						$hide = 'hide';
				}
								}
							?>
						  <div class="form-group <?=$hide;?>">
							  <label for="CompanyName">Nombre de la empresa *</label>
							  <input type="text" required id="CompanyName" class="form-control" name="companyname" />
						  </div>
						  <div class="form-group <?=$hide;?>">
							  <label for="CompanyPhone">Teléfono *</label>
							  <input type="text" required id="CompanyPhone" class="form-control" name="phone" />
						  </div>
						  <div class="form-group <?=$hide;?>">
							  <label for="Currency">Código de moneda *</label>
							  <input type="text" required id="Currency" value="USD" class="form-control" name="currency" />
						  </div>
						  <div class="form-group <?=$hide;?>">
							  <label for="TAX">Impuesto por defecto (%)</label>
							  <input type="text" id="TAX" value="10%" class="form-control" name="tax" />
						  </div>
						  <div class="form-group <?=$hide;?>">
								 <label for="domain">Dominio *</label>
								 <input type="text" name="domain" class="form-control" value="<?php echo "http://".$_SERVER["HTTP_HOST"].substr($_SERVER["REQUEST_URI"], 0, -25);?>" required/>
							</div>
						  <div class="form-group <?=$hide;?>">
					          <label class="control-label" for="domain">Zona horaria</a></label>
					          <div class="controls">
					            <?php
										require_once('includes/timezones_class.php');
										$tz = new Timezones();
										$timezones = $tz->get_timezones();
										echo '<select name="timezone" required="required" data-error="TimeZone is required" class="form-control">';
							            foreach ($timezones as $key => $zone){
							            echo '<option value="'.$key.'">'.$zone.'</option>';
							            }
							            echo '</select>'; ?>
					          </div>
				        </div>
						<div class="form-group">
							<div class="row">
								<div class="col-sm-1 col-sm-offset-1">
									<a href="index.php?step=1" class="btn btn-default pull-right">Anterior</a>
								</div>
								<div class="col-sm-2 col-sm-offset-8">
									<input type="submit" class="btn btn-next <?=$hide;?>" value="Siguiente" id="submit" />
								</div>
							</div>
						</div>
						</fieldset>
						</form>
					</div>
<?php
	break;
	case "3": ?>
	<ul class="nav nav-tabs">
		<li class=""><a>Requerimientos<p>Archivos necesarios</p></a></li>
		<li class=""><a>Base de datos<p>Configuración</p></a></li>
		<li class=""><a>Página Web<p>Configuración</p></a></li>
		<li class="active"><a>Final<p>Éxito !</p></a></li>
	</ul>
<div class="tab-content">
					<div class="tab-pane fade in active" id="Done">
						<h1>Instalación completada</h1>	
            		<div class="alert alert-dismissible alert-success">
  						Para iniciar sesión debe ingresar con estos datos:<br /><br />
            			Usuario: <span style="font-weight:bold; letter-spacing:1px;">admin</span><br />Contraseña: <span style="font-weight:bold; letter-spacing:1px;">cookie@anthoncode</span><br /><br />
					</div>

            <div class="bg-warning"><i class='icon-warning-sign'></i> Recuerde cambiar los datos de sesión</div>
					<?php @unlink('../INSTALL_PDV_COOKIE'); ?>
					<a href="<?php echo "http://".$_SERVER["HTTP_HOST"].substr($_SERVER["REQUEST_URI"], 0, -25); ?>" class="btn btn-next">Iniciar sesión</a>
					</div>


            </div>
				<?php } ?>
				<?php }else{ ?>
					<div class="tab-content">
						<h1><i class="fa fa-check" aria-hidden="true" style="margin-right:10px"></i>Instalación finalizada</h1>
						<p>	Puede borrar este directorio manualmente</p>
				<?php } ?>
         </div>
       </div>

      <!-- jQuery -->
      <script type="text/javascript" src="../assets/js/jquery-2.2.2.min.js"></script>
      <!-- efecto waves material -->
      <script type="text/javascript" src="../assets/js/waves.min.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>

      <script type="text/javascript">
      $(document).ready(function() {
         $('#install-modal').modal('show').on('hide.bs.modal', function (e) {
            e.preventDefault();
         });
      });
		var currency = document.getElementById("Currency");

		function validatecurrency(){
		  if(currency.value.length < 3) {
		    currency.setCustomValidity("The Currency code must be at least 3 characters length");
		  } else {
		    currency.setCustomValidity('');
		  }
		}
		if(currency) currency.onchange = validatecurrency;
      </script>
   </body>
</html>
<!-- /*  
 *  Author      : AnthonCode
 *  Name Script : POS Cookie
 *  http://facebook.com/anthoncode
 *  http://anthoncode.blogspot.com
 */ -->