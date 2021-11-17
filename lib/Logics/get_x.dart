import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetStat extends GetxController {
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

  void myCalc() {
//name of famille
    familleName1.value = suivieList[1][1].toString();
    familleName2.value = suivieList[2][1].toString();
    familleName3.value = suivieList[3][1].toString();

    caObj.value = double.parse(suivieList[0][2]).toInt();
    caRealisation.value = double.parse(suivieList[0][3]).toInt();
    caRest.value = double.parse(suivieList[0][5]).toInt();
    caPercent.value = double.parse(suivieList[0][4]).toInt();
    caMessageCDZ.value = suivieList[0][7];
    caMessageCDA.value = suivieList[0][8];
//famille 1
    famille1Ojb.value = double.parse(suivieList[1][2]).toInt();
    famille1Realisation.value = double.parse(suivieList[1][3]).toInt();
    famille1Rest.value = double.parse(suivieList[1][5]).toInt();
    famille1Percent.value = double.parse(suivieList[1][4]).toInt();
    f1MessageCDZ.value = suivieList[1][7];
    f1MessageCDA.value = suivieList[1][8];

//famille2
    famille2Obj.value = double.parse(suivieList[2][2]).toInt();
    famille2Realisation.value = double.parse(suivieList[2][3]).toInt();
    famille2Rest.value = double.parse(suivieList[2][5]).toInt();
    famille2Percent.value = double.parse(suivieList[2][4]).toInt();
    f2MessageCDZ.value = suivieList[2][7];
    f2MessageCDA.value = suivieList[2][8];

//famille3
    famille3Obj.value = double.parse(suivieList[3][2]).toInt();
    famille3Realisation.value = double.parse(suivieList[3][3]).toInt();
    famille3Rest.value = double.parse(suivieList[3][5]).toInt();
    famille3Percent.value = double.parse(suivieList[3][4]).toInt();
    f3MessageCDZ.value = suivieList[3][7];
    f3MessageCDA.value = suivieList[3][8];

    jourRest.value = double.parse(suivieList[0][6]).toInt();
  }
}
