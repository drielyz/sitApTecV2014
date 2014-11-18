<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   <title>Login - Area Restrita</title>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/js/skel.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/js/skel-layers.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/skel.css" />
			<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css" />
			<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style-desktop.css" />
			<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style-wide.css" />
		</noscript>
 </head>
 <body>
   <h1>Home</h1>
   <h2>Bem vindo <?php echo $nome; ?>!</h2>
    
   <a href="home/logout">Logout</a>
 </body>
</html>