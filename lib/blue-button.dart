import 'package:flutter/material.dart';
import 'package:oficina_3_3/base-button.dart';
import 'base-button.dart';

class BlueButton extends BaseButton {
  BlueButton({String label}) : super(label: label, color: Colors.blue);
  BlueButton.rounded({String label})
      : super.rounded(label: label, color: Colors.blue);
  BlueButton.person({String label})
      : super.person(label: label, color: Colors.blue);
}
