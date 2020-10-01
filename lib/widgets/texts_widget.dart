import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';

class TextWidgetAddMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text('CURRENT BALANCE',
          style: TextStyle(
              fontSize: 10,
              color: MyColor.addMoneyFont,
              fontFamily: 'IBMPlexSans')),
    );
  }
}

class TextWidgetPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 4),
      child: Text(
        '₱4521.00',
        style: TextStyle(
            color: MyColor.violetThemeColor,
            fontSize: 22,
            fontFamily: 'IBMPlexSansSemiBold'),
      ),
    );
  }
}
