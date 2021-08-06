import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _ElementsProvider {

  List <dynamic> elements = [];

  _ElementsProvider(){
    //cargarData();
  } //Es el construcor de la clase, aunque esta vacia porque el método ya está realizando la asignación de datos del Json

//Lo que estamos haciendo es volver asincrona la tarea para posteriormente en el home_page.dart hacerle un future a las opciones para que se cargen solo hasta que la tarea quedo completada.
Future<List<dynamic>> cargarData() async{

    final resp= await rootBundle.loadString('data/data.json');
    List<dynamic> data = json.decode(resp);//sacamostodos los elemntos del JSON y los mandamos a la data para usarlos posteriormente
    elements = data;

    return elements;
  }

}


final elementsProvider = new  _ElementsProvider();  //Solo expone la instancia creada de la clase  