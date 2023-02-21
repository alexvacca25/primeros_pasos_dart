void main() {
  // variables();
  // variablesnodefinidas();
  // convertirTipos();
//  print(validarEdad(15));
//  print(validarEdad(18));
//  print(menuOpciones(2));
//  print(menuB(7));
//  print(menuOpciones(10));
}

String controlAcceso(int edad, bool vacunado) {
  String mensaje = "No Cumple con los Requisitos";
  
  return mensaje;
}

String validarEdad(int edad) {
  if (edad >= 18) {
    return "Mayor de Edad";
  } else {
    return "Menor de Edad";
  }
}

String menuOpciones(int op) {
  String texto = "Seleccione una Opcion Valida";
  if (op == 1) {
    texto = "Inicio";
  } else if (op == 2) {
    texto = "Productos";
  } else if (op == 3) {
    texto = "Ventas";
  } else if (op == 4) {
    texto = "Compras";
  } else if (op == 5) {
    texto = "Salir";
  }

  return texto;
}

const selmenu = ['Inicio', 'Productos', 'Ventas', 'Compras', 'Salir'];

String menuB(int op) {
  if (op >= 1 && op <= 4) {
    return selmenu[op];
  } else {
    return "Digite una Opcion Valida";
  }
}

void variables() {
  int edad = 10;
  double salario = 5.5;
  String nombre = "Alex Vacca";
  String ciudad = 'Valledupar';
  bool activo = true;

  print("Variables Definidas");
  print(edad);
  print(salario);
  print(nombre);
  print(ciudad);
  print(activo);
  print("--------------------------");
}

void variablesnodefinidas() {
  var numero = 10;
  var valor = 5.5;
  var estado = true;
  var pais = "Colombia";

  print('Variables no Definidas');
  var op = numero * valor;
  print(op);

  print(estado);
  print(pais);

  //--------------------------------------

  dynamic sinvalor;
  sinvalor = 4;
  print(sinvalor);
  sinvalor = "cuatro";
  print(sinvalor);
  sinvalor = true;
  print(sinvalor);
}

void convertirTipos() {
  int dato = 12345;
  String texto1 = dato.toString();
  print(texto1);

  String numero = "987";
  int nume1 = int.parse(numero);
  print(nume1);

  String salario = "55.5";
  double sal = double.parse(salario);
  print(sal);

  double resultado =
      double.parse("17.3") * int.parse("40") * double.parse("1.5");
  print(resultado);
}
