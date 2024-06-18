var mes;

switch (new Date().getMonth()) {
  // Enero es el 0
  case 0:
    mes = "Enero";
    break;
  case 1:
    mes = "Febrero";
    break;
  case 2:
    mes = "Marzo";
    break;
  case 3:
    mes = "Abril";
    break;
  case 4:
    mes = "Mayo";
    break;
  case 5:
    mes = "Junio";
    break;
  default:
    mes = "No ha devuelto ningun mes";
    break;
}
document.write(new Date().getMonth());
document.getElementById("mes").innerHTML = "Estamos a " + mes;
