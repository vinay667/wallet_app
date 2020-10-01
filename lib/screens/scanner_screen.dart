import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:walletapp/colors/colors.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScannerScreen(),
    ));

class ScannerScreen extends StatefulWidget {
  @override
  ScannerScreenState createState() {
    return new ScannerScreenState();
  }
}

class ScannerScreenState extends State<ScannerScreen> {
  String result =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              CurveTooblarWidget('Scanner', context),
              SizedBox(height: 50),
              Container(
                width: 173,
                height: 170.3,
                child: Stack(
                  children: <Widget>[
                    Image.asset('images/barcode_box.png'),
                    Center(
                      child: Image.asset('images/dummy_barcode.png',
                          height: 120, width: 120),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Text(
                  result,
                  style: TextStyle(
                      color: MyColor.timeFontColor,
                      fontFamily: 'IBMPlexSans',
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        _scanQR();
                      },
                      child: Image.asset('images/scanner_start.png'),
                    )),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
