import 'package:flutter/material.dart';


import 'package:help_chem/src/utils/hex_color_util.dart';


class OperationSelectorPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Op selector'),
      ),*/

      body:ListView(
      
       // padding: EdgeInsets.all(10),
       padding:  EdgeInsets.symmetric(vertical: 40, horizontal: 5),
        children: <Widget>[
          
          _cardTipo2(context),
          //SizedBox(height: 10.0,),
          _cardTipo3(context),
          //SizedBox(height: 10.0,),
          _cardTipo4(context),


        ],
      ),

    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 5.0,
      //color: getColorFromHex("#297ed4") ,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          ListTile(

            leading: Icon( Icons.science, color: Colors.black,),
            title: Text('Estequiometria'),
            subtitle: Text('En este apartado podras realizar operaciones relacionadas con la estequiometria de una manera facil y rapida'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar'),
                onPressed: (){

                },
              )
            ],
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


          /*FadeInImage(
            image: NetworkImage('https://i.pinimg.com/originals/d6/59/32/d659327352c91c066f15cd8a6c625697.png'),
            placeholder: AssetImage('resources/Images/jar-loading.gif'),
          ),*/

          Image(
            height: 90,
            width: 90,
            image: AssetImage('resources/Images/matraz.png')
            
          ),


         
          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Estequiometria')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar'),
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


          /*FadeInImage(
            image: NetworkImage('https://i.pinimg.com/originals/d6/59/32/d659327352c91c066f15cd8a6c625697.png'),
            placeholder: AssetImage('resources/Images/jar-loading.gif'),
          ),*/

          Image(
            height: 90,
            width: 90,
            image: AssetImage('resources/Images/scales.png')
            
          ),


         
          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Balance de materia')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar'),
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


          /*FadeInImage(
            image: NetworkImage('https://i.pinimg.com/originals/d6/59/32/d659327352c91c066f15cd8a6c625697.png'),
            placeholder: AssetImage('resources/Images/jar-loading.gif'),
          ),*/

          Image(
            height: 90,
            width: 90,
            image: AssetImage('resources/Images/thermometer.png')
            
          ),


         
          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Termodinamica')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text('Comenzar'),
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

