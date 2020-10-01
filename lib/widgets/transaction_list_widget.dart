import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';

class TransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
          height: 20,
          width: 55,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'images/rounded_rect.png',
                fit: BoxFit.fill,
              ),
              Center(
                child: Text(
                  '₱500',
                  style: TextStyle(
                      color: MyColor.orangeFont,
                      fontFamily: 'IBMPlexSansMedium',
                      fontSize: 12),
                ),
              )
            ],
          )),
    );
  }
}
