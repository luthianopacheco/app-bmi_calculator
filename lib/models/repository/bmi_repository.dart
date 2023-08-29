import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';

class BMIRepository {
  final List<BMIModel> _bmiList = [];

  Future addBMI(
      String statusText, double calculation, StatusColor statusColor) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      _bmiList.add(BMIModel(statusText, calculation, statusColor));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future deleteBMI(int index) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      _bmiList.removeAt(index);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<BMIModel>> getBMI() async {
    await Future.delayed(const Duration(seconds: 1));
    return _bmiList;
  }
}
