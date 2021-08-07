import 'package:flutter/material.dart';
import 'package:help_chem/src/providers/elements_providers.dart';
import 'package:help_chem/src/utils/hex_color_util.dart';


class StoichiometryPage  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estequiometria'),
        backgroundColor: getColorFromHex('#DA4573'),
      ),

      body: Center(
        child: Text('Cuerpo de la estequiometria'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarms),
        onPressed: () {
        
        },
      ),
    );
  }
}