import 'package:flutter/material.dart';




import 'package:help_chem/src/pages/home_page.dart';
import 'package:help_chem/src/pages/matBalance_page.dart';
import 'package:help_chem/src/pages/stoichiometry_opts/molarity_page.dart';
import 'package:help_chem/src/pages/stoichiometry_opts/percentages_page.dart';
import 'package:help_chem/src/pages/stoichiometry_page.dart';
import 'package:help_chem/src/pages/thermodynamics_page.dart';
import 'package:help_chem/src/pages/OpSelector.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{

        //Routes for main operations

        '/'              : (BuildContext context) => HomePage(),
        'MatterBalance'  : (BuildContext context) => MatterBalanacePage(),
        'Thermodynamics' : (BuildContext context) => ThermodynamicsPage(),
        'Stoichiometry'  : (BuildContext context) => StoichiometryPage(),
        'OpSelector'     : (BuildContext context) => OperationSelectorPage(),

        //Routes for stoichiometric operations 

        'Molarity'       : (BuildContext context) => MolarityPage(),
        'Percentages'    : (BuildContext context) => PercentagesPage(),

        
  };



}



