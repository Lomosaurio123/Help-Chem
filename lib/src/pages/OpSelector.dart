import 'package:flutter/material.dart';


class OperationSelectorPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Op selector'),
      ),

      body:ListView(
      
       // padding: EdgeInsets.all(10),
       padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),

        ],
      ),

    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(

            leading: Icon( Icons.science, color: Colors.black,),
            title: Text('Estequiometria'),
            subtitle: Text('En este apartado podras realizar operaciones relacionadas con la estequiometria de una manera facil y rapida'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('comenzar'),
                onPressed: (){

                },
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    return Card(
       child: Column(
         children: <Widget>[

          Image(
             image: NetworkImage('https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
          ),

          Container(
            padding: EdgeInsets.all(15) ,
             child: Text('Texto de prueba')
          ),


         ],
       ),
    );





  }
}