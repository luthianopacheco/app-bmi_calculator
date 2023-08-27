import 'package:flutter/material.dart';

class BMIModel {
  final String _id = UniqueKey().toString();
  double _bmiCalculation;
  String _bmiStatusText;
  StatusColor _bmiStatusColor;

  BMIModel(this._bmiStatusText, this._bmiCalculation, this._bmiStatusColor);

  String getId() {
    return _id;
  }

  double getBmiCalculation() {
    return _bmiCalculation;
  }

  void setBmiCalculation(double bmiCalculation) {
    _bmiCalculation = bmiCalculation;
  }

  String getBmiStatus() {
    return _bmiStatusText;
  }

  void setBmiStatus(String bmiStatus) {
    _bmiStatusText = bmiStatus;
  }

  StatusColor getBmiStatusColor() {
    return _bmiStatusColor;
  }

  void setBmiStatusColor(StatusColor bmiStatusColor) {
    _bmiStatusColor = bmiStatusColor;
  }
}

enum StatusColor { darkRed, red, orange, yellow, green, grey }
