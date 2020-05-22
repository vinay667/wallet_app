import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsHeaderTextWidget extends StatelessWidget {
  SettingsHeaderTextWidget(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'GilroySemiBold',
          fontSize: 14,
        ));
  }
}
