<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   <title>Login</title>
   <meta charset="UTF-8" />
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/estilo.css"/>
 </head>
 <body>
   <h1>Login</h1>
   <?php echo validation_errors(); ?>
   <?php echo form_open('verifylogin'); ?>
     <label for="nome">Nome:</label>
     <input type="text" size="20" id="nome" name="nome"/>
     <br/>
     <label for="senha">Senha:</label>
     <input type="password" size="20" id="senha" name="senha"/>
     <br/>
     <input type="submit" value="Login"/>
   </form>
 </body>
</html>