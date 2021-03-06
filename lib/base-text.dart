import 'package:flutter/cupertino.dart';

class BaseText extends StatelessWidget {
  // BaseText({String label}) : super(label);
  final String label;
  final double fontSize;
  BaseText({this.label, this.fontSize = 10.0});
  @override
  Widget build(BuildContext context) {
    return Text(
      this.label,
      style: TextStyle(fontSize: this.fontSize),
    );
  }
}
