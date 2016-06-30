$(document).ready(function () {
  
  //$(".clase").text("Texto normal.");
  //$('.product_option').find(":selected");
  //alert("Valor:" + $('.product_option').val());
  var opcion, opcion2;
  
  $('.product_option').click(function() {
    opcion = $(this);
    $('.drop_button').text(this.text);
    $('.drop_button').val(opcion.attr("value"));
    //alert("Valor:" + opcion.attr("value"));
  });
  
  $('.product_option2').click(function() {
    opcion2 = $(this);
    $('.drop_button2').text(this.text);
    $('.drop_button2').val(opcion2.attr("value"));
  });
  
  $('.transfer_btn').click(function() {
    $('.hidden1').attr("value",$('.drop_button').attr("value"));
    $('.hidden2').attr("value",$('.drop_button2').attr("value"));
    
    //alert("hidden1:" + $('.hidden1').attr("value"));
    //alert("drop_button:" + $('.drop_button').val());
  });
});
