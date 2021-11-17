import 'package:flutter_application_1/Constants/constants.dart';
import 'package:gsheets/gsheets.dart';

Future<List> getDataFromSheets(String codeRevendeur) async {
  final gSheets = GSheets(credentials);
  final ss = await gSheets.spreadsheet(spreadSheet);
  var sheet = ss.worksheetByTitle("Suivie");
  var test2 = await sheet!.values.allRows(fromRow: 2);
  print(test2.where((element) => element.contains(codeRevendeur)).toList());
  return test2.where((element) => element.contains(codeRevendeur)).toList();
}
