import 'package:flutter/material.dart';

import 'package:help_chem/src/utils/hex_color_util.dart';

class MolarityPage extends StatefulWidget {
  @override
  _MolarityState createState() => _MolarityState();
}

class _MolarityState extends State<MolarityPage> {
  String _formula;
  double _volumen;
  double _masa;



  final ButtonStyle styleCalcular = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), 
    primary: getColorFromHex('#DA4573'), 
    shape: StadiumBorder(),
    minimumSize: Size(200, 50)  
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getColorFromHex('#DA4573'),
        title: Text('Molaridad'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: <Widget>[
          _inputFormula(),
          SizedBox(
            height: 20.0,
          ),
          _inputVolumen(),
          SizedBox(height: 20.0),
          _inputMasa(),
          SizedBox(height: 20.0),
          _inputMolaridad(),
          SizedBox(height: 30.0),
          _botonCalcular(),
        ],
      ),
    );
  }

  Widget _inputFormula() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: 'Formula quimica',
        labelText: 'Formula quimica',
        icon: Icon(
          Icons.science_outlined,
          color: Colors.black,
        ),
        helperText: 'Ingresa la formula quimica de la disolución',
      ),
      onChanged: (valor) {
        _formula = valor;
        print(_formula);
      },
    );
  }

  Widget _inputVolumen() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: 'Volumen total de la disolución',
        labelText: 'Volumen de disolución',
        icon: Icon(
          Icons.opacity,
          color: Colors.black,
        ),
        helperText: 'Ingresa el volumen',
        counter: Text('Unidades: L'),
      ),
      onChanged: (valor) {
        _volumen = double.parse(valor);
        print(_volumen);
      },
    );
  }

  Widget _inputMasa() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: 'Masa del soluto',
        labelText: 'Masa del soluto',
        icon: Icon(
          Icons.straighten,
          color: Colors.black,
        ),
        helperText: 'Ingresa la masa',
        counter: Text('Unidades: gr'),
      ),
      onChanged: (valor) {
        _masa = double.parse(valor);
        print(_masa);
      },
    );
  }

  Widget _inputMolaridad() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: 'Molaridad',
        labelText: 'Molaridad',
        icon: Icon(
          Icons.biotech,
          color: Colors.black,
        ),
        helperText: 'Ingresa la molaridad',
        counter: Text('Unidades: /'),
      ),
      onChanged: (valor) {
        _masa = double.parse(valor);
        print(_masa);
      },
    );
  }

  Widget _botonCalcular() {
    return ElevatedButton(

      style: styleCalcular,
      onPressed: () {
        
      },
      child: Text(
        'Calcular',
        
      ),
    );
  }
}
