import 'package:flutter/material.dart';
import 'package:oficina_3_3/base-button.dart';
import 'base-button.dart';

class YellowButton extends BaseButton {
  YellowButton(String label) : super(label: label, color: Colors.yellow);
  YellowButton.rounded(String label)
      : super.rounded(label: label, color: Colors.yellow);
}
