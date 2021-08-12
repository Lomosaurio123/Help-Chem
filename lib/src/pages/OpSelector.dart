import 'dart:ui';
import 'package:flutter/material.dart';


import 'package:help_chem/src/utils/hex_color_util.dart';


class OperationSelectorPage extends StatelessWidget {
  
  final styleHeader = new TextStyle(fontSize: 16, color: getColorFromHex("#FFFFFF") );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColorFromHex('#5C94CF'),
      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false ,
            floating: true ,
            expandedHeight: 170,
            backgroundColor: getColorFromHex('#5C94CF') ,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Selector de operaciones', style: styleHeader ,) ,
              background: Image(
                 image: AssetImage('resources/Images/HeaderOpSelector.jpg'),
                 width: 10,
                 isAntiAlias: true,
                 fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(

            child: Container(
              
              color: getColorFromHex('#5C94CF'),//'#23384F'
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Center(
                child: Text('Aqui podras seleccionar cualquiera de las operaciones disponibles', style: TextStyle(color: Colors.white, fontSize: 15 ), textAlign: TextAlign.center,),
              ),
            
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [ 
                _cardTipo2(context),
                //SizedBox(height: 10.0,),
                _cardTipo3(context),
                //SizedBox(height: 10.0,),
                _cardTipo4(context),

              ],
            ),
          ),
        ],
      ),
    );
  }

  
  Widget _cardTipo2(BuildContext context) {

    return Card(
      elevation: 5.0,
      color: getColorFromHex('#DA4573') ,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
       child: Column(
         children: <Widget>[

          SizedBox(height: 15.0,),

          Image(
            height: 100,
            width: 100,
            image: AssetImage('resources/Images/matraz.png')
            
          ),

          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Estequiometria y Disoluciones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar', style: TextStyle(color: Colors.white, fontSize: 18 ),),
                onPressed: (){

                  Navigator.pushNamed(context, 'Stoichiometry');

                },
              )
            ],
          ),


         ],
       ),
    );
  }

  Widget _cardTipo3(BuildContext context) {

    return Card(
      elevation: 5.0,
      color: getColorFromHex('#465FBB') ,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
       child: Column(
         children: <Widget>[

          SizedBox(height: 15.0,),

          Image(
            height: 100,
            width: 100,
            image: AssetImage('resources/Images/scales.png')
            
          ),

          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Balance de materia', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar', style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){

                  Navigator.pushNamed(context, 'MatterBalance');

                },
              )
            ],
          ),


         ],
       ),
    );
  }


  Widget _cardTipo4(BuildContext context) {

    return Card(
      elevation: 5.0,
      color: getColorFromHex('#FFE686') ,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
       child: Column(
         children: <Widget>[

          SizedBox(height: 15.0,),

          Image(
            height: 100,
            width: 100,
            image: AssetImage('resources/Images/thermometer.png')
            
          ),
         
          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Termodinamica', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar', style: TextStyle(color: Colors.black, fontSize: 18),),
                onPressed: (){

                  Navigator.pushNamed(context, 'Thermodynamics');

                },
              )
            ],
          ),

         ],
       ),
    );
  }


}

