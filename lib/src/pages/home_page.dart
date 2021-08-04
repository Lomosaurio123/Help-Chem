import 'package:flutter/material.dart';


import 'package:help_chem/src/utils/hex_color_util.dart';

import 'matBalance_page.dart';




class HomePage extends StatelessWidget {

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20), primary: getColorFromHex("#F1D514"), shape: StadiumBorder()  );
  final styleButton = new TextStyle(fontSize: 25, color: getColorFromHex("#000000") );
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  

     backgroundColor: getColorFromHex("#297ed4"),
     body:Center(
      child: Column(
      
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

       
          Image(
                image: AssetImage('resources/Images/Help-Chem-logo.png') ,
          ),
           

          SizedBox(height: 40.0,),

          ElevatedButton(
              style: style,
              onPressed: () {

              /*  final route = MaterialPageRoute(
                  builder: (context) => MatterBalanacePage()
                  );
                Navigator.push(context, route);*/

                Navigator.pushNamed(context, 'OpSelector');

              },

              child: Text('Comenzar', style: styleButton, ),
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