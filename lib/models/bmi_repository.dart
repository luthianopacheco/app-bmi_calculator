import 'package:bmi_calculator/models/bmi_model.dart';

class BMIRepository {
  final List<BMIModel> _bmiList = [];

  Future addBMI(
      String statusText, double calculation, StatusColor statusColor) async {
    await Future.delayed(const Duration(seconds: 1));
    _bmiList.add(BMIModel(statusText, calculation, statusColor));
  }

  Future deleteBMI(int index) async {
    await Future.delayed(const Duration(seconds: 1));
    _bmiList.removeAt(index);
  }

  Future<List<BMIModel>> getBMI() async {
    await Future.delayed(const Duration(seconds: 1));
    return _bmiList;
  }
}
