import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';
import 'package:walletapp/widgets/profile_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordState createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Change Password', context),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(
                    color: MyColor.timeFontColor,
                    fontFamily: 'IBMPlexSans',
                    fontSize: 13),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ProfileWidget('Old Password:', '123456', true),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ProfileWidget('New Password', '123456', true),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ProfileWidget('Confirm Password', '123456', true),
            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/profile_rect.png'),
                  Center(
                    child: Text(
                      'Set Password',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'GilroySemiBold'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
