import 'package:flutter/material.dart';
import 'package:help_chem/src/providers/elements_providers.dart';
import 'package:help_chem/src/utils/hex_color_util.dart';


class StoichiometryPage  extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Estequiometría')
          ],
        ),
        backgroundColor: getColorFromHex('#DA4573'),
      ),

      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _optionCards()
        ],
      ),
    );
  }

  Widget _optionCards(){
    
  }
}