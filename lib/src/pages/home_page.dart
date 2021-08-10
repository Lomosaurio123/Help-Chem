import 'package:flutter/material.dart';


import 'package:help_chem/src/utils/hex_color_util.dart';

import 'matBalance_page.dart';




class HomePage extends StatelessWidget {

  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), 
    primary: getColorFromHex("#F1D514"), 
    shape: StadiumBorder(),
    minimumSize: Size(200, 50)  
  );

  final buttonStyle= new TextStyle(fontSize: 25, color: getColorFromHex("#000000"),fontWeight: FontWeight.bold,  );
  final descriptionStyle = new TextStyle(fontSize: 19, color: getColorFromHex("#000000"), fontWeight: FontWeight.bold, );
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  

     backgroundColor: getColorFromHex('#5C94CF'),//"#297ed4"
     body:Center(
      child: Column(
      
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

       
          Image(
                image: AssetImage('resources/Images/Help-Chem-logo.png') ,
                
                
          ),

          SizedBox(height: 40.0,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Help-Chem es la aplicación que te ayudara a realizar algunos cálculos quimicos', style: descriptionStyle , textAlign: TextAlign.center),
          ),
           

          SizedBox(height: 40.0,),

          ElevatedButton(
              style: style,
              onPressed: () {

                Navigator.pushNamed(context, 'OpSelector');

              },

              child: Text('Comenzar', style: buttonStyle, ),
          ),


        ],

      ),
     ),

      floatingActionButton: FloatingActionButton(
       backgroundColor: getColorFromHex("#F1D514"),
        child: Icon( Icons.science_outlined, color: Colors.black , ),
        onPressed: (){
          
        },

      ),
      
    );
  }
}