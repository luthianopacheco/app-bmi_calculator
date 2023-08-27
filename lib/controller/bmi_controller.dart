import 'package:get/get.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/models/bmi_repository.dart';

class BMIController extends GetxController {
  final BMIRepository _repository;

  BMIController(this._repository);

  List<BMIModel> bmiList = <BMIModel>[].obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    isLoading.value = true;

    final response = await _repository.getBMI();
    bmiList.removeWhere((element) => true);
    bmiList.addAll(response);

    isLoading.value = false;
  }

  addData(
      String statusText, double calculation, StatusColor statusColor) async {
    await _repository.addBMI(statusText, calculation, statusColor);
  }

  deleteData(int index) {
    _repository.deleteBMI(index);
  }
}
