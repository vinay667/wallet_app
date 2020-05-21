
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  transform: Matrix4.translationValues(0.0, -3.0, 0.0),
                  child: Image.asset('images/profile_curve.png', height: 150.3),
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset(
                              'images/back_icon.png',
                              width: 14,
                              height: 9,
                              color: Colors.white,
                            )),
                        Expanded(
                          child: Text(
                            'Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontFamily: 'IBMPlexSansMedium'),
                          ),
                        )
                      ],
                    )),
                Center(
                  child: Container(
                    height: 112,
                    width: 112,
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.only(top: 73),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 112.0,
                          height: 112.0,
                          decoration: new BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: new DecorationImage(
                              image: new AssetImage('images/men_dp.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(60.0)),
                            border: new Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 7),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                width: 27,
                                height: 27,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.green,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8.0,
                                        offset: Offset(1.0, 1.0),
                                        spreadRadius: 0.0)
                                  ],
                                ),
                                child: Center(
                                    child: Image.asset(
                                  'images/edit.png',
                                  height: 15,
                                  width: 13,
                                ))),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: ProfileWidget('Name:','Mark Jackson',false),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: ProfileWidget('Phone No:', '+91 8976543212',false),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: ProfileWidget('Email Id:', 'mark_jackson@gamil.com',false),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: ProfileWidget('Phone No:','12345',true),

            ),
            
            SizedBox(height: 40,),
            
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Stack(
                children: <Widget>[
                  
                  Image.asset('images/profile_rect.png'),
                  Center(
                    child: Text('Save Changes',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'GilroySemiBold'),),


                  )





                  
                  
                  
                ],
                
                
              ),
              
              
              
            )
            
            
            









          ],
        ),
      ),
    );
  }
}
