import 'dart:ffi';

void main() {
  // variables();
  // variablesnodefinidas();
  // convertirTipos();
//  print(validarEdad(15));
//  print(validarEdad(18));
//  print(menuOpciones(2));
//  print(menuB(7));
//  print(menuOpciones(10));
//  listas();
  tipoMap();
}

void tipoMap() {
  Map<int, String> datos = {1: "A", 2: "E", 3: "I"};
  Map<dynamic, dynamic> varios = {1: "A", "A": 1, true: []};

  Map<String, dynamic> est1 = {
    "codigo": 1001,
    "Nombre": "Alex Vacca",
    "Materias": ["P Movil", "BD", "Arq"],
    "creditos": 18
  };

  print(est1);
  print(est1["codigo"]);
  print(est1["Materias"]);
  est1["codigo"] = 1002;
  print(est1);
  est1["Estado"] = true;
  print(est1);

  List<Map<String, dynamic>> listadoEstudiantes = [];
  listadoEstudiantes.addAll([est1, est1, est1, est1, est1]);
  print(listadoEstudiantes);

  for (int i = 0; i < listadoEstudiantes.length; i++) {
    print("${i + 1} -> ${listadoEstudiantes[i]["codigo"]}");
    for (int j = 0; j < listadoEstudiantes[i]["Materias"].length; j++) {
      print(
          "****************${j + 1}>>> ${listadoEstudiantes[i]["Materias"][j]}");
    }
  }
}

void listas() {
  List<int> pares = [8, 2, 4, 6, 8, 10, 12];
  print(pares);
  print(pares[0]);
  print(pares.first);
  print(pares[pares.length - 1]);
  print(pares.last);
  print(pares.length);

  pares.add(14);
  print(pares);
  pares.addAll([16, 18, 20]);
  print(pares);
  pares.remove(10);
  print(pares);
  pares.removeAt(1);
  print(pares);
  pares.add(4);
  print(pares);
  pares.remove(4);
  print(pares);
  pares.addAll([6, 4, 8, 4]);
  print(pares);

  for (int i = 0; i < pares.length; i++) {
    print("$i -> ${pares[i]}");
    pares.remove(4);
  }
  /*
  for (var elem in pares) {
    print(elem);
  }
  pares.forEach(print);
*/
  print(pares);

  pares[0] = 1001;
  print(pares);

  pares.removeRange(6, 8);
  print(pares);

  List<String> vocales = [];
  if (vocales.isEmpty) {
    print("Lista Vacia");
  }

  List<dynamic> varios = [
    1,
    "Letras",
    2.3,
    [2, 4, 6],
    true
  ];
  print(varios);

  List<dynamic> est1 = [
    1001,
    "Alex Vacca",
    13,
    ["P Movil", "BD", "Software 1"]
  ];

  List<dynamic> listadoEstudiantes = [];

  listadoEstudiantes.addAll([est1, est1, est1, est1, est1]);

  print(listadoEstudiantes);
  for (int j = 0; j < listadoEstudiantes.length; j++) {
    print(
        "${j + 1} -> ${listadoEstudiantes[j][0]} - ${listadoEstudiantes[j][1]} ");
    for (int i = 0; i < listadoEstudiantes[j][3].length; i++) {
      print("******** ${i + 1} >> ${listadoEstudiantes[j][3][i]}");
    }
  }
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
