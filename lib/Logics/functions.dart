

int restParJour(int objectif, int realisation, int jourRest) {
  return ((objectif - realisation) / jourRest).round();
}

int doubleToInt(var value) {
  if (value == null) return 0;
  return double.parse(value).toInt();
}

