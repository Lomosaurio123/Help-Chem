import 'package:flutter/material.dart';




import 'package:help_chem/src/pages/home_page.dart';
import 'package:help_chem/src/pages/matBalance_page.dart';
import 'package:help_chem/src/pages/stoichiometry_page.dart';
import 'package:help_chem/src/pages/thermodynamics_page.dart';
import 'package:help_chem/src/pages/OpSelector.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/'               : (BuildContext context) => HomePage(),
        'MatterBalance'   : (BuildContext context) => MatterBalanacePage(),
        'Thermodynamics'  : (BuildContext context) => ThermodynamicsPage(),
        'Stoichiometry'   : (BuildContext context) => StoichiometryPage(),
        'OpSelector'      : (BuildContext context) => OperationSelectorPage(),


        
  };



}



