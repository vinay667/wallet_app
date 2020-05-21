import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenuTextWidget extends StatelessWidget
{
  SideMenuTextWidget(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          decoration: TextDecoration.none,
          fontFamily: 'GilroySemiBold'),
    );





  }


}