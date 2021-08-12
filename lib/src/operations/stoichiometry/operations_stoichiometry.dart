
//Case 1
double getMolarity(double volume, double mass, double pm ){ 
  return (mass/(volume*pm));
}
//Case 2
double getVolume(double molarity, double mass, double pm){
  return (mass/(molarity*pm));
}
//Case 3
double getMass(double molarity, double pm, double volume){
  return (molarity*(pm*volume));
}