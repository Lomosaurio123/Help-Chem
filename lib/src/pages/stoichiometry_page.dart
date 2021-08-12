import 'package:flutter/material.dart';
import 'package:help_chem/src/options_provider/stoichiometry_op.dart';
import 'package:help_chem/src/utils/hex_color_util.dart';


class StoichiometryPage  extends StatelessWidget {
  final data = getOptionsStoichiometry();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Estequiometría y Disoluciones')
          ],
        ),
        backgroundColor: getColorFromHex('#DA4573'),
      ),

      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: _optionCards(data, context)
      )
    );
  }

  List<Widget> _optionCards(List<dynamic> data, BuildContext context){
    final List<Widget> options = [];
    data.forEach((element) {
      final temp = Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ),
        child: ListTile(
          title: Text(element['Titulo']),
          subtitle: Text(element['Subtitulo']),
          leading: Icon(element['Icono']),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){

            Navigator.pushNamed(context, element['Ruta']);
          }
        ),
      );
      options..add(SizedBox(height: 10.0,))
              ..add(temp);
    });
    return options;
  }
}