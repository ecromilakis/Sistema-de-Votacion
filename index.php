<?php 
   include "class/adodb/adodb.inc.php";
   include "class/connect.php";
   if(isset($_POST["smspost"])){ $msmSend = $_POST['smspost']; }else{ $msmSend = 0; }
 ?>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>PRUEBA DE DIAGNOSTICO</title>
    <meta charset="utf-8">
    <meta name="robots" content="index, follow" >
    <meta name="author" content="E.Cromilakis" />    
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="public/css/main.css?1.1">

    <!-- JS -->
    <script src="public/js/libs/jquery-3.5.1.min.js"></script>
    <script src="public/js/libs/jquery.validate.min.js"></script>
    <script src="public/js/main.js"></script>

</head>
<body>


<!-- INICIO FORMULARIO -->
<main>
<section class="container"> 
       
     <h2>FORMULARIO DE VOTACIÓN:</h2>            
      
     <!--Inicio Formulario  -->
     <form name="formSend" id="sendForm" method="POST" enctype="multipart/form-data" action="">
     <form name="form_pdm" id="savepm" method="POST" enctype="multipart/form-data" action="" >
    <?php 
    if ($msmSend==1) { ?>
        <p class="contact_error_box">Debe completar los campos requeridos</p>
    <?php }

    if ($msmSend==2) { ?>
        <p class="contact_error_box">Tus datos fueron enviados con éxito. ¡Gracias por Votar!</p>
    <?php } 

    if ($msmSend==3) { ?>
        <p class="contact_error_box">El rut ingresado ya realizo la votacion, ingrese un rut diferente para votar nuevamente</p>
    <?php } ?>

        <div class="formVot">
            <label for="nombre">Nombre y Apellido</label>
            <input required="" name="name" placeholder="Nombre y Apellido *" type="text" value="">

            <label for="alias">Alias</label>
            <input required name="alias" placeholder="Alias *" type="text" value="">

            <label for="rut">RUT</label>
            <input maxlength="15" required id="rut" name="rut" placeholder="RUT *" type="text" value="">

            <label for="email">Email</label>
            <input required="" name="email" placeholder="Email *" type="email" value="">

            <?php
            $sql1="SELECT * FROM region WHERE status = 0 ORDER BY orden ASC";
            $rowCount=$db->Execute($sql1)->getRows();
            ?>

            <label for="region">Región</label>
            <select name="region" id="region" required="">
                <option value="">Selecciona una Región</option>
                    <?php
                    if($rowCount > 0){
                        foreach ($rowCount as $row) {
                          if ($row['idregion']==$idRegionBo) {
                            echo '<option selected="selected" value="'.$idRegionBo.'">'.$regionBo.'</option>';
                          }else{
                            echo '<option value="'.$row['idregion'].'">'.$row['name_region'].'</option>';
                          }
                        }
                    }else{
                          echo '<option value="">región no avilitada</option>';
                    } ?>
      
            </select>

            <label for="comuna">Comuna</label>
            <select class="form-control" name="comuna" id="comuna">
                <?php 
                if ($idComunaBo !='') {
                  echo '<option selected="selected" value="'.$idComuna.'">'.$comunaBo.'</option>'; 
                }else{
                  echo '<option value="">Selecciona una comuna</option>';
                } ?>
            </select>

            <?php
            $sql2="SELECT * FROM candidato ORDER BY nombre_candidato ASC";
            $rowCount=$db->Execute($sql2)->getRows();
            ?>
            <label for="candidato">Candidato</label>
            <select name="candidato" required="">
              <option value="">Selecciona un Candidato </option>
              <?php
                foreach ($rowCount as $rows) {
                echo '<option value="'.$rows['id_candidato'].'">'.$rows['nombre_candidato'].'</option>';
               } ?>
            </select>
            <div id="check">
               <label>Como se enteró de Nosotros</label>
               <input class="check" type="checkbox" name="checkspan[]" value="Web">
               <label class="lavel">Web</label>
               <input class="check" type="checkbox" name="checkspan[]" value="TV">
               <label class="lavel">TV</label>
               <input class="check" type="checkbox" name="checkspan[]" value="Redes Sociales">
               <label class="lavels">Redes Sociales</label>
               <input class="check" type="checkbox" name="checkspan[]" value="Amigo">
               <label class="lavel">Amigo</label>
            </div>
        </div>
        <div class="container-btn">
            <input value="Votar" class="btn" type="submit">
        </div>

     </form>
     <!--Fin form -->
</section>
</main>

</body>
</html>