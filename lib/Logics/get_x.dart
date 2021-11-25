import 'package:flutter_application_1/Logics/functions.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'connect_to_sheets.dart';

GetStorage box = GetStorage();

class GetStat extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    
    clearData();
    if (box.read("userName") != null) {
      userName.value = box.read("userName");
      print("userName value is " + userName.value);
    }
    print("userName value is " + box.read("userName"));
  }

  RxString userName = "".obs;
  RxInt caObj = 0.obs;
  RxInt caRealisation = 0.obs;
  RxInt caRest = 0.obs;
  RxInt caPercent = 0.obs;
  RxString caMessageCDZ = "".obs;
  RxString caMessageCDA = "".obs;

  RxString familleName1 = "".obs;
  RxInt famille1Ojb = 0.obs;
  RxInt famille1Realisation = 0.obs;
  RxInt famille1Rest = 0.obs;
  RxInt famille1Percent = 0.obs;
  RxString f1MessageCDZ = "".obs;
  RxString f1MessageCDA = "".obs;

  RxString familleName2 = "".obs;
  RxInt famille2Obj = 0.obs;
  RxInt famille2Realisation = 0.obs;
  RxInt famille2Rest = 0.obs;
  RxInt famille2Percent = 0.obs;
  RxString f2MessageCDZ = "".obs;
  RxString f2MessageCDA = "".obs;

  RxString familleName3 = "".obs;
  RxInt famille3Obj = 0.obs;
  RxInt famille3Realisation = 0.obs;
  RxInt famille3Rest = 0.obs;
  RxInt famille3Percent = 0.obs;
  RxString f3MessageCDZ = "".obs;
  RxString f3MessageCDA = "".obs;

  RxInt jourRest = 0.obs;
  RxList suivieList = [].obs;
  RxList qualitatif = [].obs;
  RxList focus = [].obs;
  RxString dateSuivie = "".obs;
  void myCalc() {
//name of famille
    familleName1.value = suivieList[1][1].toString();
    familleName2.value = suivieList[2][1].toString();
    familleName3.value = suivieList[3][1].toString();
    dateSuivie.value = suivieList[0][9];
    caObj.value = doubleToInt(suivieList[0][2]);
    caRealisation.value = doubleToInt(suivieList[0][3]);
    caRest.value = doubleToInt(suivieList[0][5]);
    caPercent.value = doubleToInt(suivieList[0][4]);
    caMessageCDZ.value = suivieList[0][7];
    caMessageCDA.value = suivieList[0][8];
//famille 1
    famille1Ojb.value = doubleToInt(suivieList[1][2]);
    famille1Realisation.value = doubleToInt(suivieList[1][3]);
    famille1Rest.value = doubleToInt(suivieList[1][5]);
    famille1Percent.value = doubleToInt(suivieList[1][4]);
    f1MessageCDZ.value = suivieList[1][7];
    f1MessageCDA.value = suivieList[1][8];

//famille2
    famille2Obj.value = doubleToInt(suivieList[2][2]);
    famille2Realisation.value = doubleToInt(suivieList[2][3]);
    famille2Rest.value = doubleToInt(suivieList[2][5]);
    famille2Percent.value = doubleToInt(suivieList[2][4]);
    f2MessageCDZ.value = suivieList[2][7];
    f2MessageCDA.value = suivieList[2][8];

//famille3
    famille3Obj.value = doubleToInt(suivieList[3][2]);
    famille3Realisation.value = doubleToInt(suivieList[3][3]);
    famille3Rest.value = doubleToInt(suivieList[3][3]);
    famille3Percent.value = doubleToInt(suivieList[3][4]);
    f3MessageCDZ.value = suivieList[3][7];
    f3MessageCDA.value = suivieList[3][8];

    jourRest.value = doubleToInt(suivieList[0][6]);
  }

  void clearData() {
    suivieList.clear();
    qualitatif.clear();
    focus.clear();
  }

  void fetchData() async {
    suivieList.value = await getDataFromSheets(userName.value, "Suivie");
    qualitatif.value = await getDataFromSheets(userName.value, "Qualitatif");
    focus.value = await getDataFromSheets(userName.value, "Focus");

    myCalc();
    userName.value = suivieList[0][0];
  }

  void writeName() {
    box.write("userName", userName.value);
    print("test storage " + box.read("userName"));
  }
}
