import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomToolbar extends StatelessWidget {
  CustomToolbar(this.text, this.context);

  final String text;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context, true);
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      'images/back_icon.png',
                      width: 14,
                      height: 9,
                      color: Colors.white,
                    )),
              ),
              flex: 1,
            ),
            Expanded(
              child: Center(
                  child: Container(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'IBMPlexSansMedium'),
                ),
              )),
              flex: 5,
            ),
            Expanded(
              child: Container(
                  height: 34.3,
                  width: 34.3,
                  margin: EdgeInsets.only(right: 10),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("images/men_dp.png")))),
              flex: 1,
            )
          ],
        ));
  }
}
