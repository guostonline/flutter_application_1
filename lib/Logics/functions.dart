
String restParJour(int objectif,int realisation,int jourRest){
  return ((objectif-realisation)/jourRest).toStringAsFixed(0);
}