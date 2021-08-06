import 'package:flutter/material.dart';
import 'package:help_chem/src/providers/elements_providers.dart';


class StoichiometryPage  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estequiometria'),
      ),

      body: Center(
        child: Text('Cuerpo de la estequiometria'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarms),
        onPressed: () {
          print(elementsProvider.cargarData());
        },
      ),
    );
  }
}