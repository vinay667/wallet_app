import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/widgets/curve_toolbar.dart';

class StatisticsScreen extends StatefulWidget {
  StatisticsState createState() => StatisticsState();
}
class StatisticsState extends State<StatisticsScreen> {
  String selectedItem = 'Month';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CurveTooblarWidget('Statistics', context),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('March',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'IBMPlexSansSemiBold',
                                  fontSize: 16,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('2020',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontFamily: 'IBMPlexSans',
                                  fontSize: 11,
                                )),
                          )
                        ],
                      ),
                      DropdownButton<String>(
                        items: <String>['Month', 'Jan', 'Feb', 'March']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: selectedItem,
                            child: new Text(
                              value,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'IBMPlexSansSemiBold',
                                  color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {
                          selectedItem = selectedItem;
                        },
                      )
                    ],
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
