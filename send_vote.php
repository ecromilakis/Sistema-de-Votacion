<?php
$name = utf8_decode($_POST['name']);
$alias = utf8_decode($_POST['alias']);
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = utf8_decode($_POST['candidato']);
$checkspan = $_POST['checkspan'];

include "class/adodb/adodb.inc.php";
include "class/connect.php";


if ($name=='' OR $alias=='' OR $rut=='' OR $email=='' OR $region=='' OR $comuna=='' OR $candidato=='' OR $checkspan=='' ) { ?>

      <form name="formSend" action="index.php" method="POST">
        <input type="hidden" name="smspost" value="1" >
      </form>
      <script>document.formSend.submit();</script>

<?php }else{

    $sql1="SELECT * FROM registros WHERE rut = '$rut'";
    $resRegistro=$db->Execute($sql1);
    $numRow = $resRegistro->numRows();
 
    if ($numRow == 0 ) {


        #INSERTAR REGISTRO
        $tabla               = 'registros'; 
        $grabar = array();
        $grabar["nombre"] = $name;
        $grabar["alias"] = $alias;
        $grabar["rut"] = $rut;
        $grabar["email"] = $email;
        $grabar["region"] = $region;
        $grabar["comuna"] = $comuna;
        $grabar["candidato"] = $candidato;
        $insert=$db->autoExecute($tabla,$grabar,'INSERT');

        $sql2="SELECT * FROM registros WHERE rut = '$rut'";
        $resRegistroNuevo=$db->Execute($sql2);
        $idRegistro=$resRegistroNuevo->fields['id_registro'];

            #Insertar Como se entero de nosotros
            for($i=0;$i < count($checkspan); $i++){

            $tablas               = 'medios'; 
            $sabe = array();
            $sabe["id_registros"] = $idRegistro;
            $sabe["nombre_medios"] = $checkspan[$i];
            $insertar=$db->autoExecute($tablas,$sabe,'INSERT');

          }
     ?>

     <form name="formSend" action="index.php" method="POST">
       <input type="hidden" name="smspost" value="2" >
     </form>
     <script>document.formSend.submit();</script>

    <?php  }else{ ?>

     <form name="formSend" action="index.php" method="POST">
       <input type="hidden" name="smspost" value="3" >
     </form>
     <script>document.formSend.submit();</script>

    <?php } } ?>