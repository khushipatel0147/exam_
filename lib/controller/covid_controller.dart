import 'package:exam/model/covid_model.dart';
import 'package:exam/utils/covid_helper.dart';
import 'package:get/get.dart';

class CovidController extends GetxController {
  CovidModel model = CovidModel();
  RxList<CovidModel> mainList = <CovidModel>[].obs;

  Future<List<CovidModel>> getData() async {
    mainList.value = await ApiHelper.helper.covid();
    return mainList;
  }
}
//controller.blankList = controller.mainList;
//controller.mainList = List.from(controller.blankList);
