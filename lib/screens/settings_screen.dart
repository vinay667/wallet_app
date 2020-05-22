import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/screens/change_password_screen.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';
import 'package:walletapp/widgets/settings_header_text_widget.dart';
import 'package:walletapp/widgets/settings_item_widget.dart';

class SettingsScreen extends StatefulWidget {
  SettingState createState() => SettingState();
}

class SettingState extends State<SettingsScreen> {
  bool isSwitched = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Settings',context),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){

                Navigator.push(context, CupertinoPageRoute(builder: (context)=>ChangePasswordScreen()));


              },

              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.3)),
                  child: Container(
                    height: 53,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                'images/change_pass_icon.png',
                                width: 30.7,
                                height: 30.7,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: SettingsHeaderTextWidget(
                                    'Change Password',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 3),
                                  child: SettingsListTextWidget(
                                      'Click here to rest password'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 22,
                            width: 22,
                            child: Stack(
                              children: <Widget>[
                                Image.asset('images/circle_black.png'),
                                Center(
                                  child: Image.asset('images/right_arrow.png',
                                      width: 4.3, height: 8),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.3)),
                child: Container(
                  height: 53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'images/payments.png',
                              width: 30.7,
                              height: 30.7,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SettingsHeaderTextWidget(
                                  'Automatic Payments',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 3),
                                child: SettingsListTextWidget(
                                    'Active automatic payment method'),
                              )
                            ],
                          ),
                        ],
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: MyColor.switchBarColor,
                        activeColor: MyColor.switchColor,
                        inactiveThumbColor: MyColor.switchColor,
                        inactiveTrackColor: MyColor.switchBarColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.3)),
                child: Container(
                  height: 53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'images/account.png',
                              width: 30.7,
                              height: 30.7,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SettingsHeaderTextWidget(
                                  'Account',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 3),
                                child: SettingsListTextWidget(
                                    'Set as primary account'),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 22,
                          width: 22,
                          child: Stack(
                            children: <Widget>[
                              Image.asset('images/circle_black.png'),
                              Center(
                                child: Image.asset('images/right_arrow.png',
                                    width: 4.3, height: 8),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
