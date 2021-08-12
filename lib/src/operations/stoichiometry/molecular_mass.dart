
double getMolecularMass(List<dynamic> data, String formula){
  double molecular_mass=0.0;
  RegExp regEx = new RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
  int length = formula.length;
  String construct, construct_num;
  double parse_1;
  int parse_2;
  for(int i=0; i<length; i++){
    if((int.tryParse(formula[i])==null) && construct.length == 0){
      construct  += formula[i];
    }
    else if(((int.tryParse(formula[i])==null) && construct.length != 0)&&(regEx.hasMatch(construct))){
      parse_1 = getInformation(data, construct);
      construct="";
      molecular_mass += parse_1;
    }
    else if(int.tryParse(formula[i])!=null){
      for(int j=i; j<length; j++){
        if(int.tryParse(formula[j])==null){
          break;
        }
        construct_num += formula[j];
      }
      parse_2=int.tryParse(construct_num);
      construct_num = "";
      parse_1 = getInformation(data, construct);
      construct="";
      molecular_mass += (parse_1*parse_2);
    }
  }
  if(construct.length != 0){
    parse_1 = getInformation(data, construct);
    molecular_mass += parse_1;
    construct = "";
  }
  return molecular_mass;
}

double getInformation(List<dynamic> data, String construct){
  String construct_num;
  double parse_1;
  int length_num; 
  for(Map value in data){
    if(value['symbol']==construct){
      length_num = value['atomicMass'].length;
      for(int k=0; k<length_num; k++){
        if(value['atomicMass'][k]!="("){
          construct_num += value['atomicMass'][k];
        }else{
          parse_1 = double.tryParse(construct_num);
          construct_num="";
        }
      }
        break;
    }
  }
  return parse_1;
}