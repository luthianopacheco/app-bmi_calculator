import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/models/repository/bmi_repository.dart';

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
    try {
      final response = await _repository.getBMI();
      bmiList.removeWhere((element) => true);
      bmiList.addAll(response);
    } catch (e) {
      debugPrint(e.toString());
    }

    isLoading.value = false;
  }

  addData(
      String statusText, double calculation, StatusColor statusColor) async {
    try {
      await _repository.addBMI(statusText, calculation, statusColor);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  deleteData(int index) {
    try {
      _repository.deleteBMI(index);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
