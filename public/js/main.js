  
  var url_dominio = document.domain;
  if(url_dominio == "localhost"){
    var url_dominio = "http://localhost/"
  }else{
    var url_dominio = "http://localhost/";
  }

function validaRut(campo){
  if ( campo.length == 0 ){ return false; }
  if ( campo.length < 8 ){ return false; }

  campo = campo.replace('-','')
  campo = campo.replace(/\./g,'')

  var suma = 0;
  var caracteres = "1234567890kK";
  var contador = 0;    
  for (var i=0; i < campo.length; i++){
    u = campo.substring(i, i + 1);
    if (caracteres.indexOf(u) != -1)
    contador ++;
  }
  if ( contador==0 ) { return false }
  
  var rut = campo.substring(0,campo.length-1)
  var drut = campo.substring( campo.length-1 )
  var dvr = '0';
  var mul = 2;
  
  for (i= rut.length -1 ; i >= 0; i--) {
    suma = suma + rut.charAt(i) * mul
                if (mul == 7)   mul = 2
            else  mul++
  }
  res = suma % 11
  if (res==1)   dvr = 'k'
                else if (res==0) dvr = '0'
  else {
    dvi = 11-res
    dvr = dvi + ""
  }
  if ( dvr != drut.toLowerCase() ) { return false; }
  else { return true; }
}


// Validar Rut
jQuery.validator.addMethod("rut", function(value, element) { 
        return this.optional(element) || validaRut(value); 
}, "El RUT ingresado es incorrecto");


  jQuery.validator.addMethod("alias", function( value, element ) {
    var result = this.optional(element) || value.length >= 6 && /\d/.test(value) && /[a-z]/i.test(value);
    if (!result) {
      var validator = this;
      setTimeout(function() {
        validator.blockFocusCleanup = true;
        element.focus();
        validator.blockFocusCleanup = false;
      }, 1);
    }
    return result;
  }, "Alias debe tener al menos 6 caracteres y contener al menos un número y un carácter.");


$().ready(function() {
/*------------------------------
 01 FUNCION PARA VALIDAR DATOS
-------------------------------- */ 
   $("#sendForm").validate({

        rules: {
          alias: {
            alias: true
          },

          rut : { 
            required:true, 
            rut:true,
          },

          "checkspan[]": { 
            required:true,
            minlength: 2,
          },
       },
       messages: {'name': "Por favor, ingrese su Nombre y Apellido"},

     submitHandler: function(form) {
       var formSend = document.formSend.action=url_dominio+"prueba-desis/send_vote.php";
       document.formSend.submit();
     }
   });

/*------------------------------
 02 FUNCION REGIONES
-------------------------------- */ 
    $('#region').on('change',function(){
        var countryID = $(this).val();
        if(countryID){
            $.ajax({
                type:'POST',
                url:url_dominio+'prueba-desis/ajaxData.php',
                data:'region_id='+countryID,
                success:function(html){
                    $('#comuna').html(html);
                }
            }); 
        }else{
            $('#comuna').html('<option value="">Seleccione una comuna</option>');
        }
    });

}); //FIN JAVASCRIPT

