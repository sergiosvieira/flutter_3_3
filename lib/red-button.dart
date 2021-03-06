import 'package:flutter/material.dart';
import 'package:oficina_3_3/base-button.dart';
import 'base-button.dart';

class RedButton extends BaseButton {
  RedButton(String label) : super(label: label, color: Colors.red);
  RedButton.pets({String label}) : super(label: label, color: Colors.red) {
    this.iconData = Icons.pets;
  }
}
