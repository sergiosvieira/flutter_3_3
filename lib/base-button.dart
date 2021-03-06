import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String label;
  final bool rounded;
  final Color color;
  IconData iconData = null;
  BaseButton({this.label, this.color = Colors.grey, this.rounded = false});
  BaseButton.rounded(
      {this.label, this.color = Colors.grey, this.rounded = true});
  BaseButton.person(
      {this.label, this.color = Colors.grey, this.rounded = false}) {
    this.iconData = Icons.person;
  }
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: this.color,
      shape: this.rounded
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: this.color))
          : null,
      child: Row(
        children: [
          Icon(this.iconData),
          Text(this.label),
        ],
      ),
      onPressed: () => {},
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Icon(Icons.add);
  }
}
