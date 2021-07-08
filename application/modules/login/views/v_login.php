<?php defined('BASEPATH') or exit('No direct script accessallowed'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url('bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<?php echo base_url('bootstrap/css/signin.css') ?>" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <style>
   body { 
     background: url(<?php echo base_url();?>assets/gambar/ios.jpg); 
      background-size: cover;
	}
   	</style>
	</head>

<body class="text-center">

    <main class="form-signin" style="padding-left: 550px;padding-top: 50px">
        <?php // Cetak jika ada notifikasi
        if ($this->session->flashdata('sukses')) {
            echo "<div class='alert alert-success' role='alert'>" . $this->session->flashdata('sukses') . '</div>';
        } ?>
        <?php echo form_open('login'); ?>
        <div class ="card" style="width: 25rem; background-color: green;">
        	<div class="card-body">

        <form>
        	
            <H3>Login</H3>

            <div class="form-floating">
                <input type="username" class="form-control" id="floatingInput" name="username" placeholder="username" value="<?php echo set_value('username'); ?>">
                <label for="floatingInput">Username</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" value="<?php echo set_value('password'); ?>">
                <label for="floatingPassword">Password</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" name="btnSubmit" value="Login" type="submit">Login</button>

            <?php echo form_close(); ?>
            <?php echo anchor(
                "../login/register",
                "<button class='w-100 btn btn-lg btn-success' type='submit'>Register</button>"
            ); ?>


        </form>
        </div>
        </div>
        <?php echo form_close(); ?>
    </main>


</body>

</html>