import 'package:flutter/material.dart';


import 'package:help_chem/src/pages/home_page.dart';
import 'package:help_chem/src/routes/routes.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePage(),
      initialRoute: '/',
      
      routes: getApplicationRoutes(), 

      onGenerateRoute: (settings ){
        return MaterialPageRoute(
          builder: (context) => HomePage()
          );
      },

      
    );
  }
}