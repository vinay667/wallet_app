
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsListTextWidget extends StatelessWidget {
  SettingsListTextWidget(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: Colors.black.withOpacity(0.4),
          fontFamily: 'GilroySemiBold',
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ));
  }
}


